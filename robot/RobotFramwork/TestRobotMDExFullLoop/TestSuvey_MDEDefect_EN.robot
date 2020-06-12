*** Settings ***
Library           Selenium2Library
Resource          Variables.robot
Resource          Keywords.robot

*** Test Cases ***
Test Survey Defect Positive_EN
    #Open Browser
    Open Browser    ${Link_Defect_EN1}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    English
    Sleep    2s
    Introduction_EN    ${Check_introMainEN1}    ${Check_introMainEN2}    ${Check_introMainEN3}    ${Check_introMainEN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/EN/TC1/1_Intro.png
    Click Element    ${btn_startEN}
    Sleep    2s
    Q1_CSAT_EN    ${Check_QNCSAT_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/EN/TC1/2_CSAT.png
    Click Element    //div[@name='page1']//div[@class='ScaleValue']/label[10]
    Sleep    2s
    OA_CSATPos_EN    ${Check_OACSATPos_EN}
    Input Text    name = csat_pos    Polite repair staff Perfect repair work like
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/EN/TC1/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Att23_EN    ${Check_Attri23_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/EN/TC1/4_Att23.png
    Click Element    //*[@name='Answer_28_0_0_0']    #Clickใช่
    Sleep    2s
    Att24_EN    ${Check_Attri24_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/EN/TC1/5_Att24.png
    Click Element    css=div[name='page9_02'] label:nth-of-type(10)    #Click9
    Sleep    2s
    Att25_EN    ${Check_Attri25_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/EN/TC1/6_Att25.png
    Click Element    css=div[name='page9_03'] label:nth-of-type(10)    #Click9
    Sleep    2s
    Att26_EN    ${Check_Attri26_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/EN/TC1/7_Att26.png
    Click Element    css=div[name='page9_04'] label:nth-of-type(11)    #Click10
    Sleep    2s
    Att27_EN    ${Check_Attri27_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/EN/TC1/8_Att27.png
    Click Element    css=div[name='page9_05'] label:nth-of-type(11)    #Click10
    Sleep    2s
    IntroProfile_EN    ${Check_Intro_Profile_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/EN/TC1/9_Introprofile_EN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_EN    ${CheckRewardEN}    ${CheckRewardEN_1}    ${CheckRewardEN_2}    ${CheckRewardEN_3}    ${CheckRewardEN_4}    ${CheckRewardEN_5}
    ...    ${CheckRewardEN_6}    ${CheckRewardEN_7}    ${CheckRewardEN_8}    ${CheckRewardEN_9}    ${CheckQuestionReward_EN}    ${Opt_in_rewardYes_EN}
    ...    ${Opt_in_rewardNoEN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/EN/TC1/10_Reward_EN.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_EN    ${Opt_in_tel_EN1}    ${Opt_in_tel_EN2}
    Input Text    name=opt_in_tel    0665555551
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/EN/TC1/11_TelOptin_EN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/EN/TC1/12_Ending_EN.png
    Sleep    2s
    Close Browser

Test Survey Defect Negative_Optin No_EN
    #Open Browser
    Open Browser    ${Link_Defect_EN2}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    English
    Sleep    2s
    Introduction_EN    ${Check_introMainEN1}    ${Check_introMainEN2}    ${Check_introMainEN3}    ${Check_introMainEN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Negative/EN/TC2/1_Intro.png
    Click Element    ${btn_startEN}
    Sleep    2s
    Q1_CSAT_EN    ${Check_QNCSAT_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Negative/EN/TC2/2_CSAT.png
    Click Element    //div[@name='page1']//div[@class='ScaleValue']/label[3]    #click2
    Sleep    2s
    OA_CSATNeg_EN    ${Check_OACSATNeg_EN}
    Input Text    name = csat_neg    Color repair work, nothing to try on. Summary. The floor is very sloppy. Clean work, much more dust.
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Negative/EN/TC2/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_EN    ${Check_Optin_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Negative/EN/TC2/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_1
    Sleep    2s
    Att23_EN    ${Check_Attri23_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/EN/TC1/4_Att23.png
    Click Element    name=Answer_28_0_0_1    #Clickไม่ใช่
    Sleep    2s
    Att24_EN    ${Check_Attri24_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/EN/TC1/5_Att24.png
    Click Element    css=div[name='page9_02'] label:nth-of-type(8)    #Click 7
    Sleep    2s
    Att25_EN    ${Check_Attri25_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/EN/TC1/6_Att25.png
    Click Element    css=div[name='page9_03'] label:nth-of-type(4)    #Click3
    Sleep    2s
    Att26_EN    ${Check_Attri26_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/EN/TC1/7_Att26.png
    Click Element    css=div[name='page9_04'] label:nth-of-type(4)    #Click3
    Sleep    2s
    Att27_EN    ${Check_Attri27_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/EN/TC1/8_Att27.png
    Click Element    css=div[name='page9_05'] label:nth-of-type(5)    #Click4
    Sleep    2s
    IntroProfile_EN    ${Check_Intro_Profile_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/EN/TC1/9_Introprofile_EN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_EN    ${CheckRewardEN}    ${CheckRewardEN_1}    ${CheckRewardEN_2}    ${CheckRewardEN_3}    ${CheckRewardEN_4}    ${CheckRewardEN_5}
    ...    ${CheckRewardEN_6}    ${CheckRewardEN_7}    ${CheckRewardEN_8}    ${CheckRewardEN_9}    ${CheckQuestionReward_EN}    ${Opt_in_rewardYes_EN}
    ...    ${Opt_in_rewardNoEN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Negative/EN/TC2/10_Reward_EN.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_EN    ${Opt_in_tel_EN1}    ${Opt_in_tel_EN2}
    Input Text    name=opt_in_tel    0665555552
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Negative/EN/TC2/11_TelOptin_EN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Negative/EN/TC2/12_Ending_EN.png
    Sleep    2s
    Close Browser

Test Survey Defect Negative_Optin Yes_EN
    #Open Browser
    Open Browser    ${Link_Defect_EN3}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    English
    Sleep    2s
    Introduction_EN    ${Check_introMainEN1}    ${Check_introMainEN2}    ${Check_introMainEN3}    ${Check_introMainEN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Negative/EN/TC3/1_Intro.png
    Click Element    ${btn_startEN}
    Sleep    2s
    Q1_CSAT_EN    ${Check_QNCSAT_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Negative/EN/TC3/2_CSAT.png
    Click Element    ${Score2}
    Sleep    2s
    OA_CSATNeg_EN    ${Check_OACSATNeg_EN}
    #Input Text    name = csat_neg
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Negative/EN/TC3/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_EN    ${Check_Optin_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Negative/EN/TC3/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_0
    Sleep    2s
    Att23_EN    ${Check_Attri23_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/EN/TC1/4_Att23.png
    Click Element    name=Answer_28_0_0_0    #Clickใช่
    Sleep    2s
    Att24_EN    ${Check_Attri24_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/EN/TC1/5_Att24.png
    Click Element    css=div[name='page9_02'] .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click0
    Sleep    2s
    Att25_EN    ${Check_Attri25_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/EN/TC1/6_Att25.png
    Click Element    css=div[name='page9_03'] .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click0
    Sleep    2s
    Att26_EN    ${Check_Attri26_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/EN/TC1/7_Att26.png
    Click Element    css=div[name='page9_04'] .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click0
    Sleep    2s
    Att27_EN    ${Check_Attri27_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/EN/TC1/8_Att27.png
    Click Element    css=div[name='page9_05'] .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click0
    Sleep    2s
    IntroProfile_EN    ${Check_Intro_Profile_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/EN/TC1/9_Introprofile_EN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_EN    ${CheckRewardEN}    ${CheckRewardEN_1}    ${CheckRewardEN_2}    ${CheckRewardEN_3}    ${CheckRewardEN_4}    ${CheckRewardEN_5}
    ...    ${CheckRewardEN_6}    ${CheckRewardEN_7}    ${CheckRewardEN_8}    ${CheckRewardEN_9}    ${CheckQuestionReward_EN}    ${Opt_in_rewardYes_EN}
    ...    ${Opt_in_rewardNoEN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Negative/EN/TC3/10_Reward_EN.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_EN    ${Opt_in_tel_EN1}    ${Opt_in_tel_EN2}
    Input Text    name=opt_in_tel    0665555553
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Negative/EN/TC3/11_TelOptin_EN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Negative/EN/TC3/12_Ending_EN.png
    Sleep    2s
    Close Browser

Test Survey Defect Neatral_EN
    #Open Browser
    Open Browser    ${Link_Defect_EN4}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    English
    Sleep    2s
    Introduction_EN    ${Check_introMainEN1}    ${Check_introMainEN2}    ${Check_introMainEN3}    ${Check_introMainEN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Neatral/EN/TC4/1_Intro.png
    Click Element    ${btn_startEN}
    Sleep    2s
    Q1_CSAT_EN    ${Check_QNCSAT_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Neatral/EN/TC4/2_CSAT.png
    Click Element    ${Score8}
    Sleep    2s
    Att23_EN    ${Check_Attri23_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/EN/TC1/4_Att23.png
    Click Element    name=Answer_28_0_0_1    #Clickไม่ใช่
    Sleep    2s
    Att24_EN    ${Check_Attri24_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/EN/TC1/5_Att24.png
    Click Element    css=div[name='page9_02'] label:nth-of-type(5)    #Click4
    Sleep    2s
    Att25_EN    ${Check_Attri25_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/EN/TC1/6_Att25.png
    Click Element    css=div[name='page9_03'] label:nth-of-type(6)    #Click5
    Sleep    2s
    Att26_EN    ${Check_Attri26_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/EN/TC1/7_Att26.png
    Click Element    css=div[name='page9_04'] label:nth-of-type(7)    #Click6
    Sleep    2s
    Att27_EN    ${Check_Attri27_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/EN/TC1/8_Att27.png
    Click Element    css=div[name='page9_05'] label:nth-of-type(8)    #Click7
    Sleep    2s
    IntroProfile_EN    ${Check_Intro_Profile_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Positive/EN/TC1/9_Introprofile_EN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_EN    ${CheckRewardEN}    ${CheckRewardEN_1}    ${CheckRewardEN_2}    ${CheckRewardEN_3}    ${CheckRewardEN_4}    ${CheckRewardEN_5}
    ...    ${CheckRewardEN_6}    ${CheckRewardEN_7}    ${CheckRewardEN_8}    ${CheckRewardEN_9}    ${CheckQuestionReward_EN}    ${Opt_in_rewardYes_EN}
    ...    ${Opt_in_rewardNoEN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Neatral/EN/TC4/10_Reward_EN.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_EN    ${Opt_in_tel_EN1}    ${Opt_in_tel_EN2}
    Input Text    name=opt_in_tel    0665555554
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Neatral/EN/TC4/11_TelOptin_EN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Defect_Neatral/EN/TC4/12_Ending_EN.png
    Sleep    2s
    Close Browser
