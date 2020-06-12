*** Settings ***
Library           Selenium2Library
Resource          Variables.robot
Resource          Keywords.robot

*** Test Cases ***
Test Survey Downpay Positive_CN
    #Open Browser
    Open Browser    ${Link_Downpay_CN1}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    Chinese
    Sleep    2s
    Introduction_CN    ${Check_introMainCN1}    ${Check_introMainCN2}    ${Check_introMainCN3}    ${Check_introMainCN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Positive/CN/TC1/1_Intro.png
    Click Element    ${btn_startCN}
    Q1_CSAT_CN    ${Check_QNCSAT_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Positive/CN/TC1/2_CSAT.png
    Click Element    //div[@name='page1']//div[@class='ScaleValue']/label[11]
    Sleep    2s
    OA_CSATPos_CN    ${Check_OACSATPos_CN}
    #Input Text    name = csat_pos    All OK
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Positive/CN/TC1/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Att10_CN    ${Check_Attri10_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Positive/CN/TC1/4_Att10.png
    Click Element    name=Answer_15_0_0_0
    Sleep    2s
    Att11_CN    ${Check_Attri11_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Positive/CN/TC1/5_Att11.png
    Click Element    name=Answer_16_0_0_0
    Sleep    2s
    Att41_CN    ${Check_Attri41_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Positive/CN/TC1/6_Att41.png
    Click Element    name=Answer_17_0_0_0
    Sleep    2s
    Att13_CN    ${Check_Attri13_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Positive/CN/TC1/7_Att13.png
    Click Element    name=Answer_18_0_0_0
    Sleep    3s
    IntroProfile_CN    ${Check_Intro_Profile_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/CN/TC1/8_Introprofile_CN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_CN    ${CheckRewardCN}    ${CheckRewardCN_1}    ${CheckRewardCN_2}    ${CheckRewardCN_3}    ${CheckRewardCN_4}    ${CheckRewardCN_5}
    ...    ${CheckRewardCN_6}    ${CheckRewardCN_7}    ${CheckRewardCN_8}    ${CheckRewardCN_9}    ${CheckQuestionReward_CN}    ${Opt_in_rewardYes_CN}
    ...    ${Opt_in_rewardNoCN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Positive/CN/TC1/9_Reward_CN.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_CN    ${Opt_in_tel_CN1}
    Input Text    name=opt_in_tel    0899811111
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Positive/CN/TC1/10_TelOptin_CN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Positive/CN/TC1/11_Ending_CN.png
    Sleep    2s
    Close Browser

Test Survey Downpay Negative Optin No_CN
    #Open Browser
    Open Browser    ${Link_Downpay_CN2}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    Chinese
    Sleep    2s
    Introduction_CN    ${Check_introMainCN1}    ${Check_introMainCN2}    ${Check_introMainCN3}    ${Check_introMainCN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/CN/TC2/1_Intro.png
    Click Element    ${btn_startCN}
    Sleep    2s
    Q1_CSAT_CN    ${Check_QNCSAT_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/CN/TC2/2_CSAT.png
    Click Element    ${Score5}
    Sleep    2s
    OA_CSATNeg_CN    ${Check_OACSATNeg_CN}
    Input Text    name = csat_neg    付款方便，但其餘的很糟糕一切都出了問題
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/CN/TC2/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_CN    ${Check_Optin_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/CN/TC2/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_1
    Sleep    2s
    Att10_CN    ${Check_Attri10_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/CN/TC2/4_Att10.png
    Click Element    name=Answer_15_0_0_0
    Sleep    2s
    Att11_CN    ${Check_Attri11_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/CN/TC2/5_Att11.png
    Click Element    name=Answer_16_0_0_1
    Sleep    2s
    Att41_CN    ${Check_Attri41_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/CN/TC2/6_Att41.png
    Click Element    name=Answer_17_0_0_1
    Sleep    2s
    Att13_CN    ${Check_Attri13_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/CN/TC2/7_Att13.png
    Click Element    name=Answer_18_0_0_1
    Sleep    2s
    IntroProfile_CN    ${Check_Intro_Profile_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/CN/TC2/8_Introprofile_CN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_CN    ${CheckRewardCN}    ${CheckRewardCN_1}    ${CheckRewardCN_2}    ${CheckRewardCN_3}    ${CheckRewardCN_4}    ${CheckRewardCN_5}
    ...    ${CheckRewardCN_6}    ${CheckRewardCN_7}    ${CheckRewardCN_8}    ${CheckRewardCN_9}    ${CheckQuestionReward_CN}    ${Opt_in_rewardYes_CN}
    ...    ${Opt_in_rewardNoCN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/CN/TC2/9_Reward_CN.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_CN    ${Opt_in_tel_CN1}
    Input Text    name=opt_in_tel    0899811112
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/CN/TC2/10_TelOptin_CN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/CN/TC2/11_Ending_CN.png
    Sleep    2s
    Close Browser

Test Survey Downpay Negative Optin Yes_CN
    #Open Browser
    Open Browser    ${Link_Downpay_CN3}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    Chinese
    Sleep    2s
    Introduction_CN    ${Check_introMainCN1}    ${Check_introMainCN2}    ${Check_introMainCN3}    ${Check_introMainCN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/CN/TC3/1_Intro.png
    Click Element    ${btn_startCN}
    Q1_CSAT_CN    ${Check_QNCSAT_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/CN/TC3/2_CSAT.png
    Click Element    ${Score4}
    Sleep    2s
    OA_CSATNeg_CN    ${Check_OACSATNeg_CN}
    Input Text    name = csat_neg    可憐，一切都推遲了，錯了。
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/CN/TC3/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_CN    ${Check_Optin_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/CN/TC3/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_1
    Sleep    2s
    Att10_CN    ${Check_Attri10_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/CN/TC3/4_Att10.png
    Click Element    name=Answer_15_0_0_1
    Sleep    2s
    Att11_CN    ${Check_Attri11_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/CN/TC3/5_Att11.png
    Click Element    name=Answer_16_0_0_1
    Sleep    2s
    Att41_CN    ${Check_Attri41_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/CN/TC3/6_Att41.png
    Click Element    name=Answer_17_0_0_1
    Sleep    2s
    Att13_CN    ${Check_Attri13_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/CN/TC3/7_Att13.png
    Click Element    name=Answer_18_0_0_1
    Sleep    2s
    IntroProfile_CN    ${Check_Intro_Profile_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/CN/TC3/8_Introprofile_CN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_CN    ${CheckRewardCN}    ${CheckRewardCN_1}    ${CheckRewardCN_2}    ${CheckRewardCN_3}    ${CheckRewardCN_4}    ${CheckRewardCN_5}
    ...    ${CheckRewardCN_6}    ${CheckRewardCN_7}    ${CheckRewardCN_8}    ${CheckRewardCN_9}    ${CheckQuestionReward_CN}    ${Opt_in_rewardYes_CN}
    ...    ${Opt_in_rewardNoCN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/CN/TC3/9_Reward_CN.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_CN    ${Opt_in_tel_CN1}
    Input Text    name=opt_in_tel    0899811112
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/CN/TC3/10_TelOptin_CN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/CN/TC3/11_Ending_CN.png
    Sleep    2s
    Close Browser

Test Survey Downpay Neature_CN
    #Open Browser
    Open Browser    ${Link_Downpay_CN4}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    Chinese
    Sleep    2s
    Introduction_CN    ${Check_introMainCN1}    ${Check_introMainCN2}    ${Check_introMainCN3}    ${Check_introMainCN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/CN/TC4/1_Intro.png
    Click Element    ${btn_startCN}
    Q1_CSAT_CN    ${Check_QNCSAT_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/CN/TC4/2_CSAT.png
    Click Element    ${Score6}
    Sleep    2s
    Att10_CN    ${Check_Attri10_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/CN/TC4/4_Att10.png
    Click Element    name=Answer_15_0_0_0
    Sleep    2s
    Att11_CN    ${Check_Attri11_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/CN/TC4/5_Att11.png
    Click Element    name=Answer_16_0_0_0
    Sleep    2s
    Att41_CN    ${Check_Attri41_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/CN/TC4/6_Att41.png
    Click Element    name=Answer_17_0_0_0
    Sleep    2s
    Att13_CN    ${Check_Attri13_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/CN/TC4/7_Att13.png
    Click Element    name=Answer_18_0_0_0
    Sleep    2s
    IntroProfile_CN    ${Check_Intro_Profile_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/CN/TC4/8_Introprofile_CN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_CN    ${CheckRewardCN}    ${CheckRewardCN_1}    ${CheckRewardCN_2}    ${CheckRewardCN_3}    ${CheckRewardCN_4}    ${CheckRewardCN_5}
    ...    ${CheckRewardCN_6}    ${CheckRewardCN_7}    ${CheckRewardCN_8}    ${CheckRewardCN_9}    ${CheckQuestionReward_CN}    ${Opt_in_rewardYes_CN}
    ...    ${Opt_in_rewardNoCN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/CN/TC4/9_Reward_CN.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_CN    ${Opt_in_tel_CN1}
    Input Text    name=opt_in_tel    0899811114
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/CN/TC4/10_TelOptin_CN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Downpay_Negative/CN/TC4/11_Ending_CN.png
    Sleep    2s
    Close Browser
