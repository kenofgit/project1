*** Settings ***
Library           Selenium2Library
Resource          Variables.robot
Resource          Keywords.robot

*** Test Cases ***
Test Survey ResaleLeasing Positive_Resales_CN
    #Open Browser
    Open Browser    ${Link_ResaleLeasing_CN1}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    Chinese
    Sleep    2s
    Introduction_CN    ${Check_introMainCN1}    ${Check_introMainCN2}    ${Check_introMainCN3}    ${Check_introMainCN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/CN/TC1/1_Intro.png
    Click Element    ${btn_startCN}
    Q1_CSAT_CN    ${Check_QNCSAT_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/CN/TC1/2_CSAT.png
    Click Element    ${Score10}
    Sleep    2s
    OA_CSATPos_CN    ${Check_OACSATPos_CN}
    Input Text    name = csat_pos    有人來聯繫快速購買。
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/CN/TC1/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Att50_CN    ${Check_Attri50_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/CN/TC1/4_Att50.png
    Click Element    name=Answer_43_0_0_0    #ฝากขายฝากเช่า
    Sleep    2s
    Att51_CN    ${Check_Attri51_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/CN/TC1/5_Att51.png
    Click Element    css=div[name='page11_02'] label:nth-of-type(11)    #Click10
    Sleep    2s
    Att52_CN    ${Check_Attri52_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/CN/TC1/6_Att52.png
    Click Element    css=div[name='page11_03'] label:nth-of-type(11)    #Click10
    Sleep    2s
    Att53_CN    ${Check_Attri53_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/CN/TC1/7_Att53.png
    Click Element    css=div[name='page11_04'] label:nth-of-type(11)    #Click10
    Sleep    2s
    Att54_CN    ${Check_Attri54_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/CN/TC1/8_Att54.png
    Click Element    css=div[name='page11_05'] label:nth-of-type(11)    #Click10
    Sleep    2s
    IntroProfile_CN    ${Check_Intro_Profile_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/CN/TC1/9_Introprofile_CN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_CN    ${CheckRewardCN}    ${CheckRewardCN_1}    ${CheckRewardCN_2}    ${CheckRewardCN_3}    ${CheckRewardCN_4}    ${CheckRewardCN_5}
    ...    ${CheckRewardCN_6}    ${CheckRewardCN_7}    ${CheckRewardCN_8}    ${CheckRewardCN_9}    ${CheckQuestionReward_CN}    ${Opt_in_rewardYes_CN}
    ...    ${Opt_in_rewardNoCN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/CN/TC1/10_Reward_CN.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_CN    ${Opt_in_tel_CN1}
    Input Text    name=opt_in_tel    0623555551
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/CN/TC1/11_TelOptin_CN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/CN/TC1/12_Ending_CN.png
    Sleep    2s
    Close Browser

Test Survey ResaleLeasing Negative_Optin No_Resales_CN
    #Open Browser
    Open Browser    ${Link_ResaleLeasing_CN2}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    Chinese
    Sleep    2s
    Introduction_CN    ${Check_introMainCN1}    ${Check_introMainCN2}    ${Check_introMainCN3}    ${Check_introMainCN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Negative/CN/TC2/1_Intro.png
    Click Element    ${btn_startCN}
    Q1_CSAT_CN    ${Check_QNCSAT_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Negative/CN/TC2/2_CSAT.png
    Click Element    ${Score3}    #click3
    Sleep    2s
    OA_CSATNeg_CN    ${Check_OACSATNeg_CN}
    Input Text    name = csat_neg    銷售人員看起來不專業。
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Negative/CN/TC2/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_CN    ${Check_Optin_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Negative/CN/TC2/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_1
    Sleep    2s
    Att50_CN    ${Check_Attri50_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/CN/TC2/4_Att50.png
    Click Element    name=Answer_43_0_0_0    #ฝากขายฝากเช่า
    Sleep    2s
    Att51_CN    ${Check_Attri51_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/CN/TC2/5_Att51.png
    Click Element    css=div[name='page11_02'] label:nth-of-type(7)    #Click6
    Sleep    2s
    Att52_CN    ${Check_Attri52_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/CN/TC2/6_Att52.png
    Click Element    css=div[name='page11_03'] label:nth-of-type(6)    #Click5
    Sleep    2s
    Att53_CN    ${Check_Attri53_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/CN/TC2/7_Att53.png
    Click Element    css=div[name='page11_04'] .scalenormal > .ScaleValue > label:nth-of-type(3)    #Click2
    Sleep    2s
    Att54_CN    ${Check_Attri54_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/CN/TC2/8_Att54.png
    Click Element    css=div[name='page11_05'] label:nth-of-type(5)    #Click4
    Sleep    2s
    IntroProfile_CN    ${Check_Intro_Profile_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/CN/TC2/9_Introprofile_CN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_CN    ${CheckRewardCN}    ${CheckRewardCN_1}    ${CheckRewardCN_2}    ${CheckRewardCN_3}    ${CheckRewardCN_4}    ${CheckRewardCN_5}
    ...    ${CheckRewardCN_6}    ${CheckRewardCN_7}    ${CheckRewardCN_8}    ${CheckRewardCN_9}    ${CheckQuestionReward_CN}    ${Opt_in_rewardYes_CN}
    ...    ${Opt_in_rewardNoCN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Negative/CN/TC2/10_Reward_CN.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_CN    ${Opt_in_tel_CN1}
    Input Text    name=opt_in_tel    0623555552
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Negative/CN/TC2/11_TelOptin_CN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Negative/CN/TC2/12_Ending_CN.png
    Sleep    2s
    Close Browser

Test Survey ResaleLeasing Negative_Optin Yes_Leasing_CN
    #Open Browser
    Open Browser    ${Link_ResaleLeasing_CN3}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    Chinese
    Sleep    2s
    Introduction_CN    ${Check_introMainCN1}    ${Check_introMainCN2}    ${Check_introMainCN3}    ${Check_introMainCN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Negative/CN/TC3/1_Intro.png
    Click Element    ${btn_startCN}
    Q1_CSAT_CN    ${Check_QNCSAT_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Negative/CN/TC3/2_CSAT.png
    Click Element    ${Score3}
    Sleep    2s
    OA_CSATNeg_CN    ${Check_OACSATNeg_CN}
    Input Text    name = csat_neg    工作人員不熱情，沒有約會 必須始終聯繫員工
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Negative/CN/TC3/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_CN    ${Check_Optin_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Negative/CN/TC3/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_0
    Sleep    2s
    Att50_CN    ${Check_Attri50_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/CN/TC3/4_Att50.png
    Click Element    name=Answer_43_0_0_1    #หาซื้อ/หาเช่า
    Sleep    2s
    Att51_CN    ${Check_Attri51_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/CN/TC3/5_Att51.png
    Click Element    css=div[name='page11_02'] label:nth-of-type(5)    #Click4
    Sleep    2s
    Att52_CN    ${Check_Attri52_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/CN/TC3/6_Att52.png
    Click Element    css=div[name='page11_03'] label:nth-of-type(5)    #Click4
    Sleep    2s
    Att53_CN    ${Check_Attri53_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/CN/TC3/7_Att53.png
    Click Element    css=div[name='page11_04'] label:nth-of-type(5)    #Click4
    Sleep    2s
    Att55_CN    ${Check_Attri55_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/CN/TC3/8_Att55.png
    Click Element    css=div[name='page11_06'] label:nth-of-type(5)    #Click4
    Sleep    2s
    Att56_CN    ${Check_Attri56_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/CN/TC3/8_Att56.png
    Click Element    //*[@name='Answer_49_0_0_1']
    Sleep    2s
    IntroProfile_CN    ${Check_Intro_Profile_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/CN/TC1/9_Introprofile_CN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_CN    ${CheckRewardCN}    ${CheckRewardCN_1}    ${CheckRewardCN_2}    ${CheckRewardCN_3}    ${CheckRewardCN_4}    ${CheckRewardCN_5}
    ...    ${CheckRewardCN_6}    ${CheckRewardCN_7}    ${CheckRewardCN_8}    ${CheckRewardCN_9}    ${CheckQuestionReward_CN}    ${Opt_in_rewardYes_CN}
    ...    ${Opt_in_rewardNoCN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Negative/CN/TC3/10_Reward_CN.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_CN    ${Opt_in_tel_CN1}
    Input Text    name=opt_in_tel    0623555553
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Negative/CN/TC3/11_TelOptin_CN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Negative/CN/TC3/12_Ending_CN.png
    Sleep    2s
    Close Browser

Test Survey ResaleLeasing Neatral_Leasing_CN
    #Open Browser
    Open Browser    ${Link_ResaleLeasing_CN4}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    Chinese
    Sleep    2s
    Introduction_CN    ${Check_introMainCN1}    ${Check_introMainCN2}    ${Check_introMainCN3}    ${Check_introMainCN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Neatral/CN/TC4/1_Intro.png
    Click Element    ${btn_startCN}
    Q1_CSAT_CN    ${Check_QNCSAT_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Neatral/CN/TC4/2_CSAT.png
    Click Element    ${Score6}
    Sleep    2s
    Att50_CN    ${Check_Attri50_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/CN/TC3/4_Att50.png
    Click Element    name=Answer_43_0_0_1    #หาซื้อ/หาเช่า
    Sleep    2s
    Att51_CN    ${Check_Attri51_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/CN/TC3/5_Att51.png
    Click Element    css=div[name='page11_02'] label:nth-of-type(9)    #Click8
    Sleep    2s
    Att52_CN    ${Check_Attri52_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/CN/TC3/6_Att52.png
    Click Element    css=div[name='page11_03'] label:nth-of-type(9)    #Click8
    Sleep    2s
    Att53_CN    ${Check_Attri53_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/CN/TC3/7_Att53.png
    Click Element    css=div[name='page11_04'] label:nth-of-type(8)    #Click7
    Sleep    2s
    Att55_CN    ${Check_Attri55_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/CN/TC3/8_Att55.png
    Click Element    css=div[name='page11_06'] label:nth-of-type(8)    #Click7
    Sleep    2s
    Att56_CN    ${Check_Attri56_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/CN/TC3/8_Att56.png
    Click Element    //*[@name='Answer_49_0_0_0']
    Sleep    2s
    IntroProfile_CN    ${Check_Intro_Profile_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/CN/TC1/9_Introprofile_CN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_CN    ${CheckRewardCN}    ${CheckRewardCN_1}    ${CheckRewardCN_2}    ${CheckRewardCN_3}    ${CheckRewardCN_4}    ${CheckRewardCN_5}
    ...    ${CheckRewardCN_6}    ${CheckRewardCN_7}    ${CheckRewardCN_8}    ${CheckRewardCN_9}    ${CheckQuestionReward_CN}    ${Opt_in_rewardYes_CN}
    ...    ${Opt_in_rewardNoCN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Neatral/CN/TC4/10_Reward_CN.png
    Click Element    name=Answer_6_0_0_1
    Sleep    2s
    Tel Opt-in_CN    ${Opt_in_tel_CN1}
    Input Text    name=opt_in_tel    0623555554
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Neatral/CN/TC4/11_TelOptin_CN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Neatral/CN/TC4/12_Ending_CN.png
    Sleep    2s
    Close Browser
