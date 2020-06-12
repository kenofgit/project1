*** Settings ***
Library           Selenium2Library
Resource          Variables.robot
Resource          Keywords.robot

*** Test Cases ***
Test Survey MDP Positive_SA(Yes)_TH
    #Open Browser
    Open Browser    ${Link_MDP_TH1}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}    ${Check_introMainTH2}    ${Check_introMainTH3}    ${Check_introMainTH4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/TH/TC1/1_Intro.png
    Click Element    ${btn_startTH}
    Q1_CSAT_TH    ${Check_QNCSAT_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/TH/TC1/2_CSAT.png
    Click Element    ${Score10}
    Sleep    2s
    OA_CSATPos_TH    ${Check_OACSATPos_TH}
    #Input Text    name = csat_pos
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/TH/TC1/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Att28_TH    ${Check_Attri28_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/TH/TC1/4_Att28.png
    Click Element    name=Answer_33_0_0_0    #Clickใช่
    Sleep    2s
    Att42_TH    ${Check_Attri42_TH1}    ${Check_Attri42_TH2}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/TH/TC1/5_Att42.png
    Click Element    css=div[name='page10_02'] label:nth-of-type(11)    #Click10
    Sleep    2s
    Att43_TH    ${Check_Attri43_TH1}    ${Check_Attri43_TH2}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/TH/TC1/6_Att43.png
    Click Element    css=div[name='page10_03'] label:nth-of-type(10)    #Click9
    Sleep    2s
    Att44_TH    ${Check_Attri44_TH1}    ${Check_Attri44_TH2}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/TH/TC1/7_Att44.png
    Click Element    css=div[name='page10_04'] label:nth-of-type(9)    #Click8
    Sleep    2s
    Att45_TH    ${Check_Attri45_TH1}    ${Check_Attri45_TH2}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/TH/TC1/8_Att45.png
    Click Element    css=div[name='page10_05'] label:nth-of-type(9)    #Click8
    Sleep    2s
    Att46_TH    ${Check_Attri46_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/TH/TC1/8_Att46.png
    Click Element    css=div[name='page10_06'] label:nth-of-type(9)    #Click8
    Sleep    2s
    Att47_TH    ${Check_Attri47_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/TH/TC1/8_Att47.png
    Click Element    css=div[name='page10_07'] label:nth-of-type(9)    #Click8
    Sleep    2s
    Att48_TH    ${Check_Attri48_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/TH/TC1/8_Att48.png
    Click Element    css=div[name='page10_08'] label:nth-of-type(9)    #Click8
    Sleep    2s
    Att49_TH    ${Check_Attri49_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/TH/TC1/8_Att49.png
    Click Element    css=div[name='page10_09'] label:nth-of-type(9)    #Click8
    Sleep    2s
    OA_Suggession_TH    ${Check_OA_SugMDP_TH}
    #Press Key    name=q_suggestion_mdp
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/TH/TC1/8_OA_Suggesstion.png
    Click Element    //div[@name='page10_10']//span[@class='btn next']
    Sleep    2s
    IntroProfile_TH    ${Check_Intro_Profile_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/TH/TC1/9_Introprofile_th.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_TH    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward_TH}    ${Opt_in_rewardYes_TH}
    ...    ${Opt_in_rewardNoTH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/TH/TC1/10_Reward_th.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_TH    ${Opt_in_tel_TH1}    ${Opt_in_tel_TH2}
    Input Text    name=opt_in_tel    0654555551
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/TH/TC1/11_TelOptin_th.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/TH/TC1/12_Ending_th.png
    Sleep    2s
    Close Browser

Test Survey MDP Negative_Optin No_SA(Yes)_TH
    #Open Browser
    Open Browser    ${Link_MDP_TH2}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}    ${Check_introMainTH2}    ${Check_introMainTH3}    ${Check_introMainTH4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Negative/TH/TC2/1_Intro.png
    Click Element    ${btn_startTH}
    Q1_CSAT_TH    ${Check_QNCSAT_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Negative/TH/TC2/2_CSAT.png
    Click Element    //div[@name='page1']//div[@class='ScaleValue']/label[5]    #click4
    Sleep    2s
    OA_CSATNeg_TH    ${Check_OACSATNeg_TH}
    Input Text    name = csat_neg    รู้สึกว่านิติไม่สนใจความเดือดร้อนของลูกบ้าน    มีแต่รปภ ที่ยินดีช่วยเหลือตลอด และกฎบางอย่างก็ฟิคจนเกินไป
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Negative/TH/TC2/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_TH    ${Check_Optin_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Negative/TH/TC2/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_1
    Sleep    2s
    Att28_TH    ${Check_Attri28_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/TH/TC2/4_Att28.png
    Click Element    name=Answer_33_0_0_0    #Clickใช่
    Sleep    2s
    Att42_TH    ${Check_Attri42_TH1}    ${Check_Attri42_TH2}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/TH/TC2/5_Att42.png
    Click Element    css=div[name='page10_02'] label:nth-of-type(5)    #Click4
    Sleep    2s
    Att43_TH    ${Check_Attri43_TH1}    ${Check_Attri43_TH2}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/TH/TC2/6_Att43.png
    Click Element    css=div[name='page10_03'] label:nth-of-type(4)    #Click3
    Sleep    2s
    Att44_TH    ${Check_Attri44_TH1}    ${Check_Attri44_TH2}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/TH/TC2/7_Att44.png
    Click Element    css=div[name='page10_04'] label:nth-of-type(4)    #Click3
    Sleep    2s
    Att45_TH    ${Check_Attri45_TH1}    ${Check_Attri45_TH2}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/TH/TC2/8_Att45.png
    Click Element    css=div[name='page10_05'] label:nth-of-type(4)    #Click3
    Sleep    2s
    Att46_TH    ${Check_Attri46_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/TH/TC2/8_Att46.png
    Click Element    css=div[name='page10_06'] label:nth-of-type(4)    #Click3
    Sleep    2s
    Att47_TH    ${Check_Attri47_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/TH/TC2/8_Att47.png
    Click Element    css=div[name='page10_07'] label:nth-of-type(4)    #Click3
    Sleep    2s
    Att48_TH    ${Check_Attri48_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/TH/TC2/8_Att48.png
    Click Element    css=div[name='page10_08'] label:nth-of-type(9)    #Click8
    Sleep    2s
    Att49_TH    ${Check_Attri49_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/TH/TC2/8_Att49.png
    Click Element    css=div[name='page10_09'] label:nth-of-type(9)    #Click8
    Sleep    2s
    OA_Suggession_TH    ${Check_OA_SugMDP_TH}
    Press Key    name=q_suggestion_mdp    ควรอบรมนิติให้มีความเอาใจใส่ลูกบ้านมากกว่านี้ เพราะว่าถ้าไม่มีลูกบ้าน นิติก็ไม่มีงานนะค่ะ
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/TH/TC2/8_OA_Suggesstion.png
    Click Element    //div[@name='page10_10']//span[@class='btn next']
    Sleep    2s
    IntroProfile_TH    ${Check_Intro_Profile_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/TH/TC2/9_Introprofile_th.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_TH    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward_TH}    ${Opt_in_rewardYes_TH}
    ...    ${Opt_in_rewardNoTH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Negative/TH/TC2/10_Reward_th.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_TH    ${Opt_in_tel_TH1}    ${Opt_in_tel_TH2}
    Input Text    name=opt_in_tel    0654555552
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Negative/TH/TC2/11_TelOptin_th.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Negative/TH/TC2/12_Ending_th.png
    Sleep    2s
    Close Browser

Test Survey MDP Negative_Optin Yes_SA(No)_TH
    #Open Browser
    Open Browser    ${Link_MDP_TH3}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}    ${Check_introMainTH2}    ${Check_introMainTH3}    ${Check_introMainTH4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Negative/TH/TC3/1_Intro.png
    Click Element    ${btn_startTH}
    Q1_CSAT_TH    ${Check_QNCSAT_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Negative/TH/TC3/2_CSAT.png
    Click Element    ${Score2}
    Sleep    2s
    OA_CSATNeg_TH    ${Check_OACSATNeg_TH}
    Input Text    name = csat_neg    ซ่อมตรงนั้นตรงนี้เป็นมาใหม่ กระทบไปหมด ซ่อมไม่หมดไม่สิ้น แย่จริงๆ
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Negative/TH/TC3/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_TH    ${Check_Optin_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Negative/TH/TC3/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_0
    Sleep    2s
    Att28_TH    ${Check_Attri28_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/TH/TC3/4_Att28.png
    Click Element    name=Answer_33_0_0_1    #Clickไม่ใช่
    Sleep    2s
    OA_Suggession_TH    ${Check_OA_SugMDP_TH}
    Press Key    name=q_suggestion_mdp    ควรจัดสรรที่จอดรถให้ดีกว่านี้มาทุกทีไม่มีที่จอด ทั้งๆที่จอด 100% ห้องละ 1 คัน
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/TH/TC3/5_OA_Suggesstion.png
    Click Element    //div[@name='page10_10']//span[@class='btn next']
    Sleep    2s
    IntroProfile_TH    ${Check_Intro_Profile_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/TH/TC3/9_Introprofile_th.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_TH    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward_TH}    ${Opt_in_rewardYes_TH}
    ...    ${Opt_in_rewardNoTH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Negative/TH/TC3/10_Reward_th.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_TH    ${Opt_in_tel_TH1}    ${Opt_in_tel_TH2}
    Input Text    name=opt_in_tel    0654555553
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Negative/TH/TC3/11_TelOptin_th.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Negative/TH/TC3/12_Ending_th.png
    Sleep    2s
    Close Browser

Test Survey MDP Neatral_SA(No)_TH
    #Open Browser
    Open Browser    ${Link_MDP_TH4}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}    ${Check_introMainTH2}    ${Check_introMainTH3}    ${Check_introMainTH4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Neatral/TH/TC4/1_Intro.png
    Click Element    ${btn_startTH}
    Q1_CSAT_TH    ${Check_QNCSAT_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Neatral/TH/TC4/2_CSAT.png
    Click Element    ${Score7}
    Sleep    2s
    Att28_TH    ${Check_Attri28_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/TH/TC1/4_Att28.png
    Click Element    name=Answer_33_0_0_1    #Clickไม่ใช่
    Sleep    2s
    OA_Suggession_TH    ${Check_OA_SugMDP_TH}
    #Press Key    name=q_suggestion_mdp    ควรจัดสรรที่จอดรถให้ดีกว่านี้มาทุกทีไม่มีที่จอด ทั้งๆที่จอด 100% ห้องละ 1 คัน
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/TH/TC4/5_OA_Suggesstion.png
    Click Element    //div[@name='page10_10']//span[@class='btn next']
    Sleep    2s
    IntroProfile_TH    ${Check_Intro_Profile_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/TH/TC4/9_Introprofile_th.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_TH    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward_TH}    ${Opt_in_rewardYes_TH}
    ...    ${Opt_in_rewardNoTH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Neatral/TH/TC4/10_Reward_th.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_TH    ${Opt_in_tel_TH1}    ${Opt_in_tel_TH2}
    Input Text    name=opt_in_tel    0654555554
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Neatral/TH/TC4/11_TelOptin_th.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Neatral/TH/TC4/12_Ending_th.png
    Sleep    2s
    Close Browser
