#Clear existing data and graphics
rm(list=ls())
graphics.off()
#Load Hmisc library
library(Hmisc)
#Read Data
data=read.csv('66491TheLastingChang-EMADWDAndPost_DATA_2024-04-07_1538.csv')
#Setting Labels

label(data$record_id)="Record ID"
label(data$redcap_event_name)="Event Name"
label(data$redcap_repeat_instrument)="Repeat Instrument"
label(data$redcap_repeat_instance)="Repeat Instance"
label(data$ema_date)="Date-time"
label(data$ema_surv_1)="How energized are you at this moment?"
label(data$ema_surv_2)="How are youfeeling right now?"
label(data$ema_surv_3)="Howfocused are you at this moment?"
label(data$ema_surv_4)="Howconnected are you to this moment?"
label(data$ema_surv_5)="How muchclarity do you have at this moment?"
label(data$ema_complete)="Complete?"
label(data$ema_date_p_dwd)="Date-time"
label(data$ema_surv_1_p_dwd)="How energized are you at this moment?"
label(data$ema_surv_2_p_dwd)="How are youfeeling right now?"
label(data$ema_surv_3_p_dwd)="Howfocused are you at this moment?"
label(data$ema_surv_4_p_dwd)="Howconnected are you to this moment?"
label(data$ema_surv_5_p_dwd)="How muchclarity do you have at this moment?"
label(data$ema_post_dwdsurvey_complete)="Complete?"
#Setting Units


#Setting Factors(will create new variable for factors)
data$redcap_event_name.factor = factor(data$redcap_event_name,levels=c("entry_arm_1","checkpoint_1_arm_1","checkpoint_2_arm_1","checkpoint_3_arm_1","checkpoint_4_arm_1","reconsent_arm_1","checkpoint_5_arm_1","checkpoint_6_arm_1","ema_event_arm_1","ema_post_dwd_arm_1","slots_arm_2","reservations_arm_3"))
data$redcap_repeat_instrument.factor = factor(data$redcap_repeat_instrument,levels=c("ema","ema_post_dwdsurvey"))
data$ema_complete.factor = factor(data$ema_complete,levels=c("0","1","2"))
data$ema_post_dwdsurvey_complete.factor = factor(data$ema_post_dwdsurvey_complete,levels=c("0","1","2"))

levels(data$redcap_event_name.factor)=c("Entry (Arm 1: Arm 1)","Checkpoint 1 (Arm 1: Arm 1)","Checkpoint 2 (Arm 1: Arm 1)","Checkpoint 3 (Arm 1: Arm 1)","Checkpoint 4 (Arm 1: Arm 1)","Reconsent (Arm 1: Arm 1)","Checkpoint 5 (Arm 1: Arm 1)","Checkpoint 6 (Arm 1: Arm 1)","EMA Event (Arm 1: Arm 1)","EMA_Post_DWD (Arm 1: Arm 1)","slots (Arm 2: Slots)","reservations (Arm 3: Reservations)")
levels(data$redcap_repeat_instrument.factor)=c("EMA_Survey","EMA_Post_DWDSurvey")
levels(data$ema_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$ema_post_dwdsurvey_complete.factor)=c("Incomplete","Unverified","Complete")
