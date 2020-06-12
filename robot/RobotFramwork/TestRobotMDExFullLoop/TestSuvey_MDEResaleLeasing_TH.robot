*** Settings ***
Library           Selenium2Library
Resource          Variables.robot
Resource          Keywords.robot

*** Test Cases ***
Test Survey ResaleLeasing Positive_Leasing_TH
    #Open Browser
    Open Browser    ${Link_ResaleLeasing_TH1}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}    ${Check_introMainTH2}    ${Check_introMainTH3}    ${Check_introMainTH4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/TH/TC1/1_Intro.png
    Click Element    ${btn_startTH}
    Q1_CSAT_TH    ${Check_QNCSAT_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/TH/TC1/2_CSAT.png
    Click Element    ${Score10}
    Sleep    2s
    OA_CSATPos_TH    ${Check_OACSATPos_TH}
    Input Text    name = csat_pos    พนักงานที่นัดไม่มาวันที่พาไปดูห้อง เป็นน้องอีกคนมาแทนไม่ค่อยรู้เรื่องเท่าไหร่ แต่ว่าน้องก็ช่วยเหลือดีเหมือนกันจ้า
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/TH/TC1/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Att50_TH    ${Check_Attri50_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/TH/TC1/4_Att50.png
    Click Element    name=Answer_43_0_0_1    #หาซื้อ/หาเช่า
    Sleep    2s
    Att51_TH    ${Check_Attri51_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/TH/TC1/5_Att51.png
    Click Element    css=div[name='page11_02'] label:nth-of-type(9)    #Click8
    Sleep    2s
    Att52_TH    ${Check_Attri52_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/TH/TC1/6_Att52.png
    Click Element    css=div[name='page11_03'] label:nth-of-type(8)    #Click7
    Sleep    2s
    Att53_TH    ${Check_Attri53_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/TH/TC1/7_Att53.png
    Click Element    css=div[name='page11_04'] label:nth-of-type(9)    #Click8
    Sleep    2s
    Att55_TH    ${Check_Attri55_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/TH/TC1/8_Att55.png
    Click Element    css=div[name='page11_06'] label:nth-of-type(10)    #Click9
    Sleep    2s
    Att56_TH    ${Check_Attri56_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/TH/TC1/8_Att56.png
    Click Element    name=Answer_49_0_0_0
    Sleep    2s
    IntroProfile_TH    ${Check_Intro_Profile_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/TH/TC1/9_Introprofile_TH.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_TH    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward_TH}    ${Opt_in_rewardYes_TH}
    ...    ${Opt_in_rewardNoTH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/TH/TC1/10_Reward_TH.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_TH    ${Opt_in_tel_TH1}    ${Opt_in_tel_TH2}
    Input Text    name=opt_in_tel    0603555551
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/TH/TC1/11_TelOptin_TH.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/TH/TC1/12_Ending_TH.png
    Sleep    2s
    Close Browser

Test Survey ResaleLeasing Negative_Optin No_Leasing_TH
    #Open Browser
    Open Browser    ${Link_ResaleLeasing_TH2}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}    ${Check_introMainTH2}    ${Check_introMainTH3}    ${Check_introMainTH4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Negative/TH/TC2/1_Intro.png
    Click Element    ${btn_startTH}
    Q1_CSAT_TH    ${Check_QNCSAT_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Negative/TH/TC2/2_CSAT.png
    Click Element    ${Score3}    #click3
    Sleep    2s
    OA_CSATNeg_TH    ${Check_OACSATNeg_TH}
    Input Text    name = csat_neg    นัดไปดูห้อง แล้วพอไปถึงมีอีกคนมาดูพร้อมกัน สรุปเขาตัดสินเอาเหมือนกัน สรุปเขาไปถึงก่อนเลยได้ก่อน งี้ก็ได้หรอ
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Negative/TH/TC2/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_TH    ${Check_Optin_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Negative/TH/TC2/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_1
    Sleep    2s
    Att50_TH    ${Check_Attri50_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/TH/TC2/4_Att50.png
    Click Element    name=Answer_43_0_0_1    #หาซื้อ/หาเช่า
    Sleep    2s
    Att51_TH    ${Check_Attri51_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/TH/TC2/5_Att51.png
    Click Element    css=div[name='page11_02'] .scalenormal > .ScaleValue > label:nth-of-type(3)    #Click2
    Sleep    2s
    Att52_TH    ${Check_Attri52_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/TH/TC2/6_Att52.png
    Click Element    css=div[name='page11_03'] label:nth-of-type(4)    #Click3
    Sleep    2s
    Att53_TH    ${Check_Attri53_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/TH/TC2/7_Att53.png
    Click Element    css=div[name='page11_04'] .scalenormal > .ScaleValue > label:nth-of-type(3)    #Click2
    Sleep    2s
    Att55_TH    ${Check_Attri55_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/TH/TC1/8_Att55.png
    Click Element    css=div[name='page11_06'] .scalenormal > .ScaleValue > label:nth-of-type(3)    #Click2
    Sleep    2s
    Att56_TH    ${Check_Attri56_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/TH/TC1/8_Att56.png
    Click Element    name=Answer_49_0_0_1
    Sleep    2s
    IntroProfile_TH    ${Check_Intro_Profile_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/TH/TC2/9_Introprofile_TH.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_TH    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward_TH}    ${Opt_in_rewardYes_TH}
    ...    ${Opt_in_rewardNoTH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Negative/TH/TC2/10_Reward_TH.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_TH    ${Opt_in_tel_TH1}    ${Opt_in_tel_TH2}
    Input Text    name=opt_in_tel    0603455552
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Negative/TH/TC2/11_TelOptin_TH.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Negative/TH/TC2/12_Ending_TH.png
    Sleep    2s
    Close Browser

Test Survey ResaleLeasing Negative_Optin Yes_Resale_TH
    #Open Browser
    Open Browser    ${Link_ResaleLeasing_TH3}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}    ${Check_introMainTH2}    ${Check_introMainTH3}    ${Check_introMainTH4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Negative/TH/TC3/1_Intro.png
    Click Element    ${btn_startTH}
    Q1_CSAT_TH    ${Check_QNCSAT_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Negative/TH/TC3/2_CSAT.png
    Click Element    //div[@name='page1']//div[@class='ScaleValue']/label[4]    #click3
    Sleep    2s
    OA_CSATNeg_TH    ${Check_OACSATNeg_TH}
    Input Text    name = csat_neg    พนักงานไม่มีความเป็นมืออาชีพ
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Negative/TH/TC3/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_TH    ${Check_Optin_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Negative/TH/TC3/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_0
    Sleep    2s
    Att50_TH    ${Check_Attri50_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/TH/TC3/4_Att50.png
    Click Element    name=Answer_43_0_0_0    #ฝากซื้อ/ฝากเช่า
    Sleep    2s
    Att51_TH    ${Check_Attri51_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/TH/TC3/5_Att51.png
    Click Element    css=div[name='page11_02'] .scalenormal > .ScaleValue > label:nth-of-type(5)    #Click4
    Sleep    2s
    Att52_TH    ${Check_Attri52_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/TH/TC3/6_Att52.png
    Click Element    css=div[name='page11_03'] .scalenormal > .ScaleValue > label:nth-of-type(5)    #Click4
    Sleep    2s
    Att53_TH    ${Check_Attri53_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/TH/TC3/7_Att53.png
    Click Element    css=div[name='page11_04'] .scalenormal > .ScaleValue > label:nth-of-type(5)    #Click4
    Sleep    2s
    Att54_TH    ${Check_Attri54_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/TH/TC3/8_Att54.png
    Click Element    css=div[name='page11_05'] .scalenormal > .ScaleValue > label:nth-of-type(5)    #Click4
    Sleep    2s
    IntroProfile_TH    ${Check_Intro_Profile_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/TH/TC1/9_Introprofile_TH.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_TH    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward_TH}    ${Opt_in_rewardYes_TH}
    ...    ${Opt_in_rewardNoTH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Negative/TH/TC3/10_Reward_TH.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_TH    ${Opt_in_tel_TH1}    ${Opt_in_tel_TH2}
    Input Text    name=opt_in_tel    0613555553
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Negative/TH/TC3/11_TelOptin_TH.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Negative/TH/TC3/12_Ending_TH.png
    Sleep    2s
    Close Browser

Test Survey ResaleLeasing Neatral_Resale_TH
    #Open Browser
    Open Browser    ${Link_ResaleLeasing_TH4}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}    ${Check_introMainTH2}    ${Check_introMainTH3}    ${Check_introMainTH4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Neatral/TH/TC4/1_Intro.png
    Click Element    ${btn_startTH}
    Q1_CSAT_TH    ${Check_QNCSAT_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Neatral/TH/TC4/2_CSAT.png
    Click Element    ${Score6}
    Sleep    2s
    Att50_TH    ${Check_Attri50_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/TH/TC3/4_Att50.png
    Click Element    name=Answer_43_0_0_0    #ฝากซื้อ/ฝากเช่า
    Sleep    2s
    Att51_TH    ${Check_Attri51_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/TH/TC3/5_Att51.png
    Click Element    css=div[name='page11_02'] label:nth-of-type(7)    #Click6
    Sleep    2s
    Att52_TH    ${Check_Attri52_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/TH/TC3/6_Att52.png
    Click Element    css=div[name='page11_03'] label:nth-of-type(6)    #Click5
    Sleep    2s
    Att53_TH    ${Check_Attri53_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/TH/TC3/7_Att53.png
    Click Element    css=div[name='page11_04'] label:nth-of-type(8)    #Click7
    Sleep    2s
    Att54_TH    ${Check_Attri54_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/TH/TC3/8_Att54.png
    Click Element    css=div[name='page11_05'] label:nth-of-type(6)    #Click5
    Sleep    2s
    IntroProfile_TH    ${Check_Intro_Profile_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Positive/TH/TC1/9_Introprofile_TH.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_TH    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward_TH}    ${Opt_in_rewardYes_TH}
    ...    ${Opt_in_rewardNoTH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Neatral/TH/TC4/10_Reward_TH.png
    Click Element    name=Answer_6_0_0_1
    Sleep    2s
    Tel Opt-in_TH    ${Opt_in_tel_TH1}    ${Opt_in_tel_TH2}
    Input Text    name=opt_in_tel    0603555554
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Neatral/TH/TC4/11_TelOptin_TH.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/ResaleLeasing_Neatral/TH/TC4/12_Ending_TH.png
    Sleep    2s
    Close Browser
