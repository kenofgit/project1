*** Settings ***
Library           Selenium2Library
Resource          Variables.robot
Resource          Keywords.robot

*** Test Cases ***
Test Survey BookCon Positive_CN
    #Open Browser
    Open Browser    ${Link_BookCon_CN1}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    Chinese
    Sleep    2s
    Introduction_CN    ${Check_introMainCN1}    ${Check_introMainCN2}    ${Check_introMainCN3}    ${Check_introMainCN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Positive/CN/TC1/1_Intro.png
    Click Element    ${btn_startCN}
    Sleep    2s
    Q1_CSAT_CN    ${Check_QNCSAT_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Positive/CN/TC1/2_CSAT.png
    Click Element    //div[@name='page1']//div[@class='ScaleValue']/label[10]
    Sleep    2s
    OA_CSATPos_CN    ${Check_OACSATPos_CN}
    Input Text    name = csat_pos    Is all Good and all completed.
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Positive/CN/TC1/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Att5_CN    ${Check_Attri5_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Positive/CN/TC1/4_Att5.png
    Click Element    name=Answer_10_0_0_0
    Sleep    2s
    Att6_CN    ${Check_Attri6_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Positive/CN/TC1/5_Att6.png
    Click Element    name=Answer_11_0_0_0
    Sleep    2s
    Att7_CN    ${Check_Attri7_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Positive/CN/TC1/6_Att7.png
    Click Element    css=div[name='page5_03'] label:nth-of-type(10)    #Click9
    Sleep    2s
    Att8_CN    ${Check_Attri8_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Positive/CN/TC1/7_Att8.png
    Click Element    name=Answer_13_0_0_0
    Sleep    2s
    Att9_CN    ${Check_Attri9_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Positive/CN/TC1/8_Att9.png
    Click Element    css=div[name='page5_05'] label:nth-of-type(10)    #Click9
    Sleep    2s
    IntroProfile_CN    ${Check_Intro_Profile_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Positive/CN/TC1/9_Introprofile_CN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_CN    ${CheckRewardCN}    ${CheckRewardCN_1}    ${CheckRewardCN_2}    ${CheckRewardCN_3}    ${CheckRewardCN_4}    ${CheckRewardCN_5}
    ...    ${CheckRewardCN_6}    ${CheckRewardCN_7}    ${CheckRewardCN_8}    ${CheckRewardCN_9}    ${CheckQuestionReward_CN}    ${Opt_in_rewardYes_CN}
    ...    ${Opt_in_rewardNoCN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Positive/CN/TC1/10_Reward_CN.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_CN    ${Opt_in_tel_CN1}
    Input Text    name=opt_in_tel    0644444501
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Positive/CN/TC1/11_TelOptin_CN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Positive/CN/TC1/12_Ending_CN.png
    Sleep    2s
    Close Browser

Test Survey BookCon Negative_Optin No_CN
    #Open Browser
    Open Browser    ${Link_BookCon_CN2}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    Chinese
    Sleep    2s
    Introduction_CN    ${Check_introMainCN1}    ${Check_introMainCN2}    ${Check_introMainCN3}    ${Check_introMainCN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/CN/TC1/1_Intro.png
    Click Element    ${btn_startCN}
    Sleep    2s
    Q1_CSAT_CN    ${Check_QNCSAT_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/CN/TC2/2_CSAT.png
    Click Element    //div[@name='page1']//div[@class='ScaleValue']/label[4]    #click3
    Sleep    2s
    OA_CSATNeg_CN    ${Check_OACSATNeg_CN}
    Input Text    name = csat_neg    工作人員很細心，但沒有等待那個時間。不知道為什麼約會很無聊
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/CN/TC2/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_CN    ${Check_Optin_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/CN/TC2/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_1
    Sleep    2s
    Att5_CN    ${Check_Attri5_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/CN/TC2/4_Att5.png
    Click Element    name=Answer_10_0_0_0
    Sleep    2s
    Att6_CN    ${Check_Attri6_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/CN/TC2/5_Att6.png
    Click Element    name=Answer_11_0_0_0
    Sleep    2s
    Att7_CN    ${Check_Attri7_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/CN/TC2/6_Att7.png
    Click Element    css=div[name='page5_03'] .scalenormal > .ScaleValue > label:nth-of-type(5)    #Click4
    Sleep    2s
    Att8_CN    ${Check_Attri8_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/CN/TC2/7_Att8.png
    Click Element    name=Answer_13_0_0_1
    Sleep    2s
    Att9_CN    ${Check_Attri9_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/CN/TC2/8_Att9.png
    Click Element    css=div[name='page5_05'] .scalenormal > .ScaleValue > label:nth-of-type(11)    #Click10
    Sleep    2s
    IntroProfile_CN    ${Check_Intro_Profile_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/CN/TC2/9_Introprofile_CN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_CN    ${CheckRewardCN}    ${CheckRewardCN_1}    ${CheckRewardCN_2}    ${CheckRewardCN_3}    ${CheckRewardCN_4}    ${CheckRewardCN_5}
    ...    ${CheckRewardCN_6}    ${CheckRewardCN_7}    ${CheckRewardCN_8}    ${CheckRewardCN_9}    ${CheckQuestionReward_CN}    ${Opt_in_rewardYes_CN}
    ...    ${Opt_in_rewardNoCN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/CN/TC2/10_Reward_CN.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_CN    ${Opt_in_tel_CN1}
    Input Text    name=opt_in_tel    0644444402
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/CN/TC2/11_TelOptin_CN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/CN/TC2/12_Ending_CN.png
    Sleep    2s
    Close Browser

Test Survey BookCon Negative_Optin Yes_CN
    #Open Browser
    Open Browser    ${Link_BookCon_CN3}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    Chinese
    Sleep    2s
    Introduction_CN    ${Check_introMainCN1}    ${Check_introMainCN2}    ${Check_introMainCN3}    ${Check_introMainCN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/CN/TC1/1_Intro.png
    Click Element    ${btn_startCN}
    Sleep    2s
    Q1_CSAT_CN    ${Check_QNCSAT_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/CN/TC3/2_CSAT.png
    Click Element    ${Score5}
    Sleep    2s
    OA_CSATNeg_CN    ${Check_OACSATNeg_CN}
    Input Text    name = csat_neg    付款方式存在問題。掃描條形碼，該卡將無法打開。很無聊
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/CN/TC3/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_CN    ${Check_Optin_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/CN/TC3/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_0
    Sleep    2s
    Att5_CN    ${Check_Attri5_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/CN/TC3/4_Att5.png
    Click Element    name=Answer_10_0_0_1
    Sleep    2s
    Att6_CN    ${Check_Attri6_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/CN/TC3/5_Att6.png
    Click Element    name=Answer_11_0_0_0
    Sleep    2s
    Att7_CN    ${Check_Attri7_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/CN/TC3/6_Att7.png
    Click Element    css=div[name='page5_03'] .scalenormal > .ScaleValue > label:nth-of-type(4)    #Click3
    Sleep    2s
    Att8_CN    ${Check_Attri8_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/CN/TC3/7_Att8.png
    Click Element    name=Answer_13_0_0_0
    Sleep    2s
    Att9_CN    ${Check_Attri9_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/CN/TC3/8_Att9.png
    Click Element    css=div[name='page5_05'] .scalenormal > .ScaleValue > label:nth-of-type(3)    #Click2
    Sleep    2s
    IntroProfile_CN    ${Check_Intro_Profile_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/CN/TC3/9_Introprofile_CN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_CN    ${CheckRewardCN}    ${CheckRewardCN_1}    ${CheckRewardCN_2}    ${CheckRewardCN_3}    ${CheckRewardCN_4}    ${CheckRewardCN_5}
    ...    ${CheckRewardCN_6}    ${CheckRewardCN_7}    ${CheckRewardCN_8}    ${CheckRewardCN_9}    ${CheckQuestionReward_CN}    ${Opt_in_rewardYes_CN}
    ...    ${Opt_in_rewardNoCN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/CN/TC3/10_Reward_CN.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_CN    ${Opt_in_tel_CN1}
    Input Text    name=opt_in_tel    0644444603
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/CN/TC3/11_TelOptin_CN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Negative/CN/TC3/12_Ending_CN.png
    Sleep    2s
    Close Browser

Test Survey BookCon Neatral_CN
    #Open Browser
    Open Browser    ${Link_BookCon_CN4}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    Chinese
    Sleep    2s
    Introduction_CN    ${Check_introMainCN1}    ${Check_introMainCN2}    ${Check_introMainCN3}    ${Check_introMainCN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Walkin_Positive/CN/TC1/1_Intro.png
    Click Element    ${btn_startCN}
    Sleep    2s
    Q1_CSAT_CN    ${Check_QNCSAT_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Neatral/CN/TC4/2_CSAT.png
    Click Element    ${Score8}
    Sleep    2s
    Att5_CN    ${Check_Attri5_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Neatral/CN/TC4/4_Att5.png
    Click Element    name=Answer_10_0_0_0
    Sleep    2s
    Att6_CN    ${Check_Attri6_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Neatral/CN/TC4/5_Att6.png
    Click Element    name=Answer_11_0_0_0
    Sleep    2s
    Att7_CN    ${Check_Attri7_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Neatral/CN/TC4/6_Att7.png
    Click Element    css=div[name='page5_03'] .scalenormal > .ScaleValue > label:nth-of-type(6)    #Click5
    Sleep    2s
    Att8_CN    ${Check_Attri8_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Neatral/CN/TC4/7_Att8.png
    Click Element    name=Answer_13_0_0_0
    Sleep    2s
    Att9_CN    ${Check_Attri9_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Neatral/CN/TC4/8_Att9.png
    Click Element    css=div[name='page5_05'] .scalenormal > .ScaleValue > label:nth-of-type(6)    #Click5
    Sleep    2s
    IntroProfile_CN    ${Check_Intro_Profile_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Neatral/CN/TC4/9_Introprofile_CN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_CN    ${CheckRewardCN}    ${CheckRewardCN_1}    ${CheckRewardCN_2}    ${CheckRewardCN_3}    ${CheckRewardCN_4}    ${CheckRewardCN_5}
    ...    ${CheckRewardCN_6}    ${CheckRewardCN_7}    ${CheckRewardCN_8}    ${CheckRewardCN_9}    ${CheckQuestionReward_CN}    ${Opt_in_rewardYes_CN}
    ...    ${Opt_in_rewardNoCN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Neatral/CN/TC4/10_Reward_CN.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_CN    ${Opt_in_tel_CN1}
    Input Text    name=opt_in_tel    0644444604
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Neatral/CN/TC4/11_TelOptin_CN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/BookCon_Neatral/CN/TC4/12_Ending_CN.png
    Sleep    2s
    Close Browser

Test Wongnai
    def fn(input):
    pair = {
    '}': '{',
    ')': '(',
    ']': '['
    }
    start_pair = pair.values()
    end_pair = pair.keys()
    temp = []
    for i in input:
    if i in start_pair:
    temp.append(i)
    if i in end_pair:
    top = temp.pop()
    if top != pair[i]:
    return False
    return len(temp) == 0
