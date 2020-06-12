*** Settings ***
Library           Selenium2Library
Resource          Variables.robot
Resource          Keywords.robot

*** Test Cases ***
Test Survey Tranfer Positive_EN
    #Open Browser
    Open Browser    ${Link_Tranfer_EN1}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    English
    Sleep    2s
    Introduction_EN    ${Check_introMainEN1}    ${Check_introMainEN2}    ${Check_introMainEN3}    ${Check_introMainEN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/EN/TC1/1_Intro.png
    Click Element    ${btn_startEN}
    Q1_CSAT_EN    ${Check_QNCSAT_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/EN/TC1/2_CSAT.png
    Click Element    ${Score10}
    Sleep    2s
    OA_CSATPos_EN    ${Check_OACSATPos_EN}
    Input Text    name = csat_pos    Everything is ok.
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/EN/TC1/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Att18_EN    ${Check_Attri18_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/EN/TC1/4_Att18.png
    Click Element    css=div[name='page8_01'] label:nth-of-type(11)    #Click10
    Sleep    2s
    Att19_EN    ${Check_Attri19_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/EN/TC1/5_Att19.png
    Click Element    name=Answer_24_0_0_0    #Clickใช่่
    Sleep    2s
    Att20_EN    ${Check_Attri20_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/EN/TC1/6_Att20.png
    Click Element    name=Answer_25_0_0_0    #Clickใช่่
    Sleep    2s
    Att21_EN    ${Check_Attri21_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/EN/TC1/7_Att21.png
    Click Element    css=div[name='page8_04'] label:nth-of-type(11)    #Click10
    Sleep    2s
    Att22_EN    ${Check_Attri22_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/EN/TC1/8_Att22.png
    Click Element    css=div[name='page8_05'] label:nth-of-type(11)    #Click10
    Sleep    2s
    IntroProfile_EN    ${Check_Intro_Profile_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/EN/TC1/9_Introprofile_EN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Maximize Browser Window
    Adhoc1_EN    ${Check_Adhoc_EN}
    Click Element    ${ChoiceA4_5}    #ออกกำลังกาย,ฟิสเนส
    Sleep    2s
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/EN/TC1/9_1_Adhoc_EN.png
    Click Element    xpath=//*[@class="icon fl-fl-chevron-right"]
    Sleep    2s
    Reward Condition_EN    ${CheckRewardEN}    ${CheckRewardEN_1}    ${CheckRewardEN_2}    ${CheckRewardEN_3}    ${CheckRewardEN_4}    ${CheckRewardEN_5}
    ...    ${CheckRewardEN_6}    ${CheckRewardEN_7}    ${CheckRewardEN_8}    ${CheckRewardEN_9}    ${CheckQuestionReward_EN}    ${Opt_in_rewardYes_EN}
    ...    ${Opt_in_rewardNoEN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/EN/TC1/10_Reward_EN.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_EN    ${Opt_in_tel_EN1}    ${Opt_in_tel_EN2}
    Input Text    name=opt_in_tel    0644444601
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/EN/TC1/11_TelOptin_EN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/EN/TC1/12_Ending_EN.png
    Sleep    2s
    Close Browser

Test Survey Tranfer Negative_Optin No_EN
    #Open Browser
    Open Browser    ${Link_Tranfer_EN2}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    English
    Sleep    2s
    Introduction_EN    ${Check_introMainEN1}    ${Check_introMainEN2}    ${Check_introMainEN3}    ${Check_introMainEN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Negative/EN/TC2/1_Intro.png
    Click Element    ${btn_startEN}
    Q1_CSAT_EN    ${Check_QNCSAT_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Negative/EN/TC2/2_CSAT.png
    Click Element    ${Score3}    #click3
    Sleep    2s
    OA_CSATNeg_EN    ${Check_OACSATNeg_EN}
    #Input Text    name = csat_neg    Document error Conclusion must go through 2 rounds
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Negative/EN/TC2/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_EN    ${Check_Optin_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Negative/EN/TC2/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_1
    Sleep    2s
    Att18_EN    ${Check_Attri18_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/EN/TC2/4_Att18.png
    Click Element    css=div[name='page8_01'] label:nth-of-type(5)    #Click4
    Sleep    2s
    Att19_EN    ${Check_Attri19_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/EN/TC2/5_Att19.png
    Click Element    name=Answer_24_0_0_1    #Clickไม่ใช่่
    Sleep    2s
    Att20_EN    ${Check_Attri20_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/EN/TC2/6_Att20.png
    Click Element    name=Answer_25_0_0_0    #Clickใช่่
    Sleep    2s
    Att21_EN    ${Check_Attri21_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/EN/TC2/7_Att21.png
    Click Element    css=div[name='page8_04'] .scalenormal > .ScaleValue > label:nth-of-type(4)    #Click3
    Sleep    2s
    Att22_EN    ${Check_Attri22_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/EN/TC2/8_Att22.png
    Click Element    css=div[name='page8_05'] .LayoutNodeUI.layout > .Scale .HEART11.NA    #Click N/A
    Sleep    2s
    IntroProfile_EN    ${Check_Intro_Profile_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/EN/TC2/9_Introprofile_EN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Maximize Browser Window
    Adhoc1_EN    ${Check_Adhoc_EN}
    Click Element    ${ChoiceA4_11}    #ดูคอนเสิร์ต,ละครเวที,งานศิลป์
    Sleep    2s
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/EN/TC2/9_1_Adhoc_EN.png
    Click Element    xpath=//*[@class="icon fl-fl-chevron-right"]
    Sleep    2s
    Reward Condition_EN    ${CheckRewardEN}    ${CheckRewardEN_1}    ${CheckRewardEN_2}    ${CheckRewardEN_3}    ${CheckRewardEN_4}    ${CheckRewardEN_5}
    ...    ${CheckRewardEN_6}    ${CheckRewardEN_7}    ${CheckRewardEN_8}    ${CheckRewardEN_9}    ${CheckQuestionReward_EN}    ${Opt_in_rewardYes_EN}
    ...    ${Opt_in_rewardNoEN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Negative/EN/TC2/10_Reward_EN.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_EN    ${Opt_in_tel_EN1}    ${Opt_in_tel_EN2}
    Input Text    name=opt_in_tel    0644444602
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Negative/EN/TC2/11_TelOptin_EN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Negative/EN/TC2/12_Ending_EN.png
    Sleep    2s
    Close Browser

Test Survey Tranfer Negative_Optin Yes_EN
    #Open Browser
    Open Browser    ${Link_Tranfer_EN3}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    English
    Sleep    2s
    Introduction_EN    ${Check_introMainEN1}    ${Check_introMainEN2}    ${Check_introMainEN3}    ${Check_introMainEN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Negative/EN/TC3/1_Intro.png
    Click Element    ${btn_startEN}
    Q1_CSAT_EN    ${Check_QNCSAT_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Negative/EN/TC3/2_CSAT.png
    Click Element    ${Score4}
    Sleep    2s
    OA_CSATNeg_EN    ${Check_OACSATNeg_EN}
    Input Text    name = csat_neg    There is no coordination to transfer at all. Must follow up on demand at all times. Not professional at all
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Negative/EN/TC3/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_EN    ${Check_Optin_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Negative/EN/TC3/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_0
    Sleep    2s
    Att18_EN    ${Check_Attri18_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/EN/TC3/4_Att18.png
    Click Element    css=div[name='page8_01'] .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click0
    Sleep    2s
    Att19_EN    ${Check_Attri19_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/EN/TC3/5_Att19.png
    Click Element    name=Answer_24_0_0_0    #Clickใช่่
    Sleep    2s
    Att20_EN    ${Check_Attri20_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/EN/TC3/6_Att20.png
    Click Element    name=Answer_25_0_0_0    #Clickใช่่
    Sleep    2s
    Att21_EN    ${Check_Attri21_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/EN/TC3/7_Att21.png
    Click Element    css=div[name='page8_04'] label:nth-of-type(4)    #Click 3
    Sleep    2s
    Att22_EN    ${Check_Attri22_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/EN/TC3/8_Att22.png
    Click Element    css=div[name='page8_05'] label:nth-of-type(10)    #Click9
    Sleep    2s
    IntroProfile_EN    ${Check_Intro_Profile_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/EN/TC3/9_Introprofile_EN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Maximize Browser Window
    Adhoc1_EN    ${Check_Adhoc_EN}
    Click Element    ${ChoiceA4_2}    #ดูหนังตามโรงภาพยนต์
    Click Element    ${ChoiceA4_6}    #นวดสปา
    Sleep    2s
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/EN/TC3/9_1_Adhoc_EN.png
    Click Element    xpath=//*[@class="icon fl-fl-chevron-right"]
    Sleep    2s
    Reward Condition_EN    ${CheckRewardEN}    ${CheckRewardEN_1}    ${CheckRewardEN_2}    ${CheckRewardEN_3}    ${CheckRewardEN_4}    ${CheckRewardEN_5}
    ...    ${CheckRewardEN_6}    ${CheckRewardEN_7}    ${CheckRewardEN_8}    ${CheckRewardEN_9}    ${CheckQuestionReward_EN}    ${Opt_in_rewardYes_EN}
    ...    ${Opt_in_rewardNoEN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Negative/EN/TC3/10_Reward_EN.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_EN    ${Opt_in_tel_EN1}    ${Opt_in_tel_EN2}
    Input Text    name=opt_in_tel    0644444603
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Negative/EN/TC3/11_TelOptin_EN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Negative/EN/TC3/12_Ending_EN.png
    Sleep    2s
    Close Browser

Test Survey Tranfer Neatral_EN
    #Open Browser
    Open Browser    ${Link_Tranfer_EN4}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    English
    Sleep    2s
    Introduction_EN    ${Check_introMainEN1}    ${Check_introMainEN2}    ${Check_introMainEN3}    ${Check_introMainEN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Neatral/EN/TC4/1_Intro.png
    Click Element    ${btn_startEN}
    Q1_CSAT_EN    ${Check_QNCSAT_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Neatral/EN/TC4/2_CSAT.png
    Click Element    ${Score8}
    Sleep    2s
    Att18_EN    ${Check_Attri18_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/EN/TC4/4_Att18.png
    Click Element    css=div[name='page8_01'] label:nth-of-type(9)    #Click8
    Sleep    2s
    Att19_EN    ${Check_Attri19_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/EN/TC4/5_Att19.png
    Click Element    name=Answer_24_0_0_0    #Clickใช่่
    Sleep    2s
    Att20_EN    ${Check_Attri20_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/EN/TC4/6_Att20.png
    Click Element    name=Answer_25_0_0_0    #Clickใช่่
    Sleep    2s
    Att21_EN    ${Check_Attri21_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/EN/TC4/7_Att21.png
    Click Element    css=div[name='page8_04'] label:nth-of-type(9)    #Click8
    Sleep    2s
    Att22_EN    ${Check_Attri22_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/EN/TC4/8_Att22.png
    Click Element    css=div[name='page8_05'] label:nth-of-type(7)    #Click6
    Sleep    2s
    IntroProfile_EN    ${Check_Intro_Profile_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/EN/TC4/9_Introprofile_EN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Maximize Browser Window
    Adhoc1_EN    ${Check_Adhoc_EN}
    Click Element    ${ChoiceA4_10}    #ทำอาหาร
    Click Element    ${ChoiceA4_12}    #ปลูกต้นไม้,ตกแต่งบ้าน
    Sleep    2s
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/EN/TC4/9_1_Adhoc_EN.png
    Click Element    xpath=//*[@class="icon fl-fl-chevron-right"]
    Sleep    2s
    Reward Condition_EN    ${CheckRewardEN}    ${CheckRewardEN_1}    ${CheckRewardEN_2}    ${CheckRewardEN_3}    ${CheckRewardEN_4}    ${CheckRewardEN_5}
    ...    ${CheckRewardEN_6}    ${CheckRewardEN_7}    ${CheckRewardEN_8}    ${CheckRewardEN_9}    ${CheckQuestionReward_EN}    ${Opt_in_rewardYes_EN}
    ...    ${Opt_in_rewardNoEN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Neatral/EN/TC4/10_Reward_EN.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_EN    ${Opt_in_tel_EN1}    ${Opt_in_tel_EN2}
    Input Text    name=opt_in_tel    0644444604
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Neatral/EN/TC4/11_TelOptin_EN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Neatral/EN/TC4/12_Ending_EN.png
    Sleep    2s
    Close Browser
