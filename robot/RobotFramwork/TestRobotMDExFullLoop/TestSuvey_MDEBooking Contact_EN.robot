*** Settings ***
Library           Selenium2Library
Resource          Variables.robot
Resource          Keywords.robot

*** Test Cases ***
Test Survey BookCon Positive_EN
    #Open Browser
    Open Browser    ${Link_BookCon_EN1}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    English
    Sleep    2s
    Introduction_EN    ${Check_introMainEN1}    ${Check_introMainEN2}    ${Check_introMainEN3}    ${Check_introMainEN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/EN/TC1/1_Intro.png
    Click Element    ${btn_startEN}
    Sleep    2s
    Q1_CSAT_EN    ${Check_QNCSAT_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Positive/EN/TC1/2_CSAT.png
    Click Element    ${Score9}
    Sleep    2s
    OA_CSATPos_EN    ${Check_OACSATPos_EN}
    Input Text    name = csat_pos    Is all Good and all completed.
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Positive/EN/TC1/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Att5_EN    ${Check_Attri5_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Positive/EN/TC1/4_Att5.png
    Click Element    name=Answer_10_0_0_0
    Sleep    2s
    Att6_EN    ${Check_Attri6_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Positive/EN/TC1/5_Att6.png
    Click Element    name=Answer_11_0_0_0
    Sleep    2s
    Att7_EN    ${Check_Attri7_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Positive/EN/TC1/6_Att7.png
    Click Element    css=div[name='page5_03'] label:nth-of-type(10)    #Click9
    Sleep    2s
    Att8_EN    ${Check_Attri8_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Positive/EN/TC1/7_Att8.png
    Click Element    name=Answer_13_0_0_0
    Sleep    2s
    Att9_EN    ${Check_Attri9_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Positive/EN/TC1/8_Att9.png
    Click Element    css=div[name='page5_05'] label:nth-of-type(10)    #Click9
    Sleep    2s
    IntroProfile_EN    ${Check_Intro_Profile_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Positive/EN/TC1/9_Introprofile_EN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_EN    ${CheckRewardEN}    ${CheckRewardEN_1}    ${CheckRewardEN_2}    ${CheckRewardEN_3}    ${CheckRewardEN_4}    ${CheckRewardEN_5}
    ...    ${CheckRewardEN_6}    ${CheckRewardEN_7}    ${CheckRewardEN_8}    ${CheckRewardEN_9}    ${CheckQuestionReward_EN}    ${Opt_in_rewardYes_EN}
    ...    ${Opt_in_rewardNoEN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Positive/EN/TC1/10_Reward_EN.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_EN    ${Opt_in_tel_EN1}    ${Opt_in_tel_EN2}
    Input Text    name=opt_in_tel    0644444501
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Positive/EN/TC1/11_TelOptin_EN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Positive/EN/TC1/12_Ending_EN.png
    Sleep    2s
    Close Browser

Test Survey BookCon Negative_Optin No_EN
    #Open Browser
    Open Browser    ${Link_BookCon_EN2}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    English
    Sleep    2s
    Introduction_EN    ${Check_introMainEN1}    ${Check_introMainEN2}    ${Check_introMainEN3}    ${Check_introMainEN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/EN/TC2/1_Intro.png
    Click Element    ${btn_startEN}
    Sleep    2s
    Q1_CSAT_EN    ${Check_QNCSAT_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/EN/TC2/2_CSAT.png
    Click Element    //div[@name='page1']//div[@class='ScaleValue']/label[4]    #click3
    Sleep    2s
    OA_CSATNeg_EN    ${Check_OACSATNeg_EN}
    Input Text    name = csat_neg    Project reservation form cannot be found. Must be taken from the customer If not taken, would be bad. But there are other compensations for
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/EN/TC2/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_EN    ${Check_Optin_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/EN/TC2/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_1
    Sleep    2s
    Att5_EN    ${Check_Attri5_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/EN/TC2/4_Att5.png
    Click Element    name=Answer_10_0_0_1
    Sleep    2s
    Att6_EN    ${Check_Attri6_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/EN/TC2/5_Att6.png
    Click Element    name=Answer_11_0_0_0
    Sleep    2s
    Att7_EN    ${Check_Attri7_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/EN/TC2/6_Att7.png
    Click Element    css=div[name='page5_03'] .scalenormal > .ScaleValue > label:nth-of-type(7)    #Click6
    Sleep    2s
    Att8_EN    ${Check_Attri8_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/EN/TC2/7_Att8.png
    Click Element    name=Answer_13_0_0_0
    Sleep    2s
    Att9_EN    ${Check_Attri9_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/EN/TC2/8_Att9.png
    Click Element    css=div[name='page5_05'] .scalenormal > .ScaleValue > label:nth-of-type(5)    #Click4
    Sleep    2s
    IntroProfile_EN    ${Check_Intro_Profile_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/EN/TC2/9_Introprofile_EN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_EN    ${CheckRewardEN}    ${CheckRewardEN_1}    ${CheckRewardEN_2}    ${CheckRewardEN_3}    ${CheckRewardEN_4}    ${CheckRewardEN_5}
    ...    ${CheckRewardEN_6}    ${CheckRewardEN_7}    ${CheckRewardEN_8}    ${CheckRewardEN_9}    ${CheckQuestionReward_EN}    ${Opt_in_rewardYes_EN}
    ...    ${Opt_in_rewardNoEN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/EN/TC2/10_Reward_EN.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_EN    ${Opt_in_tel_EN1}    ${Opt_in_tel_EN2}
    Input Text    name=opt_in_tel    0644444402
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/EN/TC2/11_TelOptin_EN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/EN/TC2/12_Ending_EN.png
    Sleep    2s
    Close Browser

Test Survey BookCon Negative_Optin Yes_EN
    #Open Browser
    Open Browser    ${Link_BookCon_EN3}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    English
    Sleep    2s
    Introduction_EN    ${Check_introMainEN1}    ${Check_introMainEN2}    ${Check_introMainEN3}    ${Check_introMainEN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/EN/TC3/1_Intro.png
    Click Element    ${btn_startEN}
    Sleep    2s
    Q1_CSAT_EN    ${Check_QNCSAT_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/EN/TC3/2_CSAT.png
    Click Element    ${Score2}
    Sleep    2s
    OA_CSATNeg_EN    ${Check_OACSATNeg_EN}
    Input Text    name = csat_neg    Having an appointment, but having to wait for a long time is very boring
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/EN/TC3/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_EN    ${Check_Optin_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/EN/TC3/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_0
    Sleep    2s
    Att5_EN    ${Check_Attri5_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/EN/TC3/4_Att5.png
    Click Element    name=Answer_10_0_0_0
    Sleep    2s
    Att6_EN    ${Check_Attri6_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/EN/TC3/5_Att6.png
    Click Element    name=Answer_11_0_0_0
    Sleep    2s
    Att7_EN    ${Check_Attri7_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/EN/TC3/6_Att7.png
    Click Element    css=div[name='page5_03'] .scalenormal > .ScaleValue > label:nth-of-type(4)    #Click3
    Sleep    2s
    Att8_EN    ${Check_Attri8_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/EN/TC3/7_Att8.png
    Click Element    name=Answer_13_0_0_1
    Sleep    2s
    Att9_EN    ${Check_Attri9_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/EN/TC3/8_Att9.png
    Click Element    css=div[name='page5_05'] .scalenormal > .ScaleValue > label:nth-of-type(4)    #Click3
    Sleep    2s
    IntroProfile_EN    ${Check_Intro_Profile_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/EN/TC3/9_Introprofile_EN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_EN    ${CheckRewardEN}    ${CheckRewardEN_1}    ${CheckRewardEN_2}    ${CheckRewardEN_3}    ${CheckRewardEN_4}    ${CheckRewardEN_5}
    ...    ${CheckRewardEN_6}    ${CheckRewardEN_7}    ${CheckRewardEN_8}    ${CheckRewardEN_9}    ${CheckQuestionReward_EN}    ${Opt_in_rewardYes_EN}
    ...    ${Opt_in_rewardNoEN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/EN/TC3/10_Reward_EN.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_EN    ${Opt_in_tel_EN1}    ${Opt_in_tel_EN2}
    Input Text    name=opt_in_tel    0644444503
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/EN/TC3/11_TelOptin_EN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/EN/TC3/12_Ending_EN.png
    Sleep    2s
    Close Browser

Test Survey BookCon Neatral_EN
    #Open Browser
    Open Browser    ${Link_BookCon_EN4}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    English
    Sleep    2s
    Introduction_EN    ${Check_introMainEN1}    ${Check_introMainEN2}    ${Check_introMainEN3}    ${Check_introMainEN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/EN/TC4/1_Intro.png
    Click Element    ${btn_startEN}
    Sleep    2s
    Q1_CSAT_EN    ${Check_QNCSAT_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Neatral/EN/TC4/2_CSAT.png
    Click Element    ${Score7}
    Sleep    2s
    Att5_EN    ${Check_Attri5_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Neatral/EN/TC4/4_Att5.png
    Click Element    name=Answer_10_0_0_0
    Sleep    2s
    Att6_EN    ${Check_Attri6_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Neatral/EN/TC4/5_Att6.png
    Click Element    name=Answer_11_0_0_0
    Sleep    2s
    Att7_EN    ${Check_Attri7_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Neatral/EN/TC4/6_Att7.png
    Click Element    css=div[name='page5_03'] .scalenormal > .ScaleValue > label:nth-of-type(9)    #Click8
    Sleep    2s
    Att8_EN    ${Check_Attri8_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Neatral/EN/TC4/7_Att8.png
    Click Element    name=Answer_13_0_0_0
    Sleep    2s
    Att9_EN    ${Check_Attri9_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Neatral/EN/TC4/8_Att9.png
    Click Element    css=div[name='page5_05'] .scalenormal > .ScaleValue > label:nth-of-type(9)    #Click8
    Sleep    2s
    IntroProfile_EN    ${Check_Intro_Profile_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Neatral/EN/TC4/9_Introprofile_EN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_EN    ${CheckRewardEN}    ${CheckRewardEN_1}    ${CheckRewardEN_2}    ${CheckRewardEN_3}    ${CheckRewardEN_4}    ${CheckRewardEN_5}
    ...    ${CheckRewardEN_6}    ${CheckRewardEN_7}    ${CheckRewardEN_8}    ${CheckRewardEN_9}    ${CheckQuestionReward_EN}    ${Opt_in_rewardYes_EN}
    ...    ${Opt_in_rewardNoEN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Neatral/EN/TC4/10_Reward_EN.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_EN    ${Opt_in_tel_EN1}    ${Opt_in_tel_EN2}
    Input Text    name=opt_in_tel    0644444504
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Neatral/EN/TC4/11_TelOptin_EN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Neatral/EN/TC4/12_Ending_EN.png
    Sleep    2s
    Close Browser
