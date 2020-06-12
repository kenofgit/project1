*** Settings ***
Library           Selenium2Library
Resource          Variables.robot
Resource          Keywords.robot

*** Test Cases ***
Test Survey Walkin Positive_EN
    #Open Browser
    Open Browser    ${Link_Walkin_EN1}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Select From List By Value    ${locator_language}    English
    Sleep    2s
    Introduction_EN    ${Check_introMainEN1}    ${Check_introMainEN2}    ${Check_introMainEN3}    ${Check_introMainEN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/EN/TC1/1_Intro.png
    Click Element    ${btn_startEN}
    Sleep    2s
    Q1_CSAT_EN    ${Check_QNCSAT_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/EN/TC1/2_CSAT.png
    Click Element    ${Score9}
    Sleep    2s
    OA_CSATPos_EN    ${Check_OACSATPos_EN}
    Input Text    name = csat_pos    Good Service and Good Staff very good
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/EN/TC1/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Att1_EN    ${Check_Attri1_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/EN/TC1/4_Att1.png
    Click Element    css=div[name='page4_01'] label:nth-of-type(10)    #click 9
    Sleep    2s
    Att2_EN    ${Check_Attri2_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/EN/TC1/5_Att2.png
    Click Element    css=div[name='page4_02'] label:nth-of-type(10)    #click 9
    Sleep    2s
    Att4_EN    ${Check_Attri4_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/EN/TC1/6_Att4.png
    Click Element    css=div[name='page4_03'] label:nth-of-type(10)    #click 9
    Sleep    2s
    Att40_EN    ${Check_Attri40_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/EN/TC1/7_Att40.png
    Click Element    css=div[name='page4_04'] label:nth-of-type(10)    #click 9
    Sleep    2s
    IntroProfile_EN    ${Check_Intro_Profile_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/EN/TC1/8_Introprofile_th.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Profile1_EN    ${Check_Profile1_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/EN/TC1/9_Profile1_th.png
    Click Element    ${ChoiceP1_9}    #มากกว่า 1,000,000 บาท
    Sleep    4s
    Profile2_EN    ${Check_Profile2_EN}
    Click Element    ${ChoiceP2_8}    #อาชีพอิสระ
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/EN/TC1/10_Profile2_th.png
    Sleep    4s
    Profile3_EN    ${Check_Profile3_EN}
    Click Element    ${ChoiceP3_2}    #ใกล้ที่อยู่เดิม
    Click Element    ${ChoiceP3_4}    #เดินทางสะดวก
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/EN/TC1/10_Profile3_th.png
    Click Element    //div[@name='page3']//span[@class='btn next']
    Sleep    2s
    Media_EN    ${Check_Media_EN}
    Click Element    ${ChoiceM_10}    #โซเชียลมีเดีย
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/EN/TC1/11_Media_th.png
    Click Element    //div[@name='page5']//span[@class='btn next']
    Sleep    2s
    Reward Condition_EN    ${CheckRewardEN}    ${CheckRewardEN_1}    ${CheckRewardEN_2}    ${CheckRewardEN_3}    ${CheckRewardEN_4}    ${CheckRewardEN_5}
    ...    ${CheckRewardEN_6}    ${CheckRewardEN_7}    ${CheckRewardEN_8}    ${CheckRewardEN_9}    ${CheckQuestionReward_EN}    ${Opt_in_rewardYes_EN}
    ...    ${Opt_in_rewardNoEN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/EN/TC1/12_Reward_th.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_EN    ${Opt_in_tel_EN1}    ${Opt_in_tel_EN2}
    Input Text    name=opt_in_tel    0899911112
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/EN/TC1/13_TelOptin_th.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/EN/TC1/14_Ending_th.png
    Sleep    2s
    Close Browser

Test Survey Walkin Negative_OptinNo_EN
    Open Browser    ${Link_Walkin_EN2}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Select From List By Value    ${locator_language}    English
    Sleep    2s
    Introduction_EN    ${Check_introMainEN1}    ${Check_introMainEN2}    ${Check_introMainEN3}    ${Check_introMainEN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/EN/TC2/1_Intro.png
    Click Element    ${btn_startEN}
    Sleep    2s
    Q1_CSAT_EN    ${Check_QNCSAT_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/EN/TC2/2_CSAT.png
    Click Element    ${Score5}
    Sleep    2s
    OA_CSATNeg_EN    ${Check_OACSATNeg_EN}
    Input Text    name = csat_neg    Bad Performance all staff
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/EN/TC2/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_EN    ${Check_Optin_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/EN/TC2/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_1
    Sleep    2s
    Att1_EN    ${Check_Attri1_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/EN/TC2/4_Att1.png
    Click Element    css=div[name='page4_01'] label:nth-of-type(5)    #click 4
    Sleep    2s
    Att2_EN    ${Check_Attri2_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/EN/TC2/5_Att2.png
    Click Element    css=div[name='page4_02'] .scalenormal > .ScaleValue > label:nth-of-type(3)    #click 2
    Sleep    2s
    Att4_EN    ${Check_Attri4_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/EN/TC2/6_Att4.png
    Click Element    css=div[name='page4_03'] label:nth-of-type(6)    #click 5
    Sleep    2s
    Att40_EN    ${Check_Attri40_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/EN/TC2/7_Att40.png
    Click Element    css=div[name='page4_04'] label:nth-of-type(7)    #click 6
    Sleep    2s
    IntroProfile_EN    ${Check_Intro_Profile_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/EN/TC2/8_Introprofile_th.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Profile1_EN    ${Check_Profile1_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/EN/TC2/9_Profile1_th.png
    Click Element    ${ChoiceP1_3}    #70,001 - 100,000 ENB
    Sleep    4s
    Profile2_EN    ${Check_Profile2_EN}
    Click Element    ${ChoiceP2_3}    #พนักงานบริษัทเอกชน
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/EN/TC2/10_Profile2_th.png
    Sleep    4s
    Profile3_EN    ${Check_Profile3_EN}
    Click Element    ${ChoiceP3_8}    #ราคาสมเหตุผล
    Click Element    ${ChoiceP3_7}    #สามารถเลี้ยงสัตว์ได้
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/EN/TC2/10_Profile3_th.png
    Click Element    //div[@name='page3']//span[@class='btn next']
    Sleep    2s
    Media_EN    ${Check_Media_EN}
    Click Element    ${ChoiceM_10}    #โซเชียลมีเดีย
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/EN/TC2/11_Media_th.png
    Click Element    //div[@name='page5']//span[@class='btn next']
    Sleep    2s
    Reward Condition_EN    ${CheckRewardEN}    ${CheckRewardEN_1}    ${CheckRewardEN_2}    ${CheckRewardEN_3}    ${CheckRewardEN_4}    ${CheckRewardEN_5}
    ...    ${CheckRewardEN_6}    ${CheckRewardEN_7}    ${CheckRewardEN_8}    ${CheckRewardEN_9}    ${CheckQuestionReward_EN}    ${Opt_in_rewardYes_EN}
    ...    ${Opt_in_rewardNoEN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/EN/TC2/12_Reward_th.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_EN    ${Opt_in_tel_EN1}    ${Opt_in_tel_EN2}
    Input Text    name=opt_in_tel    0899911132
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/EN/TC2/13_TelOptin_th.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/EN/TC2/14_Ending_th.png
    Sleep    2s
    Close Browser

Test Survey Walkin Negative_OptinYes_EN
    Open Browser    ${Link_Walkin_EN3}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Select From List By Value    ${locator_language}    English
    Sleep    2s
    Introduction_EN    ${Check_introMainEN1}    ${Check_introMainEN2}    ${Check_introMainEN3}    ${Check_introMainEN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/EN/TC3/1_Intro.png
    Click Element    ${btn_startEN}
    Q1_CSAT_EN    ${Check_QNCSAT_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/EN/TC3/2_CSAT.png
    Click Element    //div[@name='page1']//div[@class='ScaleValue']/label[1]
    Sleep    2s
    OA_CSATNeg_EN    ${Check_OACSATNeg_EN}
    #Input Text    name = csat_neg
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/EN/TC3/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_EN    ${Check_Optin_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/EN/TC3/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_0
    Sleep    2s
    Att1_EN    ${Check_Attri1_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/EN/TC3/4_Att1.png
    Click Element    css=div[name='page4_01'] .LayoutNodeUI.layout > .Scale .HEART11.NA    #click N/A
    Sleep    2s
    Att2_EN    ${Check_Attri2_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/EN/TC3/5_Att2.png
    Click Element    css=div[name='page4_02'] .scalenormal > .ScaleValue > label:nth-of-type(4)    #click 3
    Sleep    2s
    Att4_EN    ${Check_Attri4_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/EN/TC3/6_Att4.png
    Click Element    css=div[name='page4_03'] label:nth-of-type(5)    #click 4
    Sleep    2s
    Att40_EN    ${Check_Attri40_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/EN/TC3/7_Att40.png
    Click Element    css=div[name='page4_04'] .scalenormal > .ScaleValue > label:nth-of-type(2)    #click 1
    Sleep    2s
    IntroProfile_EN    ${Check_Intro_Profile_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/EN/TC3/8_Introprofile_th.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Profile1_EN    ${Check_Profile1_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/EN/TC3/9_Profile1_th.png
    Click Element    ${ChoiceP1_7}    # 200,001 - 500,000 บาท
    Sleep    4s
    Profile2_EN    ${Check_Profile2_EN}
    Click Element    ${ChoiceP2_6}    #แพทย์
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/EN/TC3/10_Profile2_th.png
    Sleep    4s
    Profile3_EN    ${Check_Profile3_EN}
    Click Element    ${ChoiceP3_5}    # ออกกำลังกาย,ฟิสเนส
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/EN/TC3/10_Profile3_th.png
    Click Element    //div[@name='page3']//span[@class='btn next']
    Sleep    2s
    Media_EN    ${Check_Media_EN}
    Click Element    ${ChoiceM_1}    #Billboard
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/EN/TC3/11_Media_th.png
    Click Element    //div[@name='page5']//span[@class='btn next']
    Sleep    2s
    Reward Condition_EN    ${CheckRewardEN}    ${CheckRewardEN_1}    ${CheckRewardEN_2}    ${CheckRewardEN_3}    ${CheckRewardEN_4}    ${CheckRewardEN_5}
    ...    ${CheckRewardEN_6}    ${CheckRewardEN_7}    ${CheckRewardEN_8}    ${CheckRewardEN_9}    ${CheckQuestionReward_EN}    ${Opt_in_rewardYes_EN}
    ...    ${Opt_in_rewardNoEN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/EN/TC3/12_Reward_th.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_EN    ${Opt_in_tel_EN1}    ${Opt_in_tel_EN2}
    Input Text    name=opt_in_tel    0899911133
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/EN/TC3/13_TelOptin_th.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/EN/TC3/14_Ending_th.png
    Sleep    2s
    Close Browser

Test Survey Walkin Neature_EN
    #Open Browser
    Open Browser    ${Link_Walkin_EN4}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Select From List By Value    ${locator_language}    English
    Sleep    2s
    Introduction_EN    ${Check_introMainEN1}    ${Check_introMainEN2}    ${Check_introMainEN3}    ${Check_introMainEN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Neature/EN/TC4/1_Intro.png
    Click Element    ${btn_startEN}
    Q1_CSAT_EN    ${Check_QNCSAT_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Neature/EN/TC4/2_CSAT.png
    Click Element    ${Score6}
    Sleep    2s
    Att1_EN    ${Check_Attri1_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Neature/EN/TC4/4_Att1.png
    Click Element    css=div[name='page4_01'] label:nth-of-type(9)    #click 8
    Sleep    2s
    Att2_EN    ${Check_Attri2_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Neature/EN/TC4/5_Att2.png
    Click Element    css=div[name='page4_02'] label:nth-of-type(9)    #click 8
    Sleep    2s
    Att4_EN    ${Check_Attri4_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Neature/EN/TC4/6_Att4.png
    Click Element    css=div[name='page4_03'] label:nth-of-type(8)    #click 7
    Sleep    2s
    Att40_EN    ${Check_Attri40_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Neature/EN/TC4/7_Att40.png
    Click Element    css=div[name='page4_04'] label:nth-of-type(8)    #click 7
    Sleep    2s
    IntroProfile_EN    ${Check_Intro_Profile_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Neature/EN/TC4/8_Introprofile_th.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Profile1_EN    ${Check_Profile1_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Neature/EN/TC4/9_Profile1_th.png
    Click Element    ${ChoiceP1_6}    # 160,001 - 200,000 บาท
    Sleep    4s
    Profile2_EN    ${Check_Profile2_EN}
    Click Element    ${ChoiceP2_8}    #อาชีพอิสระ
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Neature/EN/TC4/10_Profile2_th.png
    Sleep    4s
    Profile3_EN    ${Check_Profile3_EN}
    Click Element    ${ChoiceP3_6}    #การออกแบบ
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Neature/EN/TC4/10_Profile3_th.png
    Click Element    //div[@name='page3']//span[@class='btn next']
    Sleep    2s
    Media_EN    ${Check_Media_EN}
    Click Element    ${ChoiceM_11}    #Print media
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Neature/EN/TC4/11_Media_th.png
    Click Element    //div[@name='page5']//span[@class='btn next']
    Sleep    2s
    Reward Condition_EN    ${CheckRewardEN}    ${CheckRewardEN_1}    ${CheckRewardEN_2}    ${CheckRewardEN_3}    ${CheckRewardEN_4}    ${CheckRewardEN_5}
    ...    ${CheckRewardEN_6}    ${CheckRewardEN_7}    ${CheckRewardEN_8}    ${CheckRewardEN_9}    ${CheckQuestionReward_EN}    ${Opt_in_rewardYes_EN}
    ...    ${Opt_in_rewardNoEN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Neature/EN/TC4/12_Reward_th.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_EN    ${Opt_in_tel_EN1}    ${Opt_in_tel_EN2}
    Input Text    name=opt_in_tel    0899911134
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Neature/EN/TC4/13_TelOptin_th.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Neature/EN/TC4/14_Ending_th.png
    Sleep    2s
    Close Browser
