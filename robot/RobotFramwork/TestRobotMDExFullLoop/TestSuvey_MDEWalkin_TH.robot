*** Settings ***
Library           Selenium2Library
Resource          Variables.robot
Resource          Keywords.robot

*** Test Cases ***
Test Survey Walkin Positive_TH
    #Open Browser
    Open Browser    ${Link_Walkin_TH1}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}    ${Check_introMainTH2}    ${Check_introMainTH3}    ${Check_introMainTH4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/TH/TC1/1_Intro.png
    Click Element    ${btn_startTH}
    Q1_CSAT_TH    ${Check_QNCSAT_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/TH/TC1/2_CSAT.png
    Click Element    //div[@name='page1']//div[@class='ScaleValue']/label[10]
    Sleep    2s
    OA_CSATPos_TH    ${Check_OACSATPos_TH}
    Input Text    name = csat_pos    พนักงานเอาใจใส่ดีเดินดูได้ทั่วถึง ไม่เร่งรีบ ยิ้มแย้มแจ่มใส อำนวยความสะดวกดีทุกอย่าง สุภาพ อ่อนน้อม
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/TH/TC1/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Att1_TH    ${Check_Attri1_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/TH/TC1/4_Att1.png
    Click Element    css=div[name='page4_01'] label:nth-of-type(10)    #click 9
    Sleep    2s
    Att2_TH    ${Check_Attri2_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/TH/TC1/5_Att2.png
    Click Element    css=div[name='page4_02'] label:nth-of-type(10)    #click 9
    Sleep    2s
    Att4_TH    ${Check_Attri4_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/TH/TC1/6_Att4.png
    Click Element    css=div[name='page4_03'] label:nth-of-type(10)    #click 9
    Sleep    2s
    Att40_TH    ${Check_Attri40_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/TH/TC1/7_Att40.png
    Click Element    css=div[name='page4_04'] label:nth-of-type(10)    #click 9
    Sleep    2s
    IntroProfile_TH    ${Check_Intro_Profile_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/TH/TC1/8_Introprofile_th.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Profile1_TH    ${Check_Profile1_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/TH/TC1/9_Profile1_th.png
    Click Element    ${ChoiceP1_8}    #500,001 - 1,000,000 บาท
    Sleep    4s
    Profile2_TH    ${Check_Profile2_TH}
    Click Element    ${ChoiceP2_11}    #อื่นๆ โปรดระบุ
    Input Text    //*[@name='dm2_11_oa']    ขายของออนไลน์
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/TH/TC1/10_Profile2_th.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    4s
    Profile3_TH    ${Check_Profile3_TH}
    Click Element    ${ChoiceP3_2}    #ใกล้ที่อยู่เดิม
    Click Element    ${ChoiceP3_4}    #เดินทางสะดวก
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/TH/TC1/10_Profile3_th.png
    Click Element    //div[@name='page3']//span[@class='btn next']
    Sleep    2s
    Media_TH    ${Check_Media_TH}
    Click Element    ${ChoiceM_3}    #ผ่านโครงการ
    Click Element    ${ChoiceM_10}    #โซเชียลมีเดีย
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/TH/TC1/11_Media_th.png
    Click Element    //div[@name='page5']//span[@class='btn next']
    Sleep    2s
    Reward Condition_TH    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward_TH}    ${Opt_in_rewardYes_TH}
    ...    ${Opt_in_rewardNoTH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/TH/TC1/12_Reward_th.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_TH    ${Opt_in_tel_TH1}    ${Opt_in_tel_TH2}
    Input Text    name=opt_in_tel    0899911111
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/TH/TC1/13_TelOptin_th.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/TH/TC1/14_Ending_th.png
    Sleep    2s
    Close Browser

Test Survey Walkin Negative_OptinNo_TH
    #Open Browser
    Open Browser    ${Link_Walkin_TH2}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}    ${Check_introMainTH2}    ${Check_introMainTH3}    ${Check_introMainTH4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/TH/TC2/1_Intro.png
    Click Element    ${btn_startTH}
    Q1_CSAT_TH    ${Check_QNCSAT_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/TH/TC2/2_CSAT.png
    Click Element    ${Score5}
    Sleep    2s
    OA_CSATNeg_TH    ${Check_OACSATNeg_TH}
    Input Text    name = csat_neg    พนักงานเชียร์ขายเก่ง แต่ทำให้เกิดความรำคาญ ไม่มีช่วงเว้นให้คิด
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/TH/TC2/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_TH    ${Check_Optin_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/TH/TC2/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_1
    Sleep    2s
    Att1_TH    ${Check_Attri1_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/TH/TC2/4_Att1.png
    Click Element    css=div[name='page4_01'] label:nth-of-type(5)    #click 4
    Sleep    2s
    Att2_TH    ${Check_Attri2_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/TH/TC2/5_Att2.png
    Click Element    css=div[name='page4_02'] .scalenormal > .ScaleValue > label:nth-of-type(3)    #click 2
    Sleep    2s
    Att4_TH    ${Check_Attri4_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/TH/TC2/6_Att4.png
    Click Element    css=div[name='page4_03'] label:nth-of-type(6)    #click 5
    Sleep    2s
    Att40_TH    ${Check_Attri40_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/TH/TC2/7_Att40.png
    Click Element    css=div[name='page4_04'] label:nth-of-type(7)    #click 6
    Sleep    2s
    IntroProfile_TH    ${Check_Intro_Profile_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/TH/TC2/8_Introprofile_th.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Profile1_TH    ${Check_Profile1_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/TH/TC2/9_Profile1_th.png
    Click Element    ${ChoiceP1_3}    #70,001 - 100,000 THB
    Sleep    4s
    Profile2_TH    ${Check_Profile2_TH}
    Click Element    ${ChoiceP2_3}    #พนักงานบริษัทเอกชน
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/TH/TC2/10_Profile2_th.png
    Sleep    4s
    Profile3_TH    ${Check_Profile3_TH}
    Click Element    ${ChoiceP3_8}    #ราคาสมเหตุผล
    Click Element    ${ChoiceP3_7}    #สามารถเลี้ยงสัตว์ได้
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/TH/TC2/10_Profile3_th.png
    Click Element    //div[@name='page3']//span[@class='btn next']
    Sleep    2s
    Media_TH    ${Check_Media_TH}
    Click Element    ${ChoiceM_10}    #โซเชียลมีเดีย
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/TH/TC2/11_Media_th.png
    Click Element    //div[@name='page5']//span[@class='btn next']
    Sleep    2s
    Reward Condition_TH    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward_TH}    ${Opt_in_rewardYes_TH}
    ...    ${Opt_in_rewardNoTH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/TH/TC2/12_Reward_th.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_TH    ${Opt_in_tel_TH1}    ${Opt_in_tel_TH2}
    Input Text    name=opt_in_tel    0899911112
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/TH/TC2/13_TelOptin_th.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/TH/TC2/14_Ending_th.png
    Sleep    2s
    Close Browser

Test Survey Walkin Negative_OptinYes_TH
    #Open Browser
    Open Browser    ${Link_Walkin_TH3}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}    ${Check_introMainTH2}    ${Check_introMainTH3}    ${Check_introMainTH4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/TH/TC3/1_Intro.png
    Click Element    ${btn_startTH}
    Q1_CSAT_TH    ${Check_QNCSAT_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/TH/TC3/2_CSAT.png
    Click Element    //div[@name='page1']//div[@class='ScaleValue']/label[1]
    Sleep    2s
    OA_CSATNeg_TH    ${Check_OACSATNeg_TH}
    #Input Text    name = csat_neg
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/TH/TC3/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_TH    ${Check_Optin_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/TH/TC3/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_0
    Sleep    2s
    Att1_TH    ${Check_Attri1_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/TH/TC3/4_Att1.png
    Click Element    css=div[name='page4_01'] .LayoutNodeUI.layout > .Scale .HEART11.NA    #click N/A
    Sleep    2s
    Att2_TH    ${Check_Attri2_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/TH/TC3/5_Att2.png
    Click Element    css=div[name='page4_02'] .scalenormal > .ScaleValue > label:nth-of-type(4)    #click 3
    Sleep    2s
    Att4_TH    ${Check_Attri4_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/TH/TC3/6_Att4.png
    Click Element    css=div[name='page4_03'] label:nth-of-type(5)    #click 4
    Sleep    2s
    Att40_TH    ${Check_Attri40_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/TH/TC3/7_Att40.png
    Click Element    css=div[name='page4_04'] .scalenormal > .ScaleValue > label:nth-of-type(2)    #click 1
    Sleep    2s
    IntroProfile_TH    ${Check_Intro_Profile_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/TH/TC3/8_Introprofile_th.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Profile1_TH    ${Check_Profile1_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/TH/TC3/9_Profile1_th.png
    Click Element    ${ChoiceP1_7}    # 200,001 - 500,000 บาท
    Sleep    4s
    Profile2_TH    ${Check_Profile2_TH}
    Click Element    ${ChoiceP2_6}    #แพทย์
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/TH/TC3/10_Profile2_th.png
    Sleep    4s
    Profile3_TH    ${Check_Profile3_TH}
    Click Element    ${ChoiceP3_5}    # ออกกำลังกาย,ฟิสเนส
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/TH/TC3/10_Profile3_th.png
    Click Element    //div[@name='page3']//span[@class='btn next']
    Sleep    2s
    Media_TH    ${Check_Media_TH}
    Click Element    ${ChoiceM_1}    #Billboard
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/TH/TC3/11_Media_th.png
    Click Element    //div[@name='page5']//span[@class='btn next']
    Sleep    2s
    Reward Condition_TH    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward_TH}    ${Opt_in_rewardYes_TH}
    ...    ${Opt_in_rewardNoTH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/TH/TC3/12_Reward_th.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_TH    ${Opt_in_tel_TH1}    ${Opt_in_tel_TH2}
    Input Text    name=opt_in_tel    0899911113
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/TH/TC3/13_TelOptin_th.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/TH/TC3/14_Ending_th.png
    Sleep    2s
    Close Browser

Test Survey Walkin Neature_TH
    #Open Browser
    Open Browser    ${Link_Walkin_TH4}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}    ${Check_introMainTH2}    ${Check_introMainTH3}    ${Check_introMainTH4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Neature/TH/TC4/1_Intro.png
    Click Element    ${btn_startTH}
    Q1_CSAT_TH    ${Check_QNCSAT_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Neature/TH/TC4/2_CSAT.png
    Click Element    ${Score6}
    Sleep    2s
    Att1_TH    ${Check_Attri1_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Neature/TH/TC4/4_Att1.png
    Click Element    css=div[name='page4_01'] label:nth-of-type(9)    #click 8
    Sleep    2s
    Att2_TH    ${Check_Attri2_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Neature/TH/TC4/5_Att2.png
    Click Element    css=div[name='page4_02'] label:nth-of-type(9)    #click 8
    Sleep    2s
    Att4_TH    ${Check_Attri4_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Neature/TH/TC4/6_Att4.png
    Click Element    css=div[name='page4_03'] label:nth-of-type(8)    #click 7
    Sleep    2s
    Att40_TH    ${Check_Attri40_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Neature/TH/TC4/7_Att40.png
    Click Element    css=div[name='page4_04'] label:nth-of-type(8)    #click 7
    Sleep    2s
    IntroProfile_TH    ${Check_Intro_Profile_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Neature/TH/TC4/8_Introprofile_th.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Profile1_TH    ${Check_Profile1_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Neature/TH/TC4/9_Profile1_th.png
    Click Element    ${ChoiceP1_6}    # 160,001 - 200,000 บาท
    Sleep    4s
    Profile2_TH    ${Check_Profile2_TH}
    Click Element    ${ChoiceP2_8}    #อาชีพอิสระ
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Neature/TH/TC4/10_Profile2_th.png
    Sleep    4s
    Profile3_TH    ${Check_Profile3_TH}
    Click Element    ${ChoiceP3_6}    #การออกแบบ
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Neature/TH/TC4/10_Profile3_th.png
    Click Element    //div[@name='page3']//span[@class='btn next']
    Sleep    2s
    Media_TH    ${Check_Media_TH}
    Click Element    ${ChoiceM_11}    #Print media
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Neature/TH/TC4/11_Media_th.png
    Click Element    //div[@name='page5']//span[@class='btn next']
    Sleep    2s
    Reward Condition_TH    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward_TH}    ${Opt_in_rewardYes_TH}
    ...    ${Opt_in_rewardNoTH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Neature/TH/TC4/12_Reward_th.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_TH    ${Opt_in_tel_TH1}    ${Opt_in_tel_TH2}
    Input Text    name=opt_in_tel    0899911114
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Neature/TH/TC4/13_TelOptin_th.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Neature/TH/TC4/14_Ending_th.png
    Sleep    2s
    Close Browser
