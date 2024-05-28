#Clear existing data and graphics
rm(list=ls())
graphics.off()
#Load Hmisc library
library(Hmisc)
#Read Data
data=read.csv('66491TheLastingChang-C02_DATA_2024-03-19_0028.csv')
#Setting Labels

label(data$record_id)="Record ID"
label(data$redcap_event_name)="Event Name"
label(data$redcap_repeat_instrument)="Repeat Instrument"
label(data$redcap_repeat_instance)="Repeat Instance"
label(data$study_survey_c2_attending)="How did you attend DWD?"
label(data$study_surv_pfi_1_c2)="I feel happy at work"
label(data$study_surv_pfi_2_c2)="I feel worthwhile at work"
label(data$study_surv_pfi_3_c2)="My work is satisfying to me"
label(data$study_surv_pfi_4_c2)="I feel in control when dealing with difficult problems at work."
label(data$study_surv_pfi_5_c2)="My work is meaningful to me."
label(data$study_surv_pfi_6_c2)="Im contributing professionally in the ways I value most."
label(data$study_surv_pfi_7_c2)="A sense of dread when I think about work I have to do"
label(data$study_surv_pfi_8_c2)="Physically exhausted at work"
label(data$study_surv_pfi_9_c2)="Lacking in enthusiasm at work"
label(data$study_surv_pfi_10_c2)="Emotionally exhausted at work"
label(data$study_surv_pfi_11_c2)="Less empathetic with  people at work"
label(data$study_surv_pfi_12_c2)="Less empathetic with my colleagues"
label(data$study_surv_pfi_13_c2)="Less sensitive to others feelings/emotions"
label(data$study_surv_pfi_14_c2)="Less interested in talking with people at work"
label(data$study_surv_pfi_15_c2)="Less connected with people at work"
label(data$study_surv_pfi_16_c2)="Less connected with my colleagues"
label(data$study_surv_cdrisc_1_c2)="I am able to deal with change"
label(data$study_surv_cdrisc_2_c2)="I can deal with whatever comes my way"
label(data$study_surv_cdrisc_3_c2)="I try to see the funny side of things when I am faced with problems"
label(data$study_surv_cdrisc_4_c2)="Dealing with stress can make me stronger"
label(data$study_surv_cdrisc_5_c2)="I tend to bounce back after being sick, injury, or other hardships"
label(data$study_surv_cdrisc_6_c2)="I believe I can achieve what I want, even if there are problems"
label(data$study_surv_cdrisc_7_c2)="Under pressure, I still think clearly"
label(data$study_surv_cdrisc_8_c2)="I do not lose hope following a failure"
label(data$study_surv_cdrisc_9_c2)="I think of myself as a strong person when with lifes challenges and difficulties"
label(data$study_surv_cdrisc_10_c2)="I am able to handle unpleasant or painful feelings, like sadness, fear, or anger"
label(data$study_surv_perma_1_c2)="In general, to what extent do you lead a purposeful and meaningful life?"
label(data$study_surv_perma_2_c2)="How much of the time do you feel you are making progress towards accomplishing your goals?"
label(data$study_surv_perma_3_c2)="How often do you become absorbed in what you are doing?"
label(data$study_surv_perma_4_c2)="In general, how would you say your health is?"
label(data$study_surv_perma_5_c2)="In general, how often do you feel joyful?"
label(data$study_surv_perma_6_c2)="To what extent do you receive help and support from others when you need it?"
label(data$study_surv_perma_7_c2)="In general, how often do you feel anxious?"
label(data$study_surv_perma_8_c2)="How often do you achieve the important goals you have set for yourself?"
label(data$study_surv_perma_9_c2)="In general, to what extent do you feel that what you do in your life is valuable and worthwhile?"
label(data$study_surv_perma_10_c2)="In general, how often do you feel positive?"
label(data$study_surv_perma_11_c2)="In general, to what extent do you feel excited and interested in things?"
label(data$study_surv_perma_12_c2)="How lonely do you feel in your daily life?"
label(data$study_surv_perma_13_c2)="How satisfied are you with your current physical health?"
label(data$study_surv_perma_14_c2)="In general, how often do you feel angry?"
label(data$study_surv_perma_15_c2)="To what extent do you feel loved?"
label(data$study_surv_perma_16_c2)="How often are you able to handle your responsibilities?"
label(data$study_surv_perma_17_c2)="To what extent do you generally feel you have a sense of direction in your life?"
label(data$study_surv_perma_18_c2)="Compared to others of your same age and sex, how is your health?"
label(data$study_surv_perma_19_c2)="How satisfied are you with your personal relationships?"
label(data$study_surv_perma_20_c2)="In general, how often do you feel sad?"
label(data$study_surv_perma_21_c2)="How often do you lose track of time while doing something you enjoy?"
label(data$study_surv_perma_22_c2)="In general, to what extent do you feel contented?"
label(data$study_surv_perma_23_c2)="Taking all things together, how happy would you say you are?"
label(data$study_surv_pss_1_c2)="In the last month, how often have you been upset because of something that happened unexpectedly?"
label(data$study_surv_pss_2_c2)="In the last month, how often have you felt that you were unable to control the important things in your life?"
label(data$study_surv_pss_3_c2)="In the last month, how often have you felt nervous and stressed?"
label(data$study_surv_pss_4_c2)="In the last month, how often have you felt confident about your ability to handle your personal problems?"
label(data$study_surv_pss_5_c2)="In the last month, how often have you felt that things were going your way?"
label(data$study_surv_pss_6_c2)="In the last month, how often have you found that you could not cope with all the things that you had to do?"
label(data$study_surv_pss_7_c2)="In the last month, how often have you been able to control irritations in your life?"
label(data$study_surv_pss_8_c2)="In the last month, how often have you felt that you were on top of things?"
label(data$study_surv_pss_9_c2)="In the last month, how often have you been angered because of things happened that were outside of your control?"
label(data$study_surv_pss_10_c2)="In the last month, how often have you felt difficulties were piling up so high that you could not overcome them?"
label(data$study_surv_needs_1_c2)="People are impressed by me"
label(data$study_surv_needs_2_c2)="Feeling that I belong is important to me"
label(data$study_surv_needs_3_c2)="I need to feel grounded"
label(data$study_surv_needs_4_c2)="I dont mind taking risks"
label(data$study_surv_needs_5_c2)="I dont fear change"
label(data$study_surv_needs_6_c2)="A failure is not a failure if you keep trying"
label(data$study_surv_needs_7_c2)="I believe in giving back"
label(data$study_surv_needs_8_c2)="Im good at taking care of people"
label(data$study_surv_needs_9_c2)="I often worry about what people are saying about me"
label(data$study_surv_needs_10_c2)="I like to have as much stability in my life as possible"
label(data$study_surv_needs_11_c2)="Its important to contribute to the community"
label(data$study_surv_needs_12_c2)="I like to develop new ideas and projects"
label(data$study_surv_needs_13_c2)="Im security conscious"
label(data$study_surv_needs_14_c2)="I like to be an example to others"
label(data$study_surv_needs_15_c2)="Im competitive"
label(data$study_surv_needs_16_c2)="I hate the feeling of boredom"
label(data$study_surv_needs_17_c2)="I know how to make connections with people"
label(data$study_surv_needs_18_c2)="I constantly aspire to improve"
label(data$study_surv_needs_19_c2)="Danger is never exciting to me"
label(data$study_surv_needs_20_c2)="In most close relationships Im usually the giver"
label(data$study_surv_needs_21_c2)="There is always something new to be learned"
label(data$study_surv_needs_22_c2)="I need to feel fulfilled"
label(data$study_surv_needs_23_c2)="I frequently evaluate myself"
label(data$study_surv_needs_24_c2)="I like for things to be predictable"
label(data$study_surv_needs_25_c2)="I am more loving than most people"
label(data$study_surv_needs_26_c2)="Recognition is very important to me"
label(data$study_surv_needs_27_c2)="I like the feeling of exertion"
label(data$study_surv_needs_28_c2)="Im very careful of not over-spending"
label(data$study_surv_needs_29_c2)="Education is important to me"
label(data$study_surv_needs_30_c2)="Im a leader"
label(data$study_surv_needs_31_c2)="Im always looking for new experiences"
label(data$study_surv_needs_32_c2)="I sometimes overextend myself in trying to help"
label(data$study_surv_needs_33_c2)="I like to learn in order to teach what I learn"
label(data$study_surv_needs_34_c2)="I take pride in who I am"
label(data$study_surv_needs_35_c2)="I like how learning something new changes my perspective"
label(data$study_surv_needs_36_c2)="Im constantly learning"
label(data$study_surveys1_checkpoint2_complete)="Complete?"
label(data$study_surv_olbi_1_c2)="I always find new and interesting aspects in my work"
label(data$study_surv_olbi_2_c2)="There are days when I feel tired before I arrive at work"
label(data$study_surv_olbi_3_c2)="It happens more and more often that I talk about my work in a negative way"
label(data$study_surv_olbi_4_c2)="After work, I tend to need more time than in the past in order to relax and feel better"
label(data$study_surv_olbi_5_c2)="I can tolerate the pressure of my work very well"
label(data$study_surv_olbi_6_c2)="Lately, I tend to think less at work and do my job almost mechanically"
label(data$study_surv_olbi_7_c2)="I find my work to be a positive challenge"
label(data$study_surv_olbi_8_c2)="During my work, I often feel emotionally drained"
label(data$study_surv_olbi_9_c2)="Over time, one can become disconnected from this type of work"
label(data$study_surv_olbi_10_c2)="After working, I have enough energy for my leisure activities"
label(data$study_surv_olbi_11_c2)="Sometimes I feel sickened by my work tasks"
label(data$study_surv_olbi_12_c2)="After my work, I usually feel worn out and weary"
label(data$study_surv_olbi_13_c2)="This is the only type of work that I can imagine myself doing"
label(data$study_surv_olbi_14_c2)="Usually, I can manage the amount of my work well"
label(data$study_surv_olbi_15_c2)="I feel more and more engaged in my work"
label(data$study_surv_olbi_16_c2)="When I work, I usually feel energized"
label(data$study_surv_gse_1_c2)="I can always manage to solve difficult problems if I try hard enough"
label(data$study_surv_gse_2_c2)="If someone opposes me, I can find the means and ways to get what I want"
label(data$study_surv_gse_3_c2)="It is easy for me to stick to my aims and accomplish my goals"
label(data$study_surv_gse_4_c2)="I am confident that I could deal efficiently with unexpected events"
label(data$study_surv_gse_5_c2)="Thanks to my resourcefulness, I know how to handle unforeseen situations"
label(data$study_surv_gse_6_c2)="I can solve most problems if I invest the necessary effort"
label(data$study_surv_gse_7_c2)="I can remain calm when facing difficulties because I can rely on my coping abilities"
label(data$study_surv_gse_8_c2)="When I am confronted with a problem, I can usually find several situations"
label(data$study_surv_gse_9_c2)="If I am in trouble, I can usually think of a solution"
label(data$study_surv_gse_10_c2)="I can usually handle whatever comes my way"
label(data$study_surv_who_1_c2)="How would you rate your quality of life?"
label(data$study_surv_who_2_c2)="How satisfied are you with your health?"
label(data$study_surv_who_3_c2)="To what extent to you feel that physical pain prevents you from doing what you need to do?"
label(data$study_surv_who_4_c2)="How much do you need any medical treatment to function in your daily life?"
label(data$study_surv_who_5_c2)="How much do you enjoy life?"
label(data$study_surv_who_6_c2)="To what extent do you feel your life to be meaningful?"
label(data$study_surv_who_7_c2)="How well are you able to concentrate?"
label(data$study_surv_who_8_c2)="How safe do you feel in your daily life?"
label(data$study_surv_who_9_c2)="How healthy is your physical environment?"
label(data$study_surv_who_10_c2)="Do you have enough energy for everyday life?"
label(data$study_surv_who_11_c2)="Are you able to accept your bodily appearance?"
label(data$study_surv_who_12_c2)="Have you enough money to meet your needs?"
label(data$study_surv_who_13_c2)="How available to you is the information that you need in your day-to-day life?"
label(data$study_surv_who_14_c2)="To what extent do you have the opportunity for leisure activities?"
label(data$study_surv_who_15_c2)="How well are you able to get around?"
label(data$study_surv_who_16_c2)="How satisfied are you with your sleep?"
label(data$study_surv_who_17_c2)="How satisfied are you with your ability to perform your daily living activities?"
label(data$study_surv_who_18_c2)="How satisfied are you with your capacity for work?"
label(data$study_surv_who_19_c2)="How satisfied are you with yourself?"
label(data$study_surv_who_20_c2)="How satisfied are you with your personal relationships?"
label(data$study_surv_who_21_c2)="How satisfied are you with your sex life?"
label(data$study_surv_who_22_c2)="How satisfied are you with the support you get from your friends?"
label(data$study_surv_who_23_c2)="How satisfied are you with the conditions of your living place?"
label(data$study_surv_who_24_c2)="How satisfied are you with your access to health services?"
label(data$study_surv_who_25_c2)="How satisfied are you with your transport?"
label(data$study_surv_who_26_c2)="How often do you have negative feelings such as blue mood, despair, anxiety, depression?"
label(data$study_surv_gfma_1_c2)="Your intelligence is something very basic about you that you cant change very much"
label(data$study_surv_gfma_2_c2)="No matter how much intelligence you have, you can always change it quite a bit"
label(data$study_surv_gfma_3_c2)="You can always substantially change how intelligent you are"
label(data$study_surv_gfma_4_c2)="You are a certain kind of person, and there is not much that can be done to really change that"
label(data$study_surv_gfma_5_c2)="You can always change basic things about the kind of person you are"
label(data$study_surv_gfma_6_c2)="Music talent can be learned by anyone"
label(data$study_surv_gfma_7_c2)="Only a few people will be truly good at sports - you have to be born with it."
label(data$study_surv_gfma_8_c2)="Math is much easier to learn if you are male or maybe come from a culture that values math"
label(data$study_surv_gfma_9_c2)="The harder you work at something, the better you will be at it"
label(data$study_surv_gfma_10_c2)="No matter what kind of person you are, you can always change substantially"
label(data$study_surv_gfma_11_c2)="Trying new things is stressful for me and I avoid it"
label(data$study_surv_gfma_12_c2)="Some people are good and kind, some are not - it is not often that people change"
label(data$study_surv_gfma_13_c2)="I appreciate when parents, coaches, teachers give me feedback about my performance"
label(data$study_surv_gfma_14_c2)="I often get angry when I get feedback about my performance"
label(data$study_surv_gfma_15_c2)="All human beings without a brain injury or birth defect are capable of the same amount of learning"
label(data$study_surv_gfma_16_c2)="You can learn new things, but you cant really change how intelligent you are"
label(data$study_surv_gfma_17_c2)="You can do things differently, but the important part of who you are cant really be changed"
label(data$study_surv_gfma_18_c2)="Human beings are basically good, but sometimes make terrible decisions"
label(data$study_surv_gfma_19_c2)="An important reason why I do my schoolwork is that I like to learn new things"
label(data$study_surv_gfma_20_c2)="Truly smart people dont need to try hard"
label(data$study_surv_gratitude_1_c2)="I have so much in life to be thankful for"
label(data$study_surv_gratitude_2_c2)="If I had to list everything that I felt grateful for, it would be a very long list"
label(data$study_surv_gratitude_3_c2)="When I look at the world, I dont see much to be grateful for"
label(data$study_surv_gratitude_4_c2)="I am grateful to a wide variety of people"
label(data$study_surv_gratitude_5_c2)="As I get older, I find myself more able to appreciate the people, events, and situations that have been part of my life history"
label(data$study_surv_gratitude_6_c2)="Long amount of time can go by before I feel grateful for something or someone"
label(data$study_surveys2_checkpoint2_complete)="Complete?"
#Setting Units


#Setting Factors(will create new variable for factors)
data$redcap_event_name.factor = factor(data$redcap_event_name,levels=c("entry_arm_1","checkpoint_1_arm_1","checkpoint_2_arm_1","checkpoint_3_arm_1","checkpoint_4_arm_1","reconsent_arm_1","checkpoint_5_arm_1","checkpoint_6_arm_1","ema_event_arm_1","ema_post_dwd_arm_1","slots_arm_2","reservations_arm_3"))
data$redcap_repeat_instrument.factor = factor(data$redcap_repeat_instrument,levels=c("ema","ema_post_dwdsurvey"))
data$study_survey_c2_attending.factor = factor(data$study_survey_c2_attending,levels=c("0","1"))
data$study_surv_pfi_1_c2.factor = factor(data$study_surv_pfi_1_c2,levels=c("0","1","2","3","4"))
data$study_surv_pfi_2_c2.factor = factor(data$study_surv_pfi_2_c2,levels=c("0","1","2","3","4"))
data$study_surv_pfi_3_c2.factor = factor(data$study_surv_pfi_3_c2,levels=c("0","1","2","3","4"))
data$study_surv_pfi_4_c2.factor = factor(data$study_surv_pfi_4_c2,levels=c("0","1","2","3","4"))
data$study_surv_pfi_5_c2.factor = factor(data$study_surv_pfi_5_c2,levels=c("0","1","2","3","4"))
data$study_surv_pfi_6_c2.factor = factor(data$study_surv_pfi_6_c2,levels=c("0","1","2","3","4"))
data$study_surv_pfi_7_c2.factor = factor(data$study_surv_pfi_7_c2,levels=c("0","1","2","3","4"))
data$study_surv_pfi_8_c2.factor = factor(data$study_surv_pfi_8_c2,levels=c("0","1","2","3","4"))
data$study_surv_pfi_9_c2.factor = factor(data$study_surv_pfi_9_c2,levels=c("0","1","2","3","4"))
data$study_surv_pfi_10_c2.factor = factor(data$study_surv_pfi_10_c2,levels=c("0","1","2","3","4"))
data$study_surv_pfi_11_c2.factor = factor(data$study_surv_pfi_11_c2,levels=c("0","1","2","3","4"))
data$study_surv_pfi_12_c2.factor = factor(data$study_surv_pfi_12_c2,levels=c("0","1","2","3","4"))
data$study_surv_pfi_13_c2.factor = factor(data$study_surv_pfi_13_c2,levels=c("0","1","2","3","4"))
data$study_surv_pfi_14_c2.factor = factor(data$study_surv_pfi_14_c2,levels=c("0","1","2","3","4"))
data$study_surv_pfi_15_c2.factor = factor(data$study_surv_pfi_15_c2,levels=c("0","1","2","3","4"))
data$study_surv_pfi_16_c2.factor = factor(data$study_surv_pfi_16_c2,levels=c("0","1","2","3","4"))
data$study_surv_cdrisc_1_c2.factor = factor(data$study_surv_cdrisc_1_c2,levels=c("1","2","3","4"))
data$study_surv_cdrisc_2_c2.factor = factor(data$study_surv_cdrisc_2_c2,levels=c("1","2","3","4"))
data$study_surv_cdrisc_3_c2.factor = factor(data$study_surv_cdrisc_3_c2,levels=c("1","2","3","4"))
data$study_surv_cdrisc_4_c2.factor = factor(data$study_surv_cdrisc_4_c2,levels=c("1","2","3","4"))
data$study_surv_cdrisc_5_c2.factor = factor(data$study_surv_cdrisc_5_c2,levels=c("1","2","3","4"))
data$study_surv_cdrisc_6_c2.factor = factor(data$study_surv_cdrisc_6_c2,levels=c("1","2","3","4"))
data$study_surv_cdrisc_7_c2.factor = factor(data$study_surv_cdrisc_7_c2,levels=c("1","2","3","4"))
data$study_surv_cdrisc_8_c2.factor = factor(data$study_surv_cdrisc_8_c2,levels=c("1","2","3","4"))
data$study_surv_cdrisc_9_c2.factor = factor(data$study_surv_cdrisc_9_c2,levels=c("1","2","3","4"))
data$study_surv_cdrisc_10_c2.factor = factor(data$study_surv_cdrisc_10_c2,levels=c("1","2","3","4"))
data$study_surv_perma_1_c2.factor = factor(data$study_surv_perma_1_c2,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_2_c2.factor = factor(data$study_surv_perma_2_c2,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_3_c2.factor = factor(data$study_surv_perma_3_c2,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_4_c2.factor = factor(data$study_surv_perma_4_c2,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_5_c2.factor = factor(data$study_surv_perma_5_c2,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_6_c2.factor = factor(data$study_surv_perma_6_c2,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_7_c2.factor = factor(data$study_surv_perma_7_c2,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_8_c2.factor = factor(data$study_surv_perma_8_c2,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_9_c2.factor = factor(data$study_surv_perma_9_c2,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_10_c2.factor = factor(data$study_surv_perma_10_c2,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_11_c2.factor = factor(data$study_surv_perma_11_c2,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_12_c2.factor = factor(data$study_surv_perma_12_c2,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_13_c2.factor = factor(data$study_surv_perma_13_c2,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_14_c2.factor = factor(data$study_surv_perma_14_c2,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_15_c2.factor = factor(data$study_surv_perma_15_c2,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_16_c2.factor = factor(data$study_surv_perma_16_c2,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_17_c2.factor = factor(data$study_surv_perma_17_c2,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_18_c2.factor = factor(data$study_surv_perma_18_c2,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_19_c2.factor = factor(data$study_surv_perma_19_c2,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_20_c2.factor = factor(data$study_surv_perma_20_c2,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_21_c2.factor = factor(data$study_surv_perma_21_c2,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_22_c2.factor = factor(data$study_surv_perma_22_c2,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_23_c2.factor = factor(data$study_surv_perma_23_c2,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_pss_1_c2.factor = factor(data$study_surv_pss_1_c2,levels=c("0","1","2","3","4"))
data$study_surv_pss_2_c2.factor = factor(data$study_surv_pss_2_c2,levels=c("0","1","2","3","4"))
data$study_surv_pss_3_c2.factor = factor(data$study_surv_pss_3_c2,levels=c("0","1","2","3","4"))
data$study_surv_pss_4_c2.factor = factor(data$study_surv_pss_4_c2,levels=c("0","1","2","3","4"))
data$study_surv_pss_5_c2.factor = factor(data$study_surv_pss_5_c2,levels=c("0","1","2","3","4"))
data$study_surv_pss_6_c2.factor = factor(data$study_surv_pss_6_c2,levels=c("0","1","2","3","4"))
data$study_surv_pss_7_c2.factor = factor(data$study_surv_pss_7_c2,levels=c("0","1","2","3","4"))
data$study_surv_pss_8_c2.factor = factor(data$study_surv_pss_8_c2,levels=c("0","1","2","3","4"))
data$study_surv_pss_9_c2.factor = factor(data$study_surv_pss_9_c2,levels=c("0","1","2","3","4"))
data$study_surv_pss_10_c2.factor = factor(data$study_surv_pss_10_c2,levels=c("0","1","2","3","4"))
data$study_surv_needs_1_c2.factor = factor(data$study_surv_needs_1_c2,levels=c("10","5","0"))
data$study_surv_needs_2_c2.factor = factor(data$study_surv_needs_2_c2,levels=c("10","5","0"))
data$study_surv_needs_3_c2.factor = factor(data$study_surv_needs_3_c2,levels=c("10","5","0"))
data$study_surv_needs_4_c2.factor = factor(data$study_surv_needs_4_c2,levels=c("10","5","0"))
data$study_surv_needs_5_c2.factor = factor(data$study_surv_needs_5_c2,levels=c("10","5","0"))
data$study_surv_needs_6_c2.factor = factor(data$study_surv_needs_6_c2,levels=c("10","5","0"))
data$study_surv_needs_7_c2.factor = factor(data$study_surv_needs_7_c2,levels=c("10","5","0"))
data$study_surv_needs_8_c2.factor = factor(data$study_surv_needs_8_c2,levels=c("10","5","0"))
data$study_surv_needs_9_c2.factor = factor(data$study_surv_needs_9_c2,levels=c("10","5","0"))
data$study_surv_needs_10_c2.factor = factor(data$study_surv_needs_10_c2,levels=c("10","5","0"))
data$study_surv_needs_11_c2.factor = factor(data$study_surv_needs_11_c2,levels=c("10","5","0"))
data$study_surv_needs_12_c2.factor = factor(data$study_surv_needs_12_c2,levels=c("10","5","0"))
data$study_surv_needs_13_c2.factor = factor(data$study_surv_needs_13_c2,levels=c("10","5","0"))
data$study_surv_needs_14_c2.factor = factor(data$study_surv_needs_14_c2,levels=c("10","5","0"))
data$study_surv_needs_15_c2.factor = factor(data$study_surv_needs_15_c2,levels=c("10","5","0"))
data$study_surv_needs_16_c2.factor = factor(data$study_surv_needs_16_c2,levels=c("10","5","0"))
data$study_surv_needs_17_c2.factor = factor(data$study_surv_needs_17_c2,levels=c("10","5","0"))
data$study_surv_needs_18_c2.factor = factor(data$study_surv_needs_18_c2,levels=c("10","5","0"))
data$study_surv_needs_19_c2.factor = factor(data$study_surv_needs_19_c2,levels=c("10","5","0"))
data$study_surv_needs_20_c2.factor = factor(data$study_surv_needs_20_c2,levels=c("10","5","0"))
data$study_surv_needs_21_c2.factor = factor(data$study_surv_needs_21_c2,levels=c("10","5","0"))
data$study_surv_needs_22_c2.factor = factor(data$study_surv_needs_22_c2,levels=c("10","5","0"))
data$study_surv_needs_23_c2.factor = factor(data$study_surv_needs_23_c2,levels=c("10","5","0"))
data$study_surv_needs_24_c2.factor = factor(data$study_surv_needs_24_c2,levels=c("10","5","0"))
data$study_surv_needs_25_c2.factor = factor(data$study_surv_needs_25_c2,levels=c("10","5","0"))
data$study_surv_needs_26_c2.factor = factor(data$study_surv_needs_26_c2,levels=c("10","5","0"))
data$study_surv_needs_27_c2.factor = factor(data$study_surv_needs_27_c2,levels=c("10","5","0"))
data$study_surv_needs_28_c2.factor = factor(data$study_surv_needs_28_c2,levels=c("10","5","0"))
data$study_surv_needs_29_c2.factor = factor(data$study_surv_needs_29_c2,levels=c("10","5","0"))
data$study_surv_needs_30_c2.factor = factor(data$study_surv_needs_30_c2,levels=c("10","5","0"))
data$study_surv_needs_31_c2.factor = factor(data$study_surv_needs_31_c2,levels=c("10","5","0"))
data$study_surv_needs_32_c2.factor = factor(data$study_surv_needs_32_c2,levels=c("10","5","0"))
data$study_surv_needs_33_c2.factor = factor(data$study_surv_needs_33_c2,levels=c("10","5","0"))
data$study_surv_needs_34_c2.factor = factor(data$study_surv_needs_34_c2,levels=c("10","5","0"))
data$study_surv_needs_35_c2.factor = factor(data$study_surv_needs_35_c2,levels=c("10","5","0"))
data$study_surv_needs_36_c2.factor = factor(data$study_surv_needs_36_c2,levels=c("10","5","0"))
data$study_surveys1_checkpoint2_complete.factor = factor(data$study_surveys1_checkpoint2_complete,levels=c("0","1","2"))
data$study_surv_olbi_1_c2.factor = factor(data$study_surv_olbi_1_c2,levels=c("1","2","3","4"))
data$study_surv_olbi_2_c2.factor = factor(data$study_surv_olbi_2_c2,levels=c("1","2","3","4"))
data$study_surv_olbi_3_c2.factor = factor(data$study_surv_olbi_3_c2,levels=c("1","2","3","4"))
data$study_surv_olbi_4_c2.factor = factor(data$study_surv_olbi_4_c2,levels=c("1","2","3","4"))
data$study_surv_olbi_5_c2.factor = factor(data$study_surv_olbi_5_c2,levels=c("1","2","3","4"))
data$study_surv_olbi_6_c2.factor = factor(data$study_surv_olbi_6_c2,levels=c("1","2","3","4"))
data$study_surv_olbi_7_c2.factor = factor(data$study_surv_olbi_7_c2,levels=c("1","2","3","4"))
data$study_surv_olbi_8_c2.factor = factor(data$study_surv_olbi_8_c2,levels=c("1","2","3","4"))
data$study_surv_olbi_9_c2.factor = factor(data$study_surv_olbi_9_c2,levels=c("1","2","3","4"))
data$study_surv_olbi_10_c2.factor = factor(data$study_surv_olbi_10_c2,levels=c("1","2","3","4"))
data$study_surv_olbi_11_c2.factor = factor(data$study_surv_olbi_11_c2,levels=c("1","2","3","4"))
data$study_surv_olbi_12_c2.factor = factor(data$study_surv_olbi_12_c2,levels=c("1","2","3","4"))
data$study_surv_olbi_13_c2.factor = factor(data$study_surv_olbi_13_c2,levels=c("1","2","3","4"))
data$study_surv_olbi_14_c2.factor = factor(data$study_surv_olbi_14_c2,levels=c("1","2","3","4"))
data$study_surv_olbi_15_c2.factor = factor(data$study_surv_olbi_15_c2,levels=c("1","2","3","4"))
data$study_surv_olbi_16_c2.factor = factor(data$study_surv_olbi_16_c2,levels=c("1","2","3","4"))
data$study_surv_gse_1_c2.factor = factor(data$study_surv_gse_1_c2,levels=c("1","2","3","4"))
data$study_surv_gse_2_c2.factor = factor(data$study_surv_gse_2_c2,levels=c("1","2","3","4"))
data$study_surv_gse_3_c2.factor = factor(data$study_surv_gse_3_c2,levels=c("1","2","3","4"))
data$study_surv_gse_4_c2.factor = factor(data$study_surv_gse_4_c2,levels=c("1","2","3","4"))
data$study_surv_gse_5_c2.factor = factor(data$study_surv_gse_5_c2,levels=c("1","2","3","4"))
data$study_surv_gse_6_c2.factor = factor(data$study_surv_gse_6_c2,levels=c("1","2","3","4"))
data$study_surv_gse_7_c2.factor = factor(data$study_surv_gse_7_c2,levels=c("1","2","3","4"))
data$study_surv_gse_8_c2.factor = factor(data$study_surv_gse_8_c2,levels=c("1","2","3","4"))
data$study_surv_gse_9_c2.factor = factor(data$study_surv_gse_9_c2,levels=c("1","2","3","4"))
data$study_surv_gse_10_c2.factor = factor(data$study_surv_gse_10_c2,levels=c("1","2","3","4"))
data$study_surv_who_1_c2.factor = factor(data$study_surv_who_1_c2,levels=c("1","2","3","4","5"))
data$study_surv_who_2_c2.factor = factor(data$study_surv_who_2_c2,levels=c("1","2","3","4","5"))
data$study_surv_who_3_c2.factor = factor(data$study_surv_who_3_c2,levels=c("1","2","3","4","5"))
data$study_surv_who_4_c2.factor = factor(data$study_surv_who_4_c2,levels=c("1","2","3","4","5"))
data$study_surv_who_5_c2.factor = factor(data$study_surv_who_5_c2,levels=c("1","2","3","4","5"))
data$study_surv_who_6_c2.factor = factor(data$study_surv_who_6_c2,levels=c("1","2","3","4","5"))
data$study_surv_who_7_c2.factor = factor(data$study_surv_who_7_c2,levels=c("1","2","3","4","5"))
data$study_surv_who_8_c2.factor = factor(data$study_surv_who_8_c2,levels=c("1","2","3","4","5"))
data$study_surv_who_9_c2.factor = factor(data$study_surv_who_9_c2,levels=c("1","2","3","4","5"))
data$study_surv_who_10_c2.factor = factor(data$study_surv_who_10_c2,levels=c("0","1","2","3","4"))
data$study_surv_who_11_c2.factor = factor(data$study_surv_who_11_c2,levels=c("0","1","2","3","4"))
data$study_surv_who_12_c2.factor = factor(data$study_surv_who_12_c2,levels=c("0","1","2","3","4"))
data$study_surv_who_13_c2.factor = factor(data$study_surv_who_13_c2,levels=c("0","1","2","3","4"))
data$study_surv_who_14_c2.factor = factor(data$study_surv_who_14_c2,levels=c("0","1","2","3","4"))
data$study_surv_who_15_c2.factor = factor(data$study_surv_who_15_c2,levels=c("1","2","3","4","5"))
data$study_surv_who_16_c2.factor = factor(data$study_surv_who_16_c2,levels=c("1","2","3","4","5"))
data$study_surv_who_17_c2.factor = factor(data$study_surv_who_17_c2,levels=c("1","2","3","4","5"))
data$study_surv_who_18_c2.factor = factor(data$study_surv_who_18_c2,levels=c("1","2","3","4","5"))
data$study_surv_who_19_c2.factor = factor(data$study_surv_who_19_c2,levels=c("1","2","3","4","5"))
data$study_surv_who_20_c2.factor = factor(data$study_surv_who_20_c2,levels=c("1","2","3","4","5"))
data$study_surv_who_21_c2.factor = factor(data$study_surv_who_21_c2,levels=c("1","2","3","4","5"))
data$study_surv_who_22_c2.factor = factor(data$study_surv_who_22_c2,levels=c("1","2","3","4","5"))
data$study_surv_who_23_c2.factor = factor(data$study_surv_who_23_c2,levels=c("1","2","3","4","5"))
data$study_surv_who_24_c2.factor = factor(data$study_surv_who_24_c2,levels=c("1","2","3","4","5"))
data$study_surv_who_25_c2.factor = factor(data$study_surv_who_25_c2,levels=c("1","2","3","4","5"))
data$study_surv_who_26_c2.factor = factor(data$study_surv_who_26_c2,levels=c("5","4","3","2","1"))
data$study_surv_gfma_1_c2.factor = factor(data$study_surv_gfma_1_c2,levels=c("0","1","2","3"))
data$study_surv_gfma_2_c2.factor = factor(data$study_surv_gfma_2_c2,levels=c("0","1","2","3"))
data$study_surv_gfma_3_c2.factor = factor(data$study_surv_gfma_3_c2,levels=c("0","1","2","3"))
data$study_surv_gfma_4_c2.factor = factor(data$study_surv_gfma_4_c2,levels=c("0","1","2","3"))
data$study_surv_gfma_5_c2.factor = factor(data$study_surv_gfma_5_c2,levels=c("0","1","2","3"))
data$study_surv_gfma_6_c2.factor = factor(data$study_surv_gfma_6_c2,levels=c("0","1","2","3"))
data$study_surv_gfma_7_c2.factor = factor(data$study_surv_gfma_7_c2,levels=c("0","1","2","3"))
data$study_surv_gfma_8_c2.factor = factor(data$study_surv_gfma_8_c2,levels=c("0","1","2","3"))
data$study_surv_gfma_9_c2.factor = factor(data$study_surv_gfma_9_c2,levels=c("0","1","2","3"))
data$study_surv_gfma_10_c2.factor = factor(data$study_surv_gfma_10_c2,levels=c("0","1","2","3"))
data$study_surv_gfma_11_c2.factor = factor(data$study_surv_gfma_11_c2,levels=c("0","1","2","3"))
data$study_surv_gfma_12_c2.factor = factor(data$study_surv_gfma_12_c2,levels=c("0","1","2","3"))
data$study_surv_gfma_13_c2.factor = factor(data$study_surv_gfma_13_c2,levels=c("0","1","2","3"))
data$study_surv_gfma_14_c2.factor = factor(data$study_surv_gfma_14_c2,levels=c("0","1","2","3"))
data$study_surv_gfma_15_c2.factor = factor(data$study_surv_gfma_15_c2,levels=c("0","1","2","3"))
data$study_surv_gfma_16_c2.factor = factor(data$study_surv_gfma_16_c2,levels=c("0","1","2","3"))
data$study_surv_gfma_17_c2.factor = factor(data$study_surv_gfma_17_c2,levels=c("0","1","2","3"))
data$study_surv_gfma_18_c2.factor = factor(data$study_surv_gfma_18_c2,levels=c("0","1","2","3"))
data$study_surv_gfma_19_c2.factor = factor(data$study_surv_gfma_19_c2,levels=c("0","1","2","3"))
data$study_surv_gfma_20_c2.factor = factor(data$study_surv_gfma_20_c2,levels=c("0","1","2","3"))
data$study_surv_gratitude_1_c2.factor = factor(data$study_surv_gratitude_1_c2,levels=c("1","2","3","4","5","6","7"))
data$study_surv_gratitude_2_c2.factor = factor(data$study_surv_gratitude_2_c2,levels=c("1","2","3","4","5","6","7"))
data$study_surv_gratitude_3_c2.factor = factor(data$study_surv_gratitude_3_c2,levels=c("1","2","3","4","5","6","7"))
data$study_surv_gratitude_4_c2.factor = factor(data$study_surv_gratitude_4_c2,levels=c("1","2","3","4","5","6","7"))
data$study_surv_gratitude_5_c2.factor = factor(data$study_surv_gratitude_5_c2,levels=c("1","2","3","4","5","6","7"))
data$study_surv_gratitude_6_c2.factor = factor(data$study_surv_gratitude_6_c2,levels=c("1","2","3","4","5","6","7"))
data$study_surveys2_checkpoint2_complete.factor = factor(data$study_surveys2_checkpoint2_complete,levels=c("0","1","2"))

levels(data$redcap_event_name.factor)=c("Entry (Arm 1: Arm 1)","Checkpoint 1 (Arm 1: Arm 1)","Checkpoint 2 (Arm 1: Arm 1)","Checkpoint 3 (Arm 1: Arm 1)","Checkpoint 4 (Arm 1: Arm 1)","Reconsent (Arm 1: Arm 1)","Checkpoint 5 (Arm 1: Arm 1)","Checkpoint 6 (Arm 1: Arm 1)","EMA Event (Arm 1: Arm 1)","EMA_Post_DWD (Arm 1: Arm 1)","slots (Arm 2: Slots)","reservations (Arm 3: Reservations)")
levels(data$redcap_repeat_instrument.factor)=c("EMA_Survey","EMA_Post_DWDSurvey")
levels(data$study_survey_c2_attending.factor)=c("Virtually","In-person")
levels(data$study_surv_pfi_1_c2.factor)=c("Not true at all","Somewhat true","Moderately true","Very true","Completely true")
levels(data$study_surv_pfi_2_c2.factor)=c("Not true at all","Somewhat true","Moderately true","Very true","Completely true")
levels(data$study_surv_pfi_3_c2.factor)=c("Not true at all","Somewhat true","Moderately true","Very true","Completely true")
levels(data$study_surv_pfi_4_c2.factor)=c("Not true at all","Somewhat true","Moderately true","Very true","Completely true")
levels(data$study_surv_pfi_5_c2.factor)=c("Not true at all","Somewhat true","Moderately true","Very true","Completely true")
levels(data$study_surv_pfi_6_c2.factor)=c("Not true at all","Somewhat true","Moderately true","Very true","Completely true")
levels(data$study_surv_pfi_7_c2.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_8_c2.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_9_c2.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_10_c2.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_11_c2.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_12_c2.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_13_c2.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_14_c2.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_15_c2.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_16_c2.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_cdrisc_1_c2.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_2_c2.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_3_c2.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_4_c2.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_5_c2.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_6_c2.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_7_c2.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_8_c2.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_9_c2.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_10_c2.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_perma_1_c2.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_2_c2.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_3_c2.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_4_c2.factor)=c("Terrible 0","1","2","3","4","5","6","7","8","9","Excellence 10")
levels(data$study_surv_perma_5_c2.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_6_c2.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_7_c2.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_8_c2.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_9_c2.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_10_c2.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_11_c2.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_12_c2.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_13_c2.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_14_c2.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_15_c2.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_16_c2.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_17_c2.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_18_c2.factor)=c("Terrible 0","1","2","3","4","5","6","7","8","9","Excellence 10")
levels(data$study_surv_perma_19_c2.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_20_c2.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_21_c2.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_22_c2.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_23_c2.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_pss_1_c2.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_2_c2.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_3_c2.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_4_c2.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_5_c2.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_6_c2.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_7_c2.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_8_c2.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_9_c2.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_10_c2.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_needs_1_c2.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_2_c2.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_3_c2.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_4_c2.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_5_c2.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_6_c2.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_7_c2.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_8_c2.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_9_c2.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_10_c2.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_11_c2.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_12_c2.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_13_c2.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_14_c2.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_15_c2.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_16_c2.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_17_c2.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_18_c2.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_19_c2.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_20_c2.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_21_c2.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_22_c2.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_23_c2.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_24_c2.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_25_c2.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_26_c2.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_27_c2.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_28_c2.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_29_c2.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_30_c2.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_31_c2.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_32_c2.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_33_c2.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_34_c2.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_35_c2.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_36_c2.factor)=c("Yes","Partly","No")
levels(data$study_surveys1_checkpoint2_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$study_surv_olbi_1_c2.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_2_c2.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_3_c2.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_4_c2.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_5_c2.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_6_c2.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_7_c2.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_8_c2.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_9_c2.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_10_c2.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_11_c2.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_12_c2.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_13_c2.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_14_c2.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_15_c2.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_16_c2.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_gse_1_c2.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_2_c2.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_3_c2.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_4_c2.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_5_c2.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_6_c2.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_7_c2.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_8_c2.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_9_c2.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_10_c2.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_who_1_c2.factor)=c("Very poor","Poor","Neither poor or good","Good","Very good")
levels(data$study_surv_who_2_c2.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_3_c2.factor)=c("Not at all","A little","A moderate amount","Very much","An extreme amount")
levels(data$study_surv_who_4_c2.factor)=c("Not at all","A little","A moderate amount","Very much","An extreme amount")
levels(data$study_surv_who_5_c2.factor)=c("Not at all","A little","A moderate amount","Very much","An extreme amount")
levels(data$study_surv_who_6_c2.factor)=c("Not at all","A little","A moderate amount","Very much","An extreme amount")
levels(data$study_surv_who_7_c2.factor)=c("Not at all","A little","A moderate amount","Very much","Extremely")
levels(data$study_surv_who_8_c2.factor)=c("Not at all","A little","A moderate amount","Very much","Extremely")
levels(data$study_surv_who_9_c2.factor)=c("Not at all","A little","A moderate amount","Very much","Extremely")
levels(data$study_surv_who_10_c2.factor)=c("Not at all","A little","Moderately","Mostly","Completely")
levels(data$study_surv_who_11_c2.factor)=c("Not at all","A little","Moderately","Mostly","Completely")
levels(data$study_surv_who_12_c2.factor)=c("Not at all","A little","Moderately","Mostly","Completely")
levels(data$study_surv_who_13_c2.factor)=c("Not at all","A little","Moderately","Mostly","Completely")
levels(data$study_surv_who_14_c2.factor)=c("Not at all","A little","Moderately","Mostly","Completely")
levels(data$study_surv_who_15_c2.factor)=c("Very poor","Poor","Neither poor or good","Good","Very good")
levels(data$study_surv_who_16_c2.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_17_c2.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_18_c2.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_19_c2.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_20_c2.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_21_c2.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_22_c2.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_23_c2.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_24_c2.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_25_c2.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_26_c2.factor)=c("Never","Seldom","Quite often","Very often","Always")
levels(data$study_surv_gfma_1_c2.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_2_c2.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_3_c2.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_4_c2.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_5_c2.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_6_c2.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_7_c2.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_8_c2.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_9_c2.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_10_c2.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_11_c2.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_12_c2.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_13_c2.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_14_c2.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_15_c2.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_16_c2.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_17_c2.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_18_c2.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_19_c2.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_20_c2.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gratitude_1_c2.factor)=c("Strongly disagree","Disagree","Slightly disagree","Neutral","Slightly agree","Agree","Strongly agree")
levels(data$study_surv_gratitude_2_c2.factor)=c("Strongly disagree","Disagree","Slightly disagree","Neutral","Slightly agree","Agree","Strongly agree")
levels(data$study_surv_gratitude_3_c2.factor)=c("Strongly disagree","Disagree","Slightly disagree","Neutral","Slightly agree","Agree","Strongly agree")
levels(data$study_surv_gratitude_4_c2.factor)=c("Strongly disagree","Disagree","Slightly disagree","Neutral","Slightly agree","Agree","Strongly agree")
levels(data$study_surv_gratitude_5_c2.factor)=c("Strongly disagree","Disagree","Slightly disagree","Neutral","Slightly agree","Agree","Strongly agree")
levels(data$study_surv_gratitude_6_c2.factor)=c("Strongly disagree","Disagree","Slightly disagree","Neutral","Slightly agree","Agree","Strongly agree")
levels(data$study_surveys2_checkpoint2_complete.factor)=c("Incomplete","Unverified","Complete")
