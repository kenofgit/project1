*** Settings ***
Library           Selenium2Library
Resource          Variables.robot
Resource          Keywords.robot

*** Test Cases ***
Test Survey MDP Positive_SA(No)_EN
    #Open Browser
    Open Browser    ${Link_MDP_EN1}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Select From List By Value    ${locator_language}    English
    Sleep    2s
    Introduction_EN    ${Check_introMainEN1}    ${Check_introMainEN2}    ${Check_introMainEN3}    ${Check_introMainEN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/EN/TC1/1_Intro.png
    Click Element    ${btn_startEN}
    Q1_CSAT_EN    ${Check_QNCSAT_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/EN/TC1/2_CSAT.png
    Click Element    //div[@name='page1']//div[@class='ScaleValue']/label[11]
    Sleep    2s
    OA_CSATPos_EN    ${Check_OACSATPos_EN}
    #Input Text    name = csat_pos
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/EN/TC1/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Att28_EN    ${Check_Attri28_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/EN/TC1/4_Att28.png
    Click Element    name=Answer_33_0_0_1    #Clickไม่ใช่
    Sleep    2s
    OA_Suggession_EN    ${Check_OA_SugMDP_EN}
    Press Key    name=q_suggestion_mdp    At any time, come in, security, always be alone.
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/EN/TC1/5_OA_Suggesstion.png
    Click Element    //div[@name='page10_10']//span[@class='btn next']
    Sleep    2s
    IntroProfile_EN    ${Check_Intro_Profile_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/EN/TC1/9_Introprofile_EN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_EN    ${CheckRewardEN}    ${CheckRewardEN_1}    ${CheckRewardEN_2}    ${CheckRewardEN_3}    ${CheckRewardEN_4}    ${CheckRewardEN_5}
    ...    ${CheckRewardEN_6}    ${CheckRewardEN_7}    ${CheckRewardEN_8}    ${CheckRewardEN_9}    ${CheckQuestionReward_EN}    ${Opt_in_rewardYes_EN}
    ...    ${Opt_in_rewardNoEN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/EN/TC1/10_Reward_EN.png
    Click Element    name=Answer_6_0_0_1
    Sleep    2s
    Tel Opt-in_EN    ${Opt_in_tel_EN1}    ${Opt_in_tel_EN2}
    Input Text    name=opt_in_tel    0653555551
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/EN/TC1/11_TelOptin_EN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/EN/TC1/12_Ending_EN.png
    Sleep    2s
    Close Browser

Test Survey MDP Negative_Optin No_SA(No)_EN
    #Open Browser
    Open Browser    ${Link_MDP_EN2}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Select From List By Value    ${locator_language}    English
    Sleep    2s
    Introduction_EN    ${Check_introMainEN1}    ${Check_introMainEN2}    ${Check_introMainEN3}    ${Check_introMainEN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Negative/EN/TC2/1_Intro.png
    Click Element    ${btn_startEN}
    Q1_CSAT_EN    ${Check_QNCSAT_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Negative/EN/TC2/2_CSAT.png
    Click Element    ${Score3}    #click3
    Sleep    2s
    OA_CSATNeg_EN    ${Check_OACSATNeg_EN}
    Input Text    name = csat_neg    Whenever he comes in, the garbage water spills the entire floor.
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Negative/EN/TC2/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_EN    ${Check_Optin_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Negative/EN/TC2/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_1
    Sleep    2s
    Att28_EN    ${Check_Attri28_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/EN/TC2/4_Att28.png
    Click Element    name=Answer_33_0_0_1    #Clickไม่ใช่
    Sleep    2s
    OA_Suggession_EN    ${Check_OA_SugMDP_EN}
    #Press Key    name=q_suggestion_mdp
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/EN/TC2/5_OA_Suggesstion.png
    Click Element    //div[@name='page10_10']//span[@class='btn next']
    Sleep    2s
    IntroProfile_EN    ${Check_Intro_Profile_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/EN/TC2/9_Introprofile_EN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_EN    ${CheckRewardEN}    ${CheckRewardEN_1}    ${CheckRewardEN_2}    ${CheckRewardEN_3}    ${CheckRewardEN_4}    ${CheckRewardEN_5}
    ...    ${CheckRewardEN_6}    ${CheckRewardEN_7}    ${CheckRewardEN_8}    ${CheckRewardEN_9}    ${CheckQuestionReward_EN}    ${Opt_in_rewardYes_EN}
    ...    ${Opt_in_rewardNoEN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Negative/EN/TC2/10_Reward_EN.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_EN    ${Opt_in_tel_EN1}    ${Opt_in_tel_EN2}
    Input Text    name=opt_in_tel    0653555552
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Negative/EN/TC2/11_TelOptin_EN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Negative/EN/TC2/12_Ending_EN.png
    Sleep    2s
    Close Browser

Test Survey MDP Negative_Optin Yes_SA(Yes)_EN
    #Open Browser
    Open Browser    ${Link_MDP_EN3}    ${Browser}
    Sleep    2s
    Select From List By Value    ${locator_language}    English
    Sleep    2s
    Introduction_EN    ${Check_introMainEN1}    ${Check_introMainEN2}    ${Check_introMainEN3}    ${Check_introMainEN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Negative/EN/TC3/1_Intro.png
    Click Element    ${btn_startEN}
    Q1_CSAT_EN    ${Check_QNCSAT_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Negative/EN/TC3/2_CSAT.png
    Click Element    ${Score2}
    Sleep    2s
    OA_CSATNeg_EN    ${Check_OACSATNeg_EN}
    Input Text    name = csat_neg    The waste management system is terrible. The waste is overflowing everyday.
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Negative/EN/TC3/3_OACSAT.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    Optin_Negative_EN    ${Check_Optin_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Negative/EN/TC3/3_OptinNeg.png
    Click Element    name=Answer_5_0_0_0
    Sleep    2s
    Att28_EN    ${Check_Attri28_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/EN/TC3/4_Att28.png
    Click Element    name=Answer_33_0_0_0    #Clickใช่
    Sleep    2s
    Att42_EN    ${Check_Attri42_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/EN/TC3/5_Att42.png
    Click Element    css=div[name='page10_02'] label:nth-of-type(7)    #Click6
    Sleep    2s
    Att43_EN    ${Check_Attri43_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/EN/TC3/6_Att43.png
    Click Element    css=div[name='page10_03'] label:nth-of-type(8)    #Click7
    Sleep    2s
    Att44_EN    ${Check_Attri44_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/EN/TC3/7_Att44.png
    Click Element    css=div[name='page10_04'] label:nth-of-type(6)    #Click5
    Sleep    2s
    Att45_EN    ${Check_Attri45_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/EN/TC3/8_Att45.png
    Click Element    css=div[name='page10_05'] label:nth-of-type(6)    #Click5
    Sleep    2s
    Att46_EN    ${Check_Attri46_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/EN/TC3/8_Att46.png
    Click Element    css=div[name='page10_06'] label:nth-of-type(4)    #Click3
    Sleep    2s
    Att47_EN    ${Check_Attri47_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/EN/TC3/8_Att47.png
    Click Element    css=div[name='page10_07'] label:nth-of-type(9)    #Click8
    Sleep    2s
    Att48_EN    ${Check_Attri48_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/EN/TC3/8_Att48.png
    Click Element    css=div[name='page10_08'] label:nth-of-type(5)    #Click4
    Sleep    2s
    Att49_EN    ${Check_Attri49_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/EN/TC3/8_Att49.png
    Click Element    css=div[name='page10_09'] label:nth-of-type(9)    #Click8
    Sleep    2s
    OA_Suggession_EN    ${Check_OA_SugMDP_EN}
    Press Key    name=q_suggestion_mdp    Should add enough fitness equipment to meet the needs
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/EN/TC3/8_OA_Suggesstion.png
    Click Element    //div[@name='page10_10']//span[@class='btn next']
    Sleep    2s
    IntroProfile_EN    ${Check_Intro_Profile_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/EN/TC3/9_Introprofile_EN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_EN    ${CheckRewardEN}    ${CheckRewardEN_1}    ${CheckRewardEN_2}    ${CheckRewardEN_3}    ${CheckRewardEN_4}    ${CheckRewardEN_5}
    ...    ${CheckRewardEN_6}    ${CheckRewardEN_7}    ${CheckRewardEN_8}    ${CheckRewardEN_9}    ${CheckQuestionReward_EN}    ${Opt_in_rewardYes_EN}
    ...    ${Opt_in_rewardNoEN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Negative/EN/TC3/10_Reward_EN.png
    Click Element    name=Answer_6_0_0_0
    Sleep    2s
    Tel Opt-in_EN    ${Opt_in_tel_EN1}    ${Opt_in_tel_EN2}
    Input Text    name=opt_in_tel    0653555553
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Negative/EN/TC3/11_TelOptin_EN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Negative/EN/TC3/12_Ending_EN.png
    Sleep    2s
    Close Browser

Test Survey MDP Neatral_SA(Yes)_EN
    #Open Browser
    Open Browser    ${Link_MDP_EN4}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Select From List By Value    ${locator_language}    English
    Sleep    2s
    Introduction_EN    ${Check_introMainEN1}    ${Check_introMainEN2}    ${Check_introMainEN3}    ${Check_introMainEN4}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Neatral/EN/TC4/1_Intro.png
    Click Element    ${btn_startEN}
    Q1_CSAT_EN    ${Check_QNCSAT_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Neatral/EN/TC4/2_CSAT.png
    Click Element    ${Score6}
    Sleep    2s
    Att28_EN    ${Check_Attri28_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/EN/TC4/4_Att28.png
    Click Element    name=Answer_33_0_0_0    #Clickใช่
    Sleep    2s
    Att42_EN    ${Check_Attri42_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/EN/TC4/5_Att42.png
    Click Element    css=div[name='page10_02'] label:nth-of-type(8)    #Click7
    Sleep    2s
    Att43_EN    ${Check_Attri43_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/EN/TC4/6_Att43.png
    Click Element    css=div[name='page10_03'] label:nth-of-type(8)    #Click7
    Sleep    2s
    Att44_EN    ${Check_Attri44_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/EN/TC4/7_Att44.png
    Click Element    css=div[name='page10_04'] label:nth-of-type(9)    #Click8
    Sleep    2s
    Att45_EN    ${Check_Attri45_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/EN/TC4/8_Att45.png
    Click Element    css=div[name='page10_05'] label:nth-of-type(10)    #Click9
    Sleep    2s
    Att46_EN    ${Check_Attri46_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/EN/TC4/8_Att46.png
    Click Element    css=div[name='page10_06'] label:nth-of-type(8)    #Click7
    Sleep    2s
    Att47_EN    ${Check_Attri47_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/EN/TC4/8_Att47.png
    Click Element    css=div[name='page10_07'] label:nth-of-type(11)    #Click10
    Sleep    2s
    Att48_EN    ${Check_Attri48_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/EN/TC4/8_Att48.png
    Click Element    css=div[name='page10_08'] label:nth-of-type(8)    #Click7
    Sleep    2s
    Att49_EN    ${Check_Attri49_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/EN/TC4/8_Att49.png
    Click Element    css=div[name='page10_09'] label:nth-of-type(8)    #Click7
    Sleep    2s
    OA_Suggession_EN    ${Check_OA_SugMDP_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/EN/TC1/5_OA_Suggesstion.png
    #Press Key    name=q_suggestion_mdp    Should add enough fitness equipment to meet the needs
    Click Element    //div[@name='page10_10']//span[@class='btn next']
    Sleep    2s
    IntroProfile_EN    ${Check_Intro_Profile_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Positive/EN/TC4/9_Introprofile_EN.png
    Sleep    2s
    Click Element    //div[@id='endMessage']//span[@class='btn']
    Sleep    2s
    Reward Condition_EN    ${CheckRewardEN}    ${CheckRewardEN_1}    ${CheckRewardEN_2}    ${CheckRewardEN_3}    ${CheckRewardEN_4}    ${CheckRewardEN_5}
    ...    ${CheckRewardEN_6}    ${CheckRewardEN_7}    ${CheckRewardEN_8}    ${CheckRewardEN_9}    ${CheckQuestionReward_EN}    ${Opt_in_rewardYes_EN}
    ...    ${Opt_in_rewardNoEN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Neatral/EN/TC4/10_Reward_EN.png
    Click Element    name=Answer_6_0_0_1
    Sleep    2s
    Tel Opt-in_EN    ${Opt_in_tel_EN1}    ${Opt_in_tel_EN2}
    Input Text    name=opt_in_tel    0653555554
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Neatral/EN/TC4/11_TelOptin_EN.png
    Click Element    //div[@name='page7']//span[@class='btn next']
    Capture Page Screenshot    D:/MDEFulloopSurvey/MDP_Neatral/EN/TC4/12_Ending_EN.png
    Sleep    2s
    Close Browser
