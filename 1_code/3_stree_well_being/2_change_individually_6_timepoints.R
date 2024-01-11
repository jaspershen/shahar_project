no_source()

rm(list = ls())

###load the packages
library(tidyverse)
library(massdataset)
library(masstools)
library(r4projects)

setwd(masstools::get_project_wd())

source("1_code/tools.R")

load("3_data_analysis/1_data_preparation/survey_data_6_points/survey_data")

dir.create("3_data_analysis/3_stress_and_well_being/chang_individually_6_timepoints",
           recursive = TRUE)
setwd("3_data_analysis/3_stress_and_well_being/chang_individually_6_timepoints")

expression_data <-
  massdataset::extract_expression_data(survey_data)

sample_info <-
  massdataset::extract_sample_info(survey_data)

variable_info <-
  massdataset::extract_variable_info(survey_data)

temp_data <-
  t(expression_data) %>%
  as.data.frame() %>%
  dplyr::select(-matches("cdrisc_[0-9]{1,2}")) %>%
  dplyr::select(-matches("gfma_[0-9]{1,2}")) %>%
  dplyr::select(-matches("gratitude_[0-9]{1,2}")) %>%
  dplyr::select(-matches("gse_[0-9]{1,2}")) %>%
  dplyr::select(-matches("olbi_[0-9]{1,2}")) %>%
  dplyr::select(-matches("perma_[0-9]{1,2}")) %>%
  dplyr::select(-matches("pfi_[0-9]{1,2}")) %>%
  dplyr::select(-matches("pss_[0-9]{1,2}")) %>%
  dplyr::select(-matches("who_[0-9]{1,2}"))

colnames(temp_data) <-
  variable_info$real_name[match(colnames(temp_data), variable_info$variable_id)]

library(plyr)

1:length(unique(sample_info$subject_id)) %>%
  purrr::map(function(i) {
    cat(i, " ")
    x <-
      unique(sample_info$subject_id)[i]
    # cat(x, " ")
    dir.create(as.character(x))
    temp <-
      temp_data %>%
      tibble::rownames_to_column(var = "sample_id") %>%
      dplyr::left_join(sample_info[, c("sample_id", "subject_id", "check_point")],
                       by = "sample_id") %>%
      dplyr::filter(subject_id == x) %>%
      dplyr::select(-c("sample_id", "subject_id")) %>%
      dplyr::select(check_point, everything())

    if (nrow(temp) < 5) {
      return(NULL)
    }

    cor_data <-
      cor(temp[, -1], method = "spearman")

    cor_data[which(is.na(cor_data), arr.ind = TRUE)] <- 0

    library(ComplexHeatmap)

    plot <-
      Heatmap(
        cor_data,
        cluster_columns = TRUE,
        cluster_rows = TRUE,
        border = TRUE,
        rect_gp = gpar(col = "white"),
        row_km = 2,
        column_km = 2,
        name = "cor"
      )

    module_info <-
      row_order(plot) %>%
      lapply(function(index) {
        rownames(cor_data)[index]
      })

    save(module_info, file = file.path(x, "module_info"))

    library(ggplotify)
    plot <-
      as.ggplot(plot)
    # plot

    ggsave(
      plot,
      filename = file.path(x, "cor_heatmap.pdf"),
      width = 7.91,
      height = 6.88
    )

    ggsave(
      plot,
      filename = file.path(x, "cor_heatmap.png"),
      width = 7.91,
      height = 6.88
    )

    temp <-
      temp %>%
      tidyr::pivot_longer(
        cols = -"check_point",
        values_to = "score",
        names_to = "survey"
      )

    plot1 <-
      temp %>%
      dplyr::filter(survey %in% module_info[[1]]) %>%
      ggplot(aes(check_point, score)) +
      geom_point() +
      geom_line(aes(group = survey)) +
      theme_bw() +
      facet_wrap(facets = vars(survey),
                 nrow = 4,
                 scales = "free")

    plot2 <-
      temp %>%
      dplyr::filter(survey %in% module_info[[2]]) %>%
      ggplot(aes(check_point, score)) +
      geom_point() +
      geom_line(aes(group = survey)) +
      theme_bw() +
      facet_wrap(facets = vars(survey),
                 nrow = 4,
                 scales = "free")

    library(patchwork)
    plot <-
      plot1 + plot2 + patchwork::plot_layout(nrow = 1, widths = c(ceiling(length(module_info[[1]]) /
                                                                            4),
                                                                  ceiling(length(module_info[[2]]) /
                                                                            4)))


    ggsave(
      plot,
      filename = file.path(x, "score_individual.pdf"),
      width = 12,
      height = 7
    )
    ggsave(
      plot,
      filename = file.path(x, "score_individual.png"),
      width = 12,
      height = 7
    )
  })

all_module_info <-
  unique(sample_info$subject_id) %>%
  purrr::map(function(x) {
    cat(x, " ")
    x <- as.character(x)
    module_info <-
      tryCatch({
        load(file.path(x, "module_info"))
        module_info
      },
      error = function(e) {
        NULL
      })
    module_info
  })

###remove NULL
remove_idx <-
  lapply(all_module_info, function(x) {
    is.null(x)
  }) %>%
  unlist() %>%
  which()


if (length(remove_idx) > 0) {
  all_module_info <-
    all_module_info[-remove_idx]
}

all_module_info[[1]]
all_module_info[[2]]

edge_data <-
  lapply(all_module_info, function(x) {
    lapply(x, function(y) {
      expand.grid(from = y, to = y) %>%
        dplyr::filter(from != to) %>%
        rowwise() %>%
        dplyr::mutate(new_name = paste(sort(c(from, to)), collapse = "-")) %>%
        dplyr::distinct(new_name, .keep_all = TRUE)
    }) %>%
      do.call(rbind, .) %>%
      as.data.frame()
  }) %>%
  do.call(rbind, .) %>%
  as.data.frame()

new_info <-
  edge_data %>%
  dplyr::select(new_name) %>%
  dplyr::count(new_name)

edge_data <-
  edge_data %>%
  dplyr::distinct(new_name, .keep_all = TRUE) %>%
  dplyr::left_join(new_info, by = "new_name")

node_data <-
  data.frame(node = as.character(unique(c(
    edge_data$from, edge_data$to
  ))))

library(tidygraph)
library(ggraph)
library(igraph)

length(all_module_info) / 10

load("../correlation/module_info")

new_node_info <-
  rbind(
    data.frame(node = module_info[[1]],
               module = "1"),
    data.frame(node = module_info[[2]],
               module = "2")
  )

node_data <-
  node_data %>%
  dplyr::left_join(new_node_info, by = "node")

total_graph <-
  tidygraph::tbl_graph(
    nodes = node_data,
    edges = edge_data %>% dplyr::filter(n > 100),
    directed = FALSE
  )

plot <-
  ggraph(total_graph,
         layout = 'kk',
         circular = FALSE) +
  geom_edge_link(
    strength = 1,
    aes(edge_width = n),
    alpha = 1,
    color = "grey",
    show.legend = TRUE
  ) +
  geom_node_point(
    aes(fill = module),
    shape = 21,
    size = 3,
    alpha = 1,
    show.legend = TRUE
  ) +
  scale_edge_width_continuous(range = c(0.1, 1)) +
  geom_node_text(aes(
    x = x,
    y = y,
    hjust = 1,
    size = 5,
    label = node,
    color = module
  ),
  show.legend = FALSE) +
  # ggraph::theme_graph() +
  theme(
    plot.background = element_rect(fill = "transparent", color = NA),
    panel.background = element_rect(fill = "transparent", color = NA),
    legend.position = "right",
    legend.background = element_rect(fill = "transparent", color = NA)
  ) +
  scale_color_manual(values = c("1" = "red",
                                "2" = "darkblue")) +
  scale_fill_manual(values = c("1" = "red",
                               "2" = "darkblue"))
plot
ggsave(plot,
       filename = "network.pdf",
       width = 10,
       height = 10)

ggsave(plot,
       filename = "network.png",
       width = 10,
       height = 10)

