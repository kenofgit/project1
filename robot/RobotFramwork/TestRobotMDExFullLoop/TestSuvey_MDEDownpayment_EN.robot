*** Settings ***
Library           Selenium2Library
Resource          Variables.robot
Resource          Keywords.robot

*** Test Cases ***
Test Survey Downpay Positive_EN
    #Open Browser
    Open Browser    ${Link_Downpay_EN1}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    English
    Sleep    2s
    Introduction_EN    ${Check_introMainEN1}    ${Check_introMainEN2}    ${Check_introMainEN3}    ${Check_introMainEN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Positive/EN/TC1/1_Intro.png
    Click Element    ${btn_startEN}
    Q1_CSAT_EN    ${Check_QNCSAT_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Positive/EN/TC1/2_CSAT.png
    Click Element    //div[@name='page1']//div[@class='ScaleValue']/label[11]
    Sleep    2s
    OA_CSATPos_EN    ${Check_OACSATPos_EN}
    Input Text    name = csat_pos    All OK
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Positive/EN/TC1/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Att10_EN    ${Check_Attri10_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Positive/EN/TC1/4_Att10.png
    Click Element    name=Answer_15_0_0_0
    Sleep    2s
    Att11_EN    ${Check_Attri11_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Positive/EN/TC1/5_Att11.png
    Click Element    name=Answer_16_0_0_0
    Sleep    2s
    Att41_EN    ${Check_Attri41_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Positive/EN/TC1/6_Att41.png
    Click Element    name=Answer_17_0_0_0
    Sleep    2s
    Att13_EN    ${Check_Attri13_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Positive/EN/TC1/7_Att13.png
    Click Element    name=Answer_18_0_0_0
    Sleep    2s
    IntroProfile_EN    ${Check_Intro_Profile_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/EN/TC1/8_Introprofile_EN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_EN    ${CheckRewardEN}    ${CheckRewardEN_1}    ${CheckRewardEN_2}    ${CheckRewardEN_3}    ${CheckRewardEN_4}    ${CheckRewardEN_5}
    ...    ${CheckRewardEN_6}    ${CheckRewardEN_7}    ${CheckRewardEN_8}    ${CheckRewardEN_9}    ${CheckQuestionReward_EN}    ${Opt_in_rewardYes_EN}
    ...    ${Opt_in_rewardNoEN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Positive/EN/TC1/9_Reward_EN.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_EN    ${Opt_in_tel_EN1}    ${Opt_in_tel_EN2}
    Input Text    name=opt_in_tel    0899811111
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Positive/EN/TC1/10_TelOptin_EN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Positive/EN/TC1/11_Ending_EN.png
    Sleep    2s
    Close Browser

Test Survey Downpay Negative Optin No_EN
    #Open Browser
    Open Browser    ${Link_Downpay_EN2}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    English
    Sleep    2s
    Introduction_EN    ${Check_introMainEN1}    ${Check_introMainEN2}    ${Check_introMainEN3}    ${Check_introMainEN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/EN/TC2/1_Intro.png
    Click Element    ${btn_startEN}
    Q1_CSAT_EN    ${Check_QNCSAT_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/EN/TC2/2_CSAT.png
    Click Element    ${Score5}
    Sleep    2s
    OA_CSATNeg_EN    ${Check_OACSATNeg_EN}
    Input Text    name = csat_neg    Difficult payment Late receipt
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/EN/TC2/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_EN    ${Check_Optin_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/EN/TC2/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_1
    Sleep    2s
    Att10_EN    ${Check_Attri10_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/EN/TC2/4_Att10.png
    Click Element    name=Answer_15_0_0_1
    Sleep    2s
    Att11_EN    ${Check_Attri11_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/EN/TC2/5_Att11.png
    Click Element    name=Answer_16_0_0_1
    Sleep    2s
    Att41_EN    ${Check_Attri41_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/EN/TC2/6_Att41.png
    Click Element    name=Answer_17_0_0_0
    Sleep    2s
    Att13_EN    ${Check_Attri13_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/EN/TC2/7_Att13.png
    Click Element    name=Answer_18_0_0_0
    Sleep    2s
    IntroProfile_EN    ${Check_Intro_Profile_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/EN/TC2/8_Introprofile_EN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_EN    ${CheckRewardEN}    ${CheckRewardEN_1}    ${CheckRewardEN_2}    ${CheckRewardEN_3}    ${CheckRewardEN_4}    ${CheckRewardEN_5}
    ...    ${CheckRewardEN_6}    ${CheckRewardEN_7}    ${CheckRewardEN_8}    ${CheckRewardEN_9}    ${CheckQuestionReward_EN}    ${Opt_in_rewardYes_EN}
    ...    ${Opt_in_rewardNoEN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/EN/TC2/9_Reward_EN.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_EN    ${Opt_in_tel_EN1}    ${Opt_in_tel_EN2}
    Input Text    name=opt_in_tel    0899811112
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/EN/TC2/10_TelOptin_EN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/EN/TC2/11_Ending_EN.png
    Sleep    2s
    Close Browser

Test Survey Downpay Negative Optin Yes_EN
    #Open Browser
    Open Browser    ${Link_Downpay_EN3}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    English
    Sleep    2s
    Introduction_EN    ${Check_introMainEN1}    ${Check_introMainEN2}    ${Check_introMainEN3}    ${Check_introMainEN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/EN/TC3/1_Intro.png
    Click Element    ${btn_startEN}
    Q1_CSAT_EN    ${Check_QNCSAT_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/EN/TC3/2_CSAT.png
    Click Element    ${Score4}
    Sleep    2s
    OA_CSATNeg_EN    ${Check_OACSATNeg_EN}
    Input Text    name = csat_neg    The name on the receipt is wrong, not fixed, and never received the receipt via emai
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/EN/TC3/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_EN    ${Check_Optin_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/EN/TC3/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_0
    Sleep    2s
    Att10_EN    ${Check_Attri10_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/EN/TC3/4_Att10.png
    Click Element    name=Answer_15_0_0_0
    Sleep    2s
    Att11_EN    ${Check_Attri11_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/EN/TC3/5_Att11.png
    Click Element    name=Answer_16_0_0_0
    Sleep    2s
    Att41_EN    ${Check_Attri41_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/EN/TC3/6_Att41.png
    Click Element    name=Answer_17_0_0_1
    Sleep    2s
    Att13_EN    ${Check_Attri13_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/EN/TC3/7_Att13.png
    Click Element    name=Answer_18_0_0_1
    Sleep    2s
    IntroProfile_EN    ${Check_Intro_Profile_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/EN/TC3/8_Introprofile_EN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_EN    ${CheckRewardEN}    ${CheckRewardEN_1}    ${CheckRewardEN_2}    ${CheckRewardEN_3}    ${CheckRewardEN_4}    ${CheckRewardEN_5}
    ...    ${CheckRewardEN_6}    ${CheckRewardEN_7}    ${CheckRewardEN_8}    ${CheckRewardEN_9}    ${CheckQuestionReward_EN}    ${Opt_in_rewardYes_EN}
    ...    ${Opt_in_rewardNoEN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/EN/TC3/9_Reward_EN.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_EN    ${Opt_in_tel_EN1}    ${Opt_in_tel_EN2}
    Input Text    name=opt_in_tel    0899811112
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/EN/TC3/10_TelOptin_EN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/EN/TC3/11_Ending_EN.png
    Sleep    2s
    Close Browser

Test Survey Downpay Neutral_EN
    #Open Browser
    Open Browser    ${Link_Downpay_EN4}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Select From List By Value    ${locator_language}    English
    Sleep    2s
    Introduction_EN    ${Check_introMainEN1}    ${Check_introMainEN2}    ${Check_introMainEN3}    ${Check_introMainEN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_neutral/EN/TC4/1_Intro.png
    Click Element    ${btn_startEN}
    Q1_CSAT_EN    ${Check_QNCSAT_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_neutral/EN/TC4/2_CSAT.png
    Click Element    ${Score8}
    Sleep    2s
    Att10_EN    ${Check_Attri10_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_neutral/EN/TC4/4_Att10.png
    Click Element    name=Answer_15_0_0_0
    Sleep    2s
    Att11_EN    ${Check_Attri11_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_neutral/EN/TC4/5_Att11.png
    Click Element    name=Answer_16_0_0_1
    Sleep    2s
    Att41_EN    ${Check_Attri41_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_neutral/EN/TC4/6_Att41.png
    Click Element    name=Answer_17_0_0_0
    Sleep    2s
    Att13_EN    ${Check_Attri13_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_neutral/EN/TC4/7_Att13.png
    Click Element    name=Answer_18_0_0_1
    Sleep    2s
    IntroProfile_EN    ${Check_Intro_Profile_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_neutral/EN/TC4/8_Introprofile_EN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_EN    ${CheckRewardEN}    ${CheckRewardEN_1}    ${CheckRewardEN_2}    ${CheckRewardEN_3}    ${CheckRewardEN_4}    ${CheckRewardEN_5}
    ...    ${CheckRewardEN_6}    ${CheckRewardEN_7}    ${CheckRewardEN_8}    ${CheckRewardEN_9}    ${CheckQuestionReward_EN}    ${Opt_in_rewardYes_EN}
    ...    ${Opt_in_rewardNoEN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_neutral/EN/TC4/9_Reward_EN.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_EN    ${Opt_in_tel_EN1}    ${Opt_in_tel_EN2}
    Input Text    name=opt_in_tel    0899811114
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_neutral/EN/TC4/10_TelOptin_EN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_neutral/EN/TC4/11_Ending_EN.png
    Sleep    2s
    Close Browser
