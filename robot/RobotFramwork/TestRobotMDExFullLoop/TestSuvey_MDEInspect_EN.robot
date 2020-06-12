*** Settings ***
Library           Selenium2Library
Resource          Variables.robot
Resource          Keywords.robot

*** Test Cases ***
Test Survey Inspection Positive_EN
    #Open Browser
    Open Browser    ${Link_Inspect_EN1}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    English
    Introduction_EN    ${Check_introMainEN1}    ${Check_introMainEN2}    ${Check_introMainEN3}    ${Check_introMainEN4}
    Sleep    2s
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/EN/TC1/1_Intro.png
    Click Element    ${btn_startEN}
    Sleep    2s
    Q1_CSAT_EN    ${Check_QNCSAT_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/EN/TC1/2_CSAT.png
    Click Element    //div[@name='page1']//div[@class='ScaleValue']/label[10]    #click9
    Sleep    2s
    OA_CSATPos_EN    ${Check_OACSATPos_EN}
    Input Text    name = csat_pos    Well Done
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/EN/TC1/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Att14_EN    ${Check_Attri14_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/EN/TC1/4_Att14.png
    Click Element    css=div[name='page7_01'] label:nth-of-type(11)    #click10
    Sleep    2s
    Att15_EN    ${Check_Attri15_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/EN/TC1/5_Att15.png
    Click Element    css=div[name='page7_02'] label:nth-of-type(11)    #click10
    Sleep    2s
    Att16_EN    ${Check_Attri16_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/EN/TC1/6_Att16.png
    Click Element    css=div[name='page7_03'] label:nth-of-type(11)    #click10
    Sleep    2s
    Att17_EN    ${Check_Attri17_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/EN/TC1/7_Att17.png
    Click Element    css=div[name='page7_04'] label:nth-of-type(11)    #click10
    Sleep    2s
    IntroProfile_EN    ${Check_Intro_Profile_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/EN/TC1/8_Introprofile_EN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_EN    ${CheckRewardEN}    ${CheckRewardEN_1}    ${CheckRewardEN_2}    ${CheckRewardEN_3}    ${CheckRewardEN_4}    ${CheckRewardEN_5}
    ...    ${CheckRewardEN_6}    ${CheckRewardEN_7}    ${CheckRewardEN_8}    ${CheckRewardEN_9}    ${CheckQuestionReward_EN}    ${Opt_in_rewardYes_EN}
    ...    ${Opt_in_rewardNoEN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/EN/TC1/9_Reward_EN.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_EN    ${Opt_in_tel_EN1}    ${Opt_in_tel_EN2}
    Input Text    name=opt_in_tel    0870000011
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/EN/TC1/10_TelOptin_EN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/EN/TC1/11_Ending_EN.png
    Sleep    2s
    Close Browser

Test Survey Inspection Negative Optin No_EN
    #Open Browser
    Open Browser    ${Link_Inspect_EN2}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    English
    Sleep    2s
    Introduction_EN    ${Check_introMainEN1}    ${Check_introMainEN2}    ${Check_introMainEN3}    ${Check_introMainEN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/EN/TC2/1_Intro.png
    Click Element    ${btn_startEN}
    Sleep    2s
    Q1_CSAT_EN    ${Check_QNCSAT_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/EN/TC2/2_CSAT.png
    Click Element    //div[@name='page1']//div[@class='ScaleValue']/label[1]    #click0
    Sleep    2s
    OA_CSATNeg_EN    ${Check_OACSATNeg_EN}
    Input Text    name = csat_neg    The room is terrible, so many defect can be corrected and more stressed out.
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/EN/TC2/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_EN    ${Check_Optin_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/EN/TC2/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_1
    Sleep    2s
    Att14_EN    ${Check_Attri14_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/EN/TC1/4_Att14.png
    Click Element    css=div[name='page7_01'] .scalenormal > .ScaleValue > label:nth-of-type(2)    #click 1
    Sleep    2s
    Att15_EN    ${Check_Attri15_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/EN/TC1/5_Att15.png
    Click Element    css=div[name='page7_02'] .scalenormal > .ScaleValue > label:nth-of-type(2)    #click 1
    Sleep    2s
    Att16_EN    ${Check_Attri16_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/EN/TC1/6_Att16.png
    Click Element    css=div[name='page7_03'] .scalenormal > .ScaleValue > label:nth-of-type(2)    #click 1
    Sleep    2s
    Att17_EN    ${Check_Attri17_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/EN/TC1/7_Att17.png
    Click Element    css=div[name='page7_04'] .scalenormal > .ScaleValue > label:nth-of-type(2)    #click 1
    Sleep    2s
    IntroProfile_EN    ${Check_Intro_Profile_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/EN/TC2/8_Introprofile_EN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_EN    ${CheckRewardEN}    ${CheckRewardEN_1}    ${CheckRewardEN_2}    ${CheckRewardEN_3}    ${CheckRewardEN_4}    ${CheckRewardEN_5}
    ...    ${CheckRewardEN_6}    ${CheckRewardEN_7}    ${CheckRewardEN_8}    ${CheckRewardEN_9}    ${CheckQuestionReward_EN}    ${Opt_in_rewardYes_EN}
    ...    ${Opt_in_rewardNoEN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/EN/TC2/9_Reward_EN.png
    Click Element    name=Answer_6_0_0_1
    Sleep    2s
    #Tel Opt-in_EN    ${Opt_in_tel_EN1}    ${Opt_in_tel_EN2}
    #Input Text    name=opt_in_tel    0870000012
    #Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/EN/TC2/10_TelOptin_EN.png
    #Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/EN/TC2/11_Ending_EN.png
    Sleep    2s
    Close Browser

Test Survey Inspection Negative Optin Yes_EN
    #Open Browser
    Open Browser    ${Link_Inspect_EN3}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    English
    Sleep    2s
    Introduction_EN    ${Check_introMainEN1}    ${Check_introMainEN2}    ${Check_introMainEN3}    ${Check_introMainEN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/EN/TC3/1_Intro.png
    Click Element    ${btn_startEN}
    Sleep    2s
    Q1_CSAT_EN    ${Check_QNCSAT_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/EN/TC3/2_CSAT.png
    Click Element    //div[@name='page1']//div[@class='ScaleValue']/label[2]    #Click1
    Sleep    2s
    OA_CSATNeg_EN    ${Check_OACSATNeg_EN}
    Input Text    name = csat_neg    Very disappointed
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/EN/TC3/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_EN    ${Check_Optin_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/EN/TC3/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_0
    Sleep    2s
    Att14_EN    ${Check_Attri14_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/EN/TC1/4_Att14.png
    Click Element    css=div[name='page7_01'] .scalenormal > .ScaleValue > label:nth-of-type(4)    #click 3
    Sleep    2s
    Att15_EN    ${Check_Attri15_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/EN/TC1/5_Att15.png
    Click Element    css=div[name='page7_02'] .scalenormal > .ScaleValue > label:nth-of-type(5)    #click 4
    Sleep    2s
    Att16_EN    ${Check_Attri16_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/EN/TC1/6_Att16.png
    Click Element    css=div[name='page7_03'] .scalenormal > .ScaleValue > label:nth-of-type(3)    #click 2
    Sleep    2s
    Att17_EN    ${Check_Attri17_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/EN/TC1/7_Att17.png
    Click Element    css=div[name='page7_04'] .scalenormal > .ScaleValue > label:nth-of-type(2)    #click 1
    Sleep    2s
    IntroProfile_EN    ${Check_Intro_Profile_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/EN/TC3/8_Introprofile_EN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_EN    ${CheckRewardEN}    ${CheckRewardEN_1}    ${CheckRewardEN_2}    ${CheckRewardEN_3}    ${CheckRewardEN_4}    ${CheckRewardEN_5}
    ...    ${CheckRewardEN_6}    ${CheckRewardEN_7}    ${CheckRewardEN_8}    ${CheckRewardEN_9}    ${CheckQuestionReward_EN}    ${Opt_in_rewardYes_EN}
    ...    ${Opt_in_rewardNoEN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/EN/TC3/9_Reward_EN.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_EN    ${Opt_in_tel_EN1}    ${Opt_in_tel_EN2}
    Input Text    name=opt_in_tel    0870000013
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/EN/TC3/10_TelOptin_EN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Negative/EN/TC3/11_Ending_EN.png
    Sleep    2s
    Close Browser

Test Survey Inspection Neutral_EN
    #Open Browser
    Open Browser    ${Link_Inspect_EN4}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    English
    Sleep    2s
    Introduction_EN    ${Check_introMainEN1}    ${Check_introMainEN2}    ${Check_introMainEN3}    ${Check_introMainEN4}
    Click Element    ${btn_startEN}
    Sleep    2s
    Q1_CSAT_EN    ${Check_QNCSAT_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_neutral/EN/TC4/2_CSAT.png
    Click Element    ${Score6}
    Sleep    2s
    Att14_EN    ${Check_Attri14_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/EN/TC1/4_Att14.png
    Click Element    css=div[name='page7_01'] label:nth-of-type(9)    #click 8
    Sleep    2s
    Att15_EN    ${Check_Attri15_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/EN/TC1/5_Att15.png
    Click Element    css=div[name='page7_02'] label:nth-of-type(8)    #click 7
    Sleep    2s
    Att16_EN    ${Check_Attri16_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/EN/TC1/6_Att16.png
    Click Element    css=div[name='page7_03'] label:nth-of-type(8)    #click 7
    Sleep    2s
    Att17_EN    ${Check_Attri17_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_Positive/EN/TC1/7_Att17.png
    Click Element    css=div[name='page7_04'] label:nth-of-type(8)    #click 7
    Sleep    2s
    IntroProfile_EN    ${Check_Intro_Profile_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_neutral/EN/TC4/8_Introprofile_EN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_EN    ${CheckRewardEN}    ${CheckRewardEN_1}    ${CheckRewardEN_2}    ${CheckRewardEN_3}    ${CheckRewardEN_4}    ${CheckRewardEN_5}
    ...    ${CheckRewardEN_6}    ${CheckRewardEN_7}    ${CheckRewardEN_8}    ${CheckRewardEN_9}    ${CheckQuestionReward_EN}    ${Opt_in_rewardYes_EN}
    ...    ${Opt_in_rewardNoEN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_neutral/EN/TC4/9_Reward_EN.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_EN    ${Opt_in_tel_EN1}    ${Opt_in_tel_EN2}
    Input Text    name=opt_in_tel    0870000014
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_neutral/EN/TC4/10_TelOptin_EN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Inspection_neutral/EN/TC4/11_Ending_EN.png
    Sleep    2s
    Close Browser
