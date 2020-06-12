*** Settings ***
Library           Selenium2Library
Resource          Variables.robot
Resource          Keywords.robot

*** Test Cases ***
Test Survey Downpay Positive_TH
    #Open Browser
    Open Browser    ${Link_Downpay_TH1}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}    ${Check_introMainTH2}    ${Check_introMainTH3}    ${Check_introMainTH4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Positive/TH/TC1/1_Intro.png
    Click Element    ${btn_startTH}
    Q1_CSAT_TH    ${Check_QNCSAT_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Positive/TH/TC1/2_CSAT.png
    Click Element    ${Score10}
    Sleep    2s
    OA_CSATPos_TH    ${Check_OACSATPos_TH}
    Input Text    name = csat_pos    ทุกอย่างเรียบร้อยดี ใบเสร็จถูกต้องครบถ้วน
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Positive/TH/TC1/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Att10_TH    ${Check_Attri10_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Positive/TH/TC1/4_Att10.png
    Click Element    name=Answer_15_0_0_0
    Sleep    2s
    Att11_TH    ${Check_Attri11_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Positive/TH/TC1/5_Att11.png
    Click Element    name=Answer_16_0_0_0
    Sleep    2s
    Att41_TH    ${Check_Attri41_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Positive/TH/TC1/6_Att41.png
    Click Element    name=Answer_17_0_0_0
    Sleep    2s
    Att13_TH    ${Check_Attri13_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Positive/TH/TC1/7_Att13.png
    Click Element    name=Answer_18_0_0_0
    Sleep    2s
    IntroProfile_TH    ${Check_Intro_Profile_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/TH/TC1/8_Introprofile_th.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_TH    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward_TH}    ${Opt_in_rewardYes_TH}
    ...    ${Opt_in_rewardNoTH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Positive/TH/TC1/9_Reward_th.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_TH    ${Opt_in_tel_TH1}    ${Opt_in_tel_TH2}
    Input Text    name=opt_in_tel    0899811111
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Positive/TH/TC1/10_TelOptin_th.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Positive/TH/TC1/11_Ending_th.png
    Sleep    2s
    Close Browser

Test Survey Downpay Negative Optin No_TH
    #Open Browser
    Open Browser    ${Link_Downpay_TH2}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}    ${Check_introMainTH2}    ${Check_introMainTH3}    ${Check_introMainTH4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/TH/TC2/1_Intro.png
    Click Element    ${btn_startTH}
    Q1_CSAT_TH    ${Check_QNCSAT_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/TH/TC2/2_CSAT.png
    Click Element    ${Score3}
    Sleep    2s
    OA_CSATNeg_TH    ${Check_OACSATNeg_TH}
    Input Text    name = csat_neg    ใบเสร็จล่าช้ามากจ้า
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/TH/TC2/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_TH    ${Check_Optin_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/TH/TC2/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_1
    Sleep    2s
    Att10_TH    ${Check_Attri10_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/TH/TC2/4_Att10.png
    Click Element    name=Answer_15_0_0_0
    Sleep    2s
    Att11_TH    ${Check_Attri11_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/TH/TC2/5_Att11.png
    Click Element    name=Answer_16_0_0_1
    Sleep    2s
    Att41_TH    ${Check_Attri41_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/TH/TC2/6_Att41.png
    Click Element    name=Answer_17_0_0_0
    Sleep    2s
    Att13_TH    ${Check_Attri13_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/TH/TC2/7_Att13.png
    Click Element    name=Answer_18_0_0_0
    Sleep    2s
    IntroProfile_TH    ${Check_Intro_Profile_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/TH/TC2/8_Introprofile_th.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_TH    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward_TH}    ${Opt_in_rewardYes_TH}
    ...    ${Opt_in_rewardNoTH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/TH/TC2/9_Reward_th.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_TH    ${Opt_in_tel_TH1}    ${Opt_in_tel_TH2}
    Input Text    name=opt_in_tel    0899811112
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/TH/TC2/10_TelOptin_th.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/TH/TC2/11_Ending_th.png
    Sleep    2s
    Close Browser

Test Survey Downpay Negative Optin Yes_TH
    #Open Browser
    Open Browser    ${Link_Downpay_TH3}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}    ${Check_introMainTH2}    ${Check_introMainTH3}    ${Check_introMainTH4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/TH/TC3/1_Intro.png
    Click Element    ${btn_startTH}
    Q1_CSAT_TH    ${Check_QNCSAT_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/TH/TC3/2_CSAT.png
    Click Element    ${Score2}
    Sleep    2s
    OA_CSATNeg_TH    ${Check_OACSATNeg_TH}
    Input Text    name = csat_neg    ขอใบเสร็จผ่านอีเมลล์ แต่ก็ได้มาเป็นกระดาษ พูดไปประมาณ 3-4 รอบ ก็ไม่ได้ กระดาษเต็มห้อง
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/TH/TC3/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_TH    ${Check_Optin_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/TH/TC3/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_0
    Sleep    2s
    Att10_TH    ${Check_Attri10_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/TH/TC3/4_Att10.png
    Click Element    name=Answer_15_0_0_0
    Sleep    2s
    Att11_TH    ${Check_Attri11_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/TH/TC3/5_Att11.png
    Click Element    name=Answer_16_0_0_0
    Sleep    2s
    Att41_TH    ${Check_Attri41_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/TH/TC3/6_Att41.png
    Click Element    name=Answer_17_0_0_1
    Sleep    2s
    Att13_TH    ${Check_Attri13_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/TH/TC3/7_Att13.png
    Click Element    name=Answer_18_0_0_0
    Sleep    2s
    IntroProfile_TH    ${Check_Intro_Profile_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/TH/TC3/8_Introprofile_th.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_TH    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward_TH}    ${Opt_in_rewardYes_TH}
    ...    ${Opt_in_rewardNoTH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/TH/TC3/9_Reward_th.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_TH    ${Opt_in_tel_TH1}    ${Opt_in_tel_TH2}
    Input Text    name=opt_in_tel    0899811112
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/TH/TC3/10_TelOptin_th.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/TH/TC3/11_Ending_th.png
    Sleep    2s
    Close Browser

Test Survey Downpay Neutral_TH
    #Open Browser
    Open Browser    ${Link_Downpay_TH4}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}    ${Check_introMainTH2}    ${Check_introMainTH3}    ${Check_introMainTH4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_neutral/TH/TC4/1_Intro.png
    Click Element    ${btn_startTH}
    Q1_CSAT_TH    ${Check_QNCSAT_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_neutral/TH/TC4/2_CSAT.png
    Click Element    ${Score7}
    Sleep    2s
    Att10_TH    ${Check_Attri10_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_neutral/TH/TC4/4_Att10.png
    Click Element    name=Answer_15_0_0_0
    Sleep    2s
    Att11_TH    ${Check_Attri11_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_neutral/TH/TC4/5_Att11.png
    Click Element    name=Answer_16_0_0_0
    Sleep    2s
    Att41_TH    ${Check_Attri41_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_neutral/TH/TC4/6_Att41.png
    Click Element    name=Answer_17_0_0_0
    Sleep    2s
    Att13_TH    ${Check_Attri13_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_neutral/TH/TC4/7_Att13.png
    Click Element    name=Answer_18_0_0_1
    Sleep    2s
    IntroProfile_TH    ${Check_Intro_Profile_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_neutral/TH/TC4/8_Introprofile_th.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_TH    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward_TH}    ${Opt_in_rewardYes_TH}
    ...    ${Opt_in_rewardNoTH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_neutral/TH/TC4/9_Reward_th.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_TH    ${Opt_in_tel_TH1}    ${Opt_in_tel_TH2}
    Input Text    name=opt_in_tel    0899811114
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_neutral/TH/TC4/10_TelOptin_th.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_neutral/TH/TC4/11_Ending_th.png
    Sleep    2s
    Close Browser
