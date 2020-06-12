*** Settings ***
Library           Selenium2Library
Resource          Variables.robot
Resource          Keywords.robot

*** Test Cases ***
Test Survey Tranfer Positive_TH
    #Open Browser
    Open Browser    ${Link_Tranfer_TH1}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}    ${Check_introMainTH2}    ${Check_introMainTH3}    ${Check_introMainTH4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/TH/TC1/1_Intro.png
    Click Element    ${btn_startTH}
    Q1_CSAT_TH    ${Check_QNCSAT_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/TH/TC1/2_CSAT.png
    Click Element    ${Score9}
    Sleep    2s
    OA_CSATPos_TH    ${Check_OACSATPos_TH}
    Input Text    name = csat_pos    การนัดหมายประสานงานดี โอนเรียบร้อยดูแลดีชอบมาก
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/TH/TC1/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Att18_TH    ${Check_Attri18_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/TH/TC1/4_Att18.png
    Click Element    css=div[name='page8_01'] label:nth-of-type(9)    #Click8
    Sleep    2s
    Att19_TH    ${Check_Attri19_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/TH/TC1/5_Att19.png
    Click Element    name=Answer_24_0_0_0    #Clickใช่่
    Sleep    2s
    Att20_TH    ${Check_Attri20_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/TH/TC1/6_Att20.png
    Click Element    name=Answer_25_0_0_0    #Clickใช่่
    Sleep    2s
    Att21_TH    ${Check_Attri21_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/TH/TC1/7_Att21.png
    Click Element    css=div[name='page8_04'] label:nth-of-type(11)    #Click10
    Sleep    2s
    Att22_TH    ${Check_Attri22_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/TH/TC1/8_Att22.png
    Click Element    css=div[name='page8_05'] label:nth-of-type(11)    #Click10
    Sleep    2s
    IntroProfile_TH    ${Check_Intro_Profile_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/TH/TC1/9_Introprofile_th.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Adhoc1_TH    ${Check_Adhoc_TH}
    Click Element    ${ChoiceA4_12}    #ปลูกต้นไม้,ตกแต่งบ้าน
    Click Element    ${ChoiceA4_13}    #Co- working space,อ่านหนังสือ
    Sleep    2s
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/TH/TC1/9_1_Adhoc_th.png
    Click Element    xpath=//*[@class="icon fl-fl-chevron-right"]
    Sleep    2s
    Reward Condition_TH    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward_TH}    ${Opt_in_rewardYes_TH}
    ...    ${Opt_in_rewardNoTH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/TH/TC1/10_Reward_th.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_TH    ${Opt_in_tel_TH1}    ${Opt_in_tel_TH2}
    Input Text    name=opt_in_tel    0644444501
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/TH/TC1/11_TelOptin_th.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/TH/TC1/12_Ending_th.png
    Sleep    2s
    Close Browser

Test Survey Tranfer Negative_Optin No_TH
    #Open Browser
    Open Browser    ${Link_Tranfer_TH2}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}    ${Check_introMainTH2}    ${Check_introMainTH3}    ${Check_introMainTH4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Negative/TH/TC2/1_Intro.png
    Click Element    ${btn_startTH}
    Q1_CSAT_TH    ${Check_QNCSAT_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Negative/TH/TC2/2_CSAT.png
    Click Element    ${Score4}    #click4
    Sleep    2s
    OA_CSATNeg_TH    ${Check_OACSATNeg_TH}
    #Input Text    name = csat_neg    มารยาทพนักงานแย่มาก มาโอนห้องทำหน้าเยียดเหมือนมาขอฟรีๆ ห่วยแตก อบรมพนักงานให้มากกว่านี้หน่อย
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Negative/TH/TC2/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_TH    ${Check_Optin_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Negative/TH/TC2/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_1
    Sleep    2s
    Att18_TH    ${Check_Attri18_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/TH/TC2/4_Att18.png
    Click Element    css=div[name='page8_01'] label:nth-of-type(9)    #Click8
    Sleep    2s
    Att19_TH    ${Check_Attri19_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/TH/TC2/5_Att19.png
    Click Element    name=Answer_24_0_0_0    #Clickใช่่
    Sleep    2s
    Att20_TH    ${Check_Attri20_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/TH/TC2/6_Att20.png
    Click Element    name=Answer_25_0_0_0    #Clickใช่่
    Sleep    2s
    Att21_TH    ${Check_Attri21_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/TH/TC2/7_Att21.png
    Click Element    css=div[name='page8_04'] .scalenormal > .ScaleValue > label:nth-of-type(3)    #Click2
    Sleep    2s
    Att22_TH    ${Check_Attri22_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/TH/TC2/8_Att22.png
    Click Element    css=div[name='page8_05'] label:nth-of-type(6)    #Click5
    Sleep    2s
    IntroProfile_TH    ${Check_Intro_Profile_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/TH/TC2/9_Introprofile_th.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Adhoc1_TH    ${Check_Adhoc_TH}
    Click Element    ${ChoiceA4_1}    #ใช้เวลากับสัตว์เลี้ยง
    Click Element    ${ChoiceA4_6}    #นวดสปา
    Sleep    2s
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/TH/TC2/9_1_Adhoc_th.png
    Click Element    xpath=//*[@class="icon fl-fl-chevron-right"]
    Sleep    2s
    Reward Condition_TH    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward_TH}    ${Opt_in_rewardYes_TH}
    ...    ${Opt_in_rewardNoTH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Negative/TH/TC2/10_Reward_th.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_TH    ${Opt_in_tel_TH1}    ${Opt_in_tel_TH2}
    Input Text    name=opt_in_tel    0644444502
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Negative/TH/TC2/11_TelOptin_th.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Negative/TH/TC2/12_Ending_th.png
    Sleep    2s
    Close Browser

Test Survey Tranfer Negative_Optin Yes_TH
    #Open Browser
    Open Browser    ${Link_Tranfer_TH3}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}    ${Check_introMainTH2}    ${Check_introMainTH3}    ${Check_introMainTH4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Negative/TH/TC3/1_Intro.png
    Click Element    ${btn_startTH}
    Q1_CSAT_TH    ${Check_QNCSAT_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Negative/TH/TC3/2_CSAT.png
    Click Element    ${Score4}
    Sleep    2s
    OA_CSATNeg_TH    ${Check_OACSATNeg_TH}
    Input Text    name = csat_neg    ของแถมไม่ครบถ้วน พยายามบ่ายเบี่ยง ควรหาอะไรมาชดเชยให้ด้วย
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Negative/TH/TC3/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_TH    ${Check_Optin_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Negative/TH/TC3/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_0
    Sleep    2s
    Att18_TH    ${Check_Attri18_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/TH/TC3/4_Att18.png
    Click Element    css=div[name='page8_01'] label:nth-of-type(5)    #Click4
    Sleep    2s
    Att19_TH    ${Check_Attri19_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/TH/TC3/5_Att19.png
    Click Element    name=Answer_24_0_0_1    #Clickไม่ใช่่
    Sleep    2s
    Att20_TH    ${Check_Attri20_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/TH/TC3/6_Att20.png
    Click Element    name=Answer_25_0_0_1    #Clickไม่ใช่่
    Sleep    2s
    Att21_TH    ${Check_Attri21_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/TH/TC3/7_Att21.png
    Click Element    css=div[name='page8_04'] label:nth-of-type(6)    #Click5
    Sleep    2s
    Att22_TH    ${Check_Attri22_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/TH/TC3/8_Att22.png
    Click Element    css=div[name='page8_05'] label:nth-of-type(10)    #Click9
    Sleep    2s
    IntroProfile_TH    ${Check_Intro_Profile_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/TH/TC3/9_Introprofile_th.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Adhoc1_TH    ${Check_Adhoc_TH}
    Click Element    ${ChoiceA4_9}    #ถ่ายรูป,นั่งร้านกาแฟ
    Click Element    ${ChoiceA4_6}    #นวดสปา
    Sleep    2s
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/TH/TC3/9_1_Adhoc_th.png
    Click Element    xpath=//*[@class="icon fl-fl-chevron-right"]
    Sleep    2s
    Reward Condition_TH    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward_TH}    ${Opt_in_rewardYes_TH}
    ...    ${Opt_in_rewardNoTH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Negative/TH/TC3/10_Reward_th.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_TH    ${Opt_in_tel_TH1}    ${Opt_in_tel_TH2}
    Input Text    name=opt_in_tel    0644444503
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Negative/TH/TC3/11_TelOptin_th.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Negative/TH/TC3/12_Ending_th.png
    Sleep    2s
    Close Browser

Test Survey Tranfer Neatral_TH
    #Open Browser
    Open Browser    ${Link_Tranfer_TH4}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}    ${Check_introMainTH2}    ${Check_introMainTH3}    ${Check_introMainTH4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Neatral/TH/TC4/1_Intro.png
    Click Element    ${btn_startTH}
    Q1_CSAT_TH    ${Check_QNCSAT_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Neatral/TH/TC4/2_CSAT.png
    Click Element    ${Score6}
    Sleep    2s
    Att18_TH    ${Check_Attri18_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/TH/TC1/4_Att18.png
    Click Element    css=div[name='page8_01'] label:nth-of-type(5)    #Click4
    Sleep    2s
    Att19_TH    ${Check_Attri19_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/TH/TC4/5_Att19.png
    Click Element    name=Answer_24_0_0_1    #Clickไม่ใช่่
    Sleep    2s
    Att20_TH    ${Check_Attri20_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/TH/TC4/6_Att20.png
    Click Element    name=Answer_25_0_0_1    #Clickไม่ใช่่
    Sleep    2s
    Att21_TH    ${Check_Attri21_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/TH/TC4/7_Att21.png
    Click Element    css=div[name='page8_04'] label:nth-of-type(6)    #Click5
    Sleep    2s
    Att22_TH    ${Check_Attri22_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/TH/TC4/8_Att22.png
    Click Element    css=div[name='page8_05'] label:nth-of-type(10)    #Click9
    Sleep    2s
    IntroProfile_TH    ${Check_Intro_Profile_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/TH/TC4/9_Introprofile_th.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Adhoc1_TH    ${Check_Adhoc_TH}
    Click Element    ${ChoiceA4_10}    #ทำอาหาร
    Click Element    ${ChoiceA4_12}    #ปลูกต้นไม้,ตกแต่งบ้าน
    Click Element    ${ChoiceA4_3}    #ดูละคร,ซีรี่ย์,Netflix
    Sleep    2s
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Positive/TH/TC4/9_1_Adhoc_th.png
    Click Element    xpath=//*[@class="icon fl-fl-chevron-right"]
    Sleep    2s
    Reward Condition_TH    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward_TH}    ${Opt_in_rewardYes_TH}
    ...    ${Opt_in_rewardNoTH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Neatral/TH/TC4/10_Reward_th.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_TH    ${Opt_in_tel_TH1}    ${Opt_in_tel_TH2}
    Input Text    name=opt_in_tel    0644444404
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Neatral/TH/TC4/11_TelOptin_th.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Tranfer_Neatral/TH/TC4/12_Ending_th.png
    Sleep    2s
    Close Browser
