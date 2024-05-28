#Clear existing data and graphics
rm(list=ls())
graphics.off()
#Load Hmisc library
library(Hmisc)
#Read Data
data=read.csv('66491TheLastingChang-Demographics_DATA_2023-10-30_1848.csv')
#Setting Labels

label(data$record_id)="Record ID"
label(data$redcap_event_name)="Event Name"
label(data$redcap_repeat_instrument)="Repeat Instrument"
label(data$redcap_repeat_instance)="Repeat Instance"
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
label(data$demographics_complete)="Complete?"
label(data$demographics_birth)="Date of birth:"
label(data$consent_complete)="Complete?"
label(data$admin_complete)="Complete?"
label(data$withdrawn)="Withdraw the participant"
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
data$consent_complete.factor = factor(data$consent_complete,levels=c("0","1","2"))
data$admin_complete.factor = factor(data$admin_complete,levels=c("0","1","2"))
data$withdrawn.factor = factor(data$withdrawn,levels=c("1","0","2","3"))

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
levels(data$consent_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$admin_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$withdrawn.factor)=c("Yes","No","Yes - but dont send email (duplicate)","Not Eligible")
