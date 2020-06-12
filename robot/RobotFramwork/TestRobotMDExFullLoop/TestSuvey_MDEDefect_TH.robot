*** Settings ***
Library           Selenium2Library
Resource          Variables.robot
Resource          Keywords.robot

*** Test Cases ***
Test Survey Defect Positive_TH
    #Open Browser
    Open Browser    ${Link_Defect_TH1}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}    ${Check_introMainTH2}    ${Check_introMainTH3}    ${Check_introMainTH4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/TH/TC1/1_Intro.png
    Click Element    ${btn_startTH}
    Sleep    2s
    Q1_CSAT_TH    ${Check_QNCSAT_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/TH/TC1/2_CSAT.png
    Click Element    //div[@name='page1']//div[@class='ScaleValue']/label[10]
    Sleep    2s
    OA_CSATPos_TH    ${Check_OACSATPos_TH}
    Input Text    name = csat_pos    ระบบสะดวกดีในการแจ้งซ่อม    แต่งานซ่อมไม่เนี้ยบ ไม่ละเอียด
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/TH/TC1/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Att23_TH    ${Check_Attri23_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/TH/TC1/4_Att23.png
    Click Element    name=Answer_28_0_0_0    #Clickใช่
    Sleep    2s
    Att24_TH    ${Check_Attri24_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/TH/TC1/5_Att24.png
    Click Element    css=div[name='page9_02'] label:nth-of-type(11)    #Click10
    Sleep    2s
    Att25_TH    ${Check_Attri25_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/TH/TC1/6_Att25.png
    Click Element    css=div[name='page9_03'] label:nth-of-type(10)    #Click9
    Sleep    2s
    Att26_TH    ${Check_Attri26_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/TH/TC1/7_Att26.png
    Click Element    css=div[name='page9_04'] label:nth-of-type(9)    #Click8
    Sleep    2s
    Att27_TH    ${Check_Attri27_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/TH/TC1/8_Att27.png
    Click Element    css=div[name='page9_05'] label:nth-of-type(8)    #Click7
    Sleep    2s
    IntroProfile_TH    ${Check_Intro_Profile_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/TH/TC1/9_Introprofile_th.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_TH    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward_TH}    ${Opt_in_rewardYes_TH}
    ...    ${Opt_in_rewardNoTH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/TH/TC1/10_Reward_th.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_TH    ${Opt_in_tel_TH1}    ${Opt_in_tel_TH2}
    Input Text    name=opt_in_tel    0655555551
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/TH/TC1/11_TelOptin_th.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/TH/TC1/12_Ending_th.png
    Sleep    2s
    Close Browser

Test Survey Defect Negative_Optin No_TH
    #Open Browser
    Open Browser    ${Link_Defect_TH2}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}    ${Check_introMainTH2}    ${Check_introMainTH3}    ${Check_introMainTH4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Negative/TH/TC2/1_Intro.png
    Click Element    ${btn_startTH}
    Sleep    2s
    Q1_CSAT_TH    ${Check_QNCSAT_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Negative/TH/TC2/2_CSAT.png
    Click Element    ${Score3}    #click3
    Sleep    2s
    OA_CSATNeg_TH    ${Check_OACSATNeg_TH}
    #Input Text    name = csat_neg    ช่องทางแจ้งสะดวกสบาย แต่ไม่เคยมาตามนัด ไม่มีความเอาใจใส่ ลงระบบไป 2-3 รอบก็ไม่มา    ไม่รู้ต้องให้ตามถึงเมื่อไหร่
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Negative/TH/TC2/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_TH    ${Check_Optin_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Negative/TH/TC2/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_1
    Sleep    2s
    Att23_TH    ${Check_Attri23_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/TH/TC1/4_Att23.png
    Click Element    name=Answer_28_0_0_0    #Clickใช่
    Sleep    2s
    Att24_TH    ${Check_Attri24_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/TH/TC1/5_Att24.png
    Click Element    css=div[name='page9_02'] label:nth-of-type(4)    #Click3
    Sleep    2s
    Att25_TH    ${Check_Attri25_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/TH/TC1/6_Att25.png
    Click Element    css=div[name='page9_03'] label:nth-of-type(8)    #Click7
    Sleep    2s
    Att26_TH    ${Check_Attri26_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/TH/TC1/7_Att26.png
    Click Element    css=div[name='page9_04'] label:nth-of-type(6)    #Click5
    Sleep    2s
    Att27_TH    ${Check_Attri27_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/TH/TC1/8_Att27.png
    Click Element    css=div[name='page9_05'] label:nth-of-type(7)    #Click6
    Sleep    2s
    IntroProfile_TH    ${Check_Intro_Profile_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/TH/TC1/9_Introprofile_th.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_TH    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward_TH}    ${Opt_in_rewardYes_TH}
    ...    ${Opt_in_rewardNoTH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Negative/TH/TC2/10_Reward_th.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_TH    ${Opt_in_tel_TH1}    ${Opt_in_tel_TH2}
    Input Text    name=opt_in_tel    0655555552
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Negative/TH/TC2/11_TelOptin_th.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Negative/TH/TC2/12_Ending_th.png
    Sleep    2s
    Close Browser

Test Survey Defect Negative_Optin Yes_TH
    #Open Browser
    Open Browser    ${Link_Defect_TH3}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}    ${Check_introMainTH2}    ${Check_introMainTH3}    ${Check_introMainTH4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Negative/TH/TC3/1_Intro.png
    Click Element    ${btn_startTH}
    Sleep    2s
    Q1_CSAT_TH    ${Check_QNCSAT_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Negative/TH/TC3/2_CSAT.png
    Click Element    ${Score2}
    Sleep    2s
    OA_CSATNeg_TH    ${Check_OACSATNeg_TH}
    Input Text    name = csat_neg    ซ่อมตรงนั้นตรงนี้เป็นมาใหม่ กระทบไปหมด ซ่อมไม่หมดไม่สิ้น แย่จริงๆ
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Negative/TH/TC3/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_TH    ${Check_Optin_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Negative/TH/TC3/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_0
    Sleep    2s
    Att23_TH    ${Check_Attri23_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/TH/TC1/4_Att23.png
    Click Element    name=Answer_28_0_0_0    #Clickใช่
    Sleep    2s
    Att24_TH    ${Check_Attri24_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/TH/TC1/5_Att24.png
    Click Element    css=div[name='page9_02'] label:nth-of-type(4)    #Click3
    Sleep    2s
    Att25_TH    ${Check_Attri25_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/TH/TC1/6_Att25.png
    Click Element    css=div[name='page9_03'] label:nth-of-type(8)    #Click7
    Sleep    2s
    Att26_TH    ${Check_Attri26_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/TH/TC1/7_Att26.png
    Click Element    css=div[name='page9_04'] .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click0
    Sleep    2s
    Att27_TH    ${Check_Attri27_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/TH/TC1/8_Att27.png
    Click Element    css=div[name='page9_05'] .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click0
    Sleep    2s
    IntroProfile_TH    ${Check_Intro_Profile_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/TH/TC1/9_Introprofile_th.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_TH    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward_TH}    ${Opt_in_rewardYes_TH}
    ...    ${Opt_in_rewardNoTH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Negative/TH/TC3/10_Reward_th.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_TH    ${Opt_in_tel_TH1}    ${Opt_in_tel_TH2}
    Input Text    name=opt_in_tel    0655555553
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Negative/TH/TC3/11_TelOptin_th.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Negative/TH/TC3/12_Ending_th.png
    Sleep    2s
    Close Browser

Test Survey Defect Neatral_TH
    #Open Browser
    Open Browser    ${Link_Defect_TH4}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}    ${Check_introMainTH2}    ${Check_introMainTH3}    ${Check_introMainTH4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Neatral/TH/TC4/1_Intro.png
    Click Element    ${btn_startTH}
    Sleep    2s
    Q1_CSAT_TH    ${Check_QNCSAT_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Neatral/TH/TC4/2_CSAT.png
    Click Element    ${Score7}
    Sleep    2s
    Att23_TH    ${Check_Attri23_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/TH/TC1/4_Att23.png
    Click Element    name=Answer_28_0_0_1    #Clickไม่ใช่
    Sleep    2s
    Att24_TH    ${Check_Attri24_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/TH/TC1/5_Att24.png
    Click Element    css=div[name='page9_02'] label:nth-of-type(8)    #Click7
    Sleep    2s
    Att25_TH    ${Check_Attri25_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/TH/TC1/6_Att25.png
    Click Element    css=div[name='page9_03'] label:nth-of-type(8)    #Click7
    Sleep    2s
    Att26_TH    ${Check_Attri26_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/TH/TC1/7_Att26.png
    Click Element    css=div[name='page9_04'] label:nth-of-type(6)    #Click5
    Sleep    2s
    Att27_TH    ${Check_Attri27_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/TH/TC1/8_Att27.png
    Click Element    css=div[name='page9_05'] label:nth-of-type(9)    #Click8
    Sleep    2s
    IntroProfile_TH    ${Check_Intro_Profile_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/TH/TC1/9_Introprofile_th.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_TH    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward_TH}    ${Opt_in_rewardYes_TH}
    ...    ${Opt_in_rewardNoTH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Neatral/TH/TC4/10_Reward_th.png
    Click Element    name=Answer_6_0_0_1
    Sleep    2s
    Tel Opt-in_TH    ${Opt_in_tel_TH1}    ${Opt_in_tel_TH2}
    Input Text    name=opt_in_tel    0655555554
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Neatral/TH/TC4/11_TelOptin_th.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Neatral/TH/TC4/12_Ending_th.png
    Sleep    2s
    Close Browser
