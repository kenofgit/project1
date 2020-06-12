*** Settings ***
Library           Selenium2Library
Resource          Variables.robot
Resource          Keywords.robot

*** Test Cases ***
Test Survey ResaleLeasing Positive_Leasing_EN
    #Open Browser
    Open Browser    ${Link_ResaleLeasing_EN1}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    English
    Sleep    2s
    Introduction_EN    ${Check_introMainEN1}    ${Check_introMainEN2}    ${Check_introMainEN3}    ${Check_introMainEN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/EN/TC1/1_Intro.png
    Click Element    ${btn_startEN}
    Q1_CSAT_EN    ${Check_QNCSAT_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/EN/TC1/2_CSAT.png
    Click Element    ${Score9}
    Sleep    2s
    OA_CSATPos_EN    ${Check_OACSATPos_EN}
    Input Text    name = csat_pos    The staff provided complete information. Clearly tell the advantages clearly.
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/EN/TC1/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Att50_EN    ${Check_Attri50_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/EN/TC1/4_Att50.png
    Click Element    name=Answer_43_0_0_1    #หาซื้อ/หาเช่า
    Sleep    2s
    Att51_EN    ${Check_Attri51_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/EN/TC1/5_Att51.png
    Click Element    css=div[name='page11_02'] label:nth-of-type(10)    #Click9
    Sleep    2s
    Att52_EN    ${Check_Attri52_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/EN/TC1/6_Att52.png
    Click Element    css=div[name='page11_03'] label:nth-of-type(10)    #Click9
    Sleep    2s
    Att53_EN    ${Check_Attri53_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/EN/TC1/7_Att53.png
    Click Element    css=div[name='page11_04'] label:nth-of-type(11)    #Click10
    Sleep    2s
    Att55_EN    ${Check_Attri55_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/EN/TC1/8_Att55.png
    Click Element    css=div[name='page11_06'] label:nth-of-type(9)    #Click8
    Sleep    2s
    Att56_EN    ${Check_Attri56_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/EN/TC1/8_Att56.png
    Click Element    //*[@name='Answer_49_0_0_0']
    Sleep    2s
    IntroProfile_EN    ${Check_Intro_Profile_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/EN/TC1/9_Introprofile_EN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_EN    ${CheckRewardEN}    ${CheckRewardEN_1}    ${CheckRewardEN_2}    ${CheckRewardEN_3}    ${CheckRewardEN_4}    ${CheckRewardEN_5}
    ...    ${CheckRewardEN_6}    ${CheckRewardEN_7}    ${CheckRewardEN_8}    ${CheckRewardEN_9}    ${CheckQuestionReward_EN}    ${Opt_in_rewardYes_EN}
    ...    ${Opt_in_rewardNoEN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/EN/TC1/10_Reward_EN.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_EN    ${Opt_in_tel_EN1}    ${Opt_in_tel_EN2}
    Input Text    name=opt_in_tel    0613555551
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/EN/TC1/11_TelOptin_EN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/EN/TC1/12_Ending_EN.png
    Sleep    2s
    Close Browser

Test Survey ResaleLeasing Negative_Optin No_Leasing_EN
    #Open Browser
    Open Browser    ${Link_ResaleLeasing_EN2}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    English
    Sleep    2s
    Introduction_EN    ${Check_introMainEN1}    ${Check_introMainEN2}    ${Check_introMainEN3}    ${Check_introMainEN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Negative/EN/TC2/1_Intro.png
    Click Element    ${btn_startEN}
    Q1_CSAT_EN    ${Check_QNCSAT_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Negative/EN/TC2/2_CSAT.png
    Click Element    ${Score2}    #click2
    Sleep    2s
    OA_CSATNeg_EN    ${Check_OACSATNeg_EN}
    Input Text    name = csat_neg    The staff did not answer the question clearly.
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Negative/EN/TC2/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_EN    ${Check_Optin_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Negative/EN/TC2/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_1
    Sleep    2s
    Att50_EN    ${Check_Attri50_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/EN/TC2/4_Att50.png
    Click Element    name=Answer_43_0_0_1    #หาซื้อ/หาเช่า
    Sleep    2s
    Att51_EN    ${Check_Attri51_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/EN/TC2/5_Att51.png
    Click Element    css=div[name='page11_02'] label:nth-of-type(4)    #Click3
    Sleep    2s
    Att52_EN    ${Check_Attri52_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/EN/TC2/6_Att52.png
    Click Element    css=div[name='page11_03'] label:nth-of-type(5)    #Click4
    Sleep    2s
    Att53_EN    ${Check_Attri53_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/EN/TC2/7_Att53.png
    Click Element    css=div[name='page11_04'] label:nth-of-type(4)    #Click3
    Sleep    2s
    Att55_EN    ${Check_Attri55_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/EN/TC1/8_Att55.png
    Click Element    css=div[name='page11_06'] .scalenormal > .ScaleValue > label:nth-of-type(3)    #Click2
    Sleep    2s
    Att56_EN    ${Check_Attri56_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/EN/TC1/8_Att56.png
    Click Element    //*[@name='Answer_49_0_0_1']
    Sleep    2s
    IntroProfile_EN    ${Check_Intro_Profile_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/EN/TC2/9_Introprofile_EN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_EN    ${CheckRewardEN}    ${CheckRewardEN_1}    ${CheckRewardEN_2}    ${CheckRewardEN_3}    ${CheckRewardEN_4}    ${CheckRewardEN_5}
    ...    ${CheckRewardEN_6}    ${CheckRewardEN_7}    ${CheckRewardEN_8}    ${CheckRewardEN_9}    ${CheckQuestionReward_EN}    ${Opt_in_rewardYes_EN}
    ...    ${Opt_in_rewardNoEN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Negative/EN/TC2/10_Reward_EN.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_EN    ${Opt_in_tel_EN1}    ${Opt_in_tel_EN2}
    Input Text    name=opt_in_tel    0623555552
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Negative/EN/TC2/11_TelOptin_EN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Negative/EN/TC2/12_Ending_EN.png
    Sleep    2s
    Close Browser

Test Survey ResaleLeasing Negative_Optin Yes_Resale_EN
    #Open Browser
    Open Browser    ${Link_ResaleLeasing_EN3}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    English
    Sleep    2s
    Introduction_EN    ${Check_introMainEN1}    ${Check_introMainEN2}    ${Check_introMainEN3}    ${Check_introMainEN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Negative/EN/TC3/1_Intro.png
    Click Element    ${btn_startEN}
    Q1_CSAT_EN    ${Check_QNCSAT_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Negative/EN/TC3/2_CSAT.png
    Click Element    //div[@name='page1']//div[@class='ScaleValue']/label[1]    #click0
    Sleep    2s
    OA_CSATNeg_EN    ${Check_OACSATNeg_EN}
    #Input Text    name = csat_neg
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Negative/EN/TC3/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_EN    ${Check_Optin_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Negative/EN/TC3/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_0
    Sleep    2s
    Att50_EN    ${Check_Attri50_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/EN/TC3/4_Att50.png
    Click Element    name=Answer_43_0_0_0    #ฝากซื้อ/ฝากเช่า
    Sleep    2s
    Att51_EN    ${Check_Attri51_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/EN/TC3/5_Att51.png
    Click Element    css=div[name='page11_02'] .scalenormal > .ScaleValue > label:nth-of-type(2)    #Click1
    Sleep    2s
    Att52_EN    ${Check_Attri52_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/EN/TC3/6_Att52.png
    Click Element    css=div[name='page11_03'] .scalenormal > .ScaleValue > label:nth-of-type(2)    #Click1
    Sleep    2s
    Att53_EN    ${Check_Attri53_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/EN/TC3/7_Att53.png
    Click Element    css=div[name='page11_04'] .scalenormal > .ScaleValue > label:nth-of-type(3)    #Click2
    Sleep    2s
    Att54_EN    ${Check_Attri54_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/EN/TC3/8_Att54.png
    Click Element    css=div[name='page11_05'] .scalenormal > .ScaleValue > label:nth-of-type(2)    #Click1
    Sleep    2s
    IntroProfile_EN    ${Check_Intro_Profile_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/EN/TC1/9_Introprofile_EN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_EN    ${CheckRewardEN}    ${CheckRewardEN_1}    ${CheckRewardEN_2}    ${CheckRewardEN_3}    ${CheckRewardEN_4}    ${CheckRewardEN_5}
    ...    ${CheckRewardEN_6}    ${CheckRewardEN_7}    ${CheckRewardEN_8}    ${CheckRewardEN_9}    ${CheckQuestionReward_EN}    ${Opt_in_rewardYes_EN}
    ...    ${Opt_in_rewardNoEN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Negative/EN/TC3/10_Reward_EN.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_EN    ${Opt_in_tel_EN1}    ${Opt_in_tel_EN2}
    Input Text    name=opt_in_tel    0613555553
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Negative/EN/TC3/11_TelOptin_EN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Negative/EN/TC3/12_Ending_EN.png
    Sleep    2s
    Close Browser

Test Survey ResaleLeasing Neatral_Resale_EN
    #Open Browser
    Open Browser    ${Link_ResaleLeasing_EN4}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    English
    Sleep    2s
    Introduction_EN    ${Check_introMainEN1}    ${Check_introMainEN2}    ${Check_introMainEN3}    ${Check_introMainEN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Neatral/EN/TC4/1_Intro.png
    Click Element    ${btn_startEN}
    Q1_CSAT_EN    ${Check_QNCSAT_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Neatral/EN/TC4/2_CSAT.png
    Click Element    ${Score7}
    Sleep    2s
    Att50_EN    ${Check_Attri50_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/EN/TC3/4_Att50.png
    Click Element    name=Answer_43_0_0_0    #ฝากซื้อ/ฝากเช่า
    Sleep    2s
    Att51_EN    ${Check_Attri51_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/EN/TC3/5_Att51.png
    Click Element    css=div[name='page11_02'] label:nth-of-type(7)    #Click6
    Sleep    2s
    Att52_EN    ${Check_Attri52_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/EN/TC3/6_Att52.png
    Click Element    css=div[name='page11_03'] label:nth-of-type(6)    #Click5
    Sleep    2s
    Att53_EN    ${Check_Attri53_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/EN/TC3/7_Att53.png
    Click Element    css=div[name='page11_04'] label:nth-of-type(8)    #Click7
    Sleep    2s
    Att54_EN    ${Check_Attri54_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/EN/TC3/8_Att54.png
    Click Element    css=div[name='page11_05'] label:nth-of-type(6)    #Click5
    Sleep    2s
    IntroProfile_EN    ${Check_Intro_Profile_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/EN/TC1/9_Introprofile_EN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_EN    ${CheckRewardEN}    ${CheckRewardEN_1}    ${CheckRewardEN_2}    ${CheckRewardEN_3}    ${CheckRewardEN_4}    ${CheckRewardEN_5}
    ...    ${CheckRewardEN_6}    ${CheckRewardEN_7}    ${CheckRewardEN_8}    ${CheckRewardEN_9}    ${CheckQuestionReward_EN}    ${Opt_in_rewardYes_EN}
    ...    ${Opt_in_rewardNoEN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Neatral/EN/TC4/10_Reward_EN.png
    Click Element    name=Answer_6_0_0_1
    Sleep    2s
    Tel Opt-in_EN    ${Opt_in_tel_EN1}    ${Opt_in_tel_EN2}
    Input Text    name=opt_in_tel    0613555554
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Neatral/EN/TC4/11_TelOptin_EN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Neatral/EN/TC4/12_Ending_EN.png
    Sleep    2s
    Close Browser
