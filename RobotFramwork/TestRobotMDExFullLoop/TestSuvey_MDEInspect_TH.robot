*** Settings ***
Library           Selenium2Library
Resource          Variables.robot
Resource          Keywords.robot

*** Test Cases ***
Test Survey Inspection Positive_TH
    #Open Browser
    Open Browser    ${Link_Inspect_TH1}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}    ${Check_introMainTH2}    ${Check_introMainTH3}    ${Check_introMainTH4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/TH/TC1/1_Intro.png
    Click Element    ${btn_startTH}
    Q1_CSAT_TH    ${Check_QNCSAT_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/TH/TC1/2_CSAT.png
    Click Element    //div[@name='page1']//div[@class='ScaleValue']/label[10]
    Sleep    2s
    OA_CSATPos_TH    ${Check_OACSATPos_TH}
    Input Text    name = csat_pos    ทุกอย่างเรียบร้อยดี Defect เยอะมาก แต่ก็แก้ไขเรียบร้อยดีก่อนโอน
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/TH/TC1/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Att14_TH    ${Check_Attri14_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/TH/TC1/4_Att14.png
    Click Element    css=div[name='page7_01'] label:nth-of-type(11)    #click10
    Sleep    2s
    Att15_TH    ${Check_Attri15_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/TH/TC1/5_Att15.png
    Click Element    css=div[name='page7_02'] label:nth-of-type(10)    #click9
    Sleep    2s
    Att16_TH    ${Check_Attri16_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/TH/TC1/6_Att16.png
    Click Element    css=div[name='page7_03'] label:nth-of-type(11)    #click10
    Sleep    2s
    Att17_TH    ${Check_Attri17_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/TH/TC1/7_Att17.png
    Click Element    css=div[name='page7_04'] label:nth-of-type(11)    #click10
    Sleep    2s
    IntroProfile_TH    ${Check_Intro_Profile_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/TH/TC1/8_Introprofile_th.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_TH    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward_TH}    ${Opt_in_rewardYes_TH}
    ...    ${Opt_in_rewardNoTH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/TH/TC1/9_Reward_th.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_TH    ${Opt_in_tel_TH1}    ${Opt_in_tel_TH2}
    Input Text    name=opt_in_tel    0870000001
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/TH/TC1/10_TelOptin_th.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/TH/TC1/11_Ending_th.png
    Sleep    2s
    Close Browser

Test Survey Inspection Negative Optin No_TH
    #Open Browser
    Open Browser    ${Link_Inspect_TH2}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}    ${Check_introMainTH2}    ${Check_introMainTH3}    ${Check_introMainTH4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/TH/TC2/1_Intro.png
    Click Element    ${btn_startTH}
    Q1_CSAT_TH    ${Check_QNCSAT_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/TH/TC2/2_CSAT.png
    Click Element    //div[@name='page1']//div[@class='ScaleValue']/label[1]    #click0
    Sleep    2s
    OA_CSATNeg_TH    ${Check_OACSATNeg_TH}
    Input Text    name = csat_neg    ให้ยื่นทำเรื่องกู้นานมาก pre approve แล้วทางโครงการโทรมาขอเลื่อนการตรวจ แต่ตอนที่ยื่นกู้ถ้าไม่ผ่านจะไม่มีการผ่อนผัน ต้องยื่นพรีก่อน เบื่อมาก
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/TH/TC2/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_TH    ${Check_Optin_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/TH/TC2/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_1
    Sleep    2s
    Att14_TH    ${Check_Attri14_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/TH/TC1/4_Att14.png
    Click Element    css=div[name='page7_01'] .scalenormal > .ScaleValue > label:nth-of-type(1)    #click 0
    Sleep    2s
    Att15_TH    ${Check_Attri15_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/TH/TC1/5_Att15.png
    Click Element    css=div[name='page7_02'] .scalenormal > .ScaleValue > label:nth-of-type(3)    #click 2
    Sleep    2s
    Att16_TH    ${Check_Attri16_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/TH/TC1/6_Att16.png
    Click Element    css=div[name='page7_03'] .scalenormal > .ScaleValue > label:nth-of-type(3)    #click 2
    Sleep    2s
    Att17_TH    ${Check_Attri17_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/TH/TC1/7_Att17.png
    Click Element    css=div[name='page7_04'] .LayoutNodeUI.layout > .Scale .HEART11.NA    #click N/A
    Sleep    2s
    IntroProfile_TH    ${Check_Intro_Profile_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/TH/TC2/8_Introprofile_th.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_TH    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward_TH}    ${Opt_in_rewardYes_TH}
    ...    ${Opt_in_rewardNoTH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/TH/TC2/9_Reward_th.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_TH    ${Opt_in_tel_TH1}    ${Opt_in_tel_TH2}
    Input Text    name=opt_in_tel    0870000002
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/TH/TC2/10_TelOptin_th.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/TH/TC2/11_Ending_th.png
    Sleep    2s
    Close Browser

Test Survey Inspection Negative Optin Yes_TH
    #Open Browser
    Open Browser    ${Link_Inspect_TH3}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}    ${Check_introMainTH2}    ${Check_introMainTH3}    ${Check_introMainTH4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/TH/TC3/1_Intro.png
    Click Element    ${btn_startTH}
    Q1_CSAT_TH    ${Check_QNCSAT_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/TH/TC3/2_CSAT.png
    Click Element    //div[@name='page1']//div[@class='ScaleValue']/label[5]    #Click4
    Sleep    2s
    OA_CSATNeg_TH    ${Check_OACSATNeg_TH}
    Input Text    name = csat_neg    Defect แก้ซ้ำไปซ้ำมา ไม่เรียบร้อยสักที เหนื่อยหน่ายมาก สุดท้ายก็ให้โอนก่อนที่จะแก้ไขเสร็จ
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/TH/TC3/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_TH    ${Check_Optin_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/TH/TC3/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_0
    Sleep    2s
    Att14_TH    ${Check_Attri14_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/TH/TC1/4_Att14.png
    Click Element    css=div[name='page7_01'] .scalenormal > .ScaleValue > label:nth-of-type(5)    #click 4
    Sleep    2s
    Att15_TH    ${Check_Attri15_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/TH/TC1/5_Att15.png
    Click Element    css=div[name='page7_02'] .scalenormal > .ScaleValue > label:nth-of-type(2)    #click 1
    Sleep    2s
    Att16_TH    ${Check_Attri16_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/TH/TC1/6_Att16.png
    Click Element    css=div[name='page7_03'] label:nth-of-type(4)    #click 3
    Sleep    2s
    Att17_TH    ${Check_Attri17_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/TH/TC1/7_Att17.png
    Click Element    css=div[name='page7_04'] .LayoutNodeUI.layout > .Scale .HEART11.NA    #click N/A
    Sleep    2s
    IntroProfile_TH    ${Check_Intro_Profile_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/TH/TC3/8_Introprofile_th.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_TH    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward_TH}    ${Opt_in_rewardYes_TH}
    ...    ${Opt_in_rewardNoTH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/TH/TC3/9_Reward_th.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_TH    ${Opt_in_tel_TH1}    ${Opt_in_tel_TH2}
    Input Text    name=opt_in_tel    0870000003
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/TH/TC3/10_TelOptin_th.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/TH/TC3/11_Ending_th.png
    Sleep    2s
    Close Browser

Test Survey Inspection Neutral_TH
    #Open Browser
    Open Browser    ${Link_Inspect_TH4}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}    ${Check_introMainTH2}    ${Check_introMainTH3}    ${Check_introMainTH4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_neutral/TH/TC4/1_Intro.png
    Click Element    ${btn_startTH}
    Q1_CSAT_TH    ${Check_QNCSAT_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_neutral/TH/TC4/2_CSAT.png
    Click Element    ${Score6}
    Sleep    2s
    Att14_TH    ${Check_Attri14_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/TH/TC1/4_Att14.png
    Click Element    css=div[name='page7_01'] label:nth-of-type(9)    #click 8
    Sleep    2s
    Att15_TH    ${Check_Attri15_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/TH/TC1/5_Att15.png
    Click Element    css=div[name='page7_02'] label:nth-of-type(8)    #click 7
    Sleep    2s
    Att16_TH    ${Check_Attri16_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/TH/TC1/6_Att16.png
    Click Element    css=div[name='page7_03'] label:nth-of-type(8)    #click 7
    Sleep    2s
    Att17_TH    ${Check_Attri17_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/TH/TC1/7_Att17.png
    Click Element    css=div[name='page7_04'] label:nth-of-type(8)    #click 7
    Sleep    2s
    IntroProfile_TH    ${Check_Intro_Profile_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_neutral/TH/TC4/8_Introprofile_th.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_TH    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward_TH}    ${Opt_in_rewardYes_TH}
    ...    ${Opt_in_rewardNoTH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_neutral/TH/TC4/9_Reward_th.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_TH    ${Opt_in_tel_TH1}    ${Opt_in_tel_TH2}
    Input Text    name=opt_in_tel    0870000004
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_neutral/TH/TC4/10_TelOptin_th.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_neutral/TH/TC4/11_Ending_th.png
    Sleep    2s
    Close Browser
