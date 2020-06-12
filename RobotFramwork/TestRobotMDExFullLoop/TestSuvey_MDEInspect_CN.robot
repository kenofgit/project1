*** Settings ***
Library           Selenium2Library
Resource          Variables.robot
Resource          Keywords.robot

*** Test Cases ***
Test Survey Inspection Positive_CN
    #Open Browser
    Open Browser    ${Link_Inspect_CN1}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    Chinese
    Sleep    2s
    Introduction_CN    ${Check_introMainCN1}    ${Check_introMainCN2}    ${Check_introMainCN3}    ${Check_introMainCN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/CN/TC1/1_Intro.png
    Click Element    ${btn_startCN}
    Sleep    2s
    Q1_CSAT_CN    ${Check_QNCSAT_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/CN/TC1/2_CSAT.png
    Click Element    //div[@name='page1']//div[@class='ScaleValue']/label[10]    #Click9
    Sleep    2s
    OA_CSATPos_CN    ${Check_OACSATPos_CN}
    Input Text    name = csat_pos    Well Done
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/CN/TC1/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Att14_CN    ${Check_Attri14_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/CN/TC1/4_Att14.png
    Click Element    css=div[name='page7_01'] label:nth-of-type(9)    #click8
    Sleep    2s
    Att15_CN    ${Check_Attri15_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/CN/TC1/5_Att15.png
    Click Element    css=div[name='page7_02'] label:nth-of-type(9)    #click8
    Sleep    2s
    Att16_CN    ${Check_Attri16_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/CN/TC1/6_Att16.png
    Click Element    css=div[name='page7_03'] label:nth-of-type(9)    #click8
    Sleep    2s
    Att17_CN    ${Check_Attri17_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/CN/TC1/7_Att17.png
    Click Element    css=div[name='page7_04'] label:nth-of-type(9)    #click8
    Sleep    2s
    IntroProfile_CN    ${Check_Intro_Profile_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/CN/TC1/8_Introprofile_CN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_CN    ${CheckRewardCN}    ${CheckRewardCN_1}    ${CheckRewardCN_2}    ${CheckRewardCN_3}    ${CheckRewardCN_4}    ${CheckRewardCN_5}
    ...    ${CheckRewardCN_6}    ${CheckRewardCN_7}    ${CheckRewardCN_8}    ${CheckRewardCN_9}    ${CheckQuestionReward_CN}    ${Opt_in_rewardYes_CN}
    ...    ${Opt_in_rewardNoCN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/CN/TC1/9_Reward_CN.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_CN    ${Opt_in_tel_CN1}
    Input Text    name=opt_in_tel    0870000021
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/CN/TC1/10_TelOptin_CN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/CN/TC1/11_Ending_CN.png
    Sleep    2s
    Close Browser

Test Survey Inspection Negative Optin No_CN
    #Open Browser
    Open Browser    ${Link_Inspect_CN2}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    Chinese
    Sleep    2s
    Introduction_CN    ${Check_introMainCN1}    ${Check_introMainCN2}    ${Check_introMainCN3}    ${Check_introMainCN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/CN/TC2/1_Intro.png
    Click Element    ${btn_startCN}
    Q1_CSAT_CN    ${Check_QNCSAT_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/CN/TC2/2_CSAT.png
    Click Element    ${Score5}    #click5
    Sleep    2s
    OA_CSATNeg_CN    ${Check_OACSATNeg_CN}
    Input Text    name = csat_neg    登机前请勿打扫以获取大量灰尘，房间干净，没有任何错误。
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/CN/TC2/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_CN    ${Check_Optin_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/CN/TC2/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_1
    Sleep    2s
    Att14_CN    ${Check_Attri14_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/CN/TC1/4_Att14.png
    Click Element    css=div[name='page7_01'] .scalenormal > .ScaleValue > label:nth-of-type(2)    #click 1
    Sleep    2s
    Att15_CN    ${Check_Attri15_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/CN/TC1/5_Att15.png
    Click Element    css=div[name='page7_02'] .scalenormal > .ScaleValue > label:nth-of-type(3)    #click 2
    Sleep    2s
    Att16_CN    ${Check_Attri16_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/CN/TC1/6_Att16.png
    Click Element    css=div[name='page7_03'] .scalenormal > .ScaleValue > label:nth-of-type(2)    #click 1
    Sleep    2s
    Att17_CN    ${Check_Attri17_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/CN/TC1/7_Att17.png
    Click Element    css=div[name='page7_04'] .scalenormal > .ScaleValue > label:nth-of-type(3)    #click 2
    Sleep    2s
    IntroProfile_CN    ${Check_Intro_Profile_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/CN/TC2/8_Introprofile_CN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_CN    ${CheckRewardCN}    ${CheckRewardCN_1}    ${CheckRewardCN_2}    ${CheckRewardCN_3}    ${CheckRewardCN_4}    ${CheckRewardCN_5}
    ...    ${CheckRewardCN_6}    ${CheckRewardCN_7}    ${CheckRewardCN_8}    ${CheckRewardCN_9}    ${CheckQuestionReward_CN}    ${Opt_in_rewardYes_CN}
    ...    ${Opt_in_rewardNoCN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/CN/TC2/9_Reward_CN.png
    Click Element    name=Answer_6_0_0_1
    Sleep    2s
    Tel Opt-in_CN    ${Opt_in_tel_CN1}
    Input Text    name=opt_in_tel    0870000022
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/CN/TC2/10_TelOptin_CN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/CN/TC2/11_Ending_CN.png
    Sleep    2s
    Close Browser

Test Survey Inspection Negative Optin Yes_CN
    #Open Browser
    Open Browser    ${Link_Inspect_CN3}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    Chinese
    Sleep    2s
    Introduction_CN    ${Check_introMainCN1}    ${Check_introMainCN2}    ${Check_introMainCN3}    ${Check_introMainCN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/CN/TC3/1_Intro.png
    Click Element    ${btn_startCN}
    Q1_CSAT_CN    ${Check_QNCSAT_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/CN/TC3/2_CSAT.png
    Click Element    //div[@name='page1']//div[@class='ScaleValue']/label[2]    #Click1
    Sleep    2s
    OA_CSATNeg_CN    ${Check_OACSATNeg_CN}
    Input Text    name = csat_neg    糟糕的房间，不履行义务和承诺
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/CN/TC3/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_CN    ${Check_Optin_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/CN/TC3/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_0
    Sleep    2s
    Att14_CN    ${Check_Attri14_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/CN/TC1/4_Att14.png
    Click Element    css=div[name='page7_01'] .scalenormal > .ScaleValue > label:nth-of-type(1)    #click 0
    Sleep    2s
    Att15_CN    ${Check_Attri15_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/CN/TC1/5_Att15.png
    Click Element    css=div[name='page7_02'] .scalenormal > .ScaleValue > label:nth-of-type(6)    #click 5
    Sleep    2s
    Att16_CN    ${Check_Attri16_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/CN/TC1/6_Att16.png
    Click Element    css=div[name='page7_03'] label:nth-of-type(8)    #click 7
    Sleep    2s
    Att17_CN    ${Check_Attri17_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/CN/TC1/7_Att17.png
    Click Element    css=div[name='page7_04'] .scalenormal > .ScaleValue > label:nth-of-type(4)    #click 3
    Sleep    2s
    IntroProfile_CN    ${Check_Intro_Profile_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/CN/TC3/8_Introprofile_CN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_CN    ${CheckRewardCN}    ${CheckRewardCN_1}    ${CheckRewardCN_2}    ${CheckRewardCN_3}    ${CheckRewardCN_4}    ${CheckRewardCN_5}
    ...    ${CheckRewardCN_6}    ${CheckRewardCN_7}    ${CheckRewardCN_8}    ${CheckRewardCN_9}    ${CheckQuestionReward_CN}    ${Opt_in_rewardYes_CN}
    ...    ${Opt_in_rewardNoCN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/CN/TC3/9_Reward_CN.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_CN    ${Opt_in_tel_CN1}
    Input Text    name=opt_in_tel    0870000023
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/CN/TC3/10_TelOptin_CN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/CN/TC3/11_Ending_CN.png
    Sleep    2s
    Close Browser

Test Survey Inspection Neutral_CN
    #Open Browser
    Open Browser    ${Link_Inspect_CN4}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    Chinese
    Sleep    2s
    Introduction_CN    ${Check_introMainCN1}    ${Check_introMainCN2}    ${Check_introMainCN3}    ${Check_introMainCN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_neutral/CN/TC4/1_Intro.png
    Click Element    ${btn_startCN}
    Q1_CSAT_CN    ${Check_QNCSAT_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_neutral/CN/TC4/2_CSAT.png
    Click Element    ${Score8}
    Sleep    2s
    Att14_CN    ${Check_Attri14_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/CN/TC1/4_Att14.png
    Click Element    css=div[name='page7_01'] label:nth-of-type(7)    #click 6
    Sleep    2s
    Att15_CN    ${Check_Attri15_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/CN/TC1/5_Att15.png
    Click Element    css=div[name='page7_02'] label:nth-of-type(9)    #click 8
    Sleep    2s
    Att16_CN    ${Check_Attri16_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/CN/TC1/6_Att16.png
    Click Element    css=div[name='page7_03'] label:nth-of-type(8)    #click 7
    Sleep    2s
    Att17_CN    ${Check_Attri17_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/CN/TC1/7_Att17.png
    Click Element    css=div[name='page7_04'] label:nth-of-type(8)    #click 7
    Sleep    2s
    IntroProfile_CN    ${Check_Intro_Profile_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_neutral/CN/TC4/8_Introprofile_CN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_CN    ${CheckRewardCN}    ${CheckRewardCN_1}    ${CheckRewardCN_2}    ${CheckRewardCN_3}    ${CheckRewardCN_4}    ${CheckRewardCN_5}
    ...    ${CheckRewardCN_6}    ${CheckRewardCN_7}    ${CheckRewardCN_8}    ${CheckRewardCN_9}    ${CheckQuestionReward_CN}    ${Opt_in_rewardYes_CN}
    ...    ${Opt_in_rewardNoCN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_neutral/CN/TC4/9_Reward_CN.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_CN    ${Opt_in_tel_CN1}
    Input Text    name=opt_in_tel    0870000024
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_neutral/CN/TC4/10_TelOptin_CN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_neutral/CN/TC4/11_Ending_CN.png
    Sleep    2s
    Close Browser
