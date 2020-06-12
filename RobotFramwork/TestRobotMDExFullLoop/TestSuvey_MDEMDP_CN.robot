*** Settings ***
Library           Selenium2Library
Resource          Variables.robot
Resource          Keywords.robot

*** Test Cases ***
Test Survey MDP Positive_SA(No)_CN
    #Open Browser
    Open Browser    ${Link_MDP_CN1}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    Chinese
    Sleep    2s
    Introduction_CN    ${Check_introMainCN1}    ${Check_introMainCN2}    ${Check_introMainCN3}    ${Check_introMainCN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/CN/TC1/1_Intro.png
    Click Element    ${btn_startCN}
    Q1_CSAT_CN    ${Check_QNCSAT_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/CN/TC1/2_CSAT.png
    Click Element    //div[@name='page1']//div[@class='ScaleValue']/label[10]
    Sleep    2s
    OA_CSATPos_CN    ${Check_OACSATPos_CN}
    #Input Text    name = csat_pos
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/CN/TC1/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Att28_CN    ${Check_Attri28_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/CN/TC1/4_Att28.png
    Click Element    name=Answer_33_0_0_1    #Clickไม่ใช่
    Sleep    2s
    OA_Suggession_CN    ${Check_OA_SugMDP_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/CN/TC1/5_OA_Suggesstion.png
    #Press Key    name=q_suggestion_mdp
    Click Element    //div[@name='page10_10']//span[@class='btn next']
    Sleep    2s
    IntroProfile_CN    ${Check_Intro_Profile_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/CN/TC1/9_Introprofile_CN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_CN    ${CheckRewardCN}    ${CheckRewardCN_1}    ${CheckRewardCN_2}    ${CheckRewardCN_3}    ${CheckRewardCN_4}    ${CheckRewardCN_5}
    ...    ${CheckRewardCN_6}    ${CheckRewardCN_7}    ${CheckRewardCN_8}    ${CheckRewardCN_9}    ${CheckQuestionReward_CN}    ${Opt_in_rewardYes_CN}
    ...    ${Opt_in_rewardNoCN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/CN/TC1/10_Reward_CN.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_CN    ${Opt_in_tel_CN1}
    Input Text    name=opt_in_tel    0643555551
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/CN/TC1/11_TelOptin_CN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/CN/TC1/12_Ending_CN.png
    Sleep    2s
    Close Browser

Test Survey MDP Negative_Optin No_SA(Yes)_CN
    #Open Browser
    Open Browser    ${Link_MDP_CN2}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    Chinese
    Sleep    2s
    Introduction_CN    ${Check_introMainCN1}    ${Check_introMainCN2}    ${Check_introMainCN3}    ${Check_introMainCN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Negative/CN/TC2/1_Intro.png
    Click Element    ${btn_startCN}
    Q1_CSAT_CN    ${Check_QNCSAT_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Negative/CN/TC2/2_CSAT.png
    Click Element    ${Score5}    #click5
    Sleep    2s
    OA_CSATNeg_CN    ${Check_OACSATNeg_CN}
    Input Text    name = csat_neg    Whenever he comes in, the garbage water spills the entire floor.
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Negative/CN/TC2/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_CN    ${Check_Optin_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Negative/CN/TC2/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_1
    Sleep    2s
    Att28_CN    ${Check_Attri28_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/CN/TC2/4_Att28.png
    Click Element    name=Answer_33_0_0_0    #Clickใช่
    Sleep    2s
    Att42_CN    ${Check_Attri42_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/CN/TC2/5_Att42.png
    Click Element    css=div[name='page10_02'] .scalenormal > .ScaleValue > label:nth-of-type(4)    #Click3
    Sleep    2s
    Att43_CN    ${Check_Attri43_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/CN/TC2/6_Att43.png
    Click Element    css=div[name='page10_03'] .scalenormal > .ScaleValue > label:nth-of-type(3)    #Click2
    Sleep    2s
    Att44_CN    ${Check_Attri44_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/CN/TC2/7_Att44.png
    Click Element    css=div[name='page10_04'] .scalenormal > .ScaleValue > label:nth-of-type(2)    #Click1
    Sleep    2s
    Att45_CN    ${Check_Attri45_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/CN/TC2/8_Att45.png
    Click Element    css=div[name='page10_05'] .scalenormal > .ScaleValue > label:nth-of-type(2)    #Click1
    Sleep    2s
    Att46_CN    ${Check_Attri46_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/CN/TC2/8_Att46.png
    Click Element    css=div[name='page10_06'] .scalenormal > .ScaleValue > label:nth-of-type(2)    #Click1
    Sleep    2s
    Att47_CN    ${Check_Attri47_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/CN/TC2/8_Att47.png
    Click Element    css=div[name='page10_07'] .scalenormal > .ScaleValue > label:nth-of-type(3)    #Click2
    Sleep    2s
    Att48_CN    ${Check_Attri48_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/CN/TC2/8_Att48.png
    Click Element    css=div[name='page10_08'] .scalenormal > .ScaleValue > label:nth-of-type(5)    #Click4
    Sleep    2s
    Att49_CN    ${Check_Attri49_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/CN/TC2/8_Att49.png
    Click Element    css=div[name='page10_09'] .scalenormal > .ScaleValue > label:nth-of-type(6)    #Click5
    Sleep    2s
    OA_Suggession_CN    ${Check_OA_SugMDP_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/CN/TC2/8_OA_Suggesstion.png
    Press Key    name=q_suggestion_mdp    員工應該有更多的熱情。
    Click Element    //div[@name='page10_10']//span[@class='btn next']
    Sleep    2s
    IntroProfile_CN    ${Check_Intro_Profile_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/CN/TC2/9_Introprofile_CN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_CN    ${CheckRewardCN}    ${CheckRewardCN_1}    ${CheckRewardCN_2}    ${CheckRewardCN_3}    ${CheckRewardCN_4}    ${CheckRewardCN_5}
    ...    ${CheckRewardCN_6}    ${CheckRewardCN_7}    ${CheckRewardCN_8}    ${CheckRewardCN_9}    ${CheckQuestionReward_CN}    ${Opt_in_rewardYes_CN}
    ...    ${Opt_in_rewardNoCN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Negative/CN/TC2/10_Reward_CN.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_CN    ${Opt_in_tel_CN1}
    Input Text    name=opt_in_tel    0643555552
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Negative/CN/TC2/11_TelOptin_CN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Negative/CN/TC2/12_Ending_CN.png
    Sleep    2s
    Close Browser

Test Survey MDP Negative_Optin Yes_SA(No)_CN
    #Open Browser
    Open Browser    ${Link_MDP_CN3}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    Chinese
    Sleep    2s
    Introduction_CN    ${Check_introMainCN1}    ${Check_introMainCN2}    ${Check_introMainCN3}    ${Check_introMainCN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Negative/CN/TC3/1_Intro.png
    Click Element    ${btn_startCN}
    Q1_CSAT_CN    ${Check_QNCSAT_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Negative/CN/TC3/2_CSAT.png
    Click Element    ${Score2}
    Sleep    2s
    OA_CSATNeg_CN    ${Check_OACSATNeg_CN}
    Input Text    name = csat_neg    包裹到达了，没有最终通知，物品丢失了。
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Negative/CN/TC3/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_CN    ${Check_Optin_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Negative/CN/TC3/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_0
    Sleep    2s
    Att28_CN    ${Check_Attri28_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/CN/TC1/4_Att28.png
    Click Element    name=Answer_33_0_0_1    #Clickไม่ใช่
    Sleep    2s
    OA_Suggession_CN    ${Check_OA_SugMDP_CN}
    Press Key    name=q_suggestion_mdp    應該比這個更好地處理包裹 打開時間清楚地撿起東西
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/CN/TC1/5_OA_Suggesstion.png
    Click Element    //div[@name='page10_10']//span[@class='btn next']
    Sleep    2s
    IntroProfile_CN    ${Check_Intro_Profile_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/CN/TC1/9_Introprofile_CN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_CN    ${CheckRewardCN}    ${CheckRewardCN_1}    ${CheckRewardCN_2}    ${CheckRewardCN_3}    ${CheckRewardCN_4}    ${CheckRewardCN_5}
    ...    ${CheckRewardCN_6}    ${CheckRewardCN_7}    ${CheckRewardCN_8}    ${CheckRewardCN_9}    ${CheckQuestionReward_CN}    ${Opt_in_rewardYes_CN}
    ...    ${Opt_in_rewardNoCN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Negative/CN/TC3/10_Reward_CN.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_CN    ${Opt_in_tel_CN1}
    Input Text    name=opt_in_tel    0643555553
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Negative/CN/TC3/11_TelOptin_CN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Negative/CN/TC3/12_Ending_CN.png
    Sleep    2s
    Close Browser

Test Survey MDP Neatral_SA(Yes)_CN
    #Open Browser
    Open Browser    ${Link_MDP_CN4}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    Chinese
    Sleep    2s
    Introduction_CN    ${Check_introMainCN1}    ${Check_introMainCN2}    ${Check_introMainCN3}    ${Check_introMainCN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Neatral/CN/TC4/1_Intro.png
    Click Element    ${btn_startCN}
    Q1_CSAT_CN    ${Check_QNCSAT_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Neatral/CN/TC4/2_CSAT.png
    Click Element    ${Score8}
    Sleep    2s
    Att28_CN    ${Check_Attri28_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/CN/TC4/4_Att28.png
    Click Element    name=Answer_33_0_0_0    #Clickใช่
    Sleep    2s
    Att42_CN    ${Check_Attri42_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/CN/TC4/5_Att42.png
    Click Element    css=div[name='page10_02'] label:nth-of-type(8)    #Click7
    Sleep    2s
    Att43_CN    ${Check_Attri43_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/CN/TC4/6_Att43.png
    Click Element    css=div[name='page10_03'] label:nth-of-type(8)    #Click7
    Sleep    2s
    Att44_CN    ${Check_Attri44_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/CN/TC4/7_Att44.png
    Click Element    css=div[name='page10_04'] label:nth-of-type(9)    #Click8
    Sleep    2s
    Att45_CN    ${Check_Attri45_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/CN/TC4/8_Att45.png
    Click Element    css=div[name='page10_05'] label:nth-of-type(10)    #Click9
    Sleep    2s
    Att46_CN    ${Check_Attri46_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/CN/TC4/8_Att46.png
    Click Element    css=div[name='page10_06'] label:nth-of-type(8)    #Click7
    Sleep    2s
    Att47_CN    ${Check_Attri47_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/CN/TC4/8_Att47.png
    Click Element    css=div[name='page10_07'] label:nth-of-type(11)    #Click10
    Sleep    2s
    Att48_CN    ${Check_Attri48_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/CN/TC4/8_Att48.png
    Click Element    css=div[name='page10_08'] label:nth-of-type(8)    #Click7
    Sleep    2s
    Att49_CN    ${Check_Attri49_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/CN/TC4/8_Att49.png
    Click Element    css=div[name='page10_09'] label:nth-of-type(8)    #Click7
    Sleep    2s
    OA_Suggession_CN    ${Check_OA_SugMDP_CN}
    Press Key    name=q_suggestion_mdp    沒有足夠的垃圾箱來支撐扔掉的垃圾量。
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/CN/TC4/8_OA_Suggesstion.png
    Click Element    //div[@name='page10_10']//span[@class='btn next']
    Sleep    2s
    IntroProfile_CN    ${Check_Intro_Profile_CN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/CN/TC4/9_Introprofile_CN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_CN    ${CheckRewardCN}    ${CheckRewardCN_1}    ${CheckRewardCN_2}    ${CheckRewardCN_3}    ${CheckRewardCN_4}    ${CheckRewardCN_5}
    ...    ${CheckRewardCN_6}    ${CheckRewardCN_7}    ${CheckRewardCN_8}    ${CheckRewardCN_9}    ${CheckQuestionReward_CN}    ${Opt_in_rewardYes_CN}
    ...    ${Opt_in_rewardNoCN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Neatral/CN/TC4/10_Reward_CN.png
    Click Element    name=Answer_6_0_0_1
    Sleep    2s
    #Tel Opt-in_CN    ${Opt_in_tel_CN1}    ${Opt_in_tel_CN2}
    #Input Text    name=opt_in_tel    0643555554
    #Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Neatral/CN/TC4/11_TelOptin_CN.png
    #Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Neatral/CN/TC4/12_Ending_CN.png
    Sleep    2s
    Close Browser
