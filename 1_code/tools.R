sex_color <- 
  c("Female" = "#F25F5C",
    "Male" = "#247BA0")

race_color <- 
  c("White" = "#F25F5C",
    "Black" = "#247BA0",
    "Asian" = "#70C1B3",
    "Hispanic" = "#F2D7EE",
    "Other" = "#F2D7EE")

library(r4projects)
library(scales)
scales::show_col(r4projects::color_palette(palette_number = 5)[[2]])

race_color2 <- 
  c("Caucasian" = "#E67E22",
    "non-Caucasian" = "#F1C40F")
