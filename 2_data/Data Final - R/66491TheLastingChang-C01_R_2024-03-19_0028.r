#Clear existing data and graphics
rm(list=ls())
graphics.off()
#Load Hmisc library
library(Hmisc)
#Read Data
data=read.csv('66491TheLastingChang-C01_DATA_2024-03-19_0028.csv')
#Setting Labels

label(data$record_id)="Record ID"
label(data$redcap_event_name)="Event Name"
label(data$redcap_repeat_instrument)="Repeat Instrument"
label(data$redcap_repeat_instance)="Repeat Instance"
label(data$study_surv_date1)="Date"
label(data$study_surv_pfi_1)="I feel happy at work"
label(data$study_surv_pfi_2)="I feel worthwhile at work"
label(data$study_surv_pfi_3)="My work is satisfying to me"
label(data$study_surv_pfi_4)="I feel in control when dealing with difficult problems at work."
label(data$study_surv_pfi_5)="My work is meaningful to me."
label(data$study_surv_pfi_6)="Im contributing professionally in the ways I value most."
label(data$study_surv_pfi_7)="A sense of dread when I think about work I have to do"
label(data$study_surv_pfi_8)="Physically exhausted at work"
label(data$study_surv_pfi_9)="Lacking in enthusiasm at work"
label(data$study_surv_pfi_10)="Emotionally exhausted at work"
label(data$study_surv_pfi_11)="Less empathetic with  people at work"
label(data$study_surv_pfi_12)="Less empathetic with my colleagues"
label(data$study_surv_pfi_13)="Less sensitive to others feelings/emotions"
label(data$study_surv_pfi_14)="Less interested in talking with people at work"
label(data$study_surv_pfi_15)="Less connected with people at work"
label(data$study_surv_pfi_16)="Less connected with my colleagues"
label(data$study_surv_cdrisc_1)="I am able to deal with change"
label(data$study_surv_cdrisc_2)="I can deal with whatever comes my way"
label(data$study_surv_cdrisc_3)="I try to see the funny side of things when I am faced with problems"
label(data$study_surv_cdrisc_4)="Dealing with stress can make me stronger"
label(data$study_surv_cdrisc_5)="I tend to bounce back after being sick, injury, or other hardships"
label(data$study_surv_cdrisc_6)="I believe I can achieve what I want, even if there are problems"
label(data$study_surv_cdrisc_7)="Under pressure, I still think clearly"
label(data$study_surv_cdrisc_8)="I do not lose hope following a failure"
label(data$study_surv_cdrisc_9)="I think of myself as a strong person when with lifes challenges and difficulties"
label(data$study_surv_cdrisc_10)="I am able to handle unpleasant or painful feelings, like sadness, fear, or anger"
label(data$study_surv_perma_1)="In general, to what extent do you lead a purposeful and meaningful life?"
label(data$study_surv_perma_2)="How much of the time do you feel you are making progress towards accomplishing your goals?"
label(data$study_surv_perma_3)="How often do you become absorbed in what you are doing?"
label(data$study_surv_perma_4)="In general, how would you say your health is?"
label(data$study_surv_perma_5)="In general, how often do you feel joyful?"
label(data$study_surv_perma_6)="To what extent do you receive help and support from others when you need it?"
label(data$study_surv_perma_7)="In general, how often do you feel anxious?"
label(data$study_surv_perma_8)="How often do you achieve the important goals you have set for yourself?"
label(data$study_surv_perma_9)="In general, to what extent do you feel that what you do in your life is valuable and worthwhile?"
label(data$study_surv_perma_10)="In general, how often do you feel positive?"
label(data$study_surv_perma_11)="In general, to what extent do you feel excited and interested in things?"
label(data$study_surv_perma_12)="How lonely do you feel in your daily life?"
label(data$study_surv_perma_13)="How satisfied are you with your current physical health?"
label(data$study_surv_perma_14)="In general, how often do you feel angry?"
label(data$study_surv_perma_15)="To what extent do you feel loved?"
label(data$study_surv_perma_16)="How often are you able to handle your responsibilities?"
label(data$study_surv_perma_17)="To what extent do you generally feel you have a sense of direction in your life?"
label(data$study_surv_perma_18)="Compared to others of your same age and sex, how is your health?"
label(data$study_surv_perma_19)="How satisfied are you with your personal relationships?"
label(data$study_surv_perma_20)="In general, how often do you feel sad?"
label(data$study_surv_perma_21)="How often do you lose track of time while doing something you enjoy?"
label(data$study_surv_perma_22)="In general, to what extent do you feel contented?"
label(data$study_surv_perma_23)="Taking all things together, how happy would you say you are?"
label(data$study_surv_pss_1)="In the last month, how often have you been upset because of something that happened unexpectedly?"
label(data$study_surv_pss_2)="In the last month, how often have you felt that you were unable to control the important things in your life?"
label(data$study_surv_pss_3)="In the last month, how often have you felt nervous and stressed?"
label(data$study_surv_pss_4)="In the last month, how often have you felt confident about your ability to handle your personal problems?"
label(data$study_surv_pss_5)="In the last month, how often have you felt that things were going your way?"
label(data$study_surv_pss_6)="In the last month, how often have you found that you could not cope with all the things that you had to do?"
label(data$study_surv_pss_7)="In the last month, how often have you been able to control irritations in your life?"
label(data$study_surv_pss_8)="In the last month, how often have you felt that you were on top of things?"
label(data$study_surv_pss_9)="In the last month, how often have you been angered because of things happened that were outside of your control?"
label(data$study_surv_pss_10)="In the last month, how often have you felt difficulties were piling up so high that you could not overcome them?"
label(data$study_survey_wheel1)="Today"
label(data$study_survey_wheel1_f)="Where you really want to be"
label(data$study_survey_wheel_2)="Today"
label(data$study_survey_wheel_2_f)="Where you really want to be"
label(data$study_survey_wheel_3)="Today"
label(data$study_survey_wheel_3_f)="Where you really want to be"
label(data$study_survey_wheel_4)="Today"
label(data$study_survey_wheel_4_f)="Where you really want to be"
label(data$study_survey_wheel_5)="Today"
label(data$study_survey_wheel_5_f)="Where you really want to be"
label(data$study_survey_wheel_6)="Today"
label(data$study_survey_wheel_6_f)="Where you really want to be"
label(data$study_survey_wheel_7)="Today"
label(data$study_survey_wheel_7_f)="Where you really want to be"
label(data$study_survey_wheel_8)="Which area do you most want to focus on improving?  "
label(data$study_survey_wheel_8_2)="Which is the second area you most want to focus on improving?"
label(data$study_surveys_complete)="Complete?"
label(data$study_surv2_date1)="Date"
label(data$study_surv_olbi_1)="I always find new and interesting aspects in my work"
label(data$study_surv_olbi_2)="There are days when I feel tired before I arrive at work"
label(data$study_surv_olbi_3)="It happens more and more often that I talk about my work in a negative way"
label(data$study_surv_olbi_4)="After work, I tend to need more time than in the past in order to relax and feel better"
label(data$study_surv_olbi_5)="I can tolerate the pressure of my work very well"
label(data$study_surv_olbi_6)="Lately, I tend to think less at work and do my job almost mechanically"
label(data$study_surv_olbi_7)="I find my work to be a positive challenge"
label(data$study_surv_olbi_8)="During my work, I often feel emotionally drained"
label(data$study_surv_olbi_9)="Over time, one can become disconnected from this type of work"
label(data$study_surv_olbi_10)="After working, I have enough energy for my leisure activities"
label(data$study_surv_olbi_11)="Sometimes I feel sickened by my work tasks"
label(data$study_surv_olbi_12)="After my work, I usually feel worn out and weary"
label(data$study_surv_olbi_13)="This is the only type of work that I can imagine myself doing"
label(data$study_surv_olbi_14)="Usually, I can manage the amount of my work well"
label(data$study_surv_olbi_15)="I feel more and more engaged in my work"
label(data$study_surv_olbi_16)="When I work, I usually feel energized"
label(data$study_surv_gse_1)="I can always manage to solve difficult problems if I try hard enough"
label(data$study_surv_gse_2)="If someone opposes me, I can find the means and ways to get what I want"
label(data$study_surv_gse_3)="It is easy for me to stick to my aims and accomplish my goals"
label(data$study_surv_gse_4)="I am confident that I could deal efficiently with unexpected events"
label(data$study_surv_gse_5)="Thanks to my resourcefulness, I know how to handle unforeseen situations"
label(data$study_surv_gse_6)="I can solve most problems if I invest the necessary effort"
label(data$study_surv_gse_7)="I can remain calm when facing difficulties because I can rely on my coping abilities"
label(data$study_surv_gse_8)="When I am confronted with a problem, I can usually find several situations"
label(data$study_surv_gse_9)="If I am in trouble, I can usually think of a solution"
label(data$study_surv_gse_10)="I can usually handle whatever comes my way"
label(data$study_surv_who_1)="How would you rate your quality of life?"
label(data$study_surv_who_2)="How satisfied are you with your health?"
label(data$study_surv_who_3)="To what extent to you feel that physical pain prevents you from doing what you need to do?"
label(data$study_surv_who_4)="How much do you need any medical treatment to function in your daily life?"
label(data$study_surv_who_5)="How much do you enjoy life?"
label(data$study_surv_who_6)="To what extent do you feel your life to be meaningful?"
label(data$study_surv_who_7)="How well are you able to concentrate?"
label(data$study_surv_who_8)="How safe do you feel in your daily life?"
label(data$study_surv_who_9)="How healthy is your physical environment?"
label(data$study_surv_who_10)="Do you have enough energy for everyday life?"
label(data$study_surv_who_11)="Are you able to accept your bodily appearance?"
label(data$study_surv_who_12)="Have you enough money to meet your needs?"
label(data$study_surv_who_13)="How available to you is the information that you need in your day-to-day life?"
label(data$study_surv_who_14)="To what extent do you have the opportunity for leisure activities?"
label(data$study_surv_who_15)="How well are you able to get around?"
label(data$study_surv_who_16)="How satisfied are you with your sleep?"
label(data$study_surv_who_17)="How satisfied are you with your ability to perform your daily living activities?"
label(data$study_surv_who_18)="How satisfied are you with your capacity for work?"
label(data$study_surv_who_19)="How satisfied are you with yourself?"
label(data$study_surv_who_20)="How satisfied are you with your personal relationships?"
label(data$study_surv_who_21)="How satisfied are you with your sex life?"
label(data$study_surv_who_22)="How satisfied are you with the support you get from your friends?"
label(data$study_surv_who_23)="How satisfied are you with the conditions of your living place?"
label(data$study_surv_who_24)="How satisfied are you with your access to health services?"
label(data$study_surv_who_25)="How satisfied are you with your transport?"
label(data$study_surv_who_26)="How often do you have negative feelings such as blue mood, despair, anxiety, depression?"
label(data$study_surv_gfma_1)="Your intelligence is something very basic about you that you cant change very much"
label(data$study_surv_gfma_2)="No matter how much intelligence you have, you can always change it quite a bit"
label(data$study_surv_gfma_3)="You can always substantially change how intelligent you are"
label(data$study_surv_gfma_4)="You are a certain kind of person, and there is not much that can be done to really change that"
label(data$study_surv_gfma_5)="You can always change basic things about the kind of person you are"
label(data$study_surv_gfma_6)="Music talent can be learned by anyone"
label(data$study_surv_gfma_7)="Only a few people will be truly good at sports - you have to be born with it."
label(data$study_surv_gfma_8)="Math is much easier to learn if you are male or maybe come from a culture that values math"
label(data$study_surv_gfma_9)="The harder you work at something, the better you will be at it"
label(data$study_surv_gfma_10)="No matter what kind of person you are, you can always change substantially"
label(data$study_surv_gfma_11)="Trying new things is stressful for me and I avoid it"
label(data$study_surv_gfma_12)="Some people are good and kind, some are not - it is not often that people change"
label(data$study_surv_gfma_13)="I appreciate when parents, coaches, teachers give me feedback about my performance"
label(data$study_surv_gfma_14)="I often get angry when I get feedback about my performance"
label(data$study_surv_gfma_15)="All human beings without a brain injury or birth defect are capable of the same amount of learning"
label(data$study_surv_gfma_16)="You can learn new things, but you cant really change how intelligent you are"
label(data$study_surv_gfma_17)="You can do things differently, but the important part of who you are cant really be changed"
label(data$study_surv_gfma_18)="Human beings are basically good, but sometimes make terrible decisions"
label(data$study_surv_gfma_19)="An important reason why I do my schoolwork is that I like to learn new things"
label(data$study_surv_gfma_20)="Truly smart people dont need to try hard"
label(data$study_surv_gratitude_1)="I have so much in life to be thankful for"
label(data$study_surv_gratitude_2)="If I had to list everything that I felt grateful for, it would be a very long list"
label(data$study_surv_gratitude_3)="When I look at the world, I dont see much to be grateful for"
label(data$study_surv_gratitude_4)="I am grateful to a wide variety of people"
label(data$study_surv_gratitude_5)="As I get older, I find myself more able to appreciate the people, events, and situations that have been part of my life history"
label(data$study_surv_gratitude_6)="Long amount of time can go by before I feel grateful for something or someone"
label(data$study_surveys_2_complete)="Complete?"
#Setting Units


#Setting Factors(will create new variable for factors)
data$redcap_event_name.factor = factor(data$redcap_event_name,levels=c("entry_arm_1","checkpoint_1_arm_1","checkpoint_2_arm_1","checkpoint_3_arm_1","checkpoint_4_arm_1","reconsent_arm_1","checkpoint_5_arm_1","checkpoint_6_arm_1","ema_event_arm_1","ema_post_dwd_arm_1","slots_arm_2","reservations_arm_3"))
data$redcap_repeat_instrument.factor = factor(data$redcap_repeat_instrument,levels=c("ema","ema_post_dwdsurvey"))
data$study_surv_pfi_1.factor = factor(data$study_surv_pfi_1,levels=c("0","1","2","3","4"))
data$study_surv_pfi_2.factor = factor(data$study_surv_pfi_2,levels=c("0","1","2","3","4"))
data$study_surv_pfi_3.factor = factor(data$study_surv_pfi_3,levels=c("0","1","2","3","4"))
data$study_surv_pfi_4.factor = factor(data$study_surv_pfi_4,levels=c("0","1","2","3","4"))
data$study_surv_pfi_5.factor = factor(data$study_surv_pfi_5,levels=c("0","1","2","3","4"))
data$study_surv_pfi_6.factor = factor(data$study_surv_pfi_6,levels=c("0","1","2","3","4"))
data$study_surv_pfi_7.factor = factor(data$study_surv_pfi_7,levels=c("0","1","2","3","4"))
data$study_surv_pfi_8.factor = factor(data$study_surv_pfi_8,levels=c("0","1","2","3","4"))
data$study_surv_pfi_9.factor = factor(data$study_surv_pfi_9,levels=c("0","1","2","3","4"))
data$study_surv_pfi_10.factor = factor(data$study_surv_pfi_10,levels=c("0","1","2","3","4"))
data$study_surv_pfi_11.factor = factor(data$study_surv_pfi_11,levels=c("0","1","2","3","4"))
data$study_surv_pfi_12.factor = factor(data$study_surv_pfi_12,levels=c("0","1","2","3","4"))
data$study_surv_pfi_13.factor = factor(data$study_surv_pfi_13,levels=c("0","1","2","3","4"))
data$study_surv_pfi_14.factor = factor(data$study_surv_pfi_14,levels=c("0","1","2","3","4"))
data$study_surv_pfi_15.factor = factor(data$study_surv_pfi_15,levels=c("0","1","2","3","4"))
data$study_surv_pfi_16.factor = factor(data$study_surv_pfi_16,levels=c("0","1","2","3","4"))
data$study_surv_cdrisc_1.factor = factor(data$study_surv_cdrisc_1,levels=c("1","2","3","4"))
data$study_surv_cdrisc_2.factor = factor(data$study_surv_cdrisc_2,levels=c("1","2","3","4"))
data$study_surv_cdrisc_3.factor = factor(data$study_surv_cdrisc_3,levels=c("1","2","3","4"))
data$study_surv_cdrisc_4.factor = factor(data$study_surv_cdrisc_4,levels=c("1","2","3","4"))
data$study_surv_cdrisc_5.factor = factor(data$study_surv_cdrisc_5,levels=c("1","2","3","4"))
data$study_surv_cdrisc_6.factor = factor(data$study_surv_cdrisc_6,levels=c("1","2","3","4"))
data$study_surv_cdrisc_7.factor = factor(data$study_surv_cdrisc_7,levels=c("1","2","3","4"))
data$study_surv_cdrisc_8.factor = factor(data$study_surv_cdrisc_8,levels=c("1","2","3","4"))
data$study_surv_cdrisc_9.factor = factor(data$study_surv_cdrisc_9,levels=c("1","2","3","4"))
data$study_surv_cdrisc_10.factor = factor(data$study_surv_cdrisc_10,levels=c("1","2","3","4"))
data$study_surv_perma_1.factor = factor(data$study_surv_perma_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_2.factor = factor(data$study_surv_perma_2,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_3.factor = factor(data$study_surv_perma_3,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_4.factor = factor(data$study_surv_perma_4,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_5.factor = factor(data$study_surv_perma_5,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_6.factor = factor(data$study_surv_perma_6,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_7.factor = factor(data$study_surv_perma_7,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_8.factor = factor(data$study_surv_perma_8,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_9.factor = factor(data$study_surv_perma_9,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_10.factor = factor(data$study_surv_perma_10,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_11.factor = factor(data$study_surv_perma_11,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_12.factor = factor(data$study_surv_perma_12,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_13.factor = factor(data$study_surv_perma_13,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_14.factor = factor(data$study_surv_perma_14,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_15.factor = factor(data$study_surv_perma_15,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_16.factor = factor(data$study_surv_perma_16,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_17.factor = factor(data$study_surv_perma_17,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_18.factor = factor(data$study_surv_perma_18,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_19.factor = factor(data$study_surv_perma_19,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_20.factor = factor(data$study_surv_perma_20,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_21.factor = factor(data$study_surv_perma_21,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_22.factor = factor(data$study_surv_perma_22,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_23.factor = factor(data$study_surv_perma_23,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_pss_1.factor = factor(data$study_surv_pss_1,levels=c("0","1","2","3","4"))
data$study_surv_pss_2.factor = factor(data$study_surv_pss_2,levels=c("0","1","2","3","4"))
data$study_surv_pss_3.factor = factor(data$study_surv_pss_3,levels=c("0","1","2","3","4"))
data$study_surv_pss_4.factor = factor(data$study_surv_pss_4,levels=c("0","1","2","3","4"))
data$study_surv_pss_5.factor = factor(data$study_surv_pss_5,levels=c("0","1","2","3","4"))
data$study_surv_pss_6.factor = factor(data$study_surv_pss_6,levels=c("0","1","2","3","4"))
data$study_surv_pss_7.factor = factor(data$study_surv_pss_7,levels=c("0","1","2","3","4"))
data$study_surv_pss_8.factor = factor(data$study_surv_pss_8,levels=c("0","1","2","3","4"))
data$study_surv_pss_9.factor = factor(data$study_surv_pss_9,levels=c("0","1","2","3","4"))
data$study_surv_pss_10.factor = factor(data$study_surv_pss_10,levels=c("0","1","2","3","4"))
data$study_survey_wheel1.factor = factor(data$study_survey_wheel1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_survey_wheel1_f.factor = factor(data$study_survey_wheel1_f,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_survey_wheel_2.factor = factor(data$study_survey_wheel_2,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_survey_wheel_2_f.factor = factor(data$study_survey_wheel_2_f,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_survey_wheel_3.factor = factor(data$study_survey_wheel_3,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_survey_wheel_3_f.factor = factor(data$study_survey_wheel_3_f,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_survey_wheel_4.factor = factor(data$study_survey_wheel_4,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_survey_wheel_4_f.factor = factor(data$study_survey_wheel_4_f,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_survey_wheel_5.factor = factor(data$study_survey_wheel_5,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_survey_wheel_5_f.factor = factor(data$study_survey_wheel_5_f,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_survey_wheel_6.factor = factor(data$study_survey_wheel_6,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_survey_wheel_6_f.factor = factor(data$study_survey_wheel_6_f,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_survey_wheel_7.factor = factor(data$study_survey_wheel_7,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_survey_wheel_7_f.factor = factor(data$study_survey_wheel_7_f,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_survey_wheel_8.factor = factor(data$study_survey_wheel_8,levels=c("1","2","3","4","5","6","7"))
data$study_survey_wheel_8_2.factor = factor(data$study_survey_wheel_8_2,levels=c("1","2","3","4","5","6","7"))
data$study_surveys_complete.factor = factor(data$study_surveys_complete,levels=c("0","1","2"))
data$study_surv_olbi_1.factor = factor(data$study_surv_olbi_1,levels=c("1","2","3","4"))
data$study_surv_olbi_2.factor = factor(data$study_surv_olbi_2,levels=c("1","2","3","4"))
data$study_surv_olbi_3.factor = factor(data$study_surv_olbi_3,levels=c("1","2","3","4"))
data$study_surv_olbi_4.factor = factor(data$study_surv_olbi_4,levels=c("1","2","3","4"))
data$study_surv_olbi_5.factor = factor(data$study_surv_olbi_5,levels=c("1","2","3","4"))
data$study_surv_olbi_6.factor = factor(data$study_surv_olbi_6,levels=c("1","2","3","4"))
data$study_surv_olbi_7.factor = factor(data$study_surv_olbi_7,levels=c("1","2","3","4"))
data$study_surv_olbi_8.factor = factor(data$study_surv_olbi_8,levels=c("1","2","3","4"))
data$study_surv_olbi_9.factor = factor(data$study_surv_olbi_9,levels=c("1","2","3","4"))
data$study_surv_olbi_10.factor = factor(data$study_surv_olbi_10,levels=c("1","2","3","4"))
data$study_surv_olbi_11.factor = factor(data$study_surv_olbi_11,levels=c("1","2","3","4"))
data$study_surv_olbi_12.factor = factor(data$study_surv_olbi_12,levels=c("1","2","3","4"))
data$study_surv_olbi_13.factor = factor(data$study_surv_olbi_13,levels=c("1","2","3","4"))
data$study_surv_olbi_14.factor = factor(data$study_surv_olbi_14,levels=c("1","2","3","4"))
data$study_surv_olbi_15.factor = factor(data$study_surv_olbi_15,levels=c("1","2","3","4"))
data$study_surv_olbi_16.factor = factor(data$study_surv_olbi_16,levels=c("1","2","3","4"))
data$study_surv_gse_1.factor = factor(data$study_surv_gse_1,levels=c("1","2","3","4"))
data$study_surv_gse_2.factor = factor(data$study_surv_gse_2,levels=c("1","2","3","4"))
data$study_surv_gse_3.factor = factor(data$study_surv_gse_3,levels=c("1","2","3","4"))
data$study_surv_gse_4.factor = factor(data$study_surv_gse_4,levels=c("1","2","3","4"))
data$study_surv_gse_5.factor = factor(data$study_surv_gse_5,levels=c("1","2","3","4"))
data$study_surv_gse_6.factor = factor(data$study_surv_gse_6,levels=c("1","2","3","4"))
data$study_surv_gse_7.factor = factor(data$study_surv_gse_7,levels=c("1","2","3","4"))
data$study_surv_gse_8.factor = factor(data$study_surv_gse_8,levels=c("1","2","3","4"))
data$study_surv_gse_9.factor = factor(data$study_surv_gse_9,levels=c("1","2","3","4"))
data$study_surv_gse_10.factor = factor(data$study_surv_gse_10,levels=c("1","2","3","4"))
data$study_surv_who_1.factor = factor(data$study_surv_who_1,levels=c("1","2","3","4","5"))
data$study_surv_who_2.factor = factor(data$study_surv_who_2,levels=c("1","2","3","4","5"))
data$study_surv_who_3.factor = factor(data$study_surv_who_3,levels=c("1","2","3","4","5"))
data$study_surv_who_4.factor = factor(data$study_surv_who_4,levels=c("1","2","3","4","5"))
data$study_surv_who_5.factor = factor(data$study_surv_who_5,levels=c("1","2","3","4","5"))
data$study_surv_who_6.factor = factor(data$study_surv_who_6,levels=c("1","2","3","4","5"))
data$study_surv_who_7.factor = factor(data$study_surv_who_7,levels=c("1","2","3","4","5"))
data$study_surv_who_8.factor = factor(data$study_surv_who_8,levels=c("1","2","3","4","5"))
data$study_surv_who_9.factor = factor(data$study_surv_who_9,levels=c("1","2","3","4","5"))
data$study_surv_who_10.factor = factor(data$study_surv_who_10,levels=c("0","1","2","3","4"))
data$study_surv_who_11.factor = factor(data$study_surv_who_11,levels=c("0","1","2","3","4"))
data$study_surv_who_12.factor = factor(data$study_surv_who_12,levels=c("0","1","2","3","4"))
data$study_surv_who_13.factor = factor(data$study_surv_who_13,levels=c("0","1","2","3","4"))
data$study_surv_who_14.factor = factor(data$study_surv_who_14,levels=c("0","1","2","3","4"))
data$study_surv_who_15.factor = factor(data$study_surv_who_15,levels=c("1","2","3","4","5"))
data$study_surv_who_16.factor = factor(data$study_surv_who_16,levels=c("1","2","3","4","5"))
data$study_surv_who_17.factor = factor(data$study_surv_who_17,levels=c("1","2","3","4","5"))
data$study_surv_who_18.factor = factor(data$study_surv_who_18,levels=c("1","2","3","4","5"))
data$study_surv_who_19.factor = factor(data$study_surv_who_19,levels=c("1","2","3","4","5"))
data$study_surv_who_20.factor = factor(data$study_surv_who_20,levels=c("1","2","3","4","5"))
data$study_surv_who_21.factor = factor(data$study_surv_who_21,levels=c("1","2","3","4","5"))
data$study_surv_who_22.factor = factor(data$study_surv_who_22,levels=c("1","2","3","4","5"))
data$study_surv_who_23.factor = factor(data$study_surv_who_23,levels=c("1","2","3","4","5"))
data$study_surv_who_24.factor = factor(data$study_surv_who_24,levels=c("1","2","3","4","5"))
data$study_surv_who_25.factor = factor(data$study_surv_who_25,levels=c("1","2","3","4","5"))
data$study_surv_who_26.factor = factor(data$study_surv_who_26,levels=c("5","4","3","2","1"))
data$study_surv_gfma_1.factor = factor(data$study_surv_gfma_1,levels=c("0","1","2","3"))
data$study_surv_gfma_2.factor = factor(data$study_surv_gfma_2,levels=c("0","1","2","3"))
data$study_surv_gfma_3.factor = factor(data$study_surv_gfma_3,levels=c("0","1","2","3"))
data$study_surv_gfma_4.factor = factor(data$study_surv_gfma_4,levels=c("0","1","2","3"))
data$study_surv_gfma_5.factor = factor(data$study_surv_gfma_5,levels=c("0","1","2","3"))
data$study_surv_gfma_6.factor = factor(data$study_surv_gfma_6,levels=c("0","1","2","3"))
data$study_surv_gfma_7.factor = factor(data$study_surv_gfma_7,levels=c("0","1","2","3"))
data$study_surv_gfma_8.factor = factor(data$study_surv_gfma_8,levels=c("0","1","2","3"))
data$study_surv_gfma_9.factor = factor(data$study_surv_gfma_9,levels=c("0","1","2","3"))
data$study_surv_gfma_10.factor = factor(data$study_surv_gfma_10,levels=c("0","1","2","3"))
data$study_surv_gfma_11.factor = factor(data$study_surv_gfma_11,levels=c("0","1","2","3"))
data$study_surv_gfma_12.factor = factor(data$study_surv_gfma_12,levels=c("0","1","2","3"))
data$study_surv_gfma_13.factor = factor(data$study_surv_gfma_13,levels=c("0","1","2","3"))
data$study_surv_gfma_14.factor = factor(data$study_surv_gfma_14,levels=c("0","1","2","3"))
data$study_surv_gfma_15.factor = factor(data$study_surv_gfma_15,levels=c("0","1","2","3"))
data$study_surv_gfma_16.factor = factor(data$study_surv_gfma_16,levels=c("0","1","2","3"))
data$study_surv_gfma_17.factor = factor(data$study_surv_gfma_17,levels=c("0","1","2","3"))
data$study_surv_gfma_18.factor = factor(data$study_surv_gfma_18,levels=c("0","1","2","3"))
data$study_surv_gfma_19.factor = factor(data$study_surv_gfma_19,levels=c("0","1","2","3"))
data$study_surv_gfma_20.factor = factor(data$study_surv_gfma_20,levels=c("0","1","2","3"))
data$study_surv_gratitude_1.factor = factor(data$study_surv_gratitude_1,levels=c("1","2","3","4","5","6","7"))
data$study_surv_gratitude_2.factor = factor(data$study_surv_gratitude_2,levels=c("1","2","3","4","5","6","7"))
data$study_surv_gratitude_3.factor = factor(data$study_surv_gratitude_3,levels=c("1","2","3","4","5","6","7"))
data$study_surv_gratitude_4.factor = factor(data$study_surv_gratitude_4,levels=c("1","2","3","4","5","6","7"))
data$study_surv_gratitude_5.factor = factor(data$study_surv_gratitude_5,levels=c("1","2","3","4","5","6","7"))
data$study_surv_gratitude_6.factor = factor(data$study_surv_gratitude_6,levels=c("1","2","3","4","5","6","7"))
data$study_surveys_2_complete.factor = factor(data$study_surveys_2_complete,levels=c("0","1","2"))

levels(data$redcap_event_name.factor)=c("Entry (Arm 1: Arm 1)","Checkpoint 1 (Arm 1: Arm 1)","Checkpoint 2 (Arm 1: Arm 1)","Checkpoint 3 (Arm 1: Arm 1)","Checkpoint 4 (Arm 1: Arm 1)","Reconsent (Arm 1: Arm 1)","Checkpoint 5 (Arm 1: Arm 1)","Checkpoint 6 (Arm 1: Arm 1)","EMA Event (Arm 1: Arm 1)","EMA_Post_DWD (Arm 1: Arm 1)","slots (Arm 2: Slots)","reservations (Arm 3: Reservations)")
levels(data$redcap_repeat_instrument.factor)=c("EMA_Survey","EMA_Post_DWDSurvey")
levels(data$study_surv_pfi_1.factor)=c("Not true at all","Somewhat true","Moderately true","Very true","Completely true")
levels(data$study_surv_pfi_2.factor)=c("Not true at all","Somewhat true","Moderately true","Very true","Completely true")
levels(data$study_surv_pfi_3.factor)=c("Not true at all","Somewhat true","Moderately true","Very true","Completely true")
levels(data$study_surv_pfi_4.factor)=c("Not true at all","Somewhat true","Moderately true","Very true","Completely true")
levels(data$study_surv_pfi_5.factor)=c("Not true at all","Somewhat true","Moderately true","Very true","Completely true")
levels(data$study_surv_pfi_6.factor)=c("Not true at all","Somewhat true","Moderately true","Very true","Completely true")
levels(data$study_surv_pfi_7.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_8.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_9.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_10.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_11.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_12.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_13.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_14.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_15.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_16.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_cdrisc_1.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_2.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_3.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_4.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_5.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_6.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_7.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_8.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_9.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_10.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_perma_1.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_2.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_3.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_4.factor)=c("Terrible 0","1","2","3","4","5","6","7","8","9","Excellence 10")
levels(data$study_surv_perma_5.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_6.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_7.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_8.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_9.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_10.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_11.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_12.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_13.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_14.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_15.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_16.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_17.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_18.factor)=c("Terrible 0","1","2","3","4","5","6","7","8","9","Excellence 10")
levels(data$study_surv_perma_19.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_20.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_21.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_22.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_23.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_pss_1.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_2.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_3.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_4.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_5.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_6.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_7.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_8.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_9.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_10.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_survey_wheel1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$study_survey_wheel1_f.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$study_survey_wheel_2.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$study_survey_wheel_2_f.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$study_survey_wheel_3.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$study_survey_wheel_3_f.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$study_survey_wheel_4.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$study_survey_wheel_4_f.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$study_survey_wheel_5.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$study_survey_wheel_5_f.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$study_survey_wheel_6.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$study_survey_wheel_6_f.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$study_survey_wheel_7.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$study_survey_wheel_7_f.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$study_survey_wheel_8.factor)=c("Physical Body","Emotional state","Relationships","Time management","Finances","Work/Career","contribution (Spirituality)")
levels(data$study_survey_wheel_8_2.factor)=c("Physical Body","Emotional state","Relationships","Time management","Finances","Work/Career","contribution (Spirituality)")
levels(data$study_surveys_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$study_surv_olbi_1.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_2.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_3.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_4.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_5.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_6.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_7.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_8.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_9.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_10.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_11.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_12.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_13.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_14.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_15.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_16.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_gse_1.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_2.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_3.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_4.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_5.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_6.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_7.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_8.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_9.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_10.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_who_1.factor)=c("Very poor","Poor","Neither poor or good","Good","Very good")
levels(data$study_surv_who_2.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_3.factor)=c("Not at all","A little","A moderate amount","Very much","An extreme amount")
levels(data$study_surv_who_4.factor)=c("Not at all","A little","A moderate amount","Very much","An extreme amount")
levels(data$study_surv_who_5.factor)=c("Not at all","A little","A moderate amount","Very much","An extreme amount")
levels(data$study_surv_who_6.factor)=c("Not at all","A little","A moderate amount","Very much","An extreme amount")
levels(data$study_surv_who_7.factor)=c("Not at all","A little","A moderate amount","Very much","Extremely")
levels(data$study_surv_who_8.factor)=c("Not at all","A little","A moderate amount","Very much","Extremely")
levels(data$study_surv_who_9.factor)=c("Not at all","A little","A moderate amount","Very much","Extremely")
levels(data$study_surv_who_10.factor)=c("Not at all","A little","Moderately","Mostly","Completely")
levels(data$study_surv_who_11.factor)=c("Not at all","A little","Moderately","Mostly","Completely")
levels(data$study_surv_who_12.factor)=c("Not at all","A little","Moderately","Mostly","Completely")
levels(data$study_surv_who_13.factor)=c("Not at all","A little","Moderately","Mostly","Completely")
levels(data$study_surv_who_14.factor)=c("Not at all","A little","Moderately","Mostly","Completely")
levels(data$study_surv_who_15.factor)=c("Very poor","Poor","Neither poor or good","Good","Very good")
levels(data$study_surv_who_16.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_17.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_18.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_19.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_20.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_21.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_22.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_23.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_24.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_25.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_26.factor)=c("Never","Seldom","Quite often","Very often","Always")
levels(data$study_surv_gfma_1.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_2.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_3.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_4.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_5.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_6.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_7.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_8.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_9.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_10.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_11.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_12.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_13.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_14.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_15.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_16.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_17.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_18.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_19.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_20.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gratitude_1.factor)=c("Strongly disagree","Disagree","Slightly disagree","Neutral","Slightly agree","Agree","Strongly agree")
levels(data$study_surv_gratitude_2.factor)=c("Strongly disagree","Disagree","Slightly disagree","Neutral","Slightly agree","Agree","Strongly agree")
levels(data$study_surv_gratitude_3.factor)=c("Strongly disagree","Disagree","Slightly disagree","Neutral","Slightly agree","Agree","Strongly agree")
levels(data$study_surv_gratitude_4.factor)=c("Strongly disagree","Disagree","Slightly disagree","Neutral","Slightly agree","Agree","Strongly agree")
levels(data$study_surv_gratitude_5.factor)=c("Strongly disagree","Disagree","Slightly disagree","Neutral","Slightly agree","Agree","Strongly agree")
levels(data$study_surv_gratitude_6.factor)=c("Strongly disagree","Disagree","Slightly disagree","Neutral","Slightly agree","Agree","Strongly agree")
levels(data$study_surveys_2_complete.factor)=c("Incomplete","Unverified","Complete")
