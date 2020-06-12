*** Settings ***
Library           Selenium2Library
Resource          Variables.robot
Resource          Keywords.robot

*** Test Cases ***
Test Survey Tranfer Positive_CN
    #Open Browser
    Open Browser    ${Link_Tranfer_CN1}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    Chinese
    Sleep    2s
    Introduction_CN    ${Check_introMainCN1}    ${Check_introMainCN2}    ${Check_introMainCN3}    ${Check_introMainCN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/CN/TC1/1_Intro.png
    Click Element    ${btn_startCN}
    Sleep    2s
    Q1_CSAT_CN    ${Check_QNCSAT_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/CN/TC1/2_CSAT.png
    Click Element    ${Score9}
    Sleep    2s
    OA_CSATPos_CN    ${Check_OACSATPos_CN}
    Input Text    name = csat_pos    一切都好。
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/CN/TC1/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Att18_CN    ${Check_Attri18_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/CN/TC1/4_Att18.png
    Click Element    css=div[name='page8_01'] label:nth-of-type(10)    #Click9
    Sleep    2s
    Att19_CN    ${Check_Attri19_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/CN/TC1/5_Att19.png
    Click Element    name=Answer_24_0_0_0    #Clickใช่่
    Sleep    2s
    Att20_CN    ${Check_Attri20_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/CN/TC1/6_Att20.png
    Click Element    name=Answer_25_0_0_0    #Clickใช่่
    Sleep    2s
    Att21_CN    ${Check_Attri21_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/CN/TC1/7_Att21.png
    Click Element    css=div[name='page8_04'] label:nth-of-type(9)    #Click8
    Sleep    2s
    Att22_CN    ${Check_Attri22_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/CN/TC1/8_Att22.png
    Click Element    css=div[name='page8_05'] label:nth-of-type(9)    #Click8
    Sleep    2s
    IntroProfile_CN    ${Check_Intro_Profile_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/CN/TC1/9_Introprofile_CN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Adhoc1_CN    ${Check_Adhoc_CN}
    Sleep    2s
    Click Element    ${ChoiceA4_7}    #ท่องเที่ยวในประเทศ
    Maximize Browser Window
    Sleep    2s
    #(JavascriptExecutor) driver.executeScript("arguments[0].scrollIntoView();",//div[name='page4']//span[@class='btn next'] );
    Sleep    2s
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/CN/TC1/9_1_Adhoc_CN.png
    Click Element    xpath=//*[@class="icon fl-fl-chevron-right"]
    Sleep    2s
    Reward Condition_CN    ${CheckRewardCN}    ${CheckRewardCN_1}    ${CheckRewardCN_2}    ${CheckRewardCN_3}    ${CheckRewardCN_4}    ${CheckRewardCN_5}
    ...    ${CheckRewardCN_6}    ${CheckRewardCN_7}    ${CheckRewardCN_8}    ${CheckRewardCN_9}    ${CheckQuestionReward_CN}    ${Opt_in_rewardYes_CN}
    ...    ${Opt_in_rewardNoCN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/CN/TC1/10_Reward_CN.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_CN    ${Opt_in_tel_CN1}
    Input Text    name=opt_in_tel    0644444701
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/CN/TC1/11_TelOptin_CN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/CN/TC1/12_Ending_CN.png
    Sleep    2s
    Close Browser

Test Survey Tranfer Negative_Optin No_CN
    #Open Browser
    Open Browser    ${Link_Tranfer_CN2}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    Chinese
    Sleep    2s
    Introduction_CN    ${Check_introMainCN1}    ${Check_introMainCN2}    ${Check_introMainCN3}    ${Check_introMainCN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Negative/CN/TC2/1_Intro.png
    Click Element    ${btn_startCN}
    Sleep    2s
    Q1_CSAT_CN    ${Check_QNCSAT_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Negative/CN/TC2/2_CSAT.png
    Click Element    ${Score3}    #click3
    Sleep    2s
    OA_CSATNeg_CN    ${Check_OACSATNeg_CN}
    #Input Text    name = csat_neg    坏
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Negative/CN/TC2/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_CN    ${Check_Optin_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Negative/CN/TC2/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_1
    Sleep    2s
    Att18_CN    ${Check_Attri18_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/CN/TC1/4_Att18.png
    Click Element    css=div[name='page8_01'] .scalenormal > .ScaleValue > label:nth-of-type(3)    #Click2
    Sleep    2s
    Att19_CN    ${Check_Attri19_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/CN/TC1/5_Att19.png
    Click Element    name=Answer_24_0_0_1    #Clickไม่ใช่่
    Sleep    2s
    Att20_CN    ${Check_Attri20_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/CN/TC1/6_Att20.png
    Click Element    name=Answer_25_0_0_1    #Clickไม่ใช่่
    Sleep    2s
    Att21_CN    ${Check_Attri21_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/CN/TC1/7_Att21.png
    Click Element    css=div[name='page8_04'] .scalenormal > .ScaleValue > label:nth-of-type(3)    #Click2
    Sleep    2s
    Att22_CN    ${Check_Attri22_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/CN/TC1/8_Att22.png
    Click Element    css=div[name='page8_05'] .LayoutNodeUI.layout > .Scale .HEART11.NA    #Click N/A
    Sleep    2s
    IntroProfile_CN    ${Check_Intro_Profile_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/CN/TC1/9_Introprofile_CN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Maximize Browser Window
    Adhoc1_CN    ${Check_Adhoc_CN}
    Click Element    ${ChoiceA4_4}    #ช้อปปิ้ง
    Sleep    2s
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/CN/TC1/9_1_Adhoc_CN.png
    Click Element    xpath=//*[@class="icon fl-fl-chevron-right"]
    Sleep    2s
    Reward Condition_CN    ${CheckRewardCN}    ${CheckRewardCN_1}    ${CheckRewardCN_2}    ${CheckRewardCN_3}    ${CheckRewardCN_4}    ${CheckRewardCN_5}
    ...    ${CheckRewardCN_6}    ${CheckRewardCN_7}    ${CheckRewardCN_8}    ${CheckRewardCN_9}    ${CheckQuestionReward_CN}    ${Opt_in_rewardYes_CN}
    ...    ${Opt_in_rewardNoCN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Negative/CN/TC2/10_Reward_CN.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_CN    ${Opt_in_tel_CN1}
    Input Text    name=opt_in_tel    0644444702
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Negative/CN/TC2/11_TelOptin_CN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Negative/CN/TC2/12_Ending_CN.png
    Sleep    2s
    Close Browser

Test Survey Tranfer Negative_Optin Yes_CN
    #Open Browser
    Open Browser    ${Link_Tranfer_CN3}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    Chinese
    Sleep    2s
    Introduction_CN    ${Check_introMainCN1}    ${Check_introMainCN2}    ${Check_introMainCN3}    ${Check_introMainCN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Negative/CN/TC3/1_Intro.png
    Click Element    ${btn_startCN}
    Sleep    2s
    Q1_CSAT_CN    ${Check_QNCSAT_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Negative/CN/TC3/2_CSAT.png
    Click Element    ${Score4}
    Sleep    2s
    OA_CSATNeg_CN    ${Check_OACSATNeg_CN}
    #Input Text    name = csat_neg
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Negative/CN/TC3/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_CN    ${Check_Optin_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Negative/CN/TC3/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_0
    Sleep    2s
    Att18_CN    ${Check_Attri18_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/CN/TC1/4_Att18.png
    Click Element    css=div[name='page8_01'] .scalenormal > .ScaleValue > label:nth-of-type(3)    #Click2
    Sleep    2s
    Att19_CN    ${Check_Attri19_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/CN/TC1/5_Att19.png
    Click Element    name=Answer_24_0_0_0    #Clickใช่่
    Sleep    2s
    Att20_CN    ${Check_Attri20_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/CN/TC1/6_Att20.png
    Click Element    name=Answer_25_0_0_0    #Clickใช่่
    Sleep    2s
    Att21_CN    ${Check_Attri21_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/CN/TC1/7_Att21.png
    Click Element    css=div[name='page8_04'] .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click0
    Sleep    2s
    Att22_CN    ${Check_Attri22_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/CN/TC1/8_Att22.png
    Click Element    css=div[name='page8_05'] .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click0
    Sleep    2s
    IntroProfile_CN    ${Check_Intro_Profile_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/CN/TC1/9_Introprofile_CN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Maximize Browser Window
    Adhoc1_CN    ${Check_Adhoc_CN}
    Click Element    ${ChoiceA4_2}    #ดูหนังตามโรงภาพยนต์
    Sleep    2s
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/CN/TC1/9_1_Adhoc_CN.png
    Click Element    xpath=//*[@class="icon fl-fl-chevron-right"]
    Sleep    2s
    Reward Condition_CN    ${CheckRewardCN}    ${CheckRewardCN_1}    ${CheckRewardCN_2}    ${CheckRewardCN_3}    ${CheckRewardCN_4}    ${CheckRewardCN_5}
    ...    ${CheckRewardCN_6}    ${CheckRewardCN_7}    ${CheckRewardCN_8}    ${CheckRewardCN_9}    ${CheckQuestionReward_CN}    ${Opt_in_rewardYes_CN}
    ...    ${Opt_in_rewardNoCN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Negative/CN/TC3/10_Reward_CN.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_CN    ${Opt_in_tel_CN1}
    Input Text    name=opt_in_tel    0644444703
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Negative/CN/TC3/11_TelOptin_CN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Negative/CN/TC3/12_Ending_CN.png
    Sleep    2s
    Close Browser

Test Survey Tranfer Neatral_CN
    #Open Browser
    Open Browser    ${Link_Tranfer_CN4}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    Chinese
    Sleep    2s
    Introduction_CN    ${Check_introMainCN1}    ${Check_introMainCN2}    ${Check_introMainCN3}    ${Check_introMainCN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Neatral/CN/TC4/1_Intro.png
    Click Element    ${btn_startCN}
    Sleep    2s
    Q1_CSAT_CN    ${Check_QNCSAT_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Neatral/CN/TC4/2_CSAT.png
    Click Element    ${Score8}
    Sleep    2s
    Att18_CN    ${Check_Attri18_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/CN/TC1/4_Att18.png
    Click Element    css=div[name='page8_01'] label:nth-of-type(9)    #Click8
    Sleep    2s
    Att19_CN    ${Check_Attri19_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/CN/TC1/5_Att19.png
    Click Element    name=Answer_24_0_0_0    #Clickใช่่
    Sleep    2s
    Att20_CN    ${Check_Attri20_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/CN/TC1/6_Att20.png
    Click Element    name=Answer_25_0_0_0    #Clickใช่่
    Sleep    2s
    Att21_CN    ${Check_Attri21_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/CN/TC1/7_Att21.png
    Click Element    css=div[name='page8_04'] label:nth-of-type(9)    #Click8
    Sleep    2s
    Att22_CN    ${Check_Attri22_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/CN/TC1/8_Att22.png
    Click Element    css=div[name='page8_05'] label:nth-of-type(7)    #Click6
    Sleep    2s
    IntroProfile_CN    ${Check_Intro_Profile_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/CN/TC1/9_Introprofile_CN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Maximize Browser Window
    Adhoc1_CN    ${Check_Adhoc_CN}
    Click Element    ${ChoiceA4_10}    #ทำอาหาร
    Click Element    ${ChoiceA4_12}    #ปลูกต้นไม้,ตกแต่งบ้าน
    Sleep    2s
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/CN/TC1/9_1_Adhoc_CN.png
    Click Element    xpath=//*[@class="icon fl-fl-chevron-right"]
    Sleep    2s
    Reward Condition_CN    ${CheckRewardCN}    ${CheckRewardCN_1}    ${CheckRewardCN_2}    ${CheckRewardCN_3}    ${CheckRewardCN_4}    ${CheckRewardCN_5}
    ...    ${CheckRewardCN_6}    ${CheckRewardCN_7}    ${CheckRewardCN_8}    ${CheckRewardCN_9}    ${CheckQuestionReward_CN}    ${Opt_in_rewardYes_CN}
    ...    ${Opt_in_rewardNoCN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Neatral/CN/TC4/10_Reward_CN.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_CN    ${Opt_in_tel_CN1}
    Input Text    name=opt_in_tel    0644444704
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Neatral/CN/TC4/11_TelOptin_CN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Neatral/CN/TC4/12_Ending_CN.png
    Sleep    2s
    Close Browser
