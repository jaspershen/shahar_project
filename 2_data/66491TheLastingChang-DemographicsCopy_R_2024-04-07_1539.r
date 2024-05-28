#Clear existing data and graphics
rm(list=ls())
graphics.off()
#Load Hmisc library
library(Hmisc)
#Read Data
data=read.csv('66491TheLastingChang-DemographicsCopy_DATA_2024-04-07_1539.csv')
#Setting Labels

label(data$record_id)="Record ID"
label(data$redcap_event_name)="Event Name"
label(data$redcap_repeat_instrument)="Repeat Instrument"
label(data$redcap_repeat_instance)="Repeat Instance"
label(data$demographics_birth)="Date of birth:"
label(data$demographics_sex)="Sex assigned at birth(Biological Sex)"
label(data$demographics_race)="Race / Ethnicity"
label(data$demographics_education)="What is the highest degree or level of education you have completed?"
label(data$demographics_living)="Which of the following describes your living status?"
label(data$demographics_status)="what is your marital status?"
label(data$demographics_children)="How many children do you have?"
label(data$demographics_employment)="What is your current employment status?"
label(data$demographics_income)="What is your annual household income?"
label(data$demographics_watch)="How would you participate in the seminar?"
label(data$demographics_participate)="Who will participate in the seminar with you?"
label(data$demographics_pre_dwd)="How many times have you participated in Date With Destiny Seminar before?"
label(data$demographics_state)="State/province:"
label(data$demographics_complete)="Complete?"
label(data$demographic_date)="Date of Consent"
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
label(data$study_surv_pfi_1_c2_v3)="I feel happy at work"
label(data$study_surv_pfi_2_c2_v3)="I feel worthwhile at work"
label(data$study_surv_pfi_3_c2_v3)="My work is satisfying to me"
label(data$study_surv_pfi_4_c2_v3)="I feel in control when dealing with difficult problems at work."
label(data$study_surv_pfi_5_c2_v3)="My work is meaningful to me."
label(data$study_surv_pfi_6_c2_v3)="Im contributing professionally in the ways I value most."
label(data$study_surv_pfi_7_c2_v3)="A sense of dread when I think about work I have to do"
label(data$study_surv_pfi_8_c2_v3)="Physically exhausted at work"
label(data$study_surv_pfi_9_c2_v3)="Lacking in enthusiasm at work"
label(data$study_surv_pfi_10_c2_v3)="Emotionally exhausted at work"
label(data$study_surv_pfi_11_c2_v3)="Less empathetic with  people at work"
label(data$study_surv_pfi_12_c2_v3)="Less empathetic with my colleagues"
label(data$study_surv_pfi_13_c2_v3)="Less sensitive to others feelings/emotions"
label(data$study_surv_pfi_14_c2_v3)="Less interested in talking with people at work"
label(data$study_surv_pfi_15_c2_v3)="Less connected with people at work"
label(data$study_surv_pfi_16_c2_v3)="Less connected with my colleagues"
label(data$study_surv_cdrisc_1_c2_v3)="I am able to deal with change"
label(data$study_surv_cdrisc_2_c2_v3)="I can deal with whatever comes my way"
label(data$study_surv_cdrisc_3_c2_v3)="I try to see the funny side of things when I am faced with problems"
label(data$study_surv_cdrisc_4_c2_v3)="Dealing with stress can make me stronger"
label(data$study_surv_cdrisc_5_c2_v3)="I tend to bounce back after being sick, injury, or other hardships"
label(data$study_surv_cdrisc_6_c2_v3)="I believe I can achieve what I want, even if there are problems"
label(data$study_surv_cdrisc_7_c2_v3)="Under pressure, I still think clearly"
label(data$study_surv_cdrisc_8_c2_v3)="I do not lose hope following a failure"
label(data$study_surv_cdrisc_9_c2_v3)="I think of myself as a strong person when with lifes challenges and difficulties"
label(data$study_surv_cdrisc_10_c2_v3)="I am able to handle unpleasant or painful feelings, like sadness, fear, or anger"
label(data$study_surv_perma_1_c2_v3)="In general, to what extent do you lead a purposeful and meaningful life?"
label(data$study_surv_perma_2_c2_v3)="How much of the time do you feel you are making progress towards accomplishing your goals?"
label(data$study_surv_perma_3_c2_v3)="How often do you become absorbed in what you are doing?"
label(data$study_surv_perma_4_c2_v3)="In general, how would you say your health is?"
label(data$study_surv_perma_5_c2_v3)="In general, how often do you feel joyful?"
label(data$study_surv_perma_6_c2_v3)="To what extent do you receive help and support from others when you need it?"
label(data$study_surv_perma_7_c2_v3)="In general, how often do you feel anxious?"
label(data$study_surv_perma_8_c2_v3)="How often do you achieve the important goals you have set for yourself?"
label(data$study_surv_perma_9_c2_v3)="In general, to what extent do you feel that what you do in your life is valuable and worthwhile?"
label(data$study_surv_perma_10_c2_v3)="In general, how often do you feel positive?"
label(data$study_surv_perma_11_c2_v3)="In general, to what extent do you feel excited and interested in things?"
label(data$study_surv_perma_12_c2_v3)="How lonely do you feel in your daily life?"
label(data$study_surv_perma_13_c2_v3)="How satisfied are you with your current physical health?"
label(data$study_surv_perma_14_c2_v3)="In general, how often do you feel angry?"
label(data$study_surv_perma_15_c2_v3)="To what extent do you feel loved?"
label(data$study_surv_perma_16_c2_v3)="How often are you able to handle your responsibilities?"
label(data$study_surv_perma_17_c2_v3)="To what extent do you generally feel you have a sense of direction in your life?"
label(data$study_surv_perma_18_c2_v3)="Compared to others of your same age and sex, how is your health?"
label(data$study_surv_perma_19_c2_v3)="How satisfied are you with your personal relationships?"
label(data$study_surv_perma_20_c2_v3)="In general, how often do you feel sad?"
label(data$study_surv_perma_21_c2_v3)="How often do you lose track of time while doing something you enjoy?"
label(data$study_surv_perma_22_c2_v3)="In general, to what extent do you feel contented?"
label(data$study_surv_perma_23_c2_v3)="Taking all things together, how happy would you say you are?"
label(data$study_surv_pss_1_c2_v3)="In the last month, how often have you been upset because of something that happened unexpectedly?"
label(data$study_surv_pss_2_c2_v3)="In the last month, how often have you felt that you were unable to control the important things in your life?"
label(data$study_surv_pss_3_c2_v3)="In the last month, how often have you felt nervous and stressed?"
label(data$study_surv_pss_4_c2_v3)="In the last month, how often have you felt confident about your ability to handle your personal problems?"
label(data$study_surv_pss_5_c2_v3)="In the last month, how often have you felt that things were going your way?"
label(data$study_surv_pss_6_c2_v3)="In the last month, how often have you found that you could not cope with all the things that you had to do?"
label(data$study_surv_pss_7_c2_v3)="In the last month, how often have you been able to control irritations in your life?"
label(data$study_surv_pss_8_c2_v3)="In the last month, how often have you felt that you were on top of things?"
label(data$study_surv_pss_9_c2_v3)="In the last month, how often have you been angered because of things happened that were outside of your control?"
label(data$study_surv_pss_10_c2_v3)="In the last month, how often have you felt difficulties were piling up so high that you could not overcome them?"
label(data$study_surv_c3_part1)="study_surv_c3_part1"
label(data$study_surveys1_checkpoint3_complete)="Complete?"
label(data$study_surv_olbi_1_c2_v3)="I always find new and interesting aspects in my work"
label(data$study_surv_olbi_2_c2_v3)="There are days when I feel tired before I arrive at work"
label(data$study_surv_olbi_3_c2_v3)="It happens more and more often that I talk about my work in a negative way"
label(data$study_surv_olbi_4_c2_v3)="After work, I tend to need more time than in the past in order to relax and feel better"
label(data$study_surv_olbi_5_c2_v3)="I can tolerate the pressure of my work very well"
label(data$study_surv_olbi_6_c2_v3)="Lately, I tend to think less at work and do my job almost mechanically"
label(data$study_surv_olbi_7_c2_v3)="I find my work to be a positive challenge"
label(data$study_surv_olbi_8_c2_v3)="During my work, I often feel emotionally drained"
label(data$study_surv_olbi_9_c2_v3)="Over time, one can become disconnected from this type of work"
label(data$study_surv_olbi_10_c2_v3)="After working, I have enough energy for my leisure activities"
label(data$study_surv_olbi_11_c2_v3)="Sometimes I feel sickened by my work tasks"
label(data$study_surv_olbi_12_c2_v3)="After my work, I usually feel worn out and weary"
label(data$study_surv_olbi_13_c2_v3)="This is the only type of work that I can imagine myself doing"
label(data$study_surv_olbi_14_c2_v3)="Usually, I can manage the amount of my work well"
label(data$study_surv_olbi_15_c2_v3)="I feel more and more engaged in my work"
label(data$study_surv_olbi_16_c2_v3)="When I work, I usually feel energized"
label(data$study_surv_gse_1_c2_v3)="I can always manage to solve difficult problems if I try hard enough"
label(data$study_surv_gse_2_c2_v3)="If someone opposes me, I can find the means and ways to get what I want"
label(data$study_surv_gse_3_c2_v3)="It is easy for me to stick to my aims and accomplish my goals"
label(data$study_surv_gse_4_c2_v3)="I am confident that I could deal efficiently with unexpected events"
label(data$study_surv_gse_5_c2_v3)="Thanks to my resourcefulness, I know how to handle unforeseen situations"
label(data$study_surv_gse_6_c2_v3)="I can solve most problems if I invest the necessary effort"
label(data$study_surv_gse_7_c2_v3)="I can remain calm when facing difficulties because I can rely on my coping abilities"
label(data$study_surv_gse_8_c2_v3)="When I am confronted with a problem, I can usually find several solutions"
label(data$study_surv_gse_9_c2_v3)="If I am in trouble, I can usually think of a solution"
label(data$study_surv_gse_10_c2_v3)="I can usually handle whatever comes my way"
label(data$study_surv_who_1_c2_v3)="How would you rate your quality of life?"
label(data$study_surv_who_2_c2_v3)="How satisfied are you with your health?"
label(data$study_surv_who_3_c2_v3)="To what extent to you feel that physical pain prevents you from doing what you need to do?"
label(data$study_surv_who_4_c2_v3)="How much do you need any medical treatment to function in your daily life?"
label(data$study_surv_who_5_c2_v3)="How much do you enjoy life?"
label(data$study_surv_who_6_c2_v3)="To what extent do you feel your life to be meaningful?"
label(data$study_surv_who_7_c2_v3)="How well are you able to concentrate?"
label(data$study_surv_who_8_c2_v3)="How safe do you feel in your daily life?"
label(data$study_surv_who_9_c2_v3)="How healthy is your physical environment?"
label(data$study_surv_who_10_c2_v3)="Do you have enough energy for everyday life?"
label(data$study_surv_who_11_c2_v3)="Are you able to accept your bodily appearance?"
label(data$study_surv_who_12_c2_v3)="Have you enough money to meet your needs?"
label(data$study_surv_who_13_c2_v3)="How available to you is the information that you need in your day-to-day life?"
label(data$study_surv_who_14_c2_v3)="To what extent do you have the opportunity for leisure activities?"
label(data$study_surv_who_15_c2_v3)="How well are you able to get around?"
label(data$study_surv_who_16_c2_v3)="How satisfied are you with your sleep?"
label(data$study_surv_who_17_c2_v3)="How satisfied are you with your ability to perform your daily living activities?"
label(data$study_surv_who_18_c2_v3)="How satisfied are you with your capacity for work?"
label(data$study_surv_who_19_c2_v3)="How satisfied are you with yourself?"
label(data$study_surv_who_20_c2_v3)="How satisfied are you with your personal relationships?"
label(data$study_surv_who_21_c2_v3)="How satisfied are you with your sex life?"
label(data$study_surv_who_22_c2_v3)="How satisfied are you with the support you get from your friends?"
label(data$study_surv_who_23_c2_v3)="How satisfied are you with the conditions of your living place?"
label(data$study_surv_who_24_c2_v3)="How satisfied are you with your access to health services?"
label(data$study_surv_who_25_c2_v3)="How satisfied are you with your transport?"
label(data$study_surv_who_26_c2_v3)="How often do you have negative feelings such as blue mood, despair, anxiety, depression?"
label(data$study_surv_gfma_1_c2_v3)="Your intelligence is something very basic about you that you cant change very much"
label(data$study_surv_gfma_2_c2_v3)="No matter how much intelligence you have, you can always change it quite a bit"
label(data$study_surv_gfma_3_c2_v3)="You can always substantially change how intelligent you are"
label(data$study_surv_gfma_4_c2_v3)="You are a certain kind of person, and there is not much that can be done to really change that"
label(data$study_surv_gfma_5_c2_v3)="You can always change basic things about the kind of person you are"
label(data$study_surv_gfma_6_c2_v3)="Music talent can be learned by anyone"
label(data$study_surv_gfma_7_c2_v3)="Only a few people will be truly good at sports - you have to be born with it."
label(data$study_surv_gfma_8_c2_v3)="Math is much easier to learn if you are male or maybe come from a culture that values math"
label(data$study_surv_gfma_9_c2_v3)="The harder you work at something, the better you will be at it"
label(data$study_surv_gfma_10_c2_v3)="No matter what kind of person you are, you can always change substantially"
label(data$study_surv_gfma_11_c2_v3)="Trying new things is stressful for me and I avoid it"
label(data$study_surv_gfma_12_c2_v3)="Some people are good and kind, some are not - it is not often that people change"
label(data$study_surv_gfma_13_c2_v3)="I appreciate when parents, coaches, teachers give me feedback about my performance"
label(data$study_surv_gfma_14_c2_v3)="I often get angry when I get feedback about my performance"
label(data$study_surv_gfma_15_c2_v3)="All human beings without a brain injury or birth defect are capable of the same amount of learning"
label(data$study_surv_gfma_16_c2_v3)="You can learn new things, but you cant really change how intelligent you are"
label(data$study_surv_gfma_17_c2_v3)="You can do things differently, but the important part of who you are cant really be changed"
label(data$study_surv_gfma_18_c2_v3)="Human beings are basically good, but sometimes make terrible decisions"
label(data$study_surv_gfma_19_c2_v3)="An important reason why I do my schoolwork is that I like to learn new things"
label(data$study_surv_gfma_20_c2_v3)="Truly smart people dont need to try hard"
label(data$study_surv_gratitude_1_c2_v3)="I have so much in life to be thankful for"
label(data$study_surv_gratitude_2_c2_v3)="If I had to list everything that I felt grateful for, it would be a very long list"
label(data$study_surv_gratitude_3_c2_v3)="When I look at the world, I dont see much to be grateful for"
label(data$study_surv_gratitude_4_c2_v3)="I am grateful to a wide variety of people"
label(data$study_surv_gratitude_5_c2_v3)="As I get older, I find myself more able to appreciate the people, events, and situations that have been part of my life history"
label(data$study_surv_gratitude_6_c2_v3)="Long amount of time can go by before I feel grateful for something or someone"
label(data$study_surv2_c3_part2)="study_surv2_c3_part2"
label(data$study_surv_attend_c2_v3)="In the last month, how often did you practice the DWD materials ?"
label(data$study_surv_health1_c2_v3)="Have you had a confirmed or suspected case of COVID-19 in the last month? "
label(data$study_surv_health2_c2_v3)="Have you had a confirmed or suspected case of Flu or Cold in the last month? "
label(data$study_surv_health3_c2_v3)="Have you had a confirmed or suspected case of other seasonal or acute illness in the last month?"
label(data$study_surv_health4_c2_v3)="Would you like to provide additional details about your suspected case of other seasonal or acute illness in the last month?"
label(data$study_surveys2_checkpoint3_complete)="Complete?"
label(data$c4_date)="Date-time"
label(data$study_surv_pfi_1_c2_v3_c4)="I feel happy at work"
label(data$study_surv_pfi_2_c2_v3_c4)="I feel worthwhile at work"
label(data$study_surv_pfi_3_c2_v3_c4)="My work is satisfying to me"
label(data$study_surv_pfi_4_c2_v3_c4)="I feel in control when dealing with difficult problems at work."
label(data$study_surv_pfi_5_c2_v3_c4)="My work is meaningful to me."
label(data$study_surv_pfi_6_c2_v3_c4)="Im contributing professionally in the ways I value most."
label(data$study_surv_pfi_7_c2_v3_c4)="A sense of dread when I think about work I have to do"
label(data$study_surv_pfi_8_c2_v3_c4)="Physically exhausted at work"
label(data$study_surv_pfi_9_c2_v3_c4)="Lacking in enthusiasm at work"
label(data$study_surv_pfi_10_c2_v3_c4)="Emotionally exhausted at work"
label(data$study_surv_pfi_11_c2_v3_c4)="Less empathetic with  people at work"
label(data$study_surv_pfi_12_c2_v3_c4)="Less empathetic with my colleagues"
label(data$study_surv_pfi_13_c2_v3_c4)="Less sensitive to others feelings/emotions"
label(data$study_surv_pfi_14_c2_v3_c4)="Less interested in talking with people at work"
label(data$study_surv_pfi_15_c2_v3_c4)="Less connected with people at work"
label(data$study_surv_pfi_16_c2_v3_c4)="Less connected with my colleagues"
label(data$study_surv_cdrisc_1_c2_v3_c4)="I am able to deal with change"
label(data$study_surv_cdrisc_2_c2_v3_c4)="I can deal with whatever comes my way"
label(data$study_surv_cdrisc_3_c2_v3_c4)="I try to see the funny side of things when I am faced with problems"
label(data$study_surv_cdrisc_4_c2_v3_c4)="Dealing with stress can make me stronger"
label(data$study_surv_cdrisc_5_c2_v3_c4)="I tend to bounce back after being sick, injury, or other hardships"
label(data$study_surv_cdrisc_6_c2_v3_c4)="I believe I can achieve what I want, even if there are problems"
label(data$study_surv_cdrisc_7_c2_v3_c4)="Under pressure, I still think clearly"
label(data$study_surv_cdrisc_8_c2_v3_c4)="I do not lose hope following a failure"
label(data$study_surv_cdrisc_9_c2_v3_c4)="I think of myself as a strong person when with lifes challenges and difficulties"
label(data$study_surv_cdrisc_10_c2_v3_c4)="I am able to handle unpleasant or painful feelings, like sadness, fear, or anger"
label(data$study_surv_perma_1_c2_v3_c4)="In general, to what extent do you lead a purposeful and meaningful life?"
label(data$study_surv_perma_2_c2_v3_c4)="How much of the time do you feel you are making progress towards accomplishing your goals?"
label(data$study_surv_perma_3_c2_v3_c4)="How often do you become absorbed in what you are doing?"
label(data$study_surv_perma_4_c2_v3_c4)="In general, how would you say your health is?"
label(data$study_surv_perma_5_c2_v3_c4)="In general, how often do you feel joyful?"
label(data$study_surv_perma_6_c2_v3_c4)="To what extent do you receive help and support from others when you need it?"
label(data$study_surv_perma_7_c2_v3_c4)="In general, how often do you feel anxious?"
label(data$study_surv_perma_8_c2_v3_c4)="How often do you achieve the important goals you have set for yourself?"
label(data$study_surv_perma_9_c2_v3_c4)="In general, to what extent do you feel that what you do in your life is valuable and worthwhile?"
label(data$study_surv_perma_10_c2_v3_c4)="In general, how often do you feel positive?"
label(data$study_surv_perma_11_c2_v3_c4)="In general, to what extent do you feel excited and interested in things?"
label(data$study_surv_perma_12_c2_v3_c4)="How lonely do you feel in your daily life?"
label(data$study_surv_perma_13_c2_v3_c4)="How satisfied are you with your current physical health?"
label(data$study_surv_perma_14_c2_v3_c4)="In general, how often do you feel angry?"
label(data$study_surv_perma_15_c2_v3_c4)="To what extent do you feel loved?"
label(data$study_surv_perma_16_c2_v3_c4)="How often are you able to handle your responsibilities?"
label(data$study_surv_perma_17_c2_v3_c4)="To what extent do you generally feel you have a sense of direction in your life?"
label(data$study_surv_perma_18_c2_v3_c4)="Compared to others of your same age and sex, how is your health?"
label(data$study_surv_perma_19_c2_v3_c4)="How satisfied are you with your personal relationships?"
label(data$study_surv_perma_20_c2_v3_c4)="In general, how often do you feel sad?"
label(data$study_surv_perma_21_c2_v3_c4)="How often do you lose track of time while doing something you enjoy?"
label(data$study_surv_perma_22_c2_v3_c4)="In general, to what extent do you feel contented?"
label(data$study_surv_perma_23_c2_v3_c4)="Taking all things together, how happy would you say you are?"
label(data$study_surv_pss_1_c2_v3_c4)="In the last month, how often have you been upset because of something that happened unexpectedly?"
label(data$study_surv_pss_2_c2_v3_c4)="In the last month, how often have you felt that you were unable to control the important things in your life?"
label(data$study_surv_pss_3_c2_v3_c4)="In the last month, how often have you felt nervous and stressed?"
label(data$study_surv_pss_4_c2_v3_c4)="In the last month, how often have you felt confident about your ability to handle your personal problems?"
label(data$study_surv_pss_5_c2_v3_c4)="In the last month, how often have you felt that things were going your way?"
label(data$study_surv_pss_6_c2_v3_c4)="In the last month, how often have you found that you could not cope with all the things that you had to do?"
label(data$study_surv_pss_7_c2_v3_c4)="In the last month, how often have you been able to control irritations in your life?"
label(data$study_surv_pss_8_c2_v3_c4)="In the last month, how often have you felt that you were on top of things?"
label(data$study_surv_pss_9_c2_v3_c4)="In the last month, how often have you been angered because of things happened that were outside of your control?"
label(data$study_surv_pss_10_c2_v3_c4)="In the last month, how often have you felt difficulties were piling up so high that you could not overcome them?"
label(data$study_surv_c3_part1_c4)="study_surv_c3_part1_c4"
label(data$study_surveys1_checkpoint4_complete)="Complete?"
label(data$c4_date_2)="Date-time"
label(data$study_surv_olbi_1_c2_v3_c4)="I always find new and interesting aspects in my work"
label(data$study_surv_olbi_2_c2_v3_c4)="There are days when I feel tired before I arrive at work"
label(data$study_surv_olbi_3_c2_v3_c4)="It happens more and more often that I talk about my work in a negative way"
label(data$study_surv_olbi_4_c2_v3_c4)="After work, I tend to need more time than in the past in order to relax and feel better"
label(data$study_surv_olbi_5_c2_v3_c4)="I can tolerate the pressure of my work very well"
label(data$study_surv_olbi_6_c2_v3_c4)="Lately, I tend to think less at work and do my job almost mechanically"
label(data$study_surv_olbi_7_c2_v3_c4)="I find my work to be a positive challenge"
label(data$study_surv_olbi_8_c2_v3_c4)="During my work, I often feel emotionally drained"
label(data$study_surv_olbi_9_c2_v3_c4)="Over time, one can become disconnected from this type of work"
label(data$study_surv_olbi_10_c2_v3_c4)="After working, I have enough energy for my leisure activities"
label(data$study_surv_olbi_11_c2_v3_c4)="Sometimes I feel sickened by my work tasks"
label(data$study_surv_olbi_12_c2_v3_c4)="After my work, I usually feel worn out and weary"
label(data$study_surv_olbi_13_c2_v3_c4)="This is the only type of work that I can imagine myself doing"
label(data$study_surv_olbi_14_c2_v3_c4)="Usually, I can manage the amount of my work well"
label(data$study_surv_olbi_15_c2_v3_c4)="I feel more and more engaged in my work"
label(data$study_surv_olbi_16_c2_v3_c4)="When I work, I usually feel energized"
label(data$study_surv_gse_1_c2_v3_c4)="I can always manage to solve difficult problems if I try hard enough"
label(data$study_surv_gse_2_c2_v3_c4)="If someone opposes me, I can find the means and ways to get what I want"
label(data$study_surv_gse_3_c2_v3_c4)="It is easy for me to stick to my aims and accomplish my goals"
label(data$study_surv_gse_4_c2_v3_c4)="I am confident that I could deal efficiently with unexpected events"
label(data$study_surv_gse_5_c2_v3_c4)="Thanks to my resourcefulness, I know how to handle unforeseen situations"
label(data$study_surv_gse_6_c2_v3_c4)="I can solve most problems if I invest the necessary effort"
label(data$study_surv_gse_7_c2_v3_c4)="I can remain calm when facing difficulties because I can rely on my coping abilities"
label(data$study_surv_gse_8_c2_v3_c4)="When I am confronted with a problem, I can usually find several solutions"
label(data$study_surv_gse_9_c2_v3_c4)="If I am in trouble, I can usually think of a solution"
label(data$study_surv_gse_10_c2_v3_c4)="I can usually handle whatever comes my way"
label(data$study_surv_who_1_c2_v3_c4)="How would you rate your quality of life?"
label(data$study_surv_who_2_c2_v3_c4)="How satisfied are you with your health?"
label(data$study_surv_who_3_c2_v3_c4)="To what extent to you feel that physical pain prevents you from doing what you need to do?"
label(data$study_surv_who_4_c2_v3_c4)="How much do you need any medical treatment to function in your daily life?"
label(data$study_surv_who_5_c2_v3_c4)="How much do you enjoy life?"
label(data$study_surv_who_6_c2_v3_c4)="To what extent do you feel your life to be meaningful?"
label(data$study_surv_who_7_c2_v3_c4)="How well are you able to concentrate?"
label(data$study_surv_who_8_c2_v3_c4)="How safe do you feel in your daily life?"
label(data$study_surv_who_9_c2_v3_c4)="How healthy is your physical environment?"
label(data$study_surv_who_10_c2_v3_c4)="Do you have enough energy for everyday life?"
label(data$study_surv_who_11_c2_v3_c4)="Are you able to accept your bodily appearance?"
label(data$study_surv_who_12_c2_v3_c4)="Have you enough money to meet your needs?"
label(data$study_surv_who_13_c2_v3_c4)="How available to you is the information that you need in your day-to-day life?"
label(data$study_surv_who_14_c2_v3_c4)="To what extent do you have the opportunity for leisure activities?"
label(data$study_surv_who_15_c2_v3_c4)="How well are you able to get around?"
label(data$study_surv_who_16_c2_v3_c4)="How satisfied are you with your sleep?"
label(data$study_surv_who_17_c2_v3_c4)="How satisfied are you with your ability to perform your daily living activities?"
label(data$study_surv_who_18_c2_v3_c4)="How satisfied are you with your capacity for work?"
label(data$study_surv_who_19_c2_v3_c4)="How satisfied are you with yourself?"
label(data$study_surv_who_20_c2_v3_c4)="How satisfied are you with your personal relationships?"
label(data$study_surv_who_21_c2_v3_c4)="How satisfied are you with your sex life?"
label(data$study_surv_who_22_c2_v3_c4)="How satisfied are you with the support you get from your friends?"
label(data$study_surv_who_23_c2_v3_c4)="How satisfied are you with the conditions of your living place?"
label(data$study_surv_who_24_c2_v3_c4)="How satisfied are you with your access to health services?"
label(data$study_surv_who_25_c2_v3_c4)="How satisfied are you with your transport?"
label(data$study_surv_who_26_c2_v3_c4)="How often do you have negative feelings such as blue mood, despair, anxiety, depression?"
label(data$study_surv_gfma_1_c2_v3_c4)="Your intelligence is something very basic about you that you cant change very much"
label(data$study_surv_gfma_2_c2_v3_c4)="No matter how much intelligence you have, you can always change it quite a bit"
label(data$study_surv_gfma_3_c2_v3_c4)="You can always substantially change how intelligent you are"
label(data$study_surv_gfma_4_c2_v3_c4)="You are a certain kind of person, and there is not much that can be done to really change that"
label(data$study_surv_gfma_5_c2_v3_c4)="You can always change basic things about the kind of person you are"
label(data$study_surv_gfma_6_c2_v3_c4)="Music talent can be learned by anyone"
label(data$study_surv_gfma_7_c2_v3_c4)="Only a few people will be truly good at sports - you have to be born with it."
label(data$study_surv_gfma_8_c2_v3_c4)="Math is much easier to learn if you are male or maybe come from a culture that values math"
label(data$study_surv_gfma_9_c2_v3_c4)="The harder you work at something, the better you will be at it"
label(data$study_surv_gfma_10_c2_v3_c4)="No matter what kind of person you are, you can always change substantially"
label(data$study_surv_gfma_11_c2_v3_c4)="Trying new things is stressful for me and I avoid it"
label(data$study_surv_gfma_12_c2_v3_c4)="Some people are good and kind, some are not - it is not often that people change"
label(data$study_surv_gfma_13_c2_v3_c4)="I appreciate when parents, coaches, teachers give me feedback about my performance"
label(data$study_surv_gfma_14_c2_v3_c4)="I often get angry when I get feedback about my performance"
label(data$study_surv_gfma_15_c2_v3_c4)="All human beings without a brain injury or birth defect are capable of the same amount of learning"
label(data$study_surv_gfma_16_c2_v3_c4)="You can learn new things, but you cant really change how intelligent you are"
label(data$study_surv_gfma_17_c2_v3_c4)="You can do things differently, but the important part of who you are cant really be changed"
label(data$study_surv_gfma_18_c2_v3_c4)="Human beings are basically good, but sometimes make terrible decisions"
label(data$study_surv_gfma_19_c2_v3_c4)="An important reason why I do my schoolwork is that I like to learn new things"
label(data$study_surv_gfma_20_c2_v3_c4)="Truly smart people dont need to try hard"
label(data$study_surv_gratitude_1_c2_v3_c4)="I have so much in life to be thankful for"
label(data$study_surv_gratitude_2_c2_v3_c4)="If I had to list everything that I felt grateful for, it would be a very long list"
label(data$study_surv_gratitude_3_c2_v3_c4)="When I look at the world, I dont see much to be grateful for"
label(data$study_surv_gratitude_4_c2_v3_c4)="I am grateful to a wide variety of people"
label(data$study_surv_gratitude_5_c2_v3_c4)="As I get older, I find myself more able to appreciate the people, events, and situations that have been part of my life history"
label(data$study_surv_gratitude_6_c2_v3_c4)="Long amount of time can go by before I feel grateful for something or someone"
label(data$study_survey_wheel1_c4)="Today"
label(data$study_survey_wheel1_f_c4)="Where you really want to be"
label(data$study_survey_wheel_2_c4)="Today"
label(data$study_survey_wheel_2_f_c4)="Where you really want to be"
label(data$study_survey_wheel_3_c4)="Today"
label(data$study_survey_wheel_3_f_c4)="Where you really want to be"
label(data$study_survey_wheel_4_c4)="Today"
label(data$study_survey_wheel_4_f_c4)="Where you really want to be"
label(data$study_survey_wheel_5_c4)="Today"
label(data$study_survey_wheel_5_f_c4)="Where you really want to be"
label(data$study_survey_wheel_6_c4)="Today"
label(data$study_survey_wheel_6_f_c4)="Where you really want to be"
label(data$study_survey_wheel_7_c4)="Today"
label(data$study_survey_wheel_7_f_c4)="Where you really want to be"
label(data$study_survey_wheel_8_c4)="Which area do you most want to focus on improving?  "
label(data$study_survey_wheel_8_2_c4)="Which is the second area you most want to focus on improving?"
label(data$study_surv2_c3_part2_c4)="study_surv2_c3_part2_c4"
label(data$study_surv_attend_c2_v3_c4)="In the last month, how often did you practice the DWD materials ?"
label(data$study_surv_health1_c2_v3_c4)="Have you had a confirmed or suspected case of COVID-19 in the last month? "
label(data$study_surv_health2_c2_v3_c4)="Have you had a confirmed or suspected case of Flu or Cold in the last month? "
label(data$study_surv_health3_c2_v3_c4)="Have you had a confirmed or suspected case of other seasonal or acute illness in the last month?"
label(data$study_surv_health4_c2_v3_c4)="Would you like to provide additional details about your suspected case of other seasonal or acute illness in the last month?"
label(data$study_surveys2_checkpoint4_complete)="Complete?"
label(data$c4_date_5)="Date-time"
label(data$study_surv_pfi_1_c2_v3_c4_5)="I feel happy at work"
label(data$study_surv_pfi_2_c2_v3_c4_5)="I feel worthwhile at work"
label(data$study_surv_pfi_3_c2_v3_c4_5)="My work is satisfying to me"
label(data$study_surv_pfi_4_c2_v3_c4_5)="I feel in control when dealing with difficult problems at work."
label(data$study_surv_pfi_5_c2_v3_c4_5)="My work is meaningful to me."
label(data$study_surv_pfi_6_c2_v3_c4_5)="Im contributing professionally in the ways I value most."
label(data$study_surv_pfi_7_c2_v3_c4_5)="A sense of dread when I think about work I have to do"
label(data$study_surv_pfi_8_c2_v3_c4_5)="Physically exhausted at work"
label(data$study_surv_pfi_9_c2_v3_c4_5)="Lacking in enthusiasm at work"
label(data$study_surv_pfi_10_c2_v3_c4_5)="Emotionally exhausted at work"
label(data$study_surv_pfi_11_c2_v3_c4_5)="Less empathetic with  people at work"
label(data$study_surv_pfi_12_c2_v3_c4_5)="Less empathetic with my colleagues"
label(data$study_surv_pfi_13_c2_v3_c4_5)="Less sensitive to others feelings/emotions"
label(data$study_surv_pfi_14_c2_v3_c4_5)="Less interested in talking with people at work"
label(data$study_surv_pfi_15_c2_v3_c4_5)="Less connected with people at work"
label(data$study_surv_pfi_16_c2_v3_c4_5)="Less connected with my colleagues"
label(data$study_surv_cdrisc_1_c2_v3_c4_5)="I am able to deal with change"
label(data$study_surv_cdrisc_2_c2_v3_c4_5)="I can deal with whatever comes my way"
label(data$study_surv_cdrisc_3_c2_v3_c4_5)="I try to see the funny side of things when I am faced with problems"
label(data$study_surv_cdrisc_4_c2_v3_c4_5)="Dealing with stress can make me stronger"
label(data$study_surv_cdrisc_5_c2_v3_c4_5)="I tend to bounce back after being sick, injury, or other hardships"
label(data$study_surv_cdrisc_6_c2_v3_c4_5)="I believe I can achieve what I want, even if there are problems"
label(data$study_surv_cdrisc_7_c2_v3_c4_5)="Under pressure, I still think clearly"
label(data$study_surv_cdrisc_8_c2_v3_c4_5)="I do not lose hope following a failure"
label(data$study_surv_cdrisc_9_c2_v3_c4_5)="I think of myself as a strong person when dealing with lifes challenges and difficulties"
label(data$study_surv_cdrisc_10_c2_v3_c4_5)="I am able to handle unpleasant or painful feelings, like sadness, fear, or anger"
label(data$study_surv_perma_1_c2_v3_c4_5)="In general, to what extent do you lead a purposeful and meaningful life?"
label(data$study_surv_perma_2_c2_v3_c4_5)="How much of the time do you feel you are making progress towards accomplishing your goals?"
label(data$study_surv_perma_3_c2_v3_c4_5)="How often do you become absorbed in what you are doing?"
label(data$study_surv_perma_4_c2_v3_c4_5)="In general, how would you say your health is?"
label(data$study_surv_perma_5_c2_v3_c4_5)="In general, how often do you feel joyful?"
label(data$study_surv_perma_6_c2_v3_c4_5)="To what extent do you receive help and support from others when you need it?"
label(data$study_surv_perma_7_c2_v3_c4_5)="In general, how often do you feel anxious?"
label(data$study_surv_perma_8_c2_v3_c4_5)="How often do you achieve the important goals you have set for yourself?"
label(data$study_surv_perma_9_c2_v3_c4_5)="In general, to what extent do you feel that what you do in your life is valuable and worthwhile?"
label(data$study_surv_perma_10_c2_v3_c4_5)="In general, how often do you feel positive?"
label(data$study_surv_perma_11_c2_v3_c4_5)="In general, to what extent do you feel excited and interested in things?"
label(data$study_surv_perma_12_c2_v3_c4_5)="How lonely do you feel in your daily life?"
label(data$study_surv_perma_13_c2_v3_c4_5)="How satisfied are you with your current physical health?"
label(data$study_surv_perma_14_c2_v3_c4_5)="In general, how often do you feel angry?"
label(data$study_surv_perma_15_c2_v3_c4_5)="To what extent do you feel loved?"
label(data$study_surv_perma_16_c2_v3_c4_5)="How often are you able to handle your responsibilities?"
label(data$study_surv_perma_17_c2_v3_c4_5)="To what extent do you generally feel you have a sense of direction in your life?"
label(data$study_surv_perma_18_c2_v3_c4_5)="Compared to others of your same age and sex, how is your health?"
label(data$study_surv_perma_19_c2_v3_c4_5)="How satisfied are you with your personal relationships?"
label(data$study_surv_perma_20_c2_v3_c4_5)="In general, how often do you feel sad?"
label(data$study_surv_perma_21_c2_v3_c4_5)="How often do you lose track of time while doing something you enjoy?"
label(data$study_surv_perma_22_c2_v3_c4_5)="In general, to what extent do you feel contented?"
label(data$study_surv_perma_23_c2_v3_c4_5)="Taking all things together, how happy would you say you are?"
label(data$study_surv_pss_1_c2_v3_c4_5)="In the last month, how often have you been upset because of something that happened unexpectedly?"
label(data$study_surv_pss_2_c2_v3_c4_5)="In the last month, how often have you felt that you were unable to control the important things in your life?"
label(data$study_surv_pss_3_c2_v3_c4_5)="In the last month, how often have you felt nervous and stressed?"
label(data$study_surv_pss_4_c2_v3_c4_5)="In the last month, how often have you felt confident about your ability to handle your personal problems?"
label(data$study_surv_pss_5_c2_v3_c4_5)="In the last month, how often have you felt that things were going your way?"
label(data$study_surv_pss_6_c2_v3_c4_5)="In the last month, how often have you found that you could not cope with all the things that you had to do?"
label(data$study_surv_pss_7_c2_v3_c4_5)="In the last month, how often have you been able to control irritations in your life?"
label(data$study_surv_pss_8_c2_v3_c4_5)="In the last month, how often have you felt that you were on top of things?"
label(data$study_surv_pss_9_c2_v3_c4_5)="In the last month, how often have you been angered because of things happened that were outside of your control?"
label(data$study_surv_pss_10_c2_v3_c4_5)="In the last month, how often have you felt difficulties were piling up so high that you could not overcome them?"
label(data$study_surv_c3_part1_c4_5)="study_surv_c3_part1_c4_5"
label(data$study_surveys1_checkpoint5_complete)="Complete?"
label(data$c4_date_2_5)="Date-time"
label(data$study_surv_olbi_1_c2_v3_c4_5)="I always find new and interesting aspects in my work"
label(data$study_surv_olbi_2_c2_v3_c4_5)="There are days when I feel tired before I arrive at work"
label(data$study_surv_olbi_3_c2_v3_c4_5)="It happens more and more often that I talk about my work in a negative way"
label(data$study_surv_olbi_4_c2_v3_c4_5)="After work, I tend to need more time than in the past in order to relax and feel better"
label(data$study_surv_olbi_5_c2_v3_c4_5)="I can tolerate the pressure of my work very well"
label(data$study_surv_olbi_6_c2_v3_c4_5)="Lately, I tend to think less at work and do my job almost mechanically"
label(data$study_surv_olbi_7_c2_v3_c4_5)="I find my work to be a positive challenge"
label(data$study_surv_olbi_8_c2_v3_c4_5)="During my work, I often feel emotionally drained"
label(data$study_surv_olbi_9_c2_v3_c4_5)="Over time, one can become disconnected from this type of work"
label(data$study_surv_olbi_10_c2_v3_c4_5)="After working, I have enough energy for my leisure activities"
label(data$study_surv_olbi_11_c2_v3_c4_5)="Sometimes I feel sickened by my work tasks"
label(data$study_surv_olbi_12_c2_v3_c4_5)="After my work, I usually feel worn out and weary"
label(data$study_surv_olbi_13_c2_v3_c4_5)="This is the only type of work that I can imagine myself doing"
label(data$study_surv_olbi_14_c2_v3_c4_5)="Usually, I can manage the amount of my work well"
label(data$study_surv_olbi_15_c2_v3_c4_5)="I feel more and more engaged in my work"
label(data$study_surv_olbi_16_c2_v3_c4_5)="When I work, I usually feel energized"
label(data$study_surv_gse_1_c2_v3_c4_5)="I can always manage to solve difficult problems if I try hard enough"
label(data$study_surv_gse_2_c2_v3_c4_5)="If someone opposes me, I can find the means and ways to get what I want"
label(data$study_surv_gse_3_c2_v3_c4_5)="It is easy for me to stick to my aims and accomplish my goals"
label(data$study_surv_gse_4_c2_v3_c4_5)="I am confident that I could deal efficiently with unexpected events"
label(data$study_surv_gse_5_c2_v3_c4_5)="Thanks to my resourcefulness, I know how to handle unforeseen situations"
label(data$study_surv_gse_6_c2_v3_c4_5)="I can solve most problems if I invest the necessary effort"
label(data$study_surv_gse_7_c2_v3_c4_5)="I can remain calm when facing difficulties because I can rely on my coping abilities"
label(data$study_surv_gse_8_c2_v3_c4_5)="When I am confronted with a problem, I can usually find several solutions"
label(data$study_surv_gse_9_c2_v3_c4_5)="If I am in trouble, I can usually think of a solution"
label(data$study_surv_gse_10_c2_v3_c4_5)="I can usually handle whatever comes my way"
label(data$study_surv_who_1_c2_v3_c4_5)="How would you rate your quality of life?"
label(data$study_surv_who_2_c2_v3_c4_5)="How satisfied are you with your health?"
label(data$study_surv_who_3_c2_v3_c4_5)="To what extent do you feel that physical pain prevents you from doing what you need to do?"
label(data$study_surv_who_4_c2_v3_c4_5)="How much do you need any medical treatment to function in your daily life?"
label(data$study_surv_who_5_c2_v3_c4_5)="How much do you enjoy life?"
label(data$study_surv_who_6_c2_v3_c4_5)="To what extent do you feel your life to be meaningful?"
label(data$study_surv_who_7_c2_v3_c4_5)="How well are you able to concentrate?"
label(data$study_surv_who_8_c2_v3_c4_5)="How safe do you feel in your daily life?"
label(data$study_surv_who_9_c2_v3_c4_5)="How healthy is your physical environment?"
label(data$study_surv_who_10_c2_v3_c4_5)="Do you have enough energy for everyday life?"
label(data$study_surv_who_11_c2_v3_c4_5)="Are you able to accept your bodily appearance?"
label(data$study_surv_who_12_c2_v3_c4_5)="Have you enough money to meet your needs?"
label(data$study_surv_who_13_c2_v3_c4_5)="How available to you is the information that you need in your day-to-day life?"
label(data$study_surv_who_14_c2_v3_c4_5)="To what extent do you have the opportunity for leisure activities?"
label(data$study_surv_who_15_c2_v3_c4_5)="How well are you able to get around?"
label(data$study_surv_who_16_c2_v3_c4_5)="How satisfied are you with your sleep?"
label(data$study_surv_who_17_c2_v3_c4_5)="How satisfied are you with your ability to perform your daily living activities?"
label(data$study_surv_who_18_c2_v3_c4_5)="How satisfied are you with your capacity for work?"
label(data$study_surv_who_19_c2_v3_c4_5)="How satisfied are you with yourself?"
label(data$study_surv_who_20_c2_v3_c4_5)="How satisfied are you with your personal relationships?"
label(data$study_surv_who_21_c2_v3_c4_5)="How satisfied are you with your sex life?"
label(data$study_surv_who_22_c2_v3_c4_5)="How satisfied are you with the support you get from your friends?"
label(data$study_surv_who_23_c2_v3_c4_5)="How satisfied are you with the conditions of your living place?"
label(data$study_surv_who_24_c2_v3_c4_5)="How satisfied are you with your access to health services?"
label(data$study_surv_who_25_c2_v3_c4_5)="How satisfied are you with your transport?"
label(data$study_surv_who_26_c2_v3_c4_5)="How often do you have negative feelings such as blue mood, despair, anxiety, depression?"
label(data$study_surv_gfma_1_c2_v3_c4_5)="Your intelligence is something very basic about you that you cant change very much"
label(data$study_surv_gfma_2_c2_v3_c4_5)="No matter how much intelligence you have, you can always change it quite a bit"
label(data$study_surv_gfma_3_c2_v3_c4_5)="You can always substantially change how intelligent you are"
label(data$study_surv_gfma_4_c2_v3_c4_5)="You are a certain kind of person, and there is not much that can be done to really change that"
label(data$study_surv_gfma_5_c2_v3_c4_5)="You can always change basic things about the kind of person you are"
label(data$study_surv_gfma_6_c2_v3_c4_5)="Music talent can be learned by anyone"
label(data$study_surv_gfma_7_c2_v3_c4_5)="Only a few people will be truly good at sports - you have to be born with it."
label(data$study_surv_gfma_8_c2_v3_c4_5)="Math is much easier to learn if you are male or maybe come from a culture that values math"
label(data$study_surv_gfma_9_c2_v3_c4_5)="The harder you work at something, the better you will be at it"
label(data$study_surv_gfma_10_c2_v3_c4_5)="No matter what kind of person you are, you can always change substantially"
label(data$study_surv_gfma_11_c2_v3_c4_5)="Trying new things is stressful for me and I avoid it"
label(data$study_surv_gfma_12_c2_v3_c4_5)="Some people are good and kind, some are not - it is not often that people change"
label(data$study_surv_gfma_13_c2_v3_c4_5)="I appreciate when parents, coaches, teachers give me feedback about my performance"
label(data$study_surv_gfma_14_c2_v3_c4_5)="I often get angry when I get feedback about my performance"
label(data$study_surv_gfma_15_c2_v3_c4_5)="All human beings without a brain injury or birth defect are capable of the same amount of learning"
label(data$study_surv_gfma_16_c2_v3_c4_5)="You can learn new things, but you cant really change how intelligent you are"
label(data$study_surv_gfma_17_c2_v3_c4_5)="You can do things differently, but the important part of who you are cant really be changed"
label(data$study_surv_gfma_18_c2_v3_c4_5)="Human beings are basically good, but sometimes make terrible decisions"
label(data$study_surv_gfma_19_c2_v3_c4_5)="An important reason why I do my schoolwork is that I like to learn new things"
label(data$study_surv_gfma_20_c2_v3_c4_5)="Truly smart people dont need to try hard"
label(data$study_surv_gratitude_1_c2_v3_c4_5)="I have so much in life to be thankful for"
label(data$study_surv_gratitude_2_c2_v3_c4_5)="If I had to list everything that I felt grateful for, it would be a very long list"
label(data$study_surv_gratitude_3_c2_v3_c4_5)="When I look at the world, I dont see much to be grateful for"
label(data$study_surv_gratitude_4_c2_v3_c4_5)="I am grateful to a wide variety of people"
label(data$study_surv_gratitude_5_c2_v3_c4_5)="As I get older, I find myself more able to appreciate the people, events, and situations that have been part of my life history"
label(data$study_surv_gratitude_6_c2_v3_c4_5)="Long amount of time can go by before I feel grateful for something or someone"
label(data$study_surv_needs_c5_1)="People are impressed by me"
label(data$study_surv_needs_c5_2)="Feeling that I belong is important to me"
label(data$study_surv_needs_c5_3)="I need to feel grounded"
label(data$study_surv_needs_c5_4)="I dont mind taking risks"
label(data$study_surv_needs_c5_5)="I dont fear change"
label(data$study_surv_needs_c5_6)="A failure is not a failure if you keep trying"
label(data$study_surv_needs_c5_7)="I believe in giving back"
label(data$study_surv_needs_c5_8)="Im good at taking care of people"
label(data$study_surv_needs_c5_9)="I often worry about what people are saying about me"
label(data$study_surv_needs_c5_10)="I like to have as much stability in my life as possible"
label(data$study_surv_needs_c5_11)="Its important to contribute to the community"
label(data$study_surv_needs_c5_12)="I like to develop new ideas and projects"
label(data$study_surv_needs_c5_13)="Im security conscious"
label(data$study_surv_needs_c5_14)="I like to be an example to others"
label(data$study_surv_needs_c5_15)="Im competitive"
label(data$study_surv_needs_c5_16)="I hate the feeling of boredom"
label(data$study_surv_needs_c5_17)="I know how to make connections with people"
label(data$study_surv_needs_c5_18)="I constantly aspire to improve"
label(data$study_surv_needs_c5_19)="Danger is never exciting to me"
label(data$study_surv_needs_c5_20)="In most close relationships Im usually the giver"
label(data$study_surv_needs_c5_21)="There is always something new to be learned"
label(data$study_surv_needs_c5_22)="I need to feel fulfilled"
label(data$study_surv_needs_c5_23)="I frequently evaluate myself"
label(data$study_surv_needs_c5_24)="I like for things to be predictable"
label(data$study_surv_needs_c5_25)="I am more loving than most people"
label(data$study_surv_needs_c5_26)="Recognition is very important to me"
label(data$study_surv_needs_c5_27)="I like the feeling of exertion"
label(data$study_surv_needs_c5_28)="Im very careful of not over-spending"
label(data$study_surv_needs_c5_29)="Education is important to me"
label(data$study_surv_needs_c5_30)="Im a leader"
label(data$study_surv_needs_c5_31)="Im always looking for new experiences"
label(data$study_surv_needs_c5_32)="I sometimes overextend myself in trying to help"
label(data$study_surv_needs_c5_33)="I like to learn in order to teach what I learn"
label(data$study_surv_needs_c5_34)="I take pride in who I am"
label(data$study_surv_needs_c5_35)="I like how learning something new changes my perspective"
label(data$study_surv_needs_c5_36)="Im constantly learning"
label(data$study_surv2_c3_part2_c4_5)="study_surv2_c3_part2_c4_5"
label(data$study_surv_attend_c2_v3_c4_5)="In the last month, how often did you practice the DWD materials ?"
label(data$study_surv_health1_c2_v3_c4_5)="Have you had a confirmed or suspected case of COVID-19 in the last month? "
label(data$study_surv_health2_c2_v3_c4_5)="Have you had a confirmed or suspected case of Flu or Cold in the last month? "
label(data$study_surv_health3_c2_v3_c4_5)="Have you had a confirmed or suspected case of other seasonal or acute illness in the last month?"
label(data$study_surv_health4_c2_v3_c4_5)="Would you like to provide additional details about your suspected case of other seasonal or acute illness in the last month?"
label(data$study_surveys2_checkpoint5_complete)="Complete?"
label(data$c4_date_5_c6)="Date-time"
label(data$study_surv_pfi_1_c2_v3_c4_5_c6)="I feel happy at work"
label(data$study_surv_pfi_2_c2_v3_c4_5_c6)="I feel worthwhile at work"
label(data$study_surv_pfi_3_c2_v3_c4_5_c6)="My work is satisfying to me"
label(data$study_surv_pfi_4_c2_v3_c4_5_c6)="I feel in control when dealing with difficult problems at work."
label(data$study_surv_pfi_5_c2_v3_c4_5_c6)="My work is meaningful to me."
label(data$study_surv_pfi_6_c2_v3_c4_5_c6)="Im contributing professionally in the ways I value most."
label(data$study_surv_pfi_7_c2_v3_c4_5_c6)="A sense of dread when I think about work I have to do"
label(data$study_surv_pfi_8_c2_v3_c4_5_c6)="Physically exhausted at work"
label(data$study_surv_pfi_9_c2_v3_c4_5_c6)="Lacking in enthusiasm at work"
label(data$study_surv_pfi_10_c2_v3_c4_5_c6)="Emotionally exhausted at work"
label(data$study_surv_pfi_11_c2_v3_c4_5_c6)="Less empathetic with  people at work"
label(data$study_surv_pfi_12_c2_v3_c4_5_c6)="Less empathetic with my colleagues"
label(data$study_surv_pfi_13_c2_v3_c4_5_c6)="Less sensitive to others feelings/emotions"
label(data$study_surv_pfi_14_c2_v3_c4_5_c6)="Less interested in talking with people at work"
label(data$study_surv_pfi_15_c2_v3_c4_5_c6)="Less connected with people at work"
label(data$study_surv_pfi_16_c2_v3_c4_5_c6)="Less connected with my colleagues"
label(data$study_surv_cdrisc_1_c2_v3_c4_5_c6)="I am able to deal with change"
label(data$study_surv_cdrisc_2_c2_v3_c4_5_c6)="I can deal with whatever comes my way"
label(data$study_surv_cdrisc_3_c2_v3_c4_5_c6)="I try to see the funny side of things when I am faced with problems"
label(data$study_surv_cdrisc_4_c2_v3_c4_5_c6)="Dealing with stress can make me stronger"
label(data$study_surv_cdrisc_5_c2_v3_c4_5_c6)="I tend to bounce back after being sick, injury, or other hardships"
label(data$study_surv_cdrisc_6_c2_v3_c4_5_c6)="I believe I can achieve what I want, even if there are problems"
label(data$study_surv_cdrisc_7_c2_v3_c4_5_c6)="Under pressure, I still think clearly"
label(data$study_surv_cdrisc_8_c2_v3_c4_5_c6)="I do not lose hope following a failure"
label(data$study_surv_cdrisc_9_c2_v3_c4_5_c6)="I think of myself as a strong person when dealing with lifes challenges and difficulties"
label(data$study_surv_cdrisc_10_c2_v3_c4_5_c6)="I am able to handle unpleasant or painful feelings, like sadness, fear, or anger"
label(data$study_surv_perma_1_c2_v3_c4_5_c6)="In general, to what extent do you lead a purposeful and meaningful life?"
label(data$study_surv_perma_2_c2_v3_c4_5_c6)="How much of the time do you feel you are making progress towards accomplishing your goals?"
label(data$study_surv_perma_3_c2_v3_c4_5_c6)="How often do you become absorbed in what you are doing?"
label(data$study_surv_perma_4_c2_v3_c4_5_c6)="In general, how would you say your health is?"
label(data$study_surv_perma_5_c2_v3_c4_5_c6)="In general, how often do you feel joyful?"
label(data$study_surv_perma_6_c2_v3_c4_5_c6)="To what extent do you receive help and support from others when you need it?"
label(data$study_surv_perma_7_c2_v3_c4_5_c6)="In general, how often do you feel anxious?"
label(data$study_surv_perma_8_c2_v3_c4_5_c6)="How often do you achieve the important goals you have set for yourself?"
label(data$study_surv_perma_9_c2_v3_c4_5_c6)="In general, to what extent do you feel that what you do in your life is valuable and worthwhile?"
label(data$study_surv_perma_10_c2_v3_c4_5_c6)="In general, how often do you feel positive?"
label(data$study_surv_perma_11_c2_v3_c4_5_c6)="In general, to what extent do you feel excited and interested in things?"
label(data$study_surv_perma_12_c2_v3_c4_5_c6)="How lonely do you feel in your daily life?"
label(data$study_surv_perma_13_c2_v3_c4_5_c6)="How satisfied are you with your current physical health?"
label(data$study_surv_perma_14_c2_v3_c4_5_c6)="In general, how often do you feel angry?"
label(data$study_surv_perma_15_c2_v3_c4_5_c6)="To what extent do you feel loved?"
label(data$study_surv_perma_16_c2_v3_c4_5_c6)="How often are you able to handle your responsibilities?"
label(data$study_surv_perma_17_c2_v3_c4_5_c6)="To what extent do you generally feel you have a sense of direction in your life?"
label(data$study_surv_perma_18_c2_v3_c4_5_c6)="Compared to others of your same age and sex, how is your health?"
label(data$study_surv_perma_19_c2_v3_c4_5_c6)="How satisfied are you with your personal relationships?"
label(data$study_surv_perma_20_c2_v3_c4_5_c6)="In general, how often do you feel sad?"
label(data$study_surv_perma_21_c2_v3_c4_5_c6)="How often do you lose track of time while doing something you enjoy?"
label(data$study_surv_perma_22_c2_v3_c4_5_c6)="In general, to what extent do you feel contented?"
label(data$study_surv_perma_23_c2_v3_c4_5_c6)="Taking all things together, how happy would you say you are?"
label(data$study_surv_pss_1_c2_v3_c4_5_c6)="In the last month, how often have you been upset because of something that happened unexpectedly?"
label(data$study_surv_pss_2_c2_v3_c4_5_c6)="In the last month, how often have you felt that you were unable to control the important things in your life?"
label(data$study_surv_pss_3_c2_v3_c4_5_c6)="In the last month, how often have you felt nervous and stressed?"
label(data$study_surv_pss_4_c2_v3_c4_5_c6)="In the last month, how often have you felt confident about your ability to handle your personal problems?"
label(data$study_surv_pss_5_c2_v3_c4_5_c6)="In the last month, how often have you felt that things were going your way?"
label(data$study_surv_pss_6_c2_v3_c4_5_c6)="In the last month, how often have you found that you could not cope with all the things that you had to do?"
label(data$study_surv_pss_7_c2_v3_c4_5_c6)="In the last month, how often have you been able to control irritations in your life?"
label(data$study_surv_pss_8_c2_v3_c4_5_c6)="In the last month, how often have you felt that you were on top of things?"
label(data$study_surv_pss_9_c2_v3_c4_5_c6)="In the last month, how often have you been angered because of things happened that were outside of your control?"
label(data$study_surv_pss_10_c2_v3_c4_5_c6)="In the last month, how often have you felt difficulties were piling up so high that you could not overcome them?"
label(data$study_surv_c3_part1_c4_5_c6)="study_surv_c3_part1_c4_5_c6"
label(data$study_surveys1_checkpoint6_complete)="Complete?"
label(data$c4_date_2_5_c6)="Date-time"
label(data$study_surv_olbi_1_c2_v3_c4_5_c6)="I always find new and interesting aspects in my work"
label(data$study_surv_olbi_2_c2_v3_c4_5_c6)="There are days when I feel tired before I arrive at work"
label(data$study_surv_olbi_3_c2_v3_c4_5_c6)="It happens more and more often that I talk about my work in a negative way"
label(data$study_surv_olbi_4_c2_v3_c4_5_c6)="After work, I tend to need more time than in the past in order to relax and feel better"
label(data$study_surv_olbi_5_c2_v3_c4_5_c6)="I can tolerate the pressure of my work very well"
label(data$study_surv_olbi_6_c2_v3_c4_5_c6)="Lately, I tend to think less at work and do my job almost mechanically"
label(data$study_surv_olbi_7_c2_v3_c4_5_c6)="I find my work to be a positive challenge"
label(data$study_surv_olbi_8_c2_v3_c4_5_c6)="During my work, I often feel emotionally drained"
label(data$study_surv_olbi_9_c2_v3_c4_5_c6)="Over time, one can become disconnected from this type of work"
label(data$study_surv_olbi_10_c2_v3_c4_5_c6)="After working, I have enough energy for my leisure activities"
label(data$study_surv_olbi_11_c2_v3_c4_5_c6)="Sometimes I feel sickened by my work tasks"
label(data$study_surv_olbi_12_c2_v3_c4_5_c6)="After my work, I usually feel worn out and weary"
label(data$study_surv_olbi_13_c2_v3_c4_5_c6)="This is the only type of work that I can imagine myself doing"
label(data$study_surv_olbi_14_c2_v3_c4_5_c6)="Usually, I can manage the amount of my work well"
label(data$study_surv_olbi_15_c2_v3_c4_5_c6)="I feel more and more engaged in my work"
label(data$study_surv_olbi_16_c2_v3_c4_5_c6)="When I work, I usually feel energized"
label(data$study_surv_gse_1_c2_v3_c4_5_c6)="I can always manage to solve difficult problems if I try hard enough"
label(data$study_surv_gse_2_c2_v3_c4_5_c6)="If someone opposes me, I can find the means and ways to get what I want"
label(data$study_surv_gse_3_c2_v3_c4_5_c6)="It is easy for me to stick to my aims and accomplish my goals"
label(data$study_surv_gse_4_c2_v3_c4_5_c6)="I am confident that I could deal efficiently with unexpected events"
label(data$study_surv_gse_5_c2_v3_c4_5_c6)="Thanks to my resourcefulness, I know how to handle unforeseen situations"
label(data$study_surv_gse_6_c2_v3_c4_5_c6)="I can solve most problems if I invest the necessary effort"
label(data$study_surv_gse_7_c2_v3_c4_5_c6)="I can remain calm when facing difficulties because I can rely on my coping abilities"
label(data$study_surv_gse_8_c2_v3_c4_5_c6)="When I am confronted with a problem, I can usually find several solutions"
label(data$study_surv_gse_9_c2_v3_c4_5_c6)="If I am in trouble, I can usually think of a solution"
label(data$study_surv_gse_10_c2_v3_c4_5_c6)="I can usually handle whatever comes my way"
label(data$study_surv_who_1_c2_v3_c4_5_c6)="How would you rate your quality of life?"
label(data$study_surv_who_2_c2_v3_c4_5_c6)="How satisfied are you with your health?"
label(data$study_surv_who_3_c2_v3_c4_5_c6)="To what extent do you feel that physical pain prevents you from doing what you need to do?"
label(data$study_surv_who_4_c2_v3_c4_5_c6)="How much do you need any medical treatment to function in your daily life?"
label(data$study_surv_who_5_c2_v3_c4_5_c6)="How much do you enjoy life?"
label(data$study_surv_who_6_c2_v3_c4_5_c6)="To what extent do you feel your life to be meaningful?"
label(data$study_surv_who_7_c2_v3_c4_5_c6)="How well are you able to concentrate?"
label(data$study_surv_who_8_c2_v3_c4_5_c6)="How safe do you feel in your daily life?"
label(data$study_surv_who_9_c2_v3_c4_5_c6)="How healthy is your physical environment?"
label(data$study_surv_who_10_c2_v3_c4_5_c6)="Do you have enough energy for everyday life?"
label(data$study_surv_who_11_c2_v3_c4_5_c6)="Are you able to accept your bodily appearance?"
label(data$study_surv_who_12_c2_v3_c4_5_c6)="Have you enough money to meet your needs?"
label(data$study_surv_who_13_c2_v3_c4_5_c6)="How available to you is the information that you need in your day-to-day life?"
label(data$study_surv_who_14_c2_v3_c4_5_c6)="To what extent do you have the opportunity for leisure activities?"
label(data$study_surv_who_15_c2_v3_c4_5_c6)="How well are you able to get around?"
label(data$study_surv_who_16_c2_v3_c4_5_c6)="How satisfied are you with your sleep?"
label(data$study_surv_who_17_c2_v3_c4_5_c6)="How satisfied are you with your ability to perform your daily living activities?"
label(data$study_surv_who_18_c2_v3_c4_5_c6)="How satisfied are you with your capacity for work?"
label(data$study_surv_who_19_c2_v3_c4_5_c6)="How satisfied are you with yourself?"
label(data$study_surv_who_20_c2_v3_c4_5_c6)="How satisfied are you with your personal relationships?"
label(data$study_surv_who_21_c2_v3_c4_5_c6)="How satisfied are you with your sex life?"
label(data$study_surv_who_22_c2_v3_c4_5_c6)="How satisfied are you with the support you get from your friends?"
label(data$study_surv_who_23_c2_v3_c4_5_c6)="How satisfied are you with the conditions of your living place?"
label(data$study_surv_who_24_c2_v3_c4_5_c6)="How satisfied are you with your access to health services?"
label(data$study_surv_who_25_c2_v3_c4_5_c6)="How satisfied are you with your transport?"
label(data$study_surv_who_26_c2_v3_c4_5_c6)="How often do you have negative feelings such as blue mood, despair, anxiety, depression?"
label(data$study_surv_gfma_1_c2_v3_c4_5_c6)="Your intelligence is something very basic about you that you cant change very much"
label(data$study_surv_gfma_2_c2_v3_c4_5_c6)="No matter how much intelligence you have, you can always change it quite a bit"
label(data$study_surv_gfma_3_c2_v3_c4_5_c6)="You can always substantially change how intelligent you are"
label(data$study_surv_gfma_4_c2_v3_c4_5_c6)="You are a certain kind of person, and there is not much that can be done to really change that"
label(data$study_surv_gfma_5_c2_v3_c4_5_c6)="You can always change basic things about the kind of person you are"
label(data$study_surv_gfma_6_c2_v3_c4_5_c6)="Music talent can be learned by anyone"
label(data$study_surv_gfma_7_c2_v3_c4_5_c6)="Only a few people will be truly good at sports - you have to be born with it."
label(data$study_surv_gfma_8_c2_v3_c4_5_c6)="Math is much easier to learn if you are male or maybe come from a culture that values math"
label(data$study_surv_gfma_9_c2_v3_c4_5_c6)="The harder you work at something, the better you will be at it"
label(data$study_surv_gfma_10_c2_v3_c4_5_c6)="No matter what kind of person you are, you can always change substantially"
label(data$study_surv_gfma_11_c2_v3_c4_5_c6)="Trying new things is stressful for me and I avoid it"
label(data$study_surv_gfma_12_c2_v3_c4_5_c6)="Some people are good and kind, some are not - it is not often that people change"
label(data$study_surv_gfma_13_c2_v3_c4_5_c6)="I appreciate when parents, coaches, teachers give me feedback about my performance"
label(data$study_surv_gfma_14_c2_v3_c4_5_c6)="I often get angry when I get feedback about my performance"
label(data$study_surv_gfma_15_c2_v3_c4_5_c6)="All human beings without a brain injury or birth defect are capable of the same amount of learning"
label(data$study_surv_gfma_16_c2_v3_c4_5_c6)="You can learn new things, but you cant really change how intelligent you are"
label(data$study_surv_gfma_17_c2_v3_c4_5_c6)="You can do things differently, but the important part of who you are cant really be changed"
label(data$study_surv_gfma_18_c2_v3_c4_5_c6)="Human beings are basically good, but sometimes make terrible decisions"
label(data$study_surv_gfma_19_c2_v3_c4_5_c6)="An important reason why I do my schoolwork is that I like to learn new things"
label(data$study_surv_gfma_20_c2_v3_c4_5_c6)="Truly smart people dont need to try hard"
label(data$study_surv_gratitude_1_c2_v3_c4_5_c6)="I have so much in life to be thankful for"
label(data$study_surv_gratitude_2_c2_v3_c4_5_c6)="If I had to list everything that I felt grateful for, it would be a very long list"
label(data$study_surv_gratitude_3_c2_v3_c4_5_c6)="When I look at the world, I dont see much to be grateful for"
label(data$study_surv_gratitude_4_c2_v3_c4_5_c6)="I am grateful to a wide variety of people"
label(data$study_surv_gratitude_5_c2_v3_c4_5_c6)="As I get older, I find myself more able to appreciate the people, events, and situations that have been part of my life history"
label(data$study_surv_gratitude_6_c2_v3_c4_5_c6)="Long amount of time can go by before I feel grateful for something or someone"
label(data$study_surv_needs_c5_1_c6)="People are impressed by me"
label(data$study_surv_needs_c5_2_c6)="Feeling that I belong is important to me"
label(data$study_surv_needs_c5_3_c6)="I need to feel grounded"
label(data$study_surv_needs_c5_4_c6)="I dont mind taking risks"
label(data$study_surv_needs_c5_5_c6)="I dont fear change"
label(data$study_surv_needs_c5_6_c6)="A failure is not a failure if you keep trying"
label(data$study_surv_needs_c5_7_c6)="I believe in giving back"
label(data$study_surv_needs_c5_8_c6)="Im good at taking care of people"
label(data$study_surv_needs_c5_9_c6)="I often worry about what people are saying about me"
label(data$study_surv_needs_c5_10_c6)="I like to have as much stability in my life as possible"
label(data$study_surv_needs_c5_11_c6)="Its important to contribute to the community"
label(data$study_surv_needs_c5_12_c6)="I like to develop new ideas and projects"
label(data$study_surv_needs_c5_13_c6)="Im security conscious"
label(data$study_surv_needs_c5_14_c6)="I like to be an example to others"
label(data$study_surv_needs_c5_15_c6)="Im competitive"
label(data$study_surv_needs_c5_16_c6)="I hate the feeling of boredom"
label(data$study_surv_needs_c5_17_c6)="I know how to make connections with people"
label(data$study_surv_needs_c5_18_c6)="I constantly aspire to improve"
label(data$study_surv_needs_c5_19_c6)="Danger is never exciting to me"
label(data$study_surv_needs_c5_20_c6)="In most close relationships Im usually the giver"
label(data$study_surv_needs_c5_21_c6)="There is always something new to be learned"
label(data$study_surv_needs_c5_22_c6)="I need to feel fulfilled"
label(data$study_surv_needs_c5_23_c6)="I frequently evaluate myself"
label(data$study_surv_needs_c5_24_c6)="I like for things to be predictable"
label(data$study_surv_needs_c5_25_c6)="I am more loving than most people"
label(data$study_surv_needs_c5_26_c6)="Recognition is very important to me"
label(data$study_surv_needs_c5_27_c6)="I like the feeling of exertion"
label(data$study_surv_needs_c5_28_c6)="Im very careful of not over-spending"
label(data$study_surv_needs_c5_29_c6)="Education is important to me"
label(data$study_surv_needs_c5_30_c6)="Im a leader"
label(data$study_surv_needs_c5_31_c6)="Im always looking for new experiences"
label(data$study_surv_needs_c5_32_c6)="I sometimes overextend myself in trying to help"
label(data$study_surv_needs_c5_33_c6)="I like to learn in order to teach what I learn"
label(data$study_surv_needs_c5_34_c6)="I take pride in who I am"
label(data$study_surv_needs_c5_35_c6)="I like how learning something new changes my perspective"
label(data$study_surv_needs_c5_36_c6)="Im constantly learning"
label(data$study_surv2_c3_part2_c4_5_c6)="study_surv2_c3_part2_c4_5_c6"
label(data$c6_aces_survey_1)="Did you feel that you didnt have enough to eat, had to wear dirty clothes, or had no one to protect or take care of you?"
label(data$c6_aces_survey_2)="Did you lose a parent through divorce, abandonment, death, or other reason?"
label(data$c6_aces_survey_3)="Did you live with anyone who was depressed, mentally ill, or attempted suicide?"
label(data$c6_aces_survey_4)="Did you live with anyone who had a problem with drinking or using drugs, including prescription drugs?"
label(data$c6_aces_survey_5)="Did your parents or adults in your home ever hit, punch, beat, or threaten to harm each other?"
label(data$c6_aces_survey_6)="Did you live with anyone who went to jail or prison?"
label(data$c6_aces_survey_7)="Did a parent or adult in your home ever swear at you, insult you, or put you down?"
label(data$c6_aces_survey_8)="Did a parent or adult in your home ever hit, beat, kick, or physically hurt you in any way?"
label(data$c6_aces_survey_9)="Did you feel that no one in your family loved you or thought you were special?"
label(data$c6_aces_survey_10)="Did you experience unwanted sexual contact (such as fondling or oral/anal/vaginal intercourse/penetration)?"
label(data$study_ace_c6)="study_ace_c6"
label(data$study_tony_c6)="Did you practice Tony Robbins techniques during this year?"
label(data$study_surv_attend_c2_v3_c4_5_c6)="In the last month, how often did you practice the DWD materials ?"
label(data$study_surv_health1_c2_v3_c4_5_c6)="Have you had a confirmed or suspected case of COVID-19 in the last month? "
label(data$study_surv_health2_c2_v3_c4_5_c6)="Have you had a confirmed or suspected case of Flu or Cold in the last month? "
label(data$study_surv_health3_c2_v3_c4_5_c6)="Have you had a confirmed or suspected case of other seasonal or acute illness in the last month?"
label(data$study_surv_health4_c2_v3_c4_5_c6)="Would you like to provide additional details about your suspected case of other seasonal or acute illness in the last month?"
label(data$study_surveys2_checkpoint6_complete)="Complete?"
#Setting Units


#Setting Factors(will create new variable for factors)
data$redcap_event_name.factor = factor(data$redcap_event_name,levels=c("entry_arm_1","checkpoint_1_arm_1","checkpoint_2_arm_1","checkpoint_3_arm_1","checkpoint_4_arm_1","reconsent_arm_1","checkpoint_5_arm_1","checkpoint_6_arm_1","ema_event_arm_1","ema_post_dwd_arm_1","slots_arm_2","reservations_arm_3"))
data$redcap_repeat_instrument.factor = factor(data$redcap_repeat_instrument,levels=c("ema","ema_post_dwdsurvey"))
data$demographics_sex.factor = factor(data$demographics_sex,levels=c("1","2","3","4"))
data$demographics_education.factor = factor(data$demographics_education,levels=c("1","2","3","4","5","6","7"))
data$demographics_living.factor = factor(data$demographics_living,levels=c("1","2","3","4","5"))
data$demographics_status.factor = factor(data$demographics_status,levels=c("1","2","3","4","5","6","7","8"))
data$demographics_children.factor = factor(data$demographics_children,levels=c("0","1","2","3","4","5","6"))
data$demographics_income.factor = factor(data$demographics_income,levels=c("1","2","3","4","5","6"))
data$demographics_watch.factor = factor(data$demographics_watch,levels=c("1","2","3","4","5"))
data$demographics_participate.factor = factor(data$demographics_participate,levels=c("1","2","3","4","5","6"))
data$demographics_pre_dwd.factor = factor(data$demographics_pre_dwd,levels=c("0","1","2","3"))
data$demographics_complete.factor = factor(data$demographics_complete,levels=c("0","1","2"))
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
data$study_surv_pfi_1_c2_v3.factor = factor(data$study_surv_pfi_1_c2_v3,levels=c("0","1","2","3","4"))
data$study_surv_pfi_2_c2_v3.factor = factor(data$study_surv_pfi_2_c2_v3,levels=c("0","1","2","3","4"))
data$study_surv_pfi_3_c2_v3.factor = factor(data$study_surv_pfi_3_c2_v3,levels=c("0","1","2","3","4"))
data$study_surv_pfi_4_c2_v3.factor = factor(data$study_surv_pfi_4_c2_v3,levels=c("0","1","2","3","4"))
data$study_surv_pfi_5_c2_v3.factor = factor(data$study_surv_pfi_5_c2_v3,levels=c("0","1","2","3","4"))
data$study_surv_pfi_6_c2_v3.factor = factor(data$study_surv_pfi_6_c2_v3,levels=c("0","1","2","3","4"))
data$study_surv_pfi_7_c2_v3.factor = factor(data$study_surv_pfi_7_c2_v3,levels=c("0","1","2","3","4"))
data$study_surv_pfi_8_c2_v3.factor = factor(data$study_surv_pfi_8_c2_v3,levels=c("0","1","2","3","4"))
data$study_surv_pfi_9_c2_v3.factor = factor(data$study_surv_pfi_9_c2_v3,levels=c("0","1","2","3","4"))
data$study_surv_pfi_10_c2_v3.factor = factor(data$study_surv_pfi_10_c2_v3,levels=c("0","1","2","3","4"))
data$study_surv_pfi_11_c2_v3.factor = factor(data$study_surv_pfi_11_c2_v3,levels=c("0","1","2","3","4"))
data$study_surv_pfi_12_c2_v3.factor = factor(data$study_surv_pfi_12_c2_v3,levels=c("0","1","2","3","4"))
data$study_surv_pfi_13_c2_v3.factor = factor(data$study_surv_pfi_13_c2_v3,levels=c("0","1","2","3","4"))
data$study_surv_pfi_14_c2_v3.factor = factor(data$study_surv_pfi_14_c2_v3,levels=c("0","1","2","3","4"))
data$study_surv_pfi_15_c2_v3.factor = factor(data$study_surv_pfi_15_c2_v3,levels=c("0","1","2","3","4"))
data$study_surv_pfi_16_c2_v3.factor = factor(data$study_surv_pfi_16_c2_v3,levels=c("0","1","2","3","4"))
data$study_surv_cdrisc_1_c2_v3.factor = factor(data$study_surv_cdrisc_1_c2_v3,levels=c("1","2","3","4"))
data$study_surv_cdrisc_2_c2_v3.factor = factor(data$study_surv_cdrisc_2_c2_v3,levels=c("1","2","3","4"))
data$study_surv_cdrisc_3_c2_v3.factor = factor(data$study_surv_cdrisc_3_c2_v3,levels=c("1","2","3","4"))
data$study_surv_cdrisc_4_c2_v3.factor = factor(data$study_surv_cdrisc_4_c2_v3,levels=c("1","2","3","4"))
data$study_surv_cdrisc_5_c2_v3.factor = factor(data$study_surv_cdrisc_5_c2_v3,levels=c("1","2","3","4"))
data$study_surv_cdrisc_6_c2_v3.factor = factor(data$study_surv_cdrisc_6_c2_v3,levels=c("1","2","3","4"))
data$study_surv_cdrisc_7_c2_v3.factor = factor(data$study_surv_cdrisc_7_c2_v3,levels=c("1","2","3","4"))
data$study_surv_cdrisc_8_c2_v3.factor = factor(data$study_surv_cdrisc_8_c2_v3,levels=c("1","2","3","4"))
data$study_surv_cdrisc_9_c2_v3.factor = factor(data$study_surv_cdrisc_9_c2_v3,levels=c("1","2","3","4"))
data$study_surv_cdrisc_10_c2_v3.factor = factor(data$study_surv_cdrisc_10_c2_v3,levels=c("1","2","3","4"))
data$study_surv_perma_1_c2_v3.factor = factor(data$study_surv_perma_1_c2_v3,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_2_c2_v3.factor = factor(data$study_surv_perma_2_c2_v3,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_3_c2_v3.factor = factor(data$study_surv_perma_3_c2_v3,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_4_c2_v3.factor = factor(data$study_surv_perma_4_c2_v3,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_5_c2_v3.factor = factor(data$study_surv_perma_5_c2_v3,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_6_c2_v3.factor = factor(data$study_surv_perma_6_c2_v3,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_7_c2_v3.factor = factor(data$study_surv_perma_7_c2_v3,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_8_c2_v3.factor = factor(data$study_surv_perma_8_c2_v3,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_9_c2_v3.factor = factor(data$study_surv_perma_9_c2_v3,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_10_c2_v3.factor = factor(data$study_surv_perma_10_c2_v3,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_11_c2_v3.factor = factor(data$study_surv_perma_11_c2_v3,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_12_c2_v3.factor = factor(data$study_surv_perma_12_c2_v3,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_13_c2_v3.factor = factor(data$study_surv_perma_13_c2_v3,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_14_c2_v3.factor = factor(data$study_surv_perma_14_c2_v3,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_15_c2_v3.factor = factor(data$study_surv_perma_15_c2_v3,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_16_c2_v3.factor = factor(data$study_surv_perma_16_c2_v3,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_17_c2_v3.factor = factor(data$study_surv_perma_17_c2_v3,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_18_c2_v3.factor = factor(data$study_surv_perma_18_c2_v3,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_19_c2_v3.factor = factor(data$study_surv_perma_19_c2_v3,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_20_c2_v3.factor = factor(data$study_surv_perma_20_c2_v3,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_21_c2_v3.factor = factor(data$study_surv_perma_21_c2_v3,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_22_c2_v3.factor = factor(data$study_surv_perma_22_c2_v3,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_23_c2_v3.factor = factor(data$study_surv_perma_23_c2_v3,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_pss_1_c2_v3.factor = factor(data$study_surv_pss_1_c2_v3,levels=c("0","1","2","3","4"))
data$study_surv_pss_2_c2_v3.factor = factor(data$study_surv_pss_2_c2_v3,levels=c("0","1","2","3","4"))
data$study_surv_pss_3_c2_v3.factor = factor(data$study_surv_pss_3_c2_v3,levels=c("0","1","2","3","4"))
data$study_surv_pss_4_c2_v3.factor = factor(data$study_surv_pss_4_c2_v3,levels=c("0","1","2","3","4"))
data$study_surv_pss_5_c2_v3.factor = factor(data$study_surv_pss_5_c2_v3,levels=c("0","1","2","3","4"))
data$study_surv_pss_6_c2_v3.factor = factor(data$study_surv_pss_6_c2_v3,levels=c("0","1","2","3","4"))
data$study_surv_pss_7_c2_v3.factor = factor(data$study_surv_pss_7_c2_v3,levels=c("0","1","2","3","4"))
data$study_surv_pss_8_c2_v3.factor = factor(data$study_surv_pss_8_c2_v3,levels=c("0","1","2","3","4"))
data$study_surv_pss_9_c2_v3.factor = factor(data$study_surv_pss_9_c2_v3,levels=c("0","1","2","3","4"))
data$study_surv_pss_10_c2_v3.factor = factor(data$study_surv_pss_10_c2_v3,levels=c("0","1","2","3","4"))
data$study_surveys1_checkpoint3_complete.factor = factor(data$study_surveys1_checkpoint3_complete,levels=c("0","1","2"))
data$study_surv_olbi_1_c2_v3.factor = factor(data$study_surv_olbi_1_c2_v3,levels=c("1","2","3","4"))
data$study_surv_olbi_2_c2_v3.factor = factor(data$study_surv_olbi_2_c2_v3,levels=c("1","2","3","4"))
data$study_surv_olbi_3_c2_v3.factor = factor(data$study_surv_olbi_3_c2_v3,levels=c("1","2","3","4"))
data$study_surv_olbi_4_c2_v3.factor = factor(data$study_surv_olbi_4_c2_v3,levels=c("1","2","3","4"))
data$study_surv_olbi_5_c2_v3.factor = factor(data$study_surv_olbi_5_c2_v3,levels=c("1","2","3","4"))
data$study_surv_olbi_6_c2_v3.factor = factor(data$study_surv_olbi_6_c2_v3,levels=c("1","2","3","4"))
data$study_surv_olbi_7_c2_v3.factor = factor(data$study_surv_olbi_7_c2_v3,levels=c("1","2","3","4"))
data$study_surv_olbi_8_c2_v3.factor = factor(data$study_surv_olbi_8_c2_v3,levels=c("1","2","3","4"))
data$study_surv_olbi_9_c2_v3.factor = factor(data$study_surv_olbi_9_c2_v3,levels=c("1","2","3","4"))
data$study_surv_olbi_10_c2_v3.factor = factor(data$study_surv_olbi_10_c2_v3,levels=c("1","2","3","4"))
data$study_surv_olbi_11_c2_v3.factor = factor(data$study_surv_olbi_11_c2_v3,levels=c("1","2","3","4"))
data$study_surv_olbi_12_c2_v3.factor = factor(data$study_surv_olbi_12_c2_v3,levels=c("1","2","3","4"))
data$study_surv_olbi_13_c2_v3.factor = factor(data$study_surv_olbi_13_c2_v3,levels=c("1","2","3","4"))
data$study_surv_olbi_14_c2_v3.factor = factor(data$study_surv_olbi_14_c2_v3,levels=c("1","2","3","4"))
data$study_surv_olbi_15_c2_v3.factor = factor(data$study_surv_olbi_15_c2_v3,levels=c("1","2","3","4"))
data$study_surv_olbi_16_c2_v3.factor = factor(data$study_surv_olbi_16_c2_v3,levels=c("1","2","3","4"))
data$study_surv_gse_1_c2_v3.factor = factor(data$study_surv_gse_1_c2_v3,levels=c("1","2","3","4"))
data$study_surv_gse_2_c2_v3.factor = factor(data$study_surv_gse_2_c2_v3,levels=c("1","2","3","4"))
data$study_surv_gse_3_c2_v3.factor = factor(data$study_surv_gse_3_c2_v3,levels=c("1","2","3","4"))
data$study_surv_gse_4_c2_v3.factor = factor(data$study_surv_gse_4_c2_v3,levels=c("1","2","3","4"))
data$study_surv_gse_5_c2_v3.factor = factor(data$study_surv_gse_5_c2_v3,levels=c("1","2","3","4"))
data$study_surv_gse_6_c2_v3.factor = factor(data$study_surv_gse_6_c2_v3,levels=c("1","2","3","4"))
data$study_surv_gse_7_c2_v3.factor = factor(data$study_surv_gse_7_c2_v3,levels=c("1","2","3","4"))
data$study_surv_gse_8_c2_v3.factor = factor(data$study_surv_gse_8_c2_v3,levels=c("1","2","3","4"))
data$study_surv_gse_9_c2_v3.factor = factor(data$study_surv_gse_9_c2_v3,levels=c("1","2","3","4"))
data$study_surv_gse_10_c2_v3.factor = factor(data$study_surv_gse_10_c2_v3,levels=c("1","2","3","4"))
data$study_surv_who_1_c2_v3.factor = factor(data$study_surv_who_1_c2_v3,levels=c("1","2","3","4","5"))
data$study_surv_who_2_c2_v3.factor = factor(data$study_surv_who_2_c2_v3,levels=c("1","2","3","4","5"))
data$study_surv_who_3_c2_v3.factor = factor(data$study_surv_who_3_c2_v3,levels=c("1","2","3","4","5"))
data$study_surv_who_4_c2_v3.factor = factor(data$study_surv_who_4_c2_v3,levels=c("1","2","3","4","5"))
data$study_surv_who_5_c2_v3.factor = factor(data$study_surv_who_5_c2_v3,levels=c("1","2","3","4","5"))
data$study_surv_who_6_c2_v3.factor = factor(data$study_surv_who_6_c2_v3,levels=c("1","2","3","4","5"))
data$study_surv_who_7_c2_v3.factor = factor(data$study_surv_who_7_c2_v3,levels=c("1","2","3","4","5"))
data$study_surv_who_8_c2_v3.factor = factor(data$study_surv_who_8_c2_v3,levels=c("1","2","3","4","5"))
data$study_surv_who_9_c2_v3.factor = factor(data$study_surv_who_9_c2_v3,levels=c("1","2","3","4","5"))
data$study_surv_who_10_c2_v3.factor = factor(data$study_surv_who_10_c2_v3,levels=c("1","2","3","4","5"))
data$study_surv_who_11_c2_v3.factor = factor(data$study_surv_who_11_c2_v3,levels=c("1","2","3","4","5"))
data$study_surv_who_12_c2_v3.factor = factor(data$study_surv_who_12_c2_v3,levels=c("1","2","3","4","5"))
data$study_surv_who_13_c2_v3.factor = factor(data$study_surv_who_13_c2_v3,levels=c("1","2","3","4","5"))
data$study_surv_who_14_c2_v3.factor = factor(data$study_surv_who_14_c2_v3,levels=c("1","2","3","4","5"))
data$study_surv_who_15_c2_v3.factor = factor(data$study_surv_who_15_c2_v3,levels=c("1","2","3","4","5"))
data$study_surv_who_16_c2_v3.factor = factor(data$study_surv_who_16_c2_v3,levels=c("1","2","3","4","5"))
data$study_surv_who_17_c2_v3.factor = factor(data$study_surv_who_17_c2_v3,levels=c("1","2","3","4","5"))
data$study_surv_who_18_c2_v3.factor = factor(data$study_surv_who_18_c2_v3,levels=c("1","2","3","4","5"))
data$study_surv_who_19_c2_v3.factor = factor(data$study_surv_who_19_c2_v3,levels=c("1","2","3","4","5"))
data$study_surv_who_20_c2_v3.factor = factor(data$study_surv_who_20_c2_v3,levels=c("1","2","3","4","5"))
data$study_surv_who_21_c2_v3.factor = factor(data$study_surv_who_21_c2_v3,levels=c("1","2","3","4","5"))
data$study_surv_who_22_c2_v3.factor = factor(data$study_surv_who_22_c2_v3,levels=c("1","2","3","4","5"))
data$study_surv_who_23_c2_v3.factor = factor(data$study_surv_who_23_c2_v3,levels=c("1","2","3","4","5"))
data$study_surv_who_24_c2_v3.factor = factor(data$study_surv_who_24_c2_v3,levels=c("1","2","3","4","5"))
data$study_surv_who_25_c2_v3.factor = factor(data$study_surv_who_25_c2_v3,levels=c("1","2","3","4","5"))
data$study_surv_who_26_c2_v3.factor = factor(data$study_surv_who_26_c2_v3,levels=c("5","4","3","2","1"))
data$study_surv_gfma_1_c2_v3.factor = factor(data$study_surv_gfma_1_c2_v3,levels=c("0","1","2","3"))
data$study_surv_gfma_2_c2_v3.factor = factor(data$study_surv_gfma_2_c2_v3,levels=c("0","1","2","3"))
data$study_surv_gfma_3_c2_v3.factor = factor(data$study_surv_gfma_3_c2_v3,levels=c("0","1","2","3"))
data$study_surv_gfma_4_c2_v3.factor = factor(data$study_surv_gfma_4_c2_v3,levels=c("0","1","2","3"))
data$study_surv_gfma_5_c2_v3.factor = factor(data$study_surv_gfma_5_c2_v3,levels=c("0","1","2","3"))
data$study_surv_gfma_6_c2_v3.factor = factor(data$study_surv_gfma_6_c2_v3,levels=c("0","1","2","3"))
data$study_surv_gfma_7_c2_v3.factor = factor(data$study_surv_gfma_7_c2_v3,levels=c("0","1","2","3"))
data$study_surv_gfma_8_c2_v3.factor = factor(data$study_surv_gfma_8_c2_v3,levels=c("0","1","2","3"))
data$study_surv_gfma_9_c2_v3.factor = factor(data$study_surv_gfma_9_c2_v3,levels=c("0","1","2","3"))
data$study_surv_gfma_10_c2_v3.factor = factor(data$study_surv_gfma_10_c2_v3,levels=c("0","1","2","3"))
data$study_surv_gfma_11_c2_v3.factor = factor(data$study_surv_gfma_11_c2_v3,levels=c("0","1","2","3"))
data$study_surv_gfma_12_c2_v3.factor = factor(data$study_surv_gfma_12_c2_v3,levels=c("0","1","2","3"))
data$study_surv_gfma_13_c2_v3.factor = factor(data$study_surv_gfma_13_c2_v3,levels=c("0","1","2","3"))
data$study_surv_gfma_14_c2_v3.factor = factor(data$study_surv_gfma_14_c2_v3,levels=c("0","1","2","3"))
data$study_surv_gfma_15_c2_v3.factor = factor(data$study_surv_gfma_15_c2_v3,levels=c("0","1","2","3"))
data$study_surv_gfma_16_c2_v3.factor = factor(data$study_surv_gfma_16_c2_v3,levels=c("0","1","2","3"))
data$study_surv_gfma_17_c2_v3.factor = factor(data$study_surv_gfma_17_c2_v3,levels=c("0","1","2","3"))
data$study_surv_gfma_18_c2_v3.factor = factor(data$study_surv_gfma_18_c2_v3,levels=c("0","1","2","3"))
data$study_surv_gfma_19_c2_v3.factor = factor(data$study_surv_gfma_19_c2_v3,levels=c("0","1","2","3"))
data$study_surv_gfma_20_c2_v3.factor = factor(data$study_surv_gfma_20_c2_v3,levels=c("0","1","2","3"))
data$study_surv_gratitude_1_c2_v3.factor = factor(data$study_surv_gratitude_1_c2_v3,levels=c("1","2","3","4","5","6","7"))
data$study_surv_gratitude_2_c2_v3.factor = factor(data$study_surv_gratitude_2_c2_v3,levels=c("1","2","3","4","5","6","7"))
data$study_surv_gratitude_3_c2_v3.factor = factor(data$study_surv_gratitude_3_c2_v3,levels=c("1","2","3","4","5","6","7"))
data$study_surv_gratitude_4_c2_v3.factor = factor(data$study_surv_gratitude_4_c2_v3,levels=c("1","2","3","4","5","6","7"))
data$study_surv_gratitude_5_c2_v3.factor = factor(data$study_surv_gratitude_5_c2_v3,levels=c("1","2","3","4","5","6","7"))
data$study_surv_gratitude_6_c2_v3.factor = factor(data$study_surv_gratitude_6_c2_v3,levels=c("1","2","3","4","5","6","7"))
data$study_surv_attend_c2_v3.factor = factor(data$study_surv_attend_c2_v3,levels=c("0","1","2","3"))
data$study_surv_health1_c2_v3.factor = factor(data$study_surv_health1_c2_v3,levels=c("1","0"))
data$study_surv_health2_c2_v3.factor = factor(data$study_surv_health2_c2_v3,levels=c("1","0"))
data$study_surv_health3_c2_v3.factor = factor(data$study_surv_health3_c2_v3,levels=c("1","0"))
data$study_surveys2_checkpoint3_complete.factor = factor(data$study_surveys2_checkpoint3_complete,levels=c("0","1","2"))
data$study_surv_pfi_1_c2_v3_c4.factor = factor(data$study_surv_pfi_1_c2_v3_c4,levels=c("0","1","2","3","4"))
data$study_surv_pfi_2_c2_v3_c4.factor = factor(data$study_surv_pfi_2_c2_v3_c4,levels=c("0","1","2","3","4"))
data$study_surv_pfi_3_c2_v3_c4.factor = factor(data$study_surv_pfi_3_c2_v3_c4,levels=c("0","1","2","3","4"))
data$study_surv_pfi_4_c2_v3_c4.factor = factor(data$study_surv_pfi_4_c2_v3_c4,levels=c("0","1","2","3","4"))
data$study_surv_pfi_5_c2_v3_c4.factor = factor(data$study_surv_pfi_5_c2_v3_c4,levels=c("0","1","2","3","4"))
data$study_surv_pfi_6_c2_v3_c4.factor = factor(data$study_surv_pfi_6_c2_v3_c4,levels=c("0","1","2","3","4"))
data$study_surv_pfi_7_c2_v3_c4.factor = factor(data$study_surv_pfi_7_c2_v3_c4,levels=c("0","1","2","3","4"))
data$study_surv_pfi_8_c2_v3_c4.factor = factor(data$study_surv_pfi_8_c2_v3_c4,levels=c("0","1","2","3","4"))
data$study_surv_pfi_9_c2_v3_c4.factor = factor(data$study_surv_pfi_9_c2_v3_c4,levels=c("0","1","2","3","4"))
data$study_surv_pfi_10_c2_v3_c4.factor = factor(data$study_surv_pfi_10_c2_v3_c4,levels=c("0","1","2","3","4"))
data$study_surv_pfi_11_c2_v3_c4.factor = factor(data$study_surv_pfi_11_c2_v3_c4,levels=c("0","1","2","3","4"))
data$study_surv_pfi_12_c2_v3_c4.factor = factor(data$study_surv_pfi_12_c2_v3_c4,levels=c("0","1","2","3","4"))
data$study_surv_pfi_13_c2_v3_c4.factor = factor(data$study_surv_pfi_13_c2_v3_c4,levels=c("0","1","2","3","4"))
data$study_surv_pfi_14_c2_v3_c4.factor = factor(data$study_surv_pfi_14_c2_v3_c4,levels=c("0","1","2","3","4"))
data$study_surv_pfi_15_c2_v3_c4.factor = factor(data$study_surv_pfi_15_c2_v3_c4,levels=c("0","1","2","3","4"))
data$study_surv_pfi_16_c2_v3_c4.factor = factor(data$study_surv_pfi_16_c2_v3_c4,levels=c("0","1","2","3","4"))
data$study_surv_cdrisc_1_c2_v3_c4.factor = factor(data$study_surv_cdrisc_1_c2_v3_c4,levels=c("1","2","3","4"))
data$study_surv_cdrisc_2_c2_v3_c4.factor = factor(data$study_surv_cdrisc_2_c2_v3_c4,levels=c("1","2","3","4"))
data$study_surv_cdrisc_3_c2_v3_c4.factor = factor(data$study_surv_cdrisc_3_c2_v3_c4,levels=c("1","2","3","4"))
data$study_surv_cdrisc_4_c2_v3_c4.factor = factor(data$study_surv_cdrisc_4_c2_v3_c4,levels=c("1","2","3","4"))
data$study_surv_cdrisc_5_c2_v3_c4.factor = factor(data$study_surv_cdrisc_5_c2_v3_c4,levels=c("1","2","3","4"))
data$study_surv_cdrisc_6_c2_v3_c4.factor = factor(data$study_surv_cdrisc_6_c2_v3_c4,levels=c("1","2","3","4"))
data$study_surv_cdrisc_7_c2_v3_c4.factor = factor(data$study_surv_cdrisc_7_c2_v3_c4,levels=c("1","2","3","4"))
data$study_surv_cdrisc_8_c2_v3_c4.factor = factor(data$study_surv_cdrisc_8_c2_v3_c4,levels=c("1","2","3","4"))
data$study_surv_cdrisc_9_c2_v3_c4.factor = factor(data$study_surv_cdrisc_9_c2_v3_c4,levels=c("1","2","3","4"))
data$study_surv_cdrisc_10_c2_v3_c4.factor = factor(data$study_surv_cdrisc_10_c2_v3_c4,levels=c("1","2","3","4"))
data$study_surv_perma_1_c2_v3_c4.factor = factor(data$study_surv_perma_1_c2_v3_c4,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_2_c2_v3_c4.factor = factor(data$study_surv_perma_2_c2_v3_c4,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_3_c2_v3_c4.factor = factor(data$study_surv_perma_3_c2_v3_c4,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_4_c2_v3_c4.factor = factor(data$study_surv_perma_4_c2_v3_c4,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_5_c2_v3_c4.factor = factor(data$study_surv_perma_5_c2_v3_c4,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_6_c2_v3_c4.factor = factor(data$study_surv_perma_6_c2_v3_c4,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_7_c2_v3_c4.factor = factor(data$study_surv_perma_7_c2_v3_c4,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_8_c2_v3_c4.factor = factor(data$study_surv_perma_8_c2_v3_c4,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_9_c2_v3_c4.factor = factor(data$study_surv_perma_9_c2_v3_c4,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_10_c2_v3_c4.factor = factor(data$study_surv_perma_10_c2_v3_c4,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_11_c2_v3_c4.factor = factor(data$study_surv_perma_11_c2_v3_c4,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_12_c2_v3_c4.factor = factor(data$study_surv_perma_12_c2_v3_c4,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_13_c2_v3_c4.factor = factor(data$study_surv_perma_13_c2_v3_c4,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_14_c2_v3_c4.factor = factor(data$study_surv_perma_14_c2_v3_c4,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_15_c2_v3_c4.factor = factor(data$study_surv_perma_15_c2_v3_c4,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_16_c2_v3_c4.factor = factor(data$study_surv_perma_16_c2_v3_c4,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_17_c2_v3_c4.factor = factor(data$study_surv_perma_17_c2_v3_c4,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_18_c2_v3_c4.factor = factor(data$study_surv_perma_18_c2_v3_c4,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_19_c2_v3_c4.factor = factor(data$study_surv_perma_19_c2_v3_c4,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_20_c2_v3_c4.factor = factor(data$study_surv_perma_20_c2_v3_c4,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_21_c2_v3_c4.factor = factor(data$study_surv_perma_21_c2_v3_c4,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_22_c2_v3_c4.factor = factor(data$study_surv_perma_22_c2_v3_c4,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_23_c2_v3_c4.factor = factor(data$study_surv_perma_23_c2_v3_c4,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_pss_1_c2_v3_c4.factor = factor(data$study_surv_pss_1_c2_v3_c4,levels=c("0","1","2","3","4"))
data$study_surv_pss_2_c2_v3_c4.factor = factor(data$study_surv_pss_2_c2_v3_c4,levels=c("0","1","2","3","4"))
data$study_surv_pss_3_c2_v3_c4.factor = factor(data$study_surv_pss_3_c2_v3_c4,levels=c("0","1","2","3","4"))
data$study_surv_pss_4_c2_v3_c4.factor = factor(data$study_surv_pss_4_c2_v3_c4,levels=c("0","1","2","3","4"))
data$study_surv_pss_5_c2_v3_c4.factor = factor(data$study_surv_pss_5_c2_v3_c4,levels=c("0","1","2","3","4"))
data$study_surv_pss_6_c2_v3_c4.factor = factor(data$study_surv_pss_6_c2_v3_c4,levels=c("0","1","2","3","4"))
data$study_surv_pss_7_c2_v3_c4.factor = factor(data$study_surv_pss_7_c2_v3_c4,levels=c("0","1","2","3","4"))
data$study_surv_pss_8_c2_v3_c4.factor = factor(data$study_surv_pss_8_c2_v3_c4,levels=c("0","1","2","3","4"))
data$study_surv_pss_9_c2_v3_c4.factor = factor(data$study_surv_pss_9_c2_v3_c4,levels=c("0","1","2","3","4"))
data$study_surv_pss_10_c2_v3_c4.factor = factor(data$study_surv_pss_10_c2_v3_c4,levels=c("0","1","2","3","4"))
data$study_surveys1_checkpoint4_complete.factor = factor(data$study_surveys1_checkpoint4_complete,levels=c("0","1","2"))
data$study_surv_olbi_1_c2_v3_c4.factor = factor(data$study_surv_olbi_1_c2_v3_c4,levels=c("1","2","3","4"))
data$study_surv_olbi_2_c2_v3_c4.factor = factor(data$study_surv_olbi_2_c2_v3_c4,levels=c("1","2","3","4"))
data$study_surv_olbi_3_c2_v3_c4.factor = factor(data$study_surv_olbi_3_c2_v3_c4,levels=c("1","2","3","4"))
data$study_surv_olbi_4_c2_v3_c4.factor = factor(data$study_surv_olbi_4_c2_v3_c4,levels=c("1","2","3","4"))
data$study_surv_olbi_5_c2_v3_c4.factor = factor(data$study_surv_olbi_5_c2_v3_c4,levels=c("1","2","3","4"))
data$study_surv_olbi_6_c2_v3_c4.factor = factor(data$study_surv_olbi_6_c2_v3_c4,levels=c("1","2","3","4"))
data$study_surv_olbi_7_c2_v3_c4.factor = factor(data$study_surv_olbi_7_c2_v3_c4,levels=c("1","2","3","4"))
data$study_surv_olbi_8_c2_v3_c4.factor = factor(data$study_surv_olbi_8_c2_v3_c4,levels=c("1","2","3","4"))
data$study_surv_olbi_9_c2_v3_c4.factor = factor(data$study_surv_olbi_9_c2_v3_c4,levels=c("1","2","3","4"))
data$study_surv_olbi_10_c2_v3_c4.factor = factor(data$study_surv_olbi_10_c2_v3_c4,levels=c("1","2","3","4"))
data$study_surv_olbi_11_c2_v3_c4.factor = factor(data$study_surv_olbi_11_c2_v3_c4,levels=c("1","2","3","4"))
data$study_surv_olbi_12_c2_v3_c4.factor = factor(data$study_surv_olbi_12_c2_v3_c4,levels=c("1","2","3","4"))
data$study_surv_olbi_13_c2_v3_c4.factor = factor(data$study_surv_olbi_13_c2_v3_c4,levels=c("1","2","3","4"))
data$study_surv_olbi_14_c2_v3_c4.factor = factor(data$study_surv_olbi_14_c2_v3_c4,levels=c("1","2","3","4"))
data$study_surv_olbi_15_c2_v3_c4.factor = factor(data$study_surv_olbi_15_c2_v3_c4,levels=c("1","2","3","4"))
data$study_surv_olbi_16_c2_v3_c4.factor = factor(data$study_surv_olbi_16_c2_v3_c4,levels=c("1","2","3","4"))
data$study_surv_gse_1_c2_v3_c4.factor = factor(data$study_surv_gse_1_c2_v3_c4,levels=c("1","2","3","4"))
data$study_surv_gse_2_c2_v3_c4.factor = factor(data$study_surv_gse_2_c2_v3_c4,levels=c("1","2","3","4"))
data$study_surv_gse_3_c2_v3_c4.factor = factor(data$study_surv_gse_3_c2_v3_c4,levels=c("1","2","3","4"))
data$study_surv_gse_4_c2_v3_c4.factor = factor(data$study_surv_gse_4_c2_v3_c4,levels=c("1","2","3","4"))
data$study_surv_gse_5_c2_v3_c4.factor = factor(data$study_surv_gse_5_c2_v3_c4,levels=c("1","2","3","4"))
data$study_surv_gse_6_c2_v3_c4.factor = factor(data$study_surv_gse_6_c2_v3_c4,levels=c("1","2","3","4"))
data$study_surv_gse_7_c2_v3_c4.factor = factor(data$study_surv_gse_7_c2_v3_c4,levels=c("1","2","3","4"))
data$study_surv_gse_8_c2_v3_c4.factor = factor(data$study_surv_gse_8_c2_v3_c4,levels=c("1","2","3","4"))
data$study_surv_gse_9_c2_v3_c4.factor = factor(data$study_surv_gse_9_c2_v3_c4,levels=c("1","2","3","4"))
data$study_surv_gse_10_c2_v3_c4.factor = factor(data$study_surv_gse_10_c2_v3_c4,levels=c("1","2","3","4"))
data$study_surv_who_1_c2_v3_c4.factor = factor(data$study_surv_who_1_c2_v3_c4,levels=c("1","2","3","4","5"))
data$study_surv_who_2_c2_v3_c4.factor = factor(data$study_surv_who_2_c2_v3_c4,levels=c("1","2","3","4","5"))
data$study_surv_who_3_c2_v3_c4.factor = factor(data$study_surv_who_3_c2_v3_c4,levels=c("1","2","3","4","5"))
data$study_surv_who_4_c2_v3_c4.factor = factor(data$study_surv_who_4_c2_v3_c4,levels=c("1","2","3","4","5"))
data$study_surv_who_5_c2_v3_c4.factor = factor(data$study_surv_who_5_c2_v3_c4,levels=c("1","2","3","4","5"))
data$study_surv_who_6_c2_v3_c4.factor = factor(data$study_surv_who_6_c2_v3_c4,levels=c("1","2","3","4","5"))
data$study_surv_who_7_c2_v3_c4.factor = factor(data$study_surv_who_7_c2_v3_c4,levels=c("1","2","3","4","5"))
data$study_surv_who_8_c2_v3_c4.factor = factor(data$study_surv_who_8_c2_v3_c4,levels=c("1","2","3","4","5"))
data$study_surv_who_9_c2_v3_c4.factor = factor(data$study_surv_who_9_c2_v3_c4,levels=c("1","2","3","4","5"))
data$study_surv_who_10_c2_v3_c4.factor = factor(data$study_surv_who_10_c2_v3_c4,levels=c("1","2","3","4","5"))
data$study_surv_who_11_c2_v3_c4.factor = factor(data$study_surv_who_11_c2_v3_c4,levels=c("1","2","3","4","5"))
data$study_surv_who_12_c2_v3_c4.factor = factor(data$study_surv_who_12_c2_v3_c4,levels=c("1","2","3","4","5"))
data$study_surv_who_13_c2_v3_c4.factor = factor(data$study_surv_who_13_c2_v3_c4,levels=c("1","2","3","4","5"))
data$study_surv_who_14_c2_v3_c4.factor = factor(data$study_surv_who_14_c2_v3_c4,levels=c("1","2","3","4","5"))
data$study_surv_who_15_c2_v3_c4.factor = factor(data$study_surv_who_15_c2_v3_c4,levels=c("1","2","3","4","5"))
data$study_surv_who_16_c2_v3_c4.factor = factor(data$study_surv_who_16_c2_v3_c4,levels=c("1","2","3","4","5"))
data$study_surv_who_17_c2_v3_c4.factor = factor(data$study_surv_who_17_c2_v3_c4,levels=c("1","2","3","4","5"))
data$study_surv_who_18_c2_v3_c4.factor = factor(data$study_surv_who_18_c2_v3_c4,levels=c("1","2","3","4","5"))
data$study_surv_who_19_c2_v3_c4.factor = factor(data$study_surv_who_19_c2_v3_c4,levels=c("1","2","3","4","5"))
data$study_surv_who_20_c2_v3_c4.factor = factor(data$study_surv_who_20_c2_v3_c4,levels=c("1","2","3","4","5"))
data$study_surv_who_21_c2_v3_c4.factor = factor(data$study_surv_who_21_c2_v3_c4,levels=c("1","2","3","4","5"))
data$study_surv_who_22_c2_v3_c4.factor = factor(data$study_surv_who_22_c2_v3_c4,levels=c("1","2","3","4","5"))
data$study_surv_who_23_c2_v3_c4.factor = factor(data$study_surv_who_23_c2_v3_c4,levels=c("1","2","3","4","5"))
data$study_surv_who_24_c2_v3_c4.factor = factor(data$study_surv_who_24_c2_v3_c4,levels=c("1","2","3","4","5"))
data$study_surv_who_25_c2_v3_c4.factor = factor(data$study_surv_who_25_c2_v3_c4,levels=c("1","2","3","4","5"))
data$study_surv_who_26_c2_v3_c4.factor = factor(data$study_surv_who_26_c2_v3_c4,levels=c("5","4","3","2","1"))
data$study_surv_gfma_1_c2_v3_c4.factor = factor(data$study_surv_gfma_1_c2_v3_c4,levels=c("0","1","2","3"))
data$study_surv_gfma_2_c2_v3_c4.factor = factor(data$study_surv_gfma_2_c2_v3_c4,levels=c("0","1","2","3"))
data$study_surv_gfma_3_c2_v3_c4.factor = factor(data$study_surv_gfma_3_c2_v3_c4,levels=c("0","1","2","3"))
data$study_surv_gfma_4_c2_v3_c4.factor = factor(data$study_surv_gfma_4_c2_v3_c4,levels=c("0","1","2","3"))
data$study_surv_gfma_5_c2_v3_c4.factor = factor(data$study_surv_gfma_5_c2_v3_c4,levels=c("0","1","2","3"))
data$study_surv_gfma_6_c2_v3_c4.factor = factor(data$study_surv_gfma_6_c2_v3_c4,levels=c("0","1","2","3"))
data$study_surv_gfma_7_c2_v3_c4.factor = factor(data$study_surv_gfma_7_c2_v3_c4,levels=c("0","1","2","3"))
data$study_surv_gfma_8_c2_v3_c4.factor = factor(data$study_surv_gfma_8_c2_v3_c4,levels=c("0","1","2","3"))
data$study_surv_gfma_9_c2_v3_c4.factor = factor(data$study_surv_gfma_9_c2_v3_c4,levels=c("0","1","2","3"))
data$study_surv_gfma_10_c2_v3_c4.factor = factor(data$study_surv_gfma_10_c2_v3_c4,levels=c("0","1","2","3"))
data$study_surv_gfma_11_c2_v3_c4.factor = factor(data$study_surv_gfma_11_c2_v3_c4,levels=c("0","1","2","3"))
data$study_surv_gfma_12_c2_v3_c4.factor = factor(data$study_surv_gfma_12_c2_v3_c4,levels=c("0","1","2","3"))
data$study_surv_gfma_13_c2_v3_c4.factor = factor(data$study_surv_gfma_13_c2_v3_c4,levels=c("0","1","2","3"))
data$study_surv_gfma_14_c2_v3_c4.factor = factor(data$study_surv_gfma_14_c2_v3_c4,levels=c("0","1","2","3"))
data$study_surv_gfma_15_c2_v3_c4.factor = factor(data$study_surv_gfma_15_c2_v3_c4,levels=c("0","1","2","3"))
data$study_surv_gfma_16_c2_v3_c4.factor = factor(data$study_surv_gfma_16_c2_v3_c4,levels=c("0","1","2","3"))
data$study_surv_gfma_17_c2_v3_c4.factor = factor(data$study_surv_gfma_17_c2_v3_c4,levels=c("0","1","2","3"))
data$study_surv_gfma_18_c2_v3_c4.factor = factor(data$study_surv_gfma_18_c2_v3_c4,levels=c("0","1","2","3"))
data$study_surv_gfma_19_c2_v3_c4.factor = factor(data$study_surv_gfma_19_c2_v3_c4,levels=c("0","1","2","3"))
data$study_surv_gfma_20_c2_v3_c4.factor = factor(data$study_surv_gfma_20_c2_v3_c4,levels=c("0","1","2","3"))
data$study_surv_gratitude_1_c2_v3_c4.factor = factor(data$study_surv_gratitude_1_c2_v3_c4,levels=c("1","2","3","4","5","6","7"))
data$study_surv_gratitude_2_c2_v3_c4.factor = factor(data$study_surv_gratitude_2_c2_v3_c4,levels=c("1","2","3","4","5","6","7"))
data$study_surv_gratitude_3_c2_v3_c4.factor = factor(data$study_surv_gratitude_3_c2_v3_c4,levels=c("1","2","3","4","5","6","7"))
data$study_surv_gratitude_4_c2_v3_c4.factor = factor(data$study_surv_gratitude_4_c2_v3_c4,levels=c("1","2","3","4","5","6","7"))
data$study_surv_gratitude_5_c2_v3_c4.factor = factor(data$study_surv_gratitude_5_c2_v3_c4,levels=c("1","2","3","4","5","6","7"))
data$study_surv_gratitude_6_c2_v3_c4.factor = factor(data$study_surv_gratitude_6_c2_v3_c4,levels=c("1","2","3","4","5","6","7"))
data$study_survey_wheel1_c4.factor = factor(data$study_survey_wheel1_c4,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_survey_wheel1_f_c4.factor = factor(data$study_survey_wheel1_f_c4,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_survey_wheel_2_c4.factor = factor(data$study_survey_wheel_2_c4,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_survey_wheel_2_f_c4.factor = factor(data$study_survey_wheel_2_f_c4,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_survey_wheel_3_c4.factor = factor(data$study_survey_wheel_3_c4,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_survey_wheel_3_f_c4.factor = factor(data$study_survey_wheel_3_f_c4,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_survey_wheel_4_c4.factor = factor(data$study_survey_wheel_4_c4,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_survey_wheel_4_f_c4.factor = factor(data$study_survey_wheel_4_f_c4,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_survey_wheel_5_c4.factor = factor(data$study_survey_wheel_5_c4,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_survey_wheel_5_f_c4.factor = factor(data$study_survey_wheel_5_f_c4,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_survey_wheel_6_c4.factor = factor(data$study_survey_wheel_6_c4,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_survey_wheel_6_f_c4.factor = factor(data$study_survey_wheel_6_f_c4,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_survey_wheel_7_c4.factor = factor(data$study_survey_wheel_7_c4,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_survey_wheel_7_f_c4.factor = factor(data$study_survey_wheel_7_f_c4,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_survey_wheel_8_c4.factor = factor(data$study_survey_wheel_8_c4,levels=c("1","2","3","4","5","6","7"))
data$study_survey_wheel_8_2_c4.factor = factor(data$study_survey_wheel_8_2_c4,levels=c("1","2","3","4","5","6","7"))
data$study_surv_attend_c2_v3_c4.factor = factor(data$study_surv_attend_c2_v3_c4,levels=c("0","1","2","3"))
data$study_surv_health1_c2_v3_c4.factor = factor(data$study_surv_health1_c2_v3_c4,levels=c("1","0"))
data$study_surv_health2_c2_v3_c4.factor = factor(data$study_surv_health2_c2_v3_c4,levels=c("1","0"))
data$study_surv_health3_c2_v3_c4.factor = factor(data$study_surv_health3_c2_v3_c4,levels=c("1","0"))
data$study_surveys2_checkpoint4_complete.factor = factor(data$study_surveys2_checkpoint4_complete,levels=c("0","1","2"))
data$study_surv_pfi_1_c2_v3_c4_5.factor = factor(data$study_surv_pfi_1_c2_v3_c4_5,levels=c("0","1","2","3","4"))
data$study_surv_pfi_2_c2_v3_c4_5.factor = factor(data$study_surv_pfi_2_c2_v3_c4_5,levels=c("0","1","2","3","4"))
data$study_surv_pfi_3_c2_v3_c4_5.factor = factor(data$study_surv_pfi_3_c2_v3_c4_5,levels=c("0","1","2","3","4"))
data$study_surv_pfi_4_c2_v3_c4_5.factor = factor(data$study_surv_pfi_4_c2_v3_c4_5,levels=c("0","1","2","3","4"))
data$study_surv_pfi_5_c2_v3_c4_5.factor = factor(data$study_surv_pfi_5_c2_v3_c4_5,levels=c("0","1","2","3","4"))
data$study_surv_pfi_6_c2_v3_c4_5.factor = factor(data$study_surv_pfi_6_c2_v3_c4_5,levels=c("0","1","2","3","4"))
data$study_surv_pfi_7_c2_v3_c4_5.factor = factor(data$study_surv_pfi_7_c2_v3_c4_5,levels=c("0","1","2","3","4"))
data$study_surv_pfi_8_c2_v3_c4_5.factor = factor(data$study_surv_pfi_8_c2_v3_c4_5,levels=c("0","1","2","3","4"))
data$study_surv_pfi_9_c2_v3_c4_5.factor = factor(data$study_surv_pfi_9_c2_v3_c4_5,levels=c("0","1","2","3","4"))
data$study_surv_pfi_10_c2_v3_c4_5.factor = factor(data$study_surv_pfi_10_c2_v3_c4_5,levels=c("0","1","2","3","4"))
data$study_surv_pfi_11_c2_v3_c4_5.factor = factor(data$study_surv_pfi_11_c2_v3_c4_5,levels=c("0","1","2","3","4"))
data$study_surv_pfi_12_c2_v3_c4_5.factor = factor(data$study_surv_pfi_12_c2_v3_c4_5,levels=c("0","1","2","3","4"))
data$study_surv_pfi_13_c2_v3_c4_5.factor = factor(data$study_surv_pfi_13_c2_v3_c4_5,levels=c("0","1","2","3","4"))
data$study_surv_pfi_14_c2_v3_c4_5.factor = factor(data$study_surv_pfi_14_c2_v3_c4_5,levels=c("0","1","2","3","4"))
data$study_surv_pfi_15_c2_v3_c4_5.factor = factor(data$study_surv_pfi_15_c2_v3_c4_5,levels=c("0","1","2","3","4"))
data$study_surv_pfi_16_c2_v3_c4_5.factor = factor(data$study_surv_pfi_16_c2_v3_c4_5,levels=c("0","1","2","3","4"))
data$study_surv_cdrisc_1_c2_v3_c4_5.factor = factor(data$study_surv_cdrisc_1_c2_v3_c4_5,levels=c("1","2","3","4"))
data$study_surv_cdrisc_2_c2_v3_c4_5.factor = factor(data$study_surv_cdrisc_2_c2_v3_c4_5,levels=c("1","2","3","4"))
data$study_surv_cdrisc_3_c2_v3_c4_5.factor = factor(data$study_surv_cdrisc_3_c2_v3_c4_5,levels=c("1","2","3","4"))
data$study_surv_cdrisc_4_c2_v3_c4_5.factor = factor(data$study_surv_cdrisc_4_c2_v3_c4_5,levels=c("1","2","3","4"))
data$study_surv_cdrisc_5_c2_v3_c4_5.factor = factor(data$study_surv_cdrisc_5_c2_v3_c4_5,levels=c("1","2","3","4"))
data$study_surv_cdrisc_6_c2_v3_c4_5.factor = factor(data$study_surv_cdrisc_6_c2_v3_c4_5,levels=c("1","2","3","4"))
data$study_surv_cdrisc_7_c2_v3_c4_5.factor = factor(data$study_surv_cdrisc_7_c2_v3_c4_5,levels=c("1","2","3","4"))
data$study_surv_cdrisc_8_c2_v3_c4_5.factor = factor(data$study_surv_cdrisc_8_c2_v3_c4_5,levels=c("1","2","3","4"))
data$study_surv_cdrisc_9_c2_v3_c4_5.factor = factor(data$study_surv_cdrisc_9_c2_v3_c4_5,levels=c("1","2","3","4"))
data$study_surv_cdrisc_10_c2_v3_c4_5.factor = factor(data$study_surv_cdrisc_10_c2_v3_c4_5,levels=c("1","2","3","4"))
data$study_surv_perma_1_c2_v3_c4_5.factor = factor(data$study_surv_perma_1_c2_v3_c4_5,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_2_c2_v3_c4_5.factor = factor(data$study_surv_perma_2_c2_v3_c4_5,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_3_c2_v3_c4_5.factor = factor(data$study_surv_perma_3_c2_v3_c4_5,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_4_c2_v3_c4_5.factor = factor(data$study_surv_perma_4_c2_v3_c4_5,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_5_c2_v3_c4_5.factor = factor(data$study_surv_perma_5_c2_v3_c4_5,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_6_c2_v3_c4_5.factor = factor(data$study_surv_perma_6_c2_v3_c4_5,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_7_c2_v3_c4_5.factor = factor(data$study_surv_perma_7_c2_v3_c4_5,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_8_c2_v3_c4_5.factor = factor(data$study_surv_perma_8_c2_v3_c4_5,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_9_c2_v3_c4_5.factor = factor(data$study_surv_perma_9_c2_v3_c4_5,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_10_c2_v3_c4_5.factor = factor(data$study_surv_perma_10_c2_v3_c4_5,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_11_c2_v3_c4_5.factor = factor(data$study_surv_perma_11_c2_v3_c4_5,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_12_c2_v3_c4_5.factor = factor(data$study_surv_perma_12_c2_v3_c4_5,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_13_c2_v3_c4_5.factor = factor(data$study_surv_perma_13_c2_v3_c4_5,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_14_c2_v3_c4_5.factor = factor(data$study_surv_perma_14_c2_v3_c4_5,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_15_c2_v3_c4_5.factor = factor(data$study_surv_perma_15_c2_v3_c4_5,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_16_c2_v3_c4_5.factor = factor(data$study_surv_perma_16_c2_v3_c4_5,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_17_c2_v3_c4_5.factor = factor(data$study_surv_perma_17_c2_v3_c4_5,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_18_c2_v3_c4_5.factor = factor(data$study_surv_perma_18_c2_v3_c4_5,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_19_c2_v3_c4_5.factor = factor(data$study_surv_perma_19_c2_v3_c4_5,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_20_c2_v3_c4_5.factor = factor(data$study_surv_perma_20_c2_v3_c4_5,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_21_c2_v3_c4_5.factor = factor(data$study_surv_perma_21_c2_v3_c4_5,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_22_c2_v3_c4_5.factor = factor(data$study_surv_perma_22_c2_v3_c4_5,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_23_c2_v3_c4_5.factor = factor(data$study_surv_perma_23_c2_v3_c4_5,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_pss_1_c2_v3_c4_5.factor = factor(data$study_surv_pss_1_c2_v3_c4_5,levels=c("0","1","2","3","4"))
data$study_surv_pss_2_c2_v3_c4_5.factor = factor(data$study_surv_pss_2_c2_v3_c4_5,levels=c("0","1","2","3","4"))
data$study_surv_pss_3_c2_v3_c4_5.factor = factor(data$study_surv_pss_3_c2_v3_c4_5,levels=c("0","1","2","3","4"))
data$study_surv_pss_4_c2_v3_c4_5.factor = factor(data$study_surv_pss_4_c2_v3_c4_5,levels=c("0","1","2","3","4"))
data$study_surv_pss_5_c2_v3_c4_5.factor = factor(data$study_surv_pss_5_c2_v3_c4_5,levels=c("0","1","2","3","4"))
data$study_surv_pss_6_c2_v3_c4_5.factor = factor(data$study_surv_pss_6_c2_v3_c4_5,levels=c("0","1","2","3","4"))
data$study_surv_pss_7_c2_v3_c4_5.factor = factor(data$study_surv_pss_7_c2_v3_c4_5,levels=c("0","1","2","3","4"))
data$study_surv_pss_8_c2_v3_c4_5.factor = factor(data$study_surv_pss_8_c2_v3_c4_5,levels=c("0","1","2","3","4"))
data$study_surv_pss_9_c2_v3_c4_5.factor = factor(data$study_surv_pss_9_c2_v3_c4_5,levels=c("0","1","2","3","4"))
data$study_surv_pss_10_c2_v3_c4_5.factor = factor(data$study_surv_pss_10_c2_v3_c4_5,levels=c("0","1","2","3","4"))
data$study_surveys1_checkpoint5_complete.factor = factor(data$study_surveys1_checkpoint5_complete,levels=c("0","1","2"))
data$study_surv_olbi_1_c2_v3_c4_5.factor = factor(data$study_surv_olbi_1_c2_v3_c4_5,levels=c("1","2","3","4"))
data$study_surv_olbi_2_c2_v3_c4_5.factor = factor(data$study_surv_olbi_2_c2_v3_c4_5,levels=c("1","2","3","4"))
data$study_surv_olbi_3_c2_v3_c4_5.factor = factor(data$study_surv_olbi_3_c2_v3_c4_5,levels=c("1","2","3","4"))
data$study_surv_olbi_4_c2_v3_c4_5.factor = factor(data$study_surv_olbi_4_c2_v3_c4_5,levels=c("1","2","3","4"))
data$study_surv_olbi_5_c2_v3_c4_5.factor = factor(data$study_surv_olbi_5_c2_v3_c4_5,levels=c("1","2","3","4"))
data$study_surv_olbi_6_c2_v3_c4_5.factor = factor(data$study_surv_olbi_6_c2_v3_c4_5,levels=c("1","2","3","4"))
data$study_surv_olbi_7_c2_v3_c4_5.factor = factor(data$study_surv_olbi_7_c2_v3_c4_5,levels=c("1","2","3","4"))
data$study_surv_olbi_8_c2_v3_c4_5.factor = factor(data$study_surv_olbi_8_c2_v3_c4_5,levels=c("1","2","3","4"))
data$study_surv_olbi_9_c2_v3_c4_5.factor = factor(data$study_surv_olbi_9_c2_v3_c4_5,levels=c("1","2","3","4"))
data$study_surv_olbi_10_c2_v3_c4_5.factor = factor(data$study_surv_olbi_10_c2_v3_c4_5,levels=c("1","2","3","4"))
data$study_surv_olbi_11_c2_v3_c4_5.factor = factor(data$study_surv_olbi_11_c2_v3_c4_5,levels=c("1","2","3","4"))
data$study_surv_olbi_12_c2_v3_c4_5.factor = factor(data$study_surv_olbi_12_c2_v3_c4_5,levels=c("1","2","3","4"))
data$study_surv_olbi_13_c2_v3_c4_5.factor = factor(data$study_surv_olbi_13_c2_v3_c4_5,levels=c("1","2","3","4"))
data$study_surv_olbi_14_c2_v3_c4_5.factor = factor(data$study_surv_olbi_14_c2_v3_c4_5,levels=c("1","2","3","4"))
data$study_surv_olbi_15_c2_v3_c4_5.factor = factor(data$study_surv_olbi_15_c2_v3_c4_5,levels=c("1","2","3","4"))
data$study_surv_olbi_16_c2_v3_c4_5.factor = factor(data$study_surv_olbi_16_c2_v3_c4_5,levels=c("1","2","3","4"))
data$study_surv_gse_1_c2_v3_c4_5.factor = factor(data$study_surv_gse_1_c2_v3_c4_5,levels=c("1","2","3","4"))
data$study_surv_gse_2_c2_v3_c4_5.factor = factor(data$study_surv_gse_2_c2_v3_c4_5,levels=c("1","2","3","4"))
data$study_surv_gse_3_c2_v3_c4_5.factor = factor(data$study_surv_gse_3_c2_v3_c4_5,levels=c("1","2","3","4"))
data$study_surv_gse_4_c2_v3_c4_5.factor = factor(data$study_surv_gse_4_c2_v3_c4_5,levels=c("1","2","3","4"))
data$study_surv_gse_5_c2_v3_c4_5.factor = factor(data$study_surv_gse_5_c2_v3_c4_5,levels=c("1","2","3","4"))
data$study_surv_gse_6_c2_v3_c4_5.factor = factor(data$study_surv_gse_6_c2_v3_c4_5,levels=c("1","2","3","4"))
data$study_surv_gse_7_c2_v3_c4_5.factor = factor(data$study_surv_gse_7_c2_v3_c4_5,levels=c("1","2","3","4"))
data$study_surv_gse_8_c2_v3_c4_5.factor = factor(data$study_surv_gse_8_c2_v3_c4_5,levels=c("1","2","3","4"))
data$study_surv_gse_9_c2_v3_c4_5.factor = factor(data$study_surv_gse_9_c2_v3_c4_5,levels=c("1","2","3","4"))
data$study_surv_gse_10_c2_v3_c4_5.factor = factor(data$study_surv_gse_10_c2_v3_c4_5,levels=c("1","2","3","4"))
data$study_surv_who_1_c2_v3_c4_5.factor = factor(data$study_surv_who_1_c2_v3_c4_5,levels=c("1","2","3","4","5"))
data$study_surv_who_2_c2_v3_c4_5.factor = factor(data$study_surv_who_2_c2_v3_c4_5,levels=c("1","2","3","4","5"))
data$study_surv_who_3_c2_v3_c4_5.factor = factor(data$study_surv_who_3_c2_v3_c4_5,levels=c("1","2","3","4","5"))
data$study_surv_who_4_c2_v3_c4_5.factor = factor(data$study_surv_who_4_c2_v3_c4_5,levels=c("1","2","3","4","5"))
data$study_surv_who_5_c2_v3_c4_5.factor = factor(data$study_surv_who_5_c2_v3_c4_5,levels=c("1","2","3","4","5"))
data$study_surv_who_6_c2_v3_c4_5.factor = factor(data$study_surv_who_6_c2_v3_c4_5,levels=c("1","2","3","4","5"))
data$study_surv_who_7_c2_v3_c4_5.factor = factor(data$study_surv_who_7_c2_v3_c4_5,levels=c("1","2","3","4","5"))
data$study_surv_who_8_c2_v3_c4_5.factor = factor(data$study_surv_who_8_c2_v3_c4_5,levels=c("1","2","3","4","5"))
data$study_surv_who_9_c2_v3_c4_5.factor = factor(data$study_surv_who_9_c2_v3_c4_5,levels=c("1","2","3","4","5"))
data$study_surv_who_10_c2_v3_c4_5.factor = factor(data$study_surv_who_10_c2_v3_c4_5,levels=c("1","2","3","4","5"))
data$study_surv_who_11_c2_v3_c4_5.factor = factor(data$study_surv_who_11_c2_v3_c4_5,levels=c("1","2","3","4","5"))
data$study_surv_who_12_c2_v3_c4_5.factor = factor(data$study_surv_who_12_c2_v3_c4_5,levels=c("1","2","3","4","5"))
data$study_surv_who_13_c2_v3_c4_5.factor = factor(data$study_surv_who_13_c2_v3_c4_5,levels=c("1","2","3","4","5"))
data$study_surv_who_14_c2_v3_c4_5.factor = factor(data$study_surv_who_14_c2_v3_c4_5,levels=c("1","2","3","4","5"))
data$study_surv_who_15_c2_v3_c4_5.factor = factor(data$study_surv_who_15_c2_v3_c4_5,levels=c("1","2","3","4","5"))
data$study_surv_who_16_c2_v3_c4_5.factor = factor(data$study_surv_who_16_c2_v3_c4_5,levels=c("1","2","3","4","5"))
data$study_surv_who_17_c2_v3_c4_5.factor = factor(data$study_surv_who_17_c2_v3_c4_5,levels=c("1","2","3","4","5"))
data$study_surv_who_18_c2_v3_c4_5.factor = factor(data$study_surv_who_18_c2_v3_c4_5,levels=c("1","2","3","4","5"))
data$study_surv_who_19_c2_v3_c4_5.factor = factor(data$study_surv_who_19_c2_v3_c4_5,levels=c("1","2","3","4","5"))
data$study_surv_who_20_c2_v3_c4_5.factor = factor(data$study_surv_who_20_c2_v3_c4_5,levels=c("1","2","3","4","5"))
data$study_surv_who_21_c2_v3_c4_5.factor = factor(data$study_surv_who_21_c2_v3_c4_5,levels=c("1","2","3","4","5"))
data$study_surv_who_22_c2_v3_c4_5.factor = factor(data$study_surv_who_22_c2_v3_c4_5,levels=c("1","2","3","4","5"))
data$study_surv_who_23_c2_v3_c4_5.factor = factor(data$study_surv_who_23_c2_v3_c4_5,levels=c("1","2","3","4","5"))
data$study_surv_who_24_c2_v3_c4_5.factor = factor(data$study_surv_who_24_c2_v3_c4_5,levels=c("1","2","3","4","5"))
data$study_surv_who_25_c2_v3_c4_5.factor = factor(data$study_surv_who_25_c2_v3_c4_5,levels=c("1","2","3","4","5"))
data$study_surv_who_26_c2_v3_c4_5.factor = factor(data$study_surv_who_26_c2_v3_c4_5,levels=c("5","4","3","2","1"))
data$study_surv_gfma_1_c2_v3_c4_5.factor = factor(data$study_surv_gfma_1_c2_v3_c4_5,levels=c("0","1","2","3"))
data$study_surv_gfma_2_c2_v3_c4_5.factor = factor(data$study_surv_gfma_2_c2_v3_c4_5,levels=c("0","1","2","3"))
data$study_surv_gfma_3_c2_v3_c4_5.factor = factor(data$study_surv_gfma_3_c2_v3_c4_5,levels=c("0","1","2","3"))
data$study_surv_gfma_4_c2_v3_c4_5.factor = factor(data$study_surv_gfma_4_c2_v3_c4_5,levels=c("0","1","2","3"))
data$study_surv_gfma_5_c2_v3_c4_5.factor = factor(data$study_surv_gfma_5_c2_v3_c4_5,levels=c("0","1","2","3"))
data$study_surv_gfma_6_c2_v3_c4_5.factor = factor(data$study_surv_gfma_6_c2_v3_c4_5,levels=c("0","1","2","3"))
data$study_surv_gfma_7_c2_v3_c4_5.factor = factor(data$study_surv_gfma_7_c2_v3_c4_5,levels=c("0","1","2","3"))
data$study_surv_gfma_8_c2_v3_c4_5.factor = factor(data$study_surv_gfma_8_c2_v3_c4_5,levels=c("0","1","2","3"))
data$study_surv_gfma_9_c2_v3_c4_5.factor = factor(data$study_surv_gfma_9_c2_v3_c4_5,levels=c("0","1","2","3"))
data$study_surv_gfma_10_c2_v3_c4_5.factor = factor(data$study_surv_gfma_10_c2_v3_c4_5,levels=c("0","1","2","3"))
data$study_surv_gfma_11_c2_v3_c4_5.factor = factor(data$study_surv_gfma_11_c2_v3_c4_5,levels=c("0","1","2","3"))
data$study_surv_gfma_12_c2_v3_c4_5.factor = factor(data$study_surv_gfma_12_c2_v3_c4_5,levels=c("0","1","2","3"))
data$study_surv_gfma_13_c2_v3_c4_5.factor = factor(data$study_surv_gfma_13_c2_v3_c4_5,levels=c("0","1","2","3"))
data$study_surv_gfma_14_c2_v3_c4_5.factor = factor(data$study_surv_gfma_14_c2_v3_c4_5,levels=c("0","1","2","3"))
data$study_surv_gfma_15_c2_v3_c4_5.factor = factor(data$study_surv_gfma_15_c2_v3_c4_5,levels=c("0","1","2","3"))
data$study_surv_gfma_16_c2_v3_c4_5.factor = factor(data$study_surv_gfma_16_c2_v3_c4_5,levels=c("0","1","2","3"))
data$study_surv_gfma_17_c2_v3_c4_5.factor = factor(data$study_surv_gfma_17_c2_v3_c4_5,levels=c("0","1","2","3"))
data$study_surv_gfma_18_c2_v3_c4_5.factor = factor(data$study_surv_gfma_18_c2_v3_c4_5,levels=c("0","1","2","3"))
data$study_surv_gfma_19_c2_v3_c4_5.factor = factor(data$study_surv_gfma_19_c2_v3_c4_5,levels=c("0","1","2","3"))
data$study_surv_gfma_20_c2_v3_c4_5.factor = factor(data$study_surv_gfma_20_c2_v3_c4_5,levels=c("0","1","2","3"))
data$study_surv_gratitude_1_c2_v3_c4_5.factor = factor(data$study_surv_gratitude_1_c2_v3_c4_5,levels=c("1","2","3","4","5","6","7"))
data$study_surv_gratitude_2_c2_v3_c4_5.factor = factor(data$study_surv_gratitude_2_c2_v3_c4_5,levels=c("1","2","3","4","5","6","7"))
data$study_surv_gratitude_3_c2_v3_c4_5.factor = factor(data$study_surv_gratitude_3_c2_v3_c4_5,levels=c("1","2","3","4","5","6","7"))
data$study_surv_gratitude_4_c2_v3_c4_5.factor = factor(data$study_surv_gratitude_4_c2_v3_c4_5,levels=c("1","2","3","4","5","6","7"))
data$study_surv_gratitude_5_c2_v3_c4_5.factor = factor(data$study_surv_gratitude_5_c2_v3_c4_5,levels=c("1","2","3","4","5","6","7"))
data$study_surv_gratitude_6_c2_v3_c4_5.factor = factor(data$study_surv_gratitude_6_c2_v3_c4_5,levels=c("1","2","3","4","5","6","7"))
data$study_surv_needs_c5_1.factor = factor(data$study_surv_needs_c5_1,levels=c("10","5","0"))
data$study_surv_needs_c5_2.factor = factor(data$study_surv_needs_c5_2,levels=c("10","5","0"))
data$study_surv_needs_c5_3.factor = factor(data$study_surv_needs_c5_3,levels=c("10","5","0"))
data$study_surv_needs_c5_4.factor = factor(data$study_surv_needs_c5_4,levels=c("10","5","0"))
data$study_surv_needs_c5_5.factor = factor(data$study_surv_needs_c5_5,levels=c("10","5","0"))
data$study_surv_needs_c5_6.factor = factor(data$study_surv_needs_c5_6,levels=c("10","5","0"))
data$study_surv_needs_c5_7.factor = factor(data$study_surv_needs_c5_7,levels=c("10","5","0"))
data$study_surv_needs_c5_8.factor = factor(data$study_surv_needs_c5_8,levels=c("10","5","0"))
data$study_surv_needs_c5_9.factor = factor(data$study_surv_needs_c5_9,levels=c("10","5","0"))
data$study_surv_needs_c5_10.factor = factor(data$study_surv_needs_c5_10,levels=c("10","5","0"))
data$study_surv_needs_c5_11.factor = factor(data$study_surv_needs_c5_11,levels=c("10","5","0"))
data$study_surv_needs_c5_12.factor = factor(data$study_surv_needs_c5_12,levels=c("10","5","0"))
data$study_surv_needs_c5_13.factor = factor(data$study_surv_needs_c5_13,levels=c("10","5","0"))
data$study_surv_needs_c5_14.factor = factor(data$study_surv_needs_c5_14,levels=c("10","5","0"))
data$study_surv_needs_c5_15.factor = factor(data$study_surv_needs_c5_15,levels=c("10","5","0"))
data$study_surv_needs_c5_16.factor = factor(data$study_surv_needs_c5_16,levels=c("10","5","0"))
data$study_surv_needs_c5_17.factor = factor(data$study_surv_needs_c5_17,levels=c("10","5","0"))
data$study_surv_needs_c5_18.factor = factor(data$study_surv_needs_c5_18,levels=c("10","5","0"))
data$study_surv_needs_c5_19.factor = factor(data$study_surv_needs_c5_19,levels=c("10","5","0"))
data$study_surv_needs_c5_20.factor = factor(data$study_surv_needs_c5_20,levels=c("10","5","0"))
data$study_surv_needs_c5_21.factor = factor(data$study_surv_needs_c5_21,levels=c("10","5","0"))
data$study_surv_needs_c5_22.factor = factor(data$study_surv_needs_c5_22,levels=c("10","5","0"))
data$study_surv_needs_c5_23.factor = factor(data$study_surv_needs_c5_23,levels=c("10","5","0"))
data$study_surv_needs_c5_24.factor = factor(data$study_surv_needs_c5_24,levels=c("10","5","0"))
data$study_surv_needs_c5_25.factor = factor(data$study_surv_needs_c5_25,levels=c("10","5","0"))
data$study_surv_needs_c5_26.factor = factor(data$study_surv_needs_c5_26,levels=c("10","5","0"))
data$study_surv_needs_c5_27.factor = factor(data$study_surv_needs_c5_27,levels=c("10","5","0"))
data$study_surv_needs_c5_28.factor = factor(data$study_surv_needs_c5_28,levels=c("10","5","0"))
data$study_surv_needs_c5_29.factor = factor(data$study_surv_needs_c5_29,levels=c("10","5","0"))
data$study_surv_needs_c5_30.factor = factor(data$study_surv_needs_c5_30,levels=c("10","5","0"))
data$study_surv_needs_c5_31.factor = factor(data$study_surv_needs_c5_31,levels=c("10","5","0"))
data$study_surv_needs_c5_32.factor = factor(data$study_surv_needs_c5_32,levels=c("10","5","0"))
data$study_surv_needs_c5_33.factor = factor(data$study_surv_needs_c5_33,levels=c("10","5","0"))
data$study_surv_needs_c5_34.factor = factor(data$study_surv_needs_c5_34,levels=c("10","5","0"))
data$study_surv_needs_c5_35.factor = factor(data$study_surv_needs_c5_35,levels=c("10","5","0"))
data$study_surv_needs_c5_36.factor = factor(data$study_surv_needs_c5_36,levels=c("10","5","0"))
data$study_surv_attend_c2_v3_c4_5.factor = factor(data$study_surv_attend_c2_v3_c4_5,levels=c("0","1","2","3"))
data$study_surv_health1_c2_v3_c4_5.factor = factor(data$study_surv_health1_c2_v3_c4_5,levels=c("1","0"))
data$study_surv_health2_c2_v3_c4_5.factor = factor(data$study_surv_health2_c2_v3_c4_5,levels=c("1","0"))
data$study_surv_health3_c2_v3_c4_5.factor = factor(data$study_surv_health3_c2_v3_c4_5,levels=c("1","0"))
data$study_surveys2_checkpoint5_complete.factor = factor(data$study_surveys2_checkpoint5_complete,levels=c("0","1","2"))
data$study_surv_pfi_1_c2_v3_c4_5_c6.factor = factor(data$study_surv_pfi_1_c2_v3_c4_5_c6,levels=c("0","1","2","3","4"))
data$study_surv_pfi_2_c2_v3_c4_5_c6.factor = factor(data$study_surv_pfi_2_c2_v3_c4_5_c6,levels=c("0","1","2","3","4"))
data$study_surv_pfi_3_c2_v3_c4_5_c6.factor = factor(data$study_surv_pfi_3_c2_v3_c4_5_c6,levels=c("0","1","2","3","4"))
data$study_surv_pfi_4_c2_v3_c4_5_c6.factor = factor(data$study_surv_pfi_4_c2_v3_c4_5_c6,levels=c("0","1","2","3","4"))
data$study_surv_pfi_5_c2_v3_c4_5_c6.factor = factor(data$study_surv_pfi_5_c2_v3_c4_5_c6,levels=c("0","1","2","3","4"))
data$study_surv_pfi_6_c2_v3_c4_5_c6.factor = factor(data$study_surv_pfi_6_c2_v3_c4_5_c6,levels=c("0","1","2","3","4"))
data$study_surv_pfi_7_c2_v3_c4_5_c6.factor = factor(data$study_surv_pfi_7_c2_v3_c4_5_c6,levels=c("0","1","2","3","4"))
data$study_surv_pfi_8_c2_v3_c4_5_c6.factor = factor(data$study_surv_pfi_8_c2_v3_c4_5_c6,levels=c("0","1","2","3","4"))
data$study_surv_pfi_9_c2_v3_c4_5_c6.factor = factor(data$study_surv_pfi_9_c2_v3_c4_5_c6,levels=c("0","1","2","3","4"))
data$study_surv_pfi_10_c2_v3_c4_5_c6.factor = factor(data$study_surv_pfi_10_c2_v3_c4_5_c6,levels=c("0","1","2","3","4"))
data$study_surv_pfi_11_c2_v3_c4_5_c6.factor = factor(data$study_surv_pfi_11_c2_v3_c4_5_c6,levels=c("0","1","2","3","4"))
data$study_surv_pfi_12_c2_v3_c4_5_c6.factor = factor(data$study_surv_pfi_12_c2_v3_c4_5_c6,levels=c("0","1","2","3","4"))
data$study_surv_pfi_13_c2_v3_c4_5_c6.factor = factor(data$study_surv_pfi_13_c2_v3_c4_5_c6,levels=c("0","1","2","3","4"))
data$study_surv_pfi_14_c2_v3_c4_5_c6.factor = factor(data$study_surv_pfi_14_c2_v3_c4_5_c6,levels=c("0","1","2","3","4"))
data$study_surv_pfi_15_c2_v3_c4_5_c6.factor = factor(data$study_surv_pfi_15_c2_v3_c4_5_c6,levels=c("0","1","2","3","4"))
data$study_surv_pfi_16_c2_v3_c4_5_c6.factor = factor(data$study_surv_pfi_16_c2_v3_c4_5_c6,levels=c("0","1","2","3","4"))
data$study_surv_cdrisc_1_c2_v3_c4_5_c6.factor = factor(data$study_surv_cdrisc_1_c2_v3_c4_5_c6,levels=c("1","2","3","4"))
data$study_surv_cdrisc_2_c2_v3_c4_5_c6.factor = factor(data$study_surv_cdrisc_2_c2_v3_c4_5_c6,levels=c("1","2","3","4"))
data$study_surv_cdrisc_3_c2_v3_c4_5_c6.factor = factor(data$study_surv_cdrisc_3_c2_v3_c4_5_c6,levels=c("1","2","3","4"))
data$study_surv_cdrisc_4_c2_v3_c4_5_c6.factor = factor(data$study_surv_cdrisc_4_c2_v3_c4_5_c6,levels=c("1","2","3","4"))
data$study_surv_cdrisc_5_c2_v3_c4_5_c6.factor = factor(data$study_surv_cdrisc_5_c2_v3_c4_5_c6,levels=c("1","2","3","4"))
data$study_surv_cdrisc_6_c2_v3_c4_5_c6.factor = factor(data$study_surv_cdrisc_6_c2_v3_c4_5_c6,levels=c("1","2","3","4"))
data$study_surv_cdrisc_7_c2_v3_c4_5_c6.factor = factor(data$study_surv_cdrisc_7_c2_v3_c4_5_c6,levels=c("1","2","3","4"))
data$study_surv_cdrisc_8_c2_v3_c4_5_c6.factor = factor(data$study_surv_cdrisc_8_c2_v3_c4_5_c6,levels=c("1","2","3","4"))
data$study_surv_cdrisc_9_c2_v3_c4_5_c6.factor = factor(data$study_surv_cdrisc_9_c2_v3_c4_5_c6,levels=c("1","2","3","4"))
data$study_surv_cdrisc_10_c2_v3_c4_5_c6.factor = factor(data$study_surv_cdrisc_10_c2_v3_c4_5_c6,levels=c("1","2","3","4"))
data$study_surv_perma_1_c2_v3_c4_5_c6.factor = factor(data$study_surv_perma_1_c2_v3_c4_5_c6,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_2_c2_v3_c4_5_c6.factor = factor(data$study_surv_perma_2_c2_v3_c4_5_c6,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_3_c2_v3_c4_5_c6.factor = factor(data$study_surv_perma_3_c2_v3_c4_5_c6,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_4_c2_v3_c4_5_c6.factor = factor(data$study_surv_perma_4_c2_v3_c4_5_c6,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_5_c2_v3_c4_5_c6.factor = factor(data$study_surv_perma_5_c2_v3_c4_5_c6,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_6_c2_v3_c4_5_c6.factor = factor(data$study_surv_perma_6_c2_v3_c4_5_c6,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_7_c2_v3_c4_5_c6.factor = factor(data$study_surv_perma_7_c2_v3_c4_5_c6,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_8_c2_v3_c4_5_c6.factor = factor(data$study_surv_perma_8_c2_v3_c4_5_c6,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_9_c2_v3_c4_5_c6.factor = factor(data$study_surv_perma_9_c2_v3_c4_5_c6,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_10_c2_v3_c4_5_c6.factor = factor(data$study_surv_perma_10_c2_v3_c4_5_c6,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_11_c2_v3_c4_5_c6.factor = factor(data$study_surv_perma_11_c2_v3_c4_5_c6,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_12_c2_v3_c4_5_c6.factor = factor(data$study_surv_perma_12_c2_v3_c4_5_c6,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_13_c2_v3_c4_5_c6.factor = factor(data$study_surv_perma_13_c2_v3_c4_5_c6,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_14_c2_v3_c4_5_c6.factor = factor(data$study_surv_perma_14_c2_v3_c4_5_c6,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_15_c2_v3_c4_5_c6.factor = factor(data$study_surv_perma_15_c2_v3_c4_5_c6,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_16_c2_v3_c4_5_c6.factor = factor(data$study_surv_perma_16_c2_v3_c4_5_c6,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_17_c2_v3_c4_5_c6.factor = factor(data$study_surv_perma_17_c2_v3_c4_5_c6,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_18_c2_v3_c4_5_c6.factor = factor(data$study_surv_perma_18_c2_v3_c4_5_c6,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_19_c2_v3_c4_5_c6.factor = factor(data$study_surv_perma_19_c2_v3_c4_5_c6,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_20_c2_v3_c4_5_c6.factor = factor(data$study_surv_perma_20_c2_v3_c4_5_c6,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_21_c2_v3_c4_5_c6.factor = factor(data$study_surv_perma_21_c2_v3_c4_5_c6,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_22_c2_v3_c4_5_c6.factor = factor(data$study_surv_perma_22_c2_v3_c4_5_c6,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_perma_23_c2_v3_c4_5_c6.factor = factor(data$study_surv_perma_23_c2_v3_c4_5_c6,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$study_surv_pss_1_c2_v3_c4_5_c6.factor = factor(data$study_surv_pss_1_c2_v3_c4_5_c6,levels=c("0","1","2","3","4"))
data$study_surv_pss_2_c2_v3_c4_5_c6.factor = factor(data$study_surv_pss_2_c2_v3_c4_5_c6,levels=c("0","1","2","3","4"))
data$study_surv_pss_3_c2_v3_c4_5_c6.factor = factor(data$study_surv_pss_3_c2_v3_c4_5_c6,levels=c("0","1","2","3","4"))
data$study_surv_pss_4_c2_v3_c4_5_c6.factor = factor(data$study_surv_pss_4_c2_v3_c4_5_c6,levels=c("0","1","2","3","4"))
data$study_surv_pss_5_c2_v3_c4_5_c6.factor = factor(data$study_surv_pss_5_c2_v3_c4_5_c6,levels=c("0","1","2","3","4"))
data$study_surv_pss_6_c2_v3_c4_5_c6.factor = factor(data$study_surv_pss_6_c2_v3_c4_5_c6,levels=c("0","1","2","3","4"))
data$study_surv_pss_7_c2_v3_c4_5_c6.factor = factor(data$study_surv_pss_7_c2_v3_c4_5_c6,levels=c("0","1","2","3","4"))
data$study_surv_pss_8_c2_v3_c4_5_c6.factor = factor(data$study_surv_pss_8_c2_v3_c4_5_c6,levels=c("0","1","2","3","4"))
data$study_surv_pss_9_c2_v3_c4_5_c6.factor = factor(data$study_surv_pss_9_c2_v3_c4_5_c6,levels=c("0","1","2","3","4"))
data$study_surv_pss_10_c2_v3_c4_5_c6.factor = factor(data$study_surv_pss_10_c2_v3_c4_5_c6,levels=c("0","1","2","3","4"))
data$study_surveys1_checkpoint6_complete.factor = factor(data$study_surveys1_checkpoint6_complete,levels=c("0","1","2"))
data$study_surv_olbi_1_c2_v3_c4_5_c6.factor = factor(data$study_surv_olbi_1_c2_v3_c4_5_c6,levels=c("1","2","3","4"))
data$study_surv_olbi_2_c2_v3_c4_5_c6.factor = factor(data$study_surv_olbi_2_c2_v3_c4_5_c6,levels=c("1","2","3","4"))
data$study_surv_olbi_3_c2_v3_c4_5_c6.factor = factor(data$study_surv_olbi_3_c2_v3_c4_5_c6,levels=c("1","2","3","4"))
data$study_surv_olbi_4_c2_v3_c4_5_c6.factor = factor(data$study_surv_olbi_4_c2_v3_c4_5_c6,levels=c("1","2","3","4"))
data$study_surv_olbi_5_c2_v3_c4_5_c6.factor = factor(data$study_surv_olbi_5_c2_v3_c4_5_c6,levels=c("1","2","3","4"))
data$study_surv_olbi_6_c2_v3_c4_5_c6.factor = factor(data$study_surv_olbi_6_c2_v3_c4_5_c6,levels=c("1","2","3","4"))
data$study_surv_olbi_7_c2_v3_c4_5_c6.factor = factor(data$study_surv_olbi_7_c2_v3_c4_5_c6,levels=c("1","2","3","4"))
data$study_surv_olbi_8_c2_v3_c4_5_c6.factor = factor(data$study_surv_olbi_8_c2_v3_c4_5_c6,levels=c("1","2","3","4"))
data$study_surv_olbi_9_c2_v3_c4_5_c6.factor = factor(data$study_surv_olbi_9_c2_v3_c4_5_c6,levels=c("1","2","3","4"))
data$study_surv_olbi_10_c2_v3_c4_5_c6.factor = factor(data$study_surv_olbi_10_c2_v3_c4_5_c6,levels=c("1","2","3","4"))
data$study_surv_olbi_11_c2_v3_c4_5_c6.factor = factor(data$study_surv_olbi_11_c2_v3_c4_5_c6,levels=c("1","2","3","4"))
data$study_surv_olbi_12_c2_v3_c4_5_c6.factor = factor(data$study_surv_olbi_12_c2_v3_c4_5_c6,levels=c("1","2","3","4"))
data$study_surv_olbi_13_c2_v3_c4_5_c6.factor = factor(data$study_surv_olbi_13_c2_v3_c4_5_c6,levels=c("1","2","3","4"))
data$study_surv_olbi_14_c2_v3_c4_5_c6.factor = factor(data$study_surv_olbi_14_c2_v3_c4_5_c6,levels=c("1","2","3","4"))
data$study_surv_olbi_15_c2_v3_c4_5_c6.factor = factor(data$study_surv_olbi_15_c2_v3_c4_5_c6,levels=c("1","2","3","4"))
data$study_surv_olbi_16_c2_v3_c4_5_c6.factor = factor(data$study_surv_olbi_16_c2_v3_c4_5_c6,levels=c("1","2","3","4"))
data$study_surv_gse_1_c2_v3_c4_5_c6.factor = factor(data$study_surv_gse_1_c2_v3_c4_5_c6,levels=c("1","2","3","4"))
data$study_surv_gse_2_c2_v3_c4_5_c6.factor = factor(data$study_surv_gse_2_c2_v3_c4_5_c6,levels=c("1","2","3","4"))
data$study_surv_gse_3_c2_v3_c4_5_c6.factor = factor(data$study_surv_gse_3_c2_v3_c4_5_c6,levels=c("1","2","3","4"))
data$study_surv_gse_4_c2_v3_c4_5_c6.factor = factor(data$study_surv_gse_4_c2_v3_c4_5_c6,levels=c("1","2","3","4"))
data$study_surv_gse_5_c2_v3_c4_5_c6.factor = factor(data$study_surv_gse_5_c2_v3_c4_5_c6,levels=c("1","2","3","4"))
data$study_surv_gse_6_c2_v3_c4_5_c6.factor = factor(data$study_surv_gse_6_c2_v3_c4_5_c6,levels=c("1","2","3","4"))
data$study_surv_gse_7_c2_v3_c4_5_c6.factor = factor(data$study_surv_gse_7_c2_v3_c4_5_c6,levels=c("1","2","3","4"))
data$study_surv_gse_8_c2_v3_c4_5_c6.factor = factor(data$study_surv_gse_8_c2_v3_c4_5_c6,levels=c("1","2","3","4"))
data$study_surv_gse_9_c2_v3_c4_5_c6.factor = factor(data$study_surv_gse_9_c2_v3_c4_5_c6,levels=c("1","2","3","4"))
data$study_surv_gse_10_c2_v3_c4_5_c6.factor = factor(data$study_surv_gse_10_c2_v3_c4_5_c6,levels=c("1","2","3","4"))
data$study_surv_who_1_c2_v3_c4_5_c6.factor = factor(data$study_surv_who_1_c2_v3_c4_5_c6,levels=c("1","2","3","4","5"))
data$study_surv_who_2_c2_v3_c4_5_c6.factor = factor(data$study_surv_who_2_c2_v3_c4_5_c6,levels=c("1","2","3","4","5"))
data$study_surv_who_3_c2_v3_c4_5_c6.factor = factor(data$study_surv_who_3_c2_v3_c4_5_c6,levels=c("1","2","3","4","5"))
data$study_surv_who_4_c2_v3_c4_5_c6.factor = factor(data$study_surv_who_4_c2_v3_c4_5_c6,levels=c("1","2","3","4","5"))
data$study_surv_who_5_c2_v3_c4_5_c6.factor = factor(data$study_surv_who_5_c2_v3_c4_5_c6,levels=c("1","2","3","4","5"))
data$study_surv_who_6_c2_v3_c4_5_c6.factor = factor(data$study_surv_who_6_c2_v3_c4_5_c6,levels=c("1","2","3","4","5"))
data$study_surv_who_7_c2_v3_c4_5_c6.factor = factor(data$study_surv_who_7_c2_v3_c4_5_c6,levels=c("1","2","3","4","5"))
data$study_surv_who_8_c2_v3_c4_5_c6.factor = factor(data$study_surv_who_8_c2_v3_c4_5_c6,levels=c("1","2","3","4","5"))
data$study_surv_who_9_c2_v3_c4_5_c6.factor = factor(data$study_surv_who_9_c2_v3_c4_5_c6,levels=c("1","2","3","4","5"))
data$study_surv_who_10_c2_v3_c4_5_c6.factor = factor(data$study_surv_who_10_c2_v3_c4_5_c6,levels=c("1","2","3","4","5"))
data$study_surv_who_11_c2_v3_c4_5_c6.factor = factor(data$study_surv_who_11_c2_v3_c4_5_c6,levels=c("1","2","3","4","5"))
data$study_surv_who_12_c2_v3_c4_5_c6.factor = factor(data$study_surv_who_12_c2_v3_c4_5_c6,levels=c("1","2","3","4","5"))
data$study_surv_who_13_c2_v3_c4_5_c6.factor = factor(data$study_surv_who_13_c2_v3_c4_5_c6,levels=c("1","2","3","4","5"))
data$study_surv_who_14_c2_v3_c4_5_c6.factor = factor(data$study_surv_who_14_c2_v3_c4_5_c6,levels=c("1","2","3","4","5"))
data$study_surv_who_15_c2_v3_c4_5_c6.factor = factor(data$study_surv_who_15_c2_v3_c4_5_c6,levels=c("1","2","3","4","5"))
data$study_surv_who_16_c2_v3_c4_5_c6.factor = factor(data$study_surv_who_16_c2_v3_c4_5_c6,levels=c("1","2","3","4","5"))
data$study_surv_who_17_c2_v3_c4_5_c6.factor = factor(data$study_surv_who_17_c2_v3_c4_5_c6,levels=c("1","2","3","4","5"))
data$study_surv_who_18_c2_v3_c4_5_c6.factor = factor(data$study_surv_who_18_c2_v3_c4_5_c6,levels=c("1","2","3","4","5"))
data$study_surv_who_19_c2_v3_c4_5_c6.factor = factor(data$study_surv_who_19_c2_v3_c4_5_c6,levels=c("1","2","3","4","5"))
data$study_surv_who_20_c2_v3_c4_5_c6.factor = factor(data$study_surv_who_20_c2_v3_c4_5_c6,levels=c("1","2","3","4","5"))
data$study_surv_who_21_c2_v3_c4_5_c6.factor = factor(data$study_surv_who_21_c2_v3_c4_5_c6,levels=c("1","2","3","4","5"))
data$study_surv_who_22_c2_v3_c4_5_c6.factor = factor(data$study_surv_who_22_c2_v3_c4_5_c6,levels=c("1","2","3","4","5"))
data$study_surv_who_23_c2_v3_c4_5_c6.factor = factor(data$study_surv_who_23_c2_v3_c4_5_c6,levels=c("1","2","3","4","5"))
data$study_surv_who_24_c2_v3_c4_5_c6.factor = factor(data$study_surv_who_24_c2_v3_c4_5_c6,levels=c("1","2","3","4","5"))
data$study_surv_who_25_c2_v3_c4_5_c6.factor = factor(data$study_surv_who_25_c2_v3_c4_5_c6,levels=c("1","2","3","4","5"))
data$study_surv_who_26_c2_v3_c4_5_c6.factor = factor(data$study_surv_who_26_c2_v3_c4_5_c6,levels=c("5","4","3","2","1"))
data$study_surv_gfma_1_c2_v3_c4_5_c6.factor = factor(data$study_surv_gfma_1_c2_v3_c4_5_c6,levels=c("0","1","2","3"))
data$study_surv_gfma_2_c2_v3_c4_5_c6.factor = factor(data$study_surv_gfma_2_c2_v3_c4_5_c6,levels=c("0","1","2","3"))
data$study_surv_gfma_3_c2_v3_c4_5_c6.factor = factor(data$study_surv_gfma_3_c2_v3_c4_5_c6,levels=c("0","1","2","3"))
data$study_surv_gfma_4_c2_v3_c4_5_c6.factor = factor(data$study_surv_gfma_4_c2_v3_c4_5_c6,levels=c("0","1","2","3"))
data$study_surv_gfma_5_c2_v3_c4_5_c6.factor = factor(data$study_surv_gfma_5_c2_v3_c4_5_c6,levels=c("0","1","2","3"))
data$study_surv_gfma_6_c2_v3_c4_5_c6.factor = factor(data$study_surv_gfma_6_c2_v3_c4_5_c6,levels=c("0","1","2","3"))
data$study_surv_gfma_7_c2_v3_c4_5_c6.factor = factor(data$study_surv_gfma_7_c2_v3_c4_5_c6,levels=c("0","1","2","3"))
data$study_surv_gfma_8_c2_v3_c4_5_c6.factor = factor(data$study_surv_gfma_8_c2_v3_c4_5_c6,levels=c("0","1","2","3"))
data$study_surv_gfma_9_c2_v3_c4_5_c6.factor = factor(data$study_surv_gfma_9_c2_v3_c4_5_c6,levels=c("0","1","2","3"))
data$study_surv_gfma_10_c2_v3_c4_5_c6.factor = factor(data$study_surv_gfma_10_c2_v3_c4_5_c6,levels=c("0","1","2","3"))
data$study_surv_gfma_11_c2_v3_c4_5_c6.factor = factor(data$study_surv_gfma_11_c2_v3_c4_5_c6,levels=c("0","1","2","3"))
data$study_surv_gfma_12_c2_v3_c4_5_c6.factor = factor(data$study_surv_gfma_12_c2_v3_c4_5_c6,levels=c("0","1","2","3"))
data$study_surv_gfma_13_c2_v3_c4_5_c6.factor = factor(data$study_surv_gfma_13_c2_v3_c4_5_c6,levels=c("0","1","2","3"))
data$study_surv_gfma_14_c2_v3_c4_5_c6.factor = factor(data$study_surv_gfma_14_c2_v3_c4_5_c6,levels=c("0","1","2","3"))
data$study_surv_gfma_15_c2_v3_c4_5_c6.factor = factor(data$study_surv_gfma_15_c2_v3_c4_5_c6,levels=c("0","1","2","3"))
data$study_surv_gfma_16_c2_v3_c4_5_c6.factor = factor(data$study_surv_gfma_16_c2_v3_c4_5_c6,levels=c("0","1","2","3"))
data$study_surv_gfma_17_c2_v3_c4_5_c6.factor = factor(data$study_surv_gfma_17_c2_v3_c4_5_c6,levels=c("0","1","2","3"))
data$study_surv_gfma_18_c2_v3_c4_5_c6.factor = factor(data$study_surv_gfma_18_c2_v3_c4_5_c6,levels=c("0","1","2","3"))
data$study_surv_gfma_19_c2_v3_c4_5_c6.factor = factor(data$study_surv_gfma_19_c2_v3_c4_5_c6,levels=c("0","1","2","3"))
data$study_surv_gfma_20_c2_v3_c4_5_c6.factor = factor(data$study_surv_gfma_20_c2_v3_c4_5_c6,levels=c("0","1","2","3"))
data$study_surv_gratitude_1_c2_v3_c4_5_c6.factor = factor(data$study_surv_gratitude_1_c2_v3_c4_5_c6,levels=c("1","2","3","4","5","6","7"))
data$study_surv_gratitude_2_c2_v3_c4_5_c6.factor = factor(data$study_surv_gratitude_2_c2_v3_c4_5_c6,levels=c("1","2","3","4","5","6","7"))
data$study_surv_gratitude_3_c2_v3_c4_5_c6.factor = factor(data$study_surv_gratitude_3_c2_v3_c4_5_c6,levels=c("1","2","3","4","5","6","7"))
data$study_surv_gratitude_4_c2_v3_c4_5_c6.factor = factor(data$study_surv_gratitude_4_c2_v3_c4_5_c6,levels=c("1","2","3","4","5","6","7"))
data$study_surv_gratitude_5_c2_v3_c4_5_c6.factor = factor(data$study_surv_gratitude_5_c2_v3_c4_5_c6,levels=c("1","2","3","4","5","6","7"))
data$study_surv_gratitude_6_c2_v3_c4_5_c6.factor = factor(data$study_surv_gratitude_6_c2_v3_c4_5_c6,levels=c("1","2","3","4","5","6","7"))
data$study_surv_needs_c5_1_c6.factor = factor(data$study_surv_needs_c5_1_c6,levels=c("10","5","0"))
data$study_surv_needs_c5_2_c6.factor = factor(data$study_surv_needs_c5_2_c6,levels=c("10","5","0"))
data$study_surv_needs_c5_3_c6.factor = factor(data$study_surv_needs_c5_3_c6,levels=c("10","5","0"))
data$study_surv_needs_c5_4_c6.factor = factor(data$study_surv_needs_c5_4_c6,levels=c("10","5","0"))
data$study_surv_needs_c5_5_c6.factor = factor(data$study_surv_needs_c5_5_c6,levels=c("10","5","0"))
data$study_surv_needs_c5_6_c6.factor = factor(data$study_surv_needs_c5_6_c6,levels=c("10","5","0"))
data$study_surv_needs_c5_7_c6.factor = factor(data$study_surv_needs_c5_7_c6,levels=c("10","5","0"))
data$study_surv_needs_c5_8_c6.factor = factor(data$study_surv_needs_c5_8_c6,levels=c("10","5","0"))
data$study_surv_needs_c5_9_c6.factor = factor(data$study_surv_needs_c5_9_c6,levels=c("10","5","0"))
data$study_surv_needs_c5_10_c6.factor = factor(data$study_surv_needs_c5_10_c6,levels=c("10","5","0"))
data$study_surv_needs_c5_11_c6.factor = factor(data$study_surv_needs_c5_11_c6,levels=c("10","5","0"))
data$study_surv_needs_c5_12_c6.factor = factor(data$study_surv_needs_c5_12_c6,levels=c("10","5","0"))
data$study_surv_needs_c5_13_c6.factor = factor(data$study_surv_needs_c5_13_c6,levels=c("10","5","0"))
data$study_surv_needs_c5_14_c6.factor = factor(data$study_surv_needs_c5_14_c6,levels=c("10","5","0"))
data$study_surv_needs_c5_15_c6.factor = factor(data$study_surv_needs_c5_15_c6,levels=c("10","5","0"))
data$study_surv_needs_c5_16_c6.factor = factor(data$study_surv_needs_c5_16_c6,levels=c("10","5","0"))
data$study_surv_needs_c5_17_c6.factor = factor(data$study_surv_needs_c5_17_c6,levels=c("10","5","0"))
data$study_surv_needs_c5_18_c6.factor = factor(data$study_surv_needs_c5_18_c6,levels=c("10","5","0"))
data$study_surv_needs_c5_19_c6.factor = factor(data$study_surv_needs_c5_19_c6,levels=c("10","5","0"))
data$study_surv_needs_c5_20_c6.factor = factor(data$study_surv_needs_c5_20_c6,levels=c("10","5","0"))
data$study_surv_needs_c5_21_c6.factor = factor(data$study_surv_needs_c5_21_c6,levels=c("10","5","0"))
data$study_surv_needs_c5_22_c6.factor = factor(data$study_surv_needs_c5_22_c6,levels=c("10","5","0"))
data$study_surv_needs_c5_23_c6.factor = factor(data$study_surv_needs_c5_23_c6,levels=c("10","5","0"))
data$study_surv_needs_c5_24_c6.factor = factor(data$study_surv_needs_c5_24_c6,levels=c("10","5","0"))
data$study_surv_needs_c5_25_c6.factor = factor(data$study_surv_needs_c5_25_c6,levels=c("10","5","0"))
data$study_surv_needs_c5_26_c6.factor = factor(data$study_surv_needs_c5_26_c6,levels=c("10","5","0"))
data$study_surv_needs_c5_27_c6.factor = factor(data$study_surv_needs_c5_27_c6,levels=c("10","5","0"))
data$study_surv_needs_c5_28_c6.factor = factor(data$study_surv_needs_c5_28_c6,levels=c("10","5","0"))
data$study_surv_needs_c5_29_c6.factor = factor(data$study_surv_needs_c5_29_c6,levels=c("10","5","0"))
data$study_surv_needs_c5_30_c6.factor = factor(data$study_surv_needs_c5_30_c6,levels=c("10","5","0"))
data$study_surv_needs_c5_31_c6.factor = factor(data$study_surv_needs_c5_31_c6,levels=c("10","5","0"))
data$study_surv_needs_c5_32_c6.factor = factor(data$study_surv_needs_c5_32_c6,levels=c("10","5","0"))
data$study_surv_needs_c5_33_c6.factor = factor(data$study_surv_needs_c5_33_c6,levels=c("10","5","0"))
data$study_surv_needs_c5_34_c6.factor = factor(data$study_surv_needs_c5_34_c6,levels=c("10","5","0"))
data$study_surv_needs_c5_35_c6.factor = factor(data$study_surv_needs_c5_35_c6,levels=c("10","5","0"))
data$study_surv_needs_c5_36_c6.factor = factor(data$study_surv_needs_c5_36_c6,levels=c("10","5","0"))
data$c6_aces_survey_1.factor = factor(data$c6_aces_survey_1,levels=c("0","1"))
data$c6_aces_survey_2.factor = factor(data$c6_aces_survey_2,levels=c("0","1"))
data$c6_aces_survey_3.factor = factor(data$c6_aces_survey_3,levels=c("0","1"))
data$c6_aces_survey_4.factor = factor(data$c6_aces_survey_4,levels=c("0","1"))
data$c6_aces_survey_5.factor = factor(data$c6_aces_survey_5,levels=c("0","1"))
data$c6_aces_survey_6.factor = factor(data$c6_aces_survey_6,levels=c("0","1"))
data$c6_aces_survey_7.factor = factor(data$c6_aces_survey_7,levels=c("0","1"))
data$c6_aces_survey_8.factor = factor(data$c6_aces_survey_8,levels=c("0","1"))
data$c6_aces_survey_9.factor = factor(data$c6_aces_survey_9,levels=c("0","1"))
data$c6_aces_survey_10.factor = factor(data$c6_aces_survey_10,levels=c("0","1"))
data$study_tony_c6.factor = factor(data$study_tony_c6,levels=c("0","1","2","3","4","5"))
data$study_surv_attend_c2_v3_c4_5_c6.factor = factor(data$study_surv_attend_c2_v3_c4_5_c6,levels=c("0","1","2","3"))
data$study_surv_health1_c2_v3_c4_5_c6.factor = factor(data$study_surv_health1_c2_v3_c4_5_c6,levels=c("1","0"))
data$study_surv_health2_c2_v3_c4_5_c6.factor = factor(data$study_surv_health2_c2_v3_c4_5_c6,levels=c("1","0"))
data$study_surv_health3_c2_v3_c4_5_c6.factor = factor(data$study_surv_health3_c2_v3_c4_5_c6,levels=c("1","0"))
data$study_surveys2_checkpoint6_complete.factor = factor(data$study_surveys2_checkpoint6_complete,levels=c("0","1","2"))

levels(data$redcap_event_name.factor)=c("Entry (Arm 1: Arm 1)","Checkpoint 1 (Arm 1: Arm 1)","Checkpoint 2 (Arm 1: Arm 1)","Checkpoint 3 (Arm 1: Arm 1)","Checkpoint 4 (Arm 1: Arm 1)","Reconsent (Arm 1: Arm 1)","Checkpoint 5 (Arm 1: Arm 1)","Checkpoint 6 (Arm 1: Arm 1)","EMA Event (Arm 1: Arm 1)","EMA_Post_DWD (Arm 1: Arm 1)","slots (Arm 2: Slots)","reservations (Arm 3: Reservations)")
levels(data$redcap_repeat_instrument.factor)=c("EMA_Survey","EMA_Post_DWDSurvey")
levels(data$demographics_sex.factor)=c("Male","Female","Intersex","Other/ Decline not to answer")
levels(data$demographics_education.factor)=c("Some High School","High School","Bachelors Degree","Masters Degree","Ph.D. or higher","Trade School","Prefer not to say")
levels(data$demographics_living.factor)=c("Homeowner","Renter","Lessee","Other","Prefer not to say")
levels(data$demographics_status.factor)=c("Single","Married","In a relationship","Separated","Divorced","Widowed","Other","Prefer not to say")
levels(data$demographics_children.factor)=c("0","1","2","3","4","5","6+")
levels(data$demographics_income.factor)=c("Less than $25,000","$25,000 - $50,000","$50,000 - $100,000","$100,000 - $200,000","More than $200,000","Prefer not to say")
levels(data$demographics_watch.factor)=c("Mobile phone","Tablet","Computer screen","TV","Other")
levels(data$demographics_participate.factor)=c("Just me","Life partner","Friend","Family","Group","Other")
levels(data$demographics_pre_dwd.factor)=c("This is my first time","Once","Twice","More than twice")
levels(data$demographics_complete.factor)=c("Incomplete","Unverified","Complete")
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
levels(data$study_surv_pfi_1_c2_v3.factor)=c("Not true at all","Somewhat true","Moderately true","Very true","Completely true")
levels(data$study_surv_pfi_2_c2_v3.factor)=c("Not true at all","Somewhat true","Moderately true","Very true","Completely true")
levels(data$study_surv_pfi_3_c2_v3.factor)=c("Not true at all","Somewhat true","Moderately true","Very true","Completely true")
levels(data$study_surv_pfi_4_c2_v3.factor)=c("Not true at all","Somewhat true","Moderately true","Very true","Completely true")
levels(data$study_surv_pfi_5_c2_v3.factor)=c("Not true at all","Somewhat true","Moderately true","Very true","Completely true")
levels(data$study_surv_pfi_6_c2_v3.factor)=c("Not true at all","Somewhat true","Moderately true","Very true","Completely true")
levels(data$study_surv_pfi_7_c2_v3.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_8_c2_v3.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_9_c2_v3.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_10_c2_v3.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_11_c2_v3.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_12_c2_v3.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_13_c2_v3.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_14_c2_v3.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_15_c2_v3.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_16_c2_v3.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_cdrisc_1_c2_v3.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_2_c2_v3.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_3_c2_v3.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_4_c2_v3.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_5_c2_v3.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_6_c2_v3.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_7_c2_v3.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_8_c2_v3.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_9_c2_v3.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_10_c2_v3.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_perma_1_c2_v3.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_2_c2_v3.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_3_c2_v3.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_4_c2_v3.factor)=c("Terrible 0","1","2","3","4","5","6","7","8","9","Excellence 10")
levels(data$study_surv_perma_5_c2_v3.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_6_c2_v3.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_7_c2_v3.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_8_c2_v3.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_9_c2_v3.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_10_c2_v3.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_11_c2_v3.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_12_c2_v3.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_13_c2_v3.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_14_c2_v3.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_15_c2_v3.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_16_c2_v3.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_17_c2_v3.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_18_c2_v3.factor)=c("Terrible 0","1","2","3","4","5","6","7","8","9","Excellence 10")
levels(data$study_surv_perma_19_c2_v3.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_20_c2_v3.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_21_c2_v3.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_22_c2_v3.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_23_c2_v3.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_pss_1_c2_v3.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_2_c2_v3.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_3_c2_v3.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_4_c2_v3.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_5_c2_v3.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_6_c2_v3.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_7_c2_v3.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_8_c2_v3.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_9_c2_v3.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_10_c2_v3.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surveys1_checkpoint3_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$study_surv_olbi_1_c2_v3.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_2_c2_v3.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_3_c2_v3.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_4_c2_v3.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_5_c2_v3.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_6_c2_v3.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_7_c2_v3.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_8_c2_v3.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_9_c2_v3.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_10_c2_v3.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_11_c2_v3.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_12_c2_v3.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_13_c2_v3.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_14_c2_v3.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_15_c2_v3.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_16_c2_v3.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_gse_1_c2_v3.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_2_c2_v3.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_3_c2_v3.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_4_c2_v3.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_5_c2_v3.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_6_c2_v3.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_7_c2_v3.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_8_c2_v3.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_9_c2_v3.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_10_c2_v3.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_who_1_c2_v3.factor)=c("Very poor","Poor","Neither poor or good","Good","Very good")
levels(data$study_surv_who_2_c2_v3.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_3_c2_v3.factor)=c("Not at all","A little","A moderate amount","Very much","An extreme amount")
levels(data$study_surv_who_4_c2_v3.factor)=c("Not at all","A little","A moderate amount","Very much","An extreme amount")
levels(data$study_surv_who_5_c2_v3.factor)=c("Not at all","A little","A moderate amount","Very much","An extreme amount")
levels(data$study_surv_who_6_c2_v3.factor)=c("Not at all","A little","A moderate amount","Very much","An extreme amount")
levels(data$study_surv_who_7_c2_v3.factor)=c("Not at all","A little","A moderate amount","Very much","Extremely")
levels(data$study_surv_who_8_c2_v3.factor)=c("Not at all","A little","A moderate amount","Very much","Extremely")
levels(data$study_surv_who_9_c2_v3.factor)=c("Not at all","A little","A moderate amount","Very much","Extremely")
levels(data$study_surv_who_10_c2_v3.factor)=c("Not at all","A little","Moderately","Mostly","Completely")
levels(data$study_surv_who_11_c2_v3.factor)=c("Not at all","A little","Moderately","Mostly","Completely")
levels(data$study_surv_who_12_c2_v3.factor)=c("Not at all","A little","Moderately","Mostly","Completely")
levels(data$study_surv_who_13_c2_v3.factor)=c("Not at all","A little","Moderately","Mostly","Completely")
levels(data$study_surv_who_14_c2_v3.factor)=c("Not at all","A little","Moderately","Mostly","Completely")
levels(data$study_surv_who_15_c2_v3.factor)=c("Very poor","Poor","Neither poor or good","Good","Very good")
levels(data$study_surv_who_16_c2_v3.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_17_c2_v3.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_18_c2_v3.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_19_c2_v3.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_20_c2_v3.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_21_c2_v3.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_22_c2_v3.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_23_c2_v3.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_24_c2_v3.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_25_c2_v3.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_26_c2_v3.factor)=c("Never","Seldom","Quite often","Very often","Always")
levels(data$study_surv_gfma_1_c2_v3.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_2_c2_v3.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_3_c2_v3.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_4_c2_v3.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_5_c2_v3.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_6_c2_v3.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_7_c2_v3.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_8_c2_v3.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_9_c2_v3.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_10_c2_v3.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_11_c2_v3.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_12_c2_v3.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_13_c2_v3.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_14_c2_v3.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_15_c2_v3.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_16_c2_v3.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_17_c2_v3.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_18_c2_v3.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_19_c2_v3.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_20_c2_v3.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gratitude_1_c2_v3.factor)=c("Strongly disagree","Disagree","Slightly disagree","Neutral","Slightly agree","Agree","Strongly agree")
levels(data$study_surv_gratitude_2_c2_v3.factor)=c("Strongly disagree","Disagree","Slightly disagree","Neutral","Slightly agree","Agree","Strongly agree")
levels(data$study_surv_gratitude_3_c2_v3.factor)=c("Strongly disagree","Disagree","Slightly disagree","Neutral","Slightly agree","Agree","Strongly agree")
levels(data$study_surv_gratitude_4_c2_v3.factor)=c("Strongly disagree","Disagree","Slightly disagree","Neutral","Slightly agree","Agree","Strongly agree")
levels(data$study_surv_gratitude_5_c2_v3.factor)=c("Strongly disagree","Disagree","Slightly disagree","Neutral","Slightly agree","Agree","Strongly agree")
levels(data$study_surv_gratitude_6_c2_v3.factor)=c("Strongly disagree","Disagree","Slightly disagree","Neutral","Slightly agree","Agree","Strongly agree")
levels(data$study_surv_attend_c2_v3.factor)=c("Every day","Once to three times a week","Several times a month","I didnt get to practice in the last month")
levels(data$study_surv_health1_c2_v3.factor)=c("Yes","No")
levels(data$study_surv_health2_c2_v3.factor)=c("Yes","No")
levels(data$study_surv_health3_c2_v3.factor)=c("Yes","No")
levels(data$study_surveys2_checkpoint3_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$study_surv_pfi_1_c2_v3_c4.factor)=c("Not true at all","Somewhat true","Moderately true","Very true","Completely true")
levels(data$study_surv_pfi_2_c2_v3_c4.factor)=c("Not true at all","Somewhat true","Moderately true","Very true","Completely true")
levels(data$study_surv_pfi_3_c2_v3_c4.factor)=c("Not true at all","Somewhat true","Moderately true","Very true","Completely true")
levels(data$study_surv_pfi_4_c2_v3_c4.factor)=c("Not true at all","Somewhat true","Moderately true","Very true","Completely true")
levels(data$study_surv_pfi_5_c2_v3_c4.factor)=c("Not true at all","Somewhat true","Moderately true","Very true","Completely true")
levels(data$study_surv_pfi_6_c2_v3_c4.factor)=c("Not true at all","Somewhat true","Moderately true","Very true","Completely true")
levels(data$study_surv_pfi_7_c2_v3_c4.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_8_c2_v3_c4.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_9_c2_v3_c4.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_10_c2_v3_c4.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_11_c2_v3_c4.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_12_c2_v3_c4.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_13_c2_v3_c4.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_14_c2_v3_c4.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_15_c2_v3_c4.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_16_c2_v3_c4.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_cdrisc_1_c2_v3_c4.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_2_c2_v3_c4.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_3_c2_v3_c4.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_4_c2_v3_c4.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_5_c2_v3_c4.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_6_c2_v3_c4.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_7_c2_v3_c4.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_8_c2_v3_c4.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_9_c2_v3_c4.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_10_c2_v3_c4.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_perma_1_c2_v3_c4.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_2_c2_v3_c4.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_3_c2_v3_c4.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_4_c2_v3_c4.factor)=c("Terrible 0","1","2","3","4","5","6","7","8","9","Excellence 10")
levels(data$study_surv_perma_5_c2_v3_c4.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_6_c2_v3_c4.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_7_c2_v3_c4.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_8_c2_v3_c4.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_9_c2_v3_c4.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_10_c2_v3_c4.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_11_c2_v3_c4.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_12_c2_v3_c4.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_13_c2_v3_c4.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_14_c2_v3_c4.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_15_c2_v3_c4.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_16_c2_v3_c4.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_17_c2_v3_c4.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_18_c2_v3_c4.factor)=c("Terrible 0","1","2","3","4","5","6","7","8","9","Excellence 10")
levels(data$study_surv_perma_19_c2_v3_c4.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_20_c2_v3_c4.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_21_c2_v3_c4.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_22_c2_v3_c4.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_23_c2_v3_c4.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_pss_1_c2_v3_c4.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_2_c2_v3_c4.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_3_c2_v3_c4.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_4_c2_v3_c4.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_5_c2_v3_c4.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_6_c2_v3_c4.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_7_c2_v3_c4.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_8_c2_v3_c4.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_9_c2_v3_c4.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_10_c2_v3_c4.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surveys1_checkpoint4_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$study_surv_olbi_1_c2_v3_c4.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_2_c2_v3_c4.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_3_c2_v3_c4.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_4_c2_v3_c4.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_5_c2_v3_c4.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_6_c2_v3_c4.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_7_c2_v3_c4.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_8_c2_v3_c4.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_9_c2_v3_c4.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_10_c2_v3_c4.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_11_c2_v3_c4.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_12_c2_v3_c4.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_13_c2_v3_c4.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_14_c2_v3_c4.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_15_c2_v3_c4.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_16_c2_v3_c4.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_gse_1_c2_v3_c4.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_2_c2_v3_c4.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_3_c2_v3_c4.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_4_c2_v3_c4.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_5_c2_v3_c4.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_6_c2_v3_c4.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_7_c2_v3_c4.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_8_c2_v3_c4.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_9_c2_v3_c4.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_10_c2_v3_c4.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_who_1_c2_v3_c4.factor)=c("Very poor","Poor","Neither poor or good","Good","Very good")
levels(data$study_surv_who_2_c2_v3_c4.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_3_c2_v3_c4.factor)=c("Not at all","A little","A moderate amount","Very much","An extreme amount")
levels(data$study_surv_who_4_c2_v3_c4.factor)=c("Not at all","A little","A moderate amount","Very much","An extreme amount")
levels(data$study_surv_who_5_c2_v3_c4.factor)=c("Not at all","A little","A moderate amount","Very much","An extreme amount")
levels(data$study_surv_who_6_c2_v3_c4.factor)=c("Not at all","A little","A moderate amount","Very much","An extreme amount")
levels(data$study_surv_who_7_c2_v3_c4.factor)=c("Not at all","A little","A moderate amount","Very much","Extremely")
levels(data$study_surv_who_8_c2_v3_c4.factor)=c("Not at all","A little","A moderate amount","Very much","Extremely")
levels(data$study_surv_who_9_c2_v3_c4.factor)=c("Not at all","A little","A moderate amount","Very much","Extremely")
levels(data$study_surv_who_10_c2_v3_c4.factor)=c("Not at all","A little","Moderately","Mostly","Completely")
levels(data$study_surv_who_11_c2_v3_c4.factor)=c("Not at all","A little","Moderately","Mostly","Completely")
levels(data$study_surv_who_12_c2_v3_c4.factor)=c("Not at all","A little","Moderately","Mostly","Completely")
levels(data$study_surv_who_13_c2_v3_c4.factor)=c("Not at all","A little","Moderately","Mostly","Completely")
levels(data$study_surv_who_14_c2_v3_c4.factor)=c("Not at all","A little","Moderately","Mostly","Completely")
levels(data$study_surv_who_15_c2_v3_c4.factor)=c("Very poor","Poor","Neither poor or good","Good","Very good")
levels(data$study_surv_who_16_c2_v3_c4.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_17_c2_v3_c4.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_18_c2_v3_c4.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_19_c2_v3_c4.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_20_c2_v3_c4.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_21_c2_v3_c4.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_22_c2_v3_c4.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_23_c2_v3_c4.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_24_c2_v3_c4.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_25_c2_v3_c4.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_26_c2_v3_c4.factor)=c("Never","Seldom","Quite often","Very often","Always")
levels(data$study_surv_gfma_1_c2_v3_c4.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_2_c2_v3_c4.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_3_c2_v3_c4.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_4_c2_v3_c4.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_5_c2_v3_c4.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_6_c2_v3_c4.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_7_c2_v3_c4.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_8_c2_v3_c4.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_9_c2_v3_c4.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_10_c2_v3_c4.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_11_c2_v3_c4.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_12_c2_v3_c4.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_13_c2_v3_c4.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_14_c2_v3_c4.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_15_c2_v3_c4.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_16_c2_v3_c4.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_17_c2_v3_c4.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_18_c2_v3_c4.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_19_c2_v3_c4.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_20_c2_v3_c4.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gratitude_1_c2_v3_c4.factor)=c("Strongly disagree","Disagree","Slightly disagree","Neutral","Slightly agree","Agree","Strongly agree")
levels(data$study_surv_gratitude_2_c2_v3_c4.factor)=c("Strongly disagree","Disagree","Slightly disagree","Neutral","Slightly agree","Agree","Strongly agree")
levels(data$study_surv_gratitude_3_c2_v3_c4.factor)=c("Strongly disagree","Disagree","Slightly disagree","Neutral","Slightly agree","Agree","Strongly agree")
levels(data$study_surv_gratitude_4_c2_v3_c4.factor)=c("Strongly disagree","Disagree","Slightly disagree","Neutral","Slightly agree","Agree","Strongly agree")
levels(data$study_surv_gratitude_5_c2_v3_c4.factor)=c("Strongly disagree","Disagree","Slightly disagree","Neutral","Slightly agree","Agree","Strongly agree")
levels(data$study_surv_gratitude_6_c2_v3_c4.factor)=c("Strongly disagree","Disagree","Slightly disagree","Neutral","Slightly agree","Agree","Strongly agree")
levels(data$study_survey_wheel1_c4.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$study_survey_wheel1_f_c4.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$study_survey_wheel_2_c4.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$study_survey_wheel_2_f_c4.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$study_survey_wheel_3_c4.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$study_survey_wheel_3_f_c4.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$study_survey_wheel_4_c4.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$study_survey_wheel_4_f_c4.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$study_survey_wheel_5_c4.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$study_survey_wheel_5_f_c4.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$study_survey_wheel_6_c4.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$study_survey_wheel_6_f_c4.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$study_survey_wheel_7_c4.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$study_survey_wheel_7_f_c4.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$study_survey_wheel_8_c4.factor)=c("Physical Body","Emotional state","Relationships","Time management","Finances","Work/Career","contribution (Spirituality)")
levels(data$study_survey_wheel_8_2_c4.factor)=c("Physical Body","Emotional state","Relationships","Time management","Finances","Work/Career","contribution (Spirituality)")
levels(data$study_surv_attend_c2_v3_c4.factor)=c("Every day","Once to three times a week","Several times a month","I didnt get to practice in the last month")
levels(data$study_surv_health1_c2_v3_c4.factor)=c("Yes","No")
levels(data$study_surv_health2_c2_v3_c4.factor)=c("Yes","No")
levels(data$study_surv_health3_c2_v3_c4.factor)=c("Yes","No")
levels(data$study_surveys2_checkpoint4_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$study_surv_pfi_1_c2_v3_c4_5.factor)=c("Not true at all","Somewhat true","Moderately true","Very true","Completely true")
levels(data$study_surv_pfi_2_c2_v3_c4_5.factor)=c("Not true at all","Somewhat true","Moderately true","Very true","Completely true")
levels(data$study_surv_pfi_3_c2_v3_c4_5.factor)=c("Not true at all","Somewhat true","Moderately true","Very true","Completely true")
levels(data$study_surv_pfi_4_c2_v3_c4_5.factor)=c("Not true at all","Somewhat true","Moderately true","Very true","Completely true")
levels(data$study_surv_pfi_5_c2_v3_c4_5.factor)=c("Not true at all","Somewhat true","Moderately true","Very true","Completely true")
levels(data$study_surv_pfi_6_c2_v3_c4_5.factor)=c("Not true at all","Somewhat true","Moderately true","Very true","Completely true")
levels(data$study_surv_pfi_7_c2_v3_c4_5.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_8_c2_v3_c4_5.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_9_c2_v3_c4_5.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_10_c2_v3_c4_5.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_11_c2_v3_c4_5.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_12_c2_v3_c4_5.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_13_c2_v3_c4_5.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_14_c2_v3_c4_5.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_15_c2_v3_c4_5.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_16_c2_v3_c4_5.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_cdrisc_1_c2_v3_c4_5.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_2_c2_v3_c4_5.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_3_c2_v3_c4_5.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_4_c2_v3_c4_5.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_5_c2_v3_c4_5.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_6_c2_v3_c4_5.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_7_c2_v3_c4_5.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_8_c2_v3_c4_5.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_9_c2_v3_c4_5.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_10_c2_v3_c4_5.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_perma_1_c2_v3_c4_5.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_2_c2_v3_c4_5.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_3_c2_v3_c4_5.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_4_c2_v3_c4_5.factor)=c("Terrible 0","1","2","3","4","5","6","7","8","9","Excellence 10")
levels(data$study_surv_perma_5_c2_v3_c4_5.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_6_c2_v3_c4_5.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_7_c2_v3_c4_5.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_8_c2_v3_c4_5.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_9_c2_v3_c4_5.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_10_c2_v3_c4_5.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_11_c2_v3_c4_5.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_12_c2_v3_c4_5.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_13_c2_v3_c4_5.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_14_c2_v3_c4_5.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_15_c2_v3_c4_5.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_16_c2_v3_c4_5.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_17_c2_v3_c4_5.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_18_c2_v3_c4_5.factor)=c("Terrible 0","1","2","3","4","5","6","7","8","9","Excellence 10")
levels(data$study_surv_perma_19_c2_v3_c4_5.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_20_c2_v3_c4_5.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_21_c2_v3_c4_5.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_22_c2_v3_c4_5.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_23_c2_v3_c4_5.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_pss_1_c2_v3_c4_5.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_2_c2_v3_c4_5.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_3_c2_v3_c4_5.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_4_c2_v3_c4_5.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_5_c2_v3_c4_5.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_6_c2_v3_c4_5.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_7_c2_v3_c4_5.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_8_c2_v3_c4_5.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_9_c2_v3_c4_5.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_10_c2_v3_c4_5.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surveys1_checkpoint5_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$study_surv_olbi_1_c2_v3_c4_5.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_2_c2_v3_c4_5.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_3_c2_v3_c4_5.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_4_c2_v3_c4_5.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_5_c2_v3_c4_5.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_6_c2_v3_c4_5.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_7_c2_v3_c4_5.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_8_c2_v3_c4_5.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_9_c2_v3_c4_5.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_10_c2_v3_c4_5.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_11_c2_v3_c4_5.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_12_c2_v3_c4_5.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_13_c2_v3_c4_5.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_14_c2_v3_c4_5.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_15_c2_v3_c4_5.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_16_c2_v3_c4_5.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_gse_1_c2_v3_c4_5.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_2_c2_v3_c4_5.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_3_c2_v3_c4_5.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_4_c2_v3_c4_5.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_5_c2_v3_c4_5.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_6_c2_v3_c4_5.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_7_c2_v3_c4_5.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_8_c2_v3_c4_5.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_9_c2_v3_c4_5.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_10_c2_v3_c4_5.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_who_1_c2_v3_c4_5.factor)=c("Very poor","Poor","Neither poor or good","Good","Very good")
levels(data$study_surv_who_2_c2_v3_c4_5.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_3_c2_v3_c4_5.factor)=c("Not at all","A little","A moderate amount","Very much","An extreme amount")
levels(data$study_surv_who_4_c2_v3_c4_5.factor)=c("Not at all","A little","A moderate amount","Very much","An extreme amount")
levels(data$study_surv_who_5_c2_v3_c4_5.factor)=c("Not at all","A little","A moderate amount","Very much","An extreme amount")
levels(data$study_surv_who_6_c2_v3_c4_5.factor)=c("Not at all","A little","A moderate amount","Very much","An extreme amount")
levels(data$study_surv_who_7_c2_v3_c4_5.factor)=c("Not at all","A little","A moderate amount","Very much","Extremely")
levels(data$study_surv_who_8_c2_v3_c4_5.factor)=c("Not at all","A little","A moderate amount","Very much","Extremely")
levels(data$study_surv_who_9_c2_v3_c4_5.factor)=c("Not at all","A little","A moderate amount","Very much","Extremely")
levels(data$study_surv_who_10_c2_v3_c4_5.factor)=c("Not at all","A little","Moderately","Mostly","Completely")
levels(data$study_surv_who_11_c2_v3_c4_5.factor)=c("Not at all","A little","Moderately","Mostly","Completely")
levels(data$study_surv_who_12_c2_v3_c4_5.factor)=c("Not at all","A little","Moderately","Mostly","Completely")
levels(data$study_surv_who_13_c2_v3_c4_5.factor)=c("Not at all","A little","Moderately","Mostly","Completely")
levels(data$study_surv_who_14_c2_v3_c4_5.factor)=c("Not at all","A little","Moderately","Mostly","Completely")
levels(data$study_surv_who_15_c2_v3_c4_5.factor)=c("Very poor","Poor","Neither poor or good","Good","Very good")
levels(data$study_surv_who_16_c2_v3_c4_5.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_17_c2_v3_c4_5.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_18_c2_v3_c4_5.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_19_c2_v3_c4_5.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_20_c2_v3_c4_5.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_21_c2_v3_c4_5.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_22_c2_v3_c4_5.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_23_c2_v3_c4_5.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_24_c2_v3_c4_5.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_25_c2_v3_c4_5.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_26_c2_v3_c4_5.factor)=c("Never","Seldom","Quite often","Very often","Always")
levels(data$study_surv_gfma_1_c2_v3_c4_5.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_2_c2_v3_c4_5.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_3_c2_v3_c4_5.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_4_c2_v3_c4_5.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_5_c2_v3_c4_5.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_6_c2_v3_c4_5.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_7_c2_v3_c4_5.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_8_c2_v3_c4_5.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_9_c2_v3_c4_5.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_10_c2_v3_c4_5.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_11_c2_v3_c4_5.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_12_c2_v3_c4_5.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_13_c2_v3_c4_5.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_14_c2_v3_c4_5.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_15_c2_v3_c4_5.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_16_c2_v3_c4_5.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_17_c2_v3_c4_5.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_18_c2_v3_c4_5.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_19_c2_v3_c4_5.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_20_c2_v3_c4_5.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gratitude_1_c2_v3_c4_5.factor)=c("Strongly disagree","Disagree","Slightly disagree","Neutral","Slightly agree","Agree","Strongly agree")
levels(data$study_surv_gratitude_2_c2_v3_c4_5.factor)=c("Strongly disagree","Disagree","Slightly disagree","Neutral","Slightly agree","Agree","Strongly agree")
levels(data$study_surv_gratitude_3_c2_v3_c4_5.factor)=c("Strongly disagree","Disagree","Slightly disagree","Neutral","Slightly agree","Agree","Strongly agree")
levels(data$study_surv_gratitude_4_c2_v3_c4_5.factor)=c("Strongly disagree","Disagree","Slightly disagree","Neutral","Slightly agree","Agree","Strongly agree")
levels(data$study_surv_gratitude_5_c2_v3_c4_5.factor)=c("Strongly disagree","Disagree","Slightly disagree","Neutral","Slightly agree","Agree","Strongly agree")
levels(data$study_surv_gratitude_6_c2_v3_c4_5.factor)=c("Strongly disagree","Disagree","Slightly disagree","Neutral","Slightly agree","Agree","Strongly agree")
levels(data$study_surv_needs_c5_1.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_2.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_3.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_4.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_5.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_6.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_7.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_8.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_9.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_10.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_11.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_12.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_13.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_14.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_15.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_16.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_17.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_18.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_19.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_20.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_21.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_22.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_23.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_24.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_25.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_26.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_27.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_28.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_29.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_30.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_31.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_32.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_33.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_34.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_35.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_36.factor)=c("Yes","Partly","No")
levels(data$study_surv_attend_c2_v3_c4_5.factor)=c("Every day","Once to three times a week","Several times a month","I didnt get to practice in the last month")
levels(data$study_surv_health1_c2_v3_c4_5.factor)=c("Yes","No")
levels(data$study_surv_health2_c2_v3_c4_5.factor)=c("Yes","No")
levels(data$study_surv_health3_c2_v3_c4_5.factor)=c("Yes","No")
levels(data$study_surveys2_checkpoint5_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$study_surv_pfi_1_c2_v3_c4_5_c6.factor)=c("Not true at all","Somewhat true","Moderately true","Very true","Completely true")
levels(data$study_surv_pfi_2_c2_v3_c4_5_c6.factor)=c("Not true at all","Somewhat true","Moderately true","Very true","Completely true")
levels(data$study_surv_pfi_3_c2_v3_c4_5_c6.factor)=c("Not true at all","Somewhat true","Moderately true","Very true","Completely true")
levels(data$study_surv_pfi_4_c2_v3_c4_5_c6.factor)=c("Not true at all","Somewhat true","Moderately true","Very true","Completely true")
levels(data$study_surv_pfi_5_c2_v3_c4_5_c6.factor)=c("Not true at all","Somewhat true","Moderately true","Very true","Completely true")
levels(data$study_surv_pfi_6_c2_v3_c4_5_c6.factor)=c("Not true at all","Somewhat true","Moderately true","Very true","Completely true")
levels(data$study_surv_pfi_7_c2_v3_c4_5_c6.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_8_c2_v3_c4_5_c6.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_9_c2_v3_c4_5_c6.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_10_c2_v3_c4_5_c6.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_11_c2_v3_c4_5_c6.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_12_c2_v3_c4_5_c6.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_13_c2_v3_c4_5_c6.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_14_c2_v3_c4_5_c6.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_15_c2_v3_c4_5_c6.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_pfi_16_c2_v3_c4_5_c6.factor)=c("Not at all","Very little","Moderately","A lot","Extremely")
levels(data$study_surv_cdrisc_1_c2_v3_c4_5_c6.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_2_c2_v3_c4_5_c6.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_3_c2_v3_c4_5_c6.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_4_c2_v3_c4_5_c6.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_5_c2_v3_c4_5_c6.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_6_c2_v3_c4_5_c6.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_7_c2_v3_c4_5_c6.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_8_c2_v3_c4_5_c6.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_9_c2_v3_c4_5_c6.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_cdrisc_10_c2_v3_c4_5_c6.factor)=c("Rarely true","Sometimes true","Often true","True nearly all of the time")
levels(data$study_surv_perma_1_c2_v3_c4_5_c6.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_2_c2_v3_c4_5_c6.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_3_c2_v3_c4_5_c6.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_4_c2_v3_c4_5_c6.factor)=c("Terrible 0","1","2","3","4","5","6","7","8","9","Excellence 10")
levels(data$study_surv_perma_5_c2_v3_c4_5_c6.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_6_c2_v3_c4_5_c6.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_7_c2_v3_c4_5_c6.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_8_c2_v3_c4_5_c6.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_9_c2_v3_c4_5_c6.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_10_c2_v3_c4_5_c6.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_11_c2_v3_c4_5_c6.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_12_c2_v3_c4_5_c6.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_13_c2_v3_c4_5_c6.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_14_c2_v3_c4_5_c6.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_15_c2_v3_c4_5_c6.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_16_c2_v3_c4_5_c6.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_17_c2_v3_c4_5_c6.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_18_c2_v3_c4_5_c6.factor)=c("Terrible 0","1","2","3","4","5","6","7","8","9","Excellence 10")
levels(data$study_surv_perma_19_c2_v3_c4_5_c6.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_20_c2_v3_c4_5_c6.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_21_c2_v3_c4_5_c6.factor)=c("Never 0","1","2","3","4","5","6","7","8","9","Always 10")
levels(data$study_surv_perma_22_c2_v3_c4_5_c6.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_perma_23_c2_v3_c4_5_c6.factor)=c("Not at all 0","1","2","3","4","5","6","7","8","9","Completely 10")
levels(data$study_surv_pss_1_c2_v3_c4_5_c6.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_2_c2_v3_c4_5_c6.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_3_c2_v3_c4_5_c6.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_4_c2_v3_c4_5_c6.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_5_c2_v3_c4_5_c6.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_6_c2_v3_c4_5_c6.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_7_c2_v3_c4_5_c6.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_8_c2_v3_c4_5_c6.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_9_c2_v3_c4_5_c6.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surv_pss_10_c2_v3_c4_5_c6.factor)=c("Never","Almost never","Sometimes","Fairly often","Very often")
levels(data$study_surveys1_checkpoint6_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$study_surv_olbi_1_c2_v3_c4_5_c6.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_2_c2_v3_c4_5_c6.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_3_c2_v3_c4_5_c6.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_4_c2_v3_c4_5_c6.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_5_c2_v3_c4_5_c6.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_6_c2_v3_c4_5_c6.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_7_c2_v3_c4_5_c6.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_8_c2_v3_c4_5_c6.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_9_c2_v3_c4_5_c6.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_10_c2_v3_c4_5_c6.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_11_c2_v3_c4_5_c6.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_12_c2_v3_c4_5_c6.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_13_c2_v3_c4_5_c6.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_14_c2_v3_c4_5_c6.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_15_c2_v3_c4_5_c6.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_olbi_16_c2_v3_c4_5_c6.factor)=c("Strongly agree","Agree","Disagree","Strongly disagree")
levels(data$study_surv_gse_1_c2_v3_c4_5_c6.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_2_c2_v3_c4_5_c6.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_3_c2_v3_c4_5_c6.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_4_c2_v3_c4_5_c6.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_5_c2_v3_c4_5_c6.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_6_c2_v3_c4_5_c6.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_7_c2_v3_c4_5_c6.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_8_c2_v3_c4_5_c6.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_9_c2_v3_c4_5_c6.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_gse_10_c2_v3_c4_5_c6.factor)=c("Not at all true","Hardly true","Moderately true","Exactly true")
levels(data$study_surv_who_1_c2_v3_c4_5_c6.factor)=c("Very poor","Poor","Neither poor or good","Good","Very good")
levels(data$study_surv_who_2_c2_v3_c4_5_c6.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_3_c2_v3_c4_5_c6.factor)=c("Not at all","A little","A moderate amount","Very much","An extreme amount")
levels(data$study_surv_who_4_c2_v3_c4_5_c6.factor)=c("Not at all","A little","A moderate amount","Very much","An extreme amount")
levels(data$study_surv_who_5_c2_v3_c4_5_c6.factor)=c("Not at all","A little","A moderate amount","Very much","An extreme amount")
levels(data$study_surv_who_6_c2_v3_c4_5_c6.factor)=c("Not at all","A little","A moderate amount","Very much","An extreme amount")
levels(data$study_surv_who_7_c2_v3_c4_5_c6.factor)=c("Not at all","A little","A moderate amount","Very much","Extremely")
levels(data$study_surv_who_8_c2_v3_c4_5_c6.factor)=c("Not at all","A little","A moderate amount","Very much","Extremely")
levels(data$study_surv_who_9_c2_v3_c4_5_c6.factor)=c("Not at all","A little","A moderate amount","Very much","Extremely")
levels(data$study_surv_who_10_c2_v3_c4_5_c6.factor)=c("Not at all","A little","Moderately","Mostly","Completely")
levels(data$study_surv_who_11_c2_v3_c4_5_c6.factor)=c("Not at all","A little","Moderately","Mostly","Completely")
levels(data$study_surv_who_12_c2_v3_c4_5_c6.factor)=c("Not at all","A little","Moderately","Mostly","Completely")
levels(data$study_surv_who_13_c2_v3_c4_5_c6.factor)=c("Not at all","A little","Moderately","Mostly","Completely")
levels(data$study_surv_who_14_c2_v3_c4_5_c6.factor)=c("Not at all","A little","Moderately","Mostly","Completely")
levels(data$study_surv_who_15_c2_v3_c4_5_c6.factor)=c("Very poor","Poor","Neither poor or good","Good","Very good")
levels(data$study_surv_who_16_c2_v3_c4_5_c6.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_17_c2_v3_c4_5_c6.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_18_c2_v3_c4_5_c6.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_19_c2_v3_c4_5_c6.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_20_c2_v3_c4_5_c6.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_21_c2_v3_c4_5_c6.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_22_c2_v3_c4_5_c6.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_23_c2_v3_c4_5_c6.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_24_c2_v3_c4_5_c6.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_25_c2_v3_c4_5_c6.factor)=c("Very dissatisfied","Dissatisfied","Neither satisfied nor dissatisfied","Satisfied","Very satisfied")
levels(data$study_surv_who_26_c2_v3_c4_5_c6.factor)=c("Never","Seldom","Quite often","Very often","Always")
levels(data$study_surv_gfma_1_c2_v3_c4_5_c6.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_2_c2_v3_c4_5_c6.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_3_c2_v3_c4_5_c6.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_4_c2_v3_c4_5_c6.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_5_c2_v3_c4_5_c6.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_6_c2_v3_c4_5_c6.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_7_c2_v3_c4_5_c6.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_8_c2_v3_c4_5_c6.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_9_c2_v3_c4_5_c6.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_10_c2_v3_c4_5_c6.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_11_c2_v3_c4_5_c6.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_12_c2_v3_c4_5_c6.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_13_c2_v3_c4_5_c6.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_14_c2_v3_c4_5_c6.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_15_c2_v3_c4_5_c6.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_16_c2_v3_c4_5_c6.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_17_c2_v3_c4_5_c6.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_18_c2_v3_c4_5_c6.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_19_c2_v3_c4_5_c6.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gfma_20_c2_v3_c4_5_c6.factor)=c("Strongly Agree","Agree","Disagree","Strongly Disagree")
levels(data$study_surv_gratitude_1_c2_v3_c4_5_c6.factor)=c("Strongly disagree","Disagree","Slightly disagree","Neutral","Slightly agree","Agree","Strongly agree")
levels(data$study_surv_gratitude_2_c2_v3_c4_5_c6.factor)=c("Strongly disagree","Disagree","Slightly disagree","Neutral","Slightly agree","Agree","Strongly agree")
levels(data$study_surv_gratitude_3_c2_v3_c4_5_c6.factor)=c("Strongly disagree","Disagree","Slightly disagree","Neutral","Slightly agree","Agree","Strongly agree")
levels(data$study_surv_gratitude_4_c2_v3_c4_5_c6.factor)=c("Strongly disagree","Disagree","Slightly disagree","Neutral","Slightly agree","Agree","Strongly agree")
levels(data$study_surv_gratitude_5_c2_v3_c4_5_c6.factor)=c("Strongly disagree","Disagree","Slightly disagree","Neutral","Slightly agree","Agree","Strongly agree")
levels(data$study_surv_gratitude_6_c2_v3_c4_5_c6.factor)=c("Strongly disagree","Disagree","Slightly disagree","Neutral","Slightly agree","Agree","Strongly agree")
levels(data$study_surv_needs_c5_1_c6.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_2_c6.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_3_c6.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_4_c6.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_5_c6.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_6_c6.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_7_c6.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_8_c6.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_9_c6.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_10_c6.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_11_c6.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_12_c6.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_13_c6.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_14_c6.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_15_c6.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_16_c6.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_17_c6.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_18_c6.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_19_c6.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_20_c6.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_21_c6.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_22_c6.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_23_c6.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_24_c6.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_25_c6.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_26_c6.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_27_c6.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_28_c6.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_29_c6.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_30_c6.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_31_c6.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_32_c6.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_33_c6.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_34_c6.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_35_c6.factor)=c("Yes","Partly","No")
levels(data$study_surv_needs_c5_36_c6.factor)=c("Yes","Partly","No")
levels(data$c6_aces_survey_1.factor)=c("No","Yes")
levels(data$c6_aces_survey_2.factor)=c("No","Yes")
levels(data$c6_aces_survey_3.factor)=c("No","Yes")
levels(data$c6_aces_survey_4.factor)=c("No","Yes")
levels(data$c6_aces_survey_5.factor)=c("No","Yes")
levels(data$c6_aces_survey_6.factor)=c("No","Yes")
levels(data$c6_aces_survey_7.factor)=c("No","Yes")
levels(data$c6_aces_survey_8.factor)=c("No","Yes")
levels(data$c6_aces_survey_9.factor)=c("No","Yes")
levels(data$c6_aces_survey_10.factor)=c("No","Yes")
levels(data$study_tony_c6.factor)=c("No","Yes, I read Tony Robbins-related books or listened to audio programs","Yes, I participated in additional Tony Robbins seminars.","Yes, I trained with a coach.","Yes, I practiced skills learned in the seminar (e.g., priming, incantations, the Triad).","Yes, I am a member of the Tony Robbins community (e.g., Facebook, Telegram, Inner Circle, etc.).")
levels(data$study_surv_attend_c2_v3_c4_5_c6.factor)=c("Every day","Once to three times a week","Several times a month","I didnt get to practice in the last month")
levels(data$study_surv_health1_c2_v3_c4_5_c6.factor)=c("Yes","No")
levels(data$study_surv_health2_c2_v3_c4_5_c6.factor)=c("Yes","No")
levels(data$study_surv_health3_c2_v3_c4_5_c6.factor)=c("Yes","No")
levels(data$study_surveys2_checkpoint6_complete.factor)=c("Incomplete","Unverified","Complete")
