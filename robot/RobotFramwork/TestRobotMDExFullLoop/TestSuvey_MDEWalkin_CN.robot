*** Settings ***
Library           Selenium2Library
Resource          Variables.robot
Resource          Keywords.robot

*** Test Cases ***
Test Survey Walkin Positive_CN
    #Open Browser
    Open Browser    ${Link_Walkin_CN1}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    Chinese
    Sleep    2s
    Introduction_CN    ${Check_introMainCN1}    ${Check_introMainCN2}    ${Check_introMainCN3}    ${Check_introMainCN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/CN/TC1/1_Intro.png
    Click Element    ${btn_startCN}
    Q1_CSAT_CN    ${Check_QNCSAT_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/CN/TC1/2_CSAT.png
    Click Element    //div[@name='page1']//div[@class='ScaleValue']/label[10]
    Sleep    2s
    OA_CSATPos_CN    ${Check_OACSATPos_CN}
    Input Text    name = csat_pos    工作人員細心周到，走來走去，不著急，喜氣洋洋。 良好的設施，一切都禮貌，服從。
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/CN/TC1/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Att1_CN    ${Check_Attri1_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/CN/TC1/4_Att1.png
    Click Element    css=div[name='page4_01'] label:nth-of-type(10)    #click 9
    Sleep    2s
    Att2_CN    ${Check_Attri2_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/CN/TC1/5_Att2.png
    Click Element    css=div[name='page4_02'] label:nth-of-type(10)    #click 9
    Sleep    2s
    Att4_CN    ${Check_Attri4_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/CN/TC1/6_Att4.png
    Click Element    css=div[name='page4_03'] label:nth-of-type(10)    #click 9
    Sleep    2s
    Att40_CN    ${Check_Attri40_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/CN/TC1/7_Att40.png
    Click Element    css=div[name='page4_04'] label:nth-of-type(10)    #click 9
    Sleep    2s
    IntroProfile_CN    ${Check_Intro_Profile_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/CN/TC1/8_Introprofile_cn.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Profile1_CN    ${Check_Profile1_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/CN/TC1/9_Profile1_cn.png
    Click Element    ${ChoiceP1_9}    #มากกว่า 1,000,000 บาท
    Sleep    4s
    Profile2_CN    ${Check_Profile2_CN}
    Click Element    ${ChoiceP2_8}    #อาชีพอิสระ
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/CN/TC1/10_Profile2_cn.png
    Sleep    4s
    Profile3_CN    ${Check_Profile3_CN}
    Click Element    ${ChoiceP3_2}    #ใกล้ที่อยู่เดิม
    Click Element    ${ChoiceP3_4}    #เดินทางสะดวก
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/CN/TC1/10_Profile3_cn.png
    Click Element    //div[@name='page3']//span[@class='btn next']
    Sleep    2s
    Media_CN    ${Check_Media_CN}
    Click Element    ${ChoiceM_10}    #โซเชียลมีเดีย
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/CN/TC1/11_Media_cn.png
    Click Element    //div[@name='page5']//span[@class='btn next']
    Sleep    2s
    Reward Condition_CN    ${CheckRewardCN}    ${CheckRewardCN_1}    ${CheckRewardCN_2}    ${CheckRewardCN_3}    ${CheckRewardCN_4}    ${CheckRewardCN_5}
    ...    ${CheckRewardCN_6}    ${CheckRewardCN_7}    ${CheckRewardCN_8}    ${CheckRewardCN_9}    ${CheckQuestionReward_CN}    ${Opt_in_rewardYes_CN}
    ...    ${Opt_in_rewardNoCN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/CN/TC1/12_Reward_cn.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_CN    ${Opt_in_tel_CN1}
    Input Text    name=opt_in_tel    0899911120
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/CN/TC1/13_TelOptin_cn.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/CN/TC1/14_Ending_cn.png
    Sleep    2s
    Close Browser

Test Survey Walkin Negative_OptinNo_CN
    Open Browser    ${Link_Walkin_CN2}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Select From List By Value    ${locator_language}    Chinese
    Sleep    2s
    Introduction_CN    ${Check_introMainCN1}    ${Check_introMainCN2}    ${Check_introMainCN3}    ${Check_introMainCN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/CN/TC2/1_Intro.png
    Click Element    ${btn_startCN}
    Q1_CSAT_CN    ${Check_QNCSAT_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/CN/TC2/2_CSAT.png
    Click Element    ${Score5}
    Sleep    2s
    OA_CSATNeg_CN    ${Check_OACSATNeg_CN}
    Input Text    name = csat_neg    銷售人員歡呼 但是造成煩惱 沒有思考的空間
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/CN/TC2/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_CN    ${Check_Optin_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/CN/TC2/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_1
    Sleep    2s
    Att1_CN    ${Check_Attri1_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/CN/TC2/4_Att1.png
    Click Element    css=div[name='page4_01'] label:nth-of-type(5)    #click 4
    Sleep    2s
    Att2_CN    ${Check_Attri2_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/CN/TC2/5_Att2.png
    Click Element    css=div[name='page4_02'] .scalenormal > .ScaleValue > label:nth-of-type(3)    #click 2
    Sleep    2s
    Att4_CN    ${Check_Attri4_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/CN/TC2/6_Att4.png
    Click Element    css=div[name='page4_03'] label:nth-of-type(6)    #click 5
    Sleep    2s
    Att40_CN    ${Check_Attri40_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/CN/TC2/7_Att40.png
    Click Element    css=div[name='page4_04'] label:nth-of-type(7)    #click 6
    Sleep    2s
    IntroProfile_CN    ${Check_Intro_Profile_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/CN/TC2/8_Introprofile_th.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Profile1_CN    ${Check_Profile1_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/CN/TC2/9_Profile1_th.png
    Click Element    ${ChoiceP1_3}    #70,001 - 100,000 CNB
    Sleep    4s
    Profile2_CN    ${Check_Profile2_CN}
    Click Element    ${ChoiceP2_3}    #พนักงานบริษัทเอกชน
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/CN/TC2/10_Profile2_th.png
    Sleep    4s
    Profile3_CN    ${Check_Profile3_CN}
    Click Element    ${ChoiceP3_8}    #ราคาสมเหตุผล
    Click Element    ${ChoiceP3_7}    #สามารถเลี้ยงสัตว์ได้
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/CN/TC2/10_Profile3_th.png
    Click Element    //div[@name='page3']//span[@class='btn next']
    Sleep    2s
    Media_CN    ${Check_Media_CN}
    Click Element    ${ChoiceM_10}    #โซเชียลมีเดีย
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/CN/TC2/11_Media_th.png
    Click Element    //div[@name='page5']//span[@class='btn next']
    Sleep    2s
    Reward Condition_CN    ${CheckRewardCN}    ${CheckRewardCN_1}    ${CheckRewardCN_2}    ${CheckRewardCN_3}    ${CheckRewardCN_4}    ${CheckRewardCN_5}
    ...    ${CheckRewardCN_6}    ${CheckRewardCN_7}    ${CheckRewardCN_8}    ${CheckRewardCN_9}    ${CheckQuestionReward_CN}    ${Opt_in_rewardYes_CN}
    ...    ${Opt_in_rewardNoCN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/CN/TC2/12_Reward_th.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_CN    ${Opt_in_tel_CN1}
    Input Text    name=opt_in_tel    0899911122
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/CN/TC2/13_TelOptin_th.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/CN/TC2/14_Ending_th.png
    Sleep    2s
    Close Browser

Test Survey Walkin Negative_OptinYes_CN
    Open Browser    ${Link_Walkin_CN3}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Select From List By Value    ${locator_language}    Chinese
    Sleep    2s
    Introduction_CN    ${Check_introMainCN1}    ${Check_introMainCN2}    ${Check_introMainCN3}    ${Check_introMainCN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/CN/TC3/1_Intro.png
    Click Element    ${btn_startCN}
    Q1_CSAT_CN    ${Check_QNCSAT_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/CN/TC3/2_CSAT.png
    Click Element    //div[@name='page1']//div[@class='ScaleValue']/label[1]
    Sleep    2s
    OA_CSATNeg_CN    ${Check_OACSATNeg_CN}
    #Input Text    name = csat_neg
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/CN/TC3/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_CN    ${Check_Optin_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/CN/TC3/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_0
    Sleep    2s
    Att1_CN    ${Check_Attri1_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/CN/TC3/4_Att1.png
    Click Element    css=div[name='page4_01'] .LayoutNodeUI.layout > .Scale .HEART11.NA    #click N/A
    Sleep    2s
    Att2_CN    ${Check_Attri2_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/CN/TC3/5_Att2.png
    Click Element    css=div[name='page4_02'] .scalenormal > .ScaleValue > label:nth-of-type(4)    #click 3
    Sleep    2s
    Att4_CN    ${Check_Attri4_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/CN/TC3/6_Att4.png
    Click Element    css=div[name='page4_03'] label:nth-of-type(5)    #click 4
    Sleep    2s
    Att40_CN    ${Check_Attri40_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/CN/TC3/7_Att40.png
    Click Element    css=div[name='page4_04'] .scalenormal > .ScaleValue > label:nth-of-type(2)    #click 1
    Sleep    2s
    IntroProfile_CN    ${Check_Intro_Profile_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/CN/TC3/8_Introprofile_th.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Profile1_CN    ${Check_Profile1_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/CN/TC3/9_Profile1_th.png
    Click Element    ${ChoiceP1_7}    # 200,001 - 500,000 บาท
    Sleep    4s
    Profile2_CN    ${Check_Profile2_CN}
    Click Element    ${ChoiceP2_6}    #แพทย์
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/CN/TC3/10_Profile2_th.png
    Sleep    4s
    Profile3_CN    ${Check_Profile3_CN}
    Click Element    ${ChoiceP3_5}    # ออกกำลังกาย,ฟิสเนส
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/CN/TC3/10_Profile3_th.png
    Click Element    //div[@name='page3']//span[@class='btn next']
    Sleep    2s
    Media_CN    ${Check_Media_CN}
    Click Element    ${ChoiceM_1}    #Billboard
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/CN/TC3/11_Media_th.png
    Click Element    //div[@name='page5']//span[@class='btn next']
    Sleep    2s
    Reward Condition_CN    ${CheckRewardCN}    ${CheckRewardCN_1}    ${CheckRewardCN_2}    ${CheckRewardCN_3}    ${CheckRewardCN_4}    ${CheckRewardCN_5}
    ...    ${CheckRewardCN_6}    ${CheckRewardCN_7}    ${CheckRewardCN_8}    ${CheckRewardCN_9}    ${CheckQuestionReward_CN}    ${Opt_in_rewardYes_CN}
    ...    ${Opt_in_rewardNoCN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/CN/TC3/12_Reward_th.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_CN    ${Opt_in_tel_CN1}
    Input Text    name=opt_in_tel    0899911123
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/CN/TC3/13_TelOptin_th.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Negative/CN/TC3/14_Ending_th.png
    Sleep    2s
    Close Browser

Test Survey Walkin Neature_CN
    #Open Browser
    Open Browser    ${Link_Walkin_CN4}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Select From List By Value    ${locator_language}    Chinese
    Sleep    2s
    Introduction_CN    ${Check_introMainCN1}    ${Check_introMainCN2}    ${Check_introMainCN3}    ${Check_introMainCN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Neature/CN/TC4/1_Intro.png
    Click Element    ${btn_startCN}
    Q1_CSAT_CN    ${Check_QNCSAT_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Neature/CN/TC4/2_CSAT.png
    Click Element    ${Score6}
    Sleep    2s
    Att1_CN    ${Check_Attri1_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Neature/CN/TC4/4_Att1.png
    Click Element    css=div[name='page4_01'] label:nth-of-type(9)    #click 8
    Sleep    2s
    Att2_CN    ${Check_Attri2_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Neature/CN/TC4/5_Att2.png
    Click Element    css=div[name='page4_02'] label:nth-of-type(9)    #click 8
    Sleep    2s
    Att4_CN    ${Check_Attri4_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Neature/CN/TC4/6_Att4.png
    Click Element    css=div[name='page4_03'] label:nth-of-type(8)    #click 7
    Sleep    2s
    Att40_CN    ${Check_Attri40_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Neature/CN/TC4/7_Att40.png
    Click Element    css=div[name='page4_04'] label:nth-of-type(8)    #click 7
    Sleep    2s
    IntroProfile_CN    ${Check_Intro_Profile_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Neature/CN/TC4/8_Introprofile_th.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Profile1_CN    ${Check_Profile1_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Neature/CN/TC4/9_Profile1_th.png
    Click Element    ${ChoiceP1_6}    # 160,001 - 200,000 บาท
    Sleep    4s
    Profile2_CN    ${Check_Profile2_CN}
    Click Element    ${ChoiceP2_8}    #อาชีพอิสระ
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Neature/CN/TC4/10_Profile2_th.png
    Sleep    4s
    Profile3_CN    ${Check_Profile3_CN}
    Click Element    ${ChoiceP3_6}    #การออกแบบ
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Neature/CN/TC4/10_Profile3_th.png
    Click Element    //div[@name='page3']//span[@class='btn next']
    Sleep    2s
    Media_CN    ${Check_Media_CN}
    Click Element    ${ChoiceM_11}    #Print media
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Neature/CN/TC4/11_Media_th.png
    Click Element    //div[@name='page5']//span[@class='btn next']
    Sleep    2s
    Reward Condition_CN    ${CheckRewardCN}    ${CheckRewardCN_1}    ${CheckRewardCN_2}    ${CheckRewardCN_3}    ${CheckRewardCN_4}    ${CheckRewardCN_5}
    ...    ${CheckRewardCN_6}    ${CheckRewardCN_7}    ${CheckRewardCN_8}    ${CheckRewardCN_9}    ${CheckQuestionReward_CN}    ${Opt_in_rewardYes_CN}
    ...    ${Opt_in_rewardNoCN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Neature/CN/TC4/12_Reward_th.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_CN    ${Opt_in_tel_CN1}
    Input Text    name=opt_in_tel    0899911124
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Neature/CN/TC4/13_TelOptin_th.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Neature/CN/TC4/14_Ending_th.png
    Sleep    2s
    Close Browser
