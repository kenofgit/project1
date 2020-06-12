*** Settings ***
Library           Selenium2Library
Resource          Variables.robot
Resource          Keywords.robot

*** Test Cases ***
Test Survey BookCon Positive_TH
    #Open Browser
    Open Browser    ${Link_BookCon_TH1}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}    ${Check_introMainTH2}    ${Check_introMainTH3}    ${Check_introMainTH4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Positive/TH/TC1/1_Intro.png
    Click Element    ${btn_startTH}
    Q1_CSAT_TH    ${Check_QNCSAT_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Positive/TH/TC1/2_CSAT.png
    Click Element    //div[@name='page1']//div[@class='ScaleValue']/label[10]
    Sleep    2s
    OA_CSATPos_TH    ${Check_OACSATPos_TH}
    Input Text    name = csat_pos    เอกสารครบถ้วนถูกต้อง ใบจองรายละเอียดครบ สถานที่เตรียมการมาดี
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Positive/TH/TC1/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Att5_TH    ${Check_Attri5_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Positive/TH/TC1/4_Att5.png
    Click Element    name=Answer_10_0_0_0
    Sleep    2s
    Att6_TH    ${Check_Attri6_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Positive/TH/TC1/5_Att6.png
    Click Element    name=Answer_11_0_0_0
    Sleep    2s
    Att7_TH    ${Check_Attri7_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Positive/TH/TC1/6_Att7.png
    Click Element    css=div[name='page5_03'] label:nth-of-type(11)    #Click10
    Sleep    2s
    Att8_TH    ${Check_Attri8_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Positive/TH/TC1/7_Att8.png
    Click Element    name=Answer_13_0_0_0
    Sleep    2s
    Att9_TH    ${Check_Attri9_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Positive/TH/TC1/8_Att9.png
    Click Element    css=div[name='page5_05'] label:nth-of-type(11)    #Click10
    Sleep    2s
    IntroProfile_TH    ${Check_Intro_Profile_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Positive/TH/TC1/9_Introprofile_th.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_TH    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward_TH}    ${Opt_in_rewardYes_TH}
    ...    ${Opt_in_rewardNoTH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Positive/TH/TC1/10_Reward_th.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_TH    ${Opt_in_tel_TH1}    ${Opt_in_tel_TH2}
    Input Text    name=opt_in_tel    0644444401
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Positive/TH/TC1/11_TelOptin_th.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Positive/TH/TC1/12_Ending_th.png
    Sleep    2s
    Close Browser

Test Survey BookCon Negative_Optin No_TH
    #Open Browser
    Open Browser    ${Link_BookCon_TH2}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}    ${Check_introMainTH2}    ${Check_introMainTH3}    ${Check_introMainTH4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/TH/TC2/1_Intro.png
    Click Element    ${btn_startTH}
    Q1_CSAT_TH    ${Check_QNCSAT_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/TH/TC2/2_CSAT.png
    Click Element    //div[@name='page1']//div[@class='ScaleValue']/label[2]    #click1
    Sleep    2s
    OA_CSATNeg_TH    ${Check_OACSATNeg_TH}
    #Input Text    name = csat_neg
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/TH/TC2/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_TH    ${Check_Optin_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/TH/TC2/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_1
    Sleep    2s
    Att5_TH    ${Check_Attri5_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/TH/TC2/4_Att5.png
    Click Element    name=Answer_10_0_0_1
    Sleep    2s
    Att6_TH    ${Check_Attri6_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/TH/TC2/5_Att6.png
    Click Element    name=Answer_11_0_0_1
    Sleep    2s
    Att7_TH    ${Check_Attri7_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/TH/TC2/6_Att7.png
    Click Element    css=div[name='page5_03'] .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click0
    Sleep    2s
    Att8_TH    ${Check_Attri8_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/TH/TC2/7_Att8.png
    Click Element    name=Answer_13_0_0_1
    Sleep    2s
    Att9_TH    ${Check_Attri9_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/TH/TC2/8_Att9.png
    Click Element    css=div[name='page5_05'] .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click0
    Sleep    2s
    IntroProfile_TH    ${Check_Intro_Profile_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/TH/TC2/9_Introprofile_th.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_TH    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward_TH}    ${Opt_in_rewardYes_TH}
    ...    ${Opt_in_rewardNoTH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/TH/TC2/10_Reward_th.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_TH    ${Opt_in_tel_TH1}    ${Opt_in_tel_TH2}
    Input Text    name=opt_in_tel    0644444402
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/TH/TC2/11_TelOptin_th.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/TH/TC2/12_Ending_th.png
    Sleep    2s
    Close Browser

Test Survey BookCon Negative_Optin Yes_TH
    #Open Browser
    Open Browser    ${Link_BookCon_TH3}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}    ${Check_introMainTH2}    ${Check_introMainTH3}    ${Check_introMainTH4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/TH/TC3/1_Intro.png
    Click Element    ${btn_startTH}
    Q1_CSAT_TH    ${Check_QNCSAT_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/TH/TC3/2_CSAT.png
    Click Element    ${Score2}
    Sleep    2s
    OA_CSATNeg_TH    ${Check_OACSATNeg_TH}
    Input Text    name = csat_neg    เอกสารใบจองถูกต้อง แต่เอกสารสัญญาไม่ถูกต้องรอนานต้องทำเปลี่ยนชื่อใหม่ ไม่ตรงตามเวลานัด
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/TH/TC3/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_TH    ${Check_Optin_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/TH/TC3/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_0
    Sleep    2s
    Att5_TH    ${Check_Attri5_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/TH/TC3/4_Att5.png
    Click Element    name=Answer_10_0_0_0
    Sleep    2s
    Att6_TH    ${Check_Attri6_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/TH/TC3/5_Att6.png
    Click Element    name=Answer_11_0_0_1
    Sleep    2s
    Att7_TH    ${Check_Attri7_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/TH/TC3/6_Att7.png
    Click Element    css=div[name='page5_03'] .scalenormal > .ScaleValue > label:nth-of-type(4)    #Click3
    Sleep    2s
    Att8_TH    ${Check_Attri8_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/TH/TC3/7_Att8.png
    Click Element    name=Answer_13_0_0_1
    Sleep    2s
    Att9_TH    ${Check_Attri9_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/TH/TC3/8_Att9.png
    Click Element    css=div[name='page5_05'] .scalenormal > .ScaleValue > label:nth-of-type(3)    #Click2
    Sleep    2s
    IntroProfile_TH    ${Check_Intro_Profile_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/TH/TC3/9_Introprofile_th.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_TH    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward_TH}    ${Opt_in_rewardYes_TH}
    ...    ${Opt_in_rewardNoTH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/TH/TC3/10_Reward_th.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_TH    ${Opt_in_tel_TH1}    ${Opt_in_tel_TH2}
    Input Text    name=opt_in_tel    0644444403
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/TH/TC3/11_TelOptin_th.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/TH/TC3/12_Ending_th.png
    Sleep    2s
    Close Browser

Test Survey BookCon Neatral_TH
    #Open Browser
    Open Browser    ${Link_BookCon_TH4}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}    ${Check_introMainTH2}    ${Check_introMainTH3}    ${Check_introMainTH4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Neatral/TH/TC4/1_Intro.png
    Click Element    ${btn_startTH}
    Q1_CSAT_TH    ${Check_QNCSAT_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Neatral/TH/TC4/2_CSAT.png
    Click Element    ${Score8}
    Sleep    2s
    Att5_TH    ${Check_Attri5_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Neatral/TH/TC4/4_Att5.png
    Click Element    name=Answer_10_0_0_0
    Sleep    2s
    Att6_TH    ${Check_Attri6_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Neatral/TH/TC4/5_Att6.png
    Click Element    name=Answer_11_0_0_0
    Sleep    2s
    Att7_TH    ${Check_Attri7_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Neatral/TH/TC4/6_Att7.png
    Click Element    css=div[name='page5_03'] .scalenormal > .ScaleValue > label:nth-of-type(8)    #Click7
    Sleep    2s
    Att8_TH    ${Check_Attri8_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Neatral/TH/TC4/7_Att8.png
    Click Element    name=Answer_13_0_0_0
    Sleep    2s
    Att9_TH    ${Check_Attri9_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Neatral/TH/TC4/8_Att9.png
    Click Element    css=div[name='page5_05'] .scalenormal > .ScaleValue > label:nth-of-type(8)    #Click7
    Sleep    2s
    IntroProfile_TH    ${Check_Intro_Profile_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Neatral/TH/TC4/9_Introprofile_th.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_TH    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward_TH}    ${Opt_in_rewardYes_TH}
    ...    ${Opt_in_rewardNoTH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Neatral/TH/TC4/10_Reward_th.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_TH    ${Opt_in_tel_TH1}    ${Opt_in_tel_TH2}
    Input Text    name=opt_in_tel    0644444404
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Neatral/TH/TC4/11_TelOptin_th.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Neatral/TH/TC4/12_Ending_th.png
    Sleep    2s
    Close Browser
