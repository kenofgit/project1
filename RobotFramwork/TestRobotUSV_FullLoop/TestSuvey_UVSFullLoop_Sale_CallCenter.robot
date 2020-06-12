*** Settings ***
Library           Selenium2Library
Resource          Variables.robot
Resource          Keywords.robot

*** Test Cases ***
Login CallCenter
    #Open Browser
    Open Browser    ${LinkLogin_CallCenter}    ${Browser}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/Login_CallCenter/1_OpenBrowserSurveyCallCenter.png
    #ClickbuttonLogin
    Click Element    ${ButtonLogin_CallCenter}
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/Login_CallCenter/2_ShowLoginUvsCallCenter.png
    Press Key    id=username    uvsagent1
    Press Key    id=password    uvsagent1
    Select Checkbox    id=rememberMe
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/Login_CallCenter/3_InputLoginSuccess.png
    Click Element    name=login
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/Login_CallCenter/4_ShowforCallSurvey.png
    Sleep    2s
    Click Element    ${ButtonNext_RD}
    Sleep    3s
    Click Element    ${ButtonNext_RD}
    Sleep    3s

TestCase61 Survey Sale Positive NoInput OA CSAT ได้รับคำแนะนำการขับขี่_UVS00029
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC61/Positive_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC61/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC61/Positive_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Sleep    2s
    Press Key    name=tel_opt_in    0999999961    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC61/Positive_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC61/Positive_PageCSAT_TH.png
    Click Element    ${Score 9}    #Click Score 9 CSAT
    #Input CSAT OA
    OA_CSATPos    ${CheckCSAT_Pos}    ${CheckCSAT_Pos1}
    Press Key    name = csat_pos    ดีบางอย่าง บางอย่างก็ไม่ดี
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC61/Positive_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC61/Positive_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='4']    #Click Score 4 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC61/Positive_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC61/Positive_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC61/Positive_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC61/Positive_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC61/Positive_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_0    #ได้รับ
    Sleep    2s
    #Attribute7_Profile
    Attribute7_Profile    ${CheckAtt7_Profile1}
    ChoiceProfile
    Click Element    ${CheckChoice1_TH}    #พนักงานอธิบายด้วยปากเปล่า
    Click Element    ${CheckChoice5_TH}    #จอคอมพิวเตอร์ (คอมตั้งโต๊ะ หรือโน๊ตบุ๊ค)
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC61/Positive_Profile_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Attribute8
    Attribute8_Sale    ${CheckAttribute_8}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC61/Positive_Attibute8_TH.png
    Click Element    css=div[name='page16'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC61/Positive_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC61/Positive_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC61/Positive_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(7)    #Click Score 1
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice1_TH}    #Facebook
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC61/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC61/EndingPage_TH.png
    Sleep    2s
    Click Element    ${Btn_IconEND}
    Sleep    2s
    Click Element    ${ButtonNext_RD}
    Sleep    3s

TestCase62 Survey Sale Positive_ได้รับคำแนะนำการขับขี่_UVS00035
    #Open Browser
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC62/Positive_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC62/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC62/Positive_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC62/Positive_PageCSAT_TH.png
    Click Element    ${Score9}    #Click Score 9 CSAT
    #Input CSAT OA
    OA_CSATPos    ${CheckCSAT_Pos}    ${CheckCSAT_Pos1}
    Press Key    name = csat_pos    รวมๆก็โอเค แต่พนักงานควรดูแลลูกค้าดีกว่านี้
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC62/Positive_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC62/Positive_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='4']    #Click Score 4 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC62/Positive_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC62/Positive_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC62/Positive_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC62/Positive_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC62/Positive_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_0    #ได้รับ
    Sleep    2s
    #Attribute7_Profile
    Attribute7_Profile    ${CheckAtt7_Profile1}
    ChoiceProfile
    Click Element    ${CheckChoice1_TH}    #พนักงานอธิบายด้วยปากเปล่า
    Click Element    ${CheckChoice5_TH}    #จอคอมพิวเตอร์ (คอมตั้งโต๊ะ หรือโน๊ตบุ๊ค)
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC49/Positive_Profile_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Attribute8
    Attribute8_Sale    ${CheckAttribute_8}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC49/Positive_Attibute8_TH.png
    Click Element    css=div[name='page16'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC62/Positive_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC62/Positive_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC62/Positive_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice3_TH}    #Line
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC62/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC62/EndingPage_TH.png
    Sleep    2s
    Click Element    ${Btn_IconEND}
    Sleep    2s
    Click Element    ${ButtonNext_RD}
    Sleep    3s

TestCase63 (N) Survey Sale Negative_Input OA_Optin Yes_Guided_UVS00033
    #Open Browser
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC63/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC63/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC63/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0999999963    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC63/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC63/Negative_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='3']    #Click Score 3 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    พนักงานพูดไม่ค่อยเข้าใจ อธิบายยาวจนไม่อยากฟัง
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC63/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC63/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='4']    #Click Score 4 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC63/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC63/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC63/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC63/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC63/Negative_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_0    #ได้รับ
    Sleep    2s
    #Attribute7_Profile
    Attribute7_Profile    ${CheckAtt7_Profile1}
    ChoiceProfile
    Click Element    ${CheckChoice5_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC63/Negative_Profile_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Attribute8
    Attribute8_Sale    ${CheckAttribute_8}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC63/Negative_Attibute8_TH.png
    Click Element    css=div[name='page16'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC63/Negative_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC63/Negative_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC63/Negative_Attibute11_TH.png
    Click Element    css=div[name='page19'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice4_TH}    #Blogger Review
    Click Element    ${CheckMChoice11_TH}    #หน้าร้านฮอนด้า
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC63/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC63/EndingPage_TH.png
    Sleep    2s
    Click Element    ${Btn_IconEND}
    Sleep    2s
    Click Element    ${ButtonNext_RD}
    Sleep    3s

TestCase64 (N) Survey Sale Negative_Input OA_Optin Yes_NoGuided_UVS00046
    #Open Browser
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC64/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC64/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC64/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC64/Negative_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='4']    #Click Score 4 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    ไม่มีพนักงานคนไหนเดินเข้ามาทักทายพอเรียกก็ไม่สนใจ
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC64/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC64/Negative_NPS_TH.png
    Sleep    2s
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='5']    #Click Score 5 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC64/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(9)    # Click Score8
    #Click Score 0
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC64/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC64/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC64/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC64/Negative_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_0    #ได้รับ
    Sleep    2s
    #Attribute7_Profile
    Attribute7_Profile    ${CheckAtt7_Profile1}
    ChoiceProfile
    Click Element    ${CheckChoice5_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC64/Negative_Profile_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Attribute8
    Attribute8_Sale    ${CheckAttribute_8}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC64/Negative_Attibute8_TH.png
    Click Element    css=div[name='page16'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC64/Negative_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC64/Negative_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC64/Negative_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice2_TH}    #Instagram
    Click Element    ${CheckMChoice1_TH}    #Facebook
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC64/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC64/EndingPage_TH.png
    Sleep    2s
    Sleep    2s
    Click Element    ${Btn_IconEND}
    Sleep    2s
    Click Element    ${ButtonNext_RD}
    Sleep    3s

TestCase65 (N) Survey Sale Negative_Input OA_OptinYes_Guided_UVS00045
    #Open Browser
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC65/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC65/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC65/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0999999965    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC65/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC65/Negative_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='3']    #Click Score 2 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    เบื่อมาก ร้อน รอนาน เพลีย
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC65/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC65/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='1']    #Click Score 1 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC65/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(4)    # Click Score 3
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC65/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC65/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC65/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC65/Negative_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_0    #ได้รับ
    Sleep    2s
    #Attribute7_Profile
    Attribute7_Profile    ${CheckAtt7_Profile1}
    ChoiceProfile
    Click Element    ${CheckChoice2_TH}    # พนักงานอธิบายด้วยโบรชัวร์/สมุดคู่มือการรับประกัน
    Click Element    ${CheckChoice4_TH}    #จอทีวี
    Click Element    ${CheckChoice8_TH}    #ป้ายโฆษณาดิจิทัล ที่ไม่ใช่ทีวี (Digital Signage)
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC65/Negative_Profile_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Attribute8
    Attribute8_Sale    ${CheckAttribute_8}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC65/Negative_Attibute8_TH.png
    Click Element    css=div[name='page16'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC65/Negative_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC65/Negative_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC65/Negative_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice5_TH}    #โฆษณาทางโทรทัศน์
    Click Element    ${CheckMChoice6_TH}    #โฆษณาทางวิทยุ
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC65/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC65/EndingPage_TH.png
    Sleep    2s
    Click Element    ${Btn_IconEND}
    Sleep    2s
    Click Element    ${ButtonNext_RD}
    Sleep    3s

TestCase66 (N) Survey Sale Negative_Input OA_OptinYes_Guided_UVS00040
    #Open Browser
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC66/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC66/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC66/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC66/Negative_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='2']    #Click Score 2 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    พนักงานแย่มาก ทุกคนไม่สนใจบริการ
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC66/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC66/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='2']    #Click Score2    NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC66/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(6)    # Click Score 5
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC66/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC66/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC66/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC66/Negative_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_0    #ได้รับ
    Sleep    2s
    #Attribute7_Profile
    Attribute7_Profile    ${CheckAtt7_Profile1}
    ChoiceProfile
    Click Element    ${CheckChoice2_TH}    # พนักงานอธิบายด้วยโบรชัวร์/สมุดคู่มือการรับประกัน
    Click Element    ${CheckChoice8_TH}    #ป้ายโฆษณาดิจิทัล ที่ไม่ใช่ทีวี (Digital Signage)
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC43/Negative_Profile_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Attribute8
    Attribute8_Sale    ${CheckAttribute_8}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC43/Negative_Attibute8_TH.png
    Click Element    css=div[name='page16'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC66/Negative_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC66/Negative_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC66/Negative_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice13_TH}    #อื่นๆ
    Press Key    name=media_13_oa    บัตร BTS
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC66/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC66/EndingPage_TH.png
    Sleep    2s
    Sleep    2s
    Click Element    ${Btn_IconEND}
    Sleep    2s
    Click Element    ${ButtonNext_RD}
    Sleep    3s

TestCase67 Survey Sale Negative_NoInput OA_Optin Yes_Guided_UVS00037
    #Open Browser
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC67/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC67/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC67/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0999999967    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC67/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC67/Negative_PageCSAT_TH.png
    Click Element    ${Score1}    #Click Score 1 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC67/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC67/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='1']    #Click Score 1 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC67/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC67/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC67/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC67/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC67/Negative_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_0    #ได้รับ
    Sleep    2s
    #Attribute7_Profile
    Attribute7_Profile    ${CheckAtt7_Profile1}
    ChoiceProfile
    Click Element    ${CheckChoice9_TH}    #อื่นๆ โปรดระบุ
    Press Key    name=profile1_9_oa    โทรศัพท์โดยการคุย
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC67/Negative_Profile_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Attribute8
    Attribute8_Sale    ${CheckAttribute_8}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC67/Negative_Attibute8_TH.png
    Click Element    css=div[name='page16'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC67/Negative_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC67/Negative_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC67/Negative_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice1_TH}    #Facebook
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC67/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC67/EndingPage_TH.png
    Sleep    2s
    Sleep    2s
    Click Element    ${Btn_IconEND}
    Sleep    2s
    Click Element    ${ButtonNext_RD}
    Sleep    3s

TestCase68 (N) Survey Sale Negative_InputOA_Optin Yes_Guided_UVS00049
    #Open Browser
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC68/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC68/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC68/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC68/Negative_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='2']    #Click Score 2 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    ห้องน้ำไม่สะอาด พนักงานทำอะไรช้ามาก
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC68/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC68/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='2']    #Click Score 2 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC68/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(8)    #ClickScore 7
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC68/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC68/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click Score0
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC68/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC68/Negative_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_0    #ได้รับ
    Sleep    2s
    #Attribute7_Profile
    Attribute7_Profile    ${CheckAtt7_Profile1}
    ChoiceProfile
    Click Element    ${CheckChoice9_TH}    #อื่นๆ โปรดระบุ
    Press Key    name=profile1_9_oa    ส่งข้อความผ่าน SMS ยืดยาว
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC45/Negative_Profile_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Attribute8
    Attribute8_Sale    ${CheckAttribute_8}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC45/Negative_Attibute8_TH.png
    Click Element    css=div[name='page16'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC68/Negative_Attibute9_TH.png
    Click Element    css=div[name='page17'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC68/Negative_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC68/Negative_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice2_TH}    #Instagram
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC68/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC68/EndingPage_TH.png
    Sleep    2s
    Click Element    ${Btn_IconEND}
    Sleep    2s
    Click Element    ${ButtonNext_RD}
    Sleep    3s

TestCase69 Survey Sale Negative_NoInput OA_OptinNo_Guided_UVS00043
    #Open Browser
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC69/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC69/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC69/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0999999969    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC69/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC69/Negative_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='1']    #Click Score 1 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC69/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_1    #ไม่ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC69/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='5']    #Click Score 5 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC69/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(10)    # Click Score 9
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC69/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC69/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC69/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC69/Negative_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_0    #ได้รับ
    Sleep    2s
    #Attribute7_Profile
    Attribute7_Profile    ${CheckAtt7_Profile1}
    ChoiceProfile
    Click Element    ${CheckChoice6_TH}    #มือถือสมาร์ทโฟน (Smartphone)
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC69/Negative_Profile_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Attribute8
    Attribute8_Sale    ${CheckAttribute_8}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC69/Negative_Attibute8_TH.png
    Click Element    css=div[name='page16'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC69/Negative_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC69/Negative_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC69/Negative_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice5_TH}    #โฆษณาทางโทรทัศน์
    Click Element    ${CheckMChoice6_TH}    #โฆษณาทางวิทยุ
    Click Element    ${CheckMChoice8_TH}    #โฆษณาในเวปไซต์
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC69/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC69/EndingPage_TH.png
    Sleep    2s
    Click Element    ${Btn_IconEND}
    Sleep    2s
    Click Element    ${ButtonNext_RD}
    Sleep    3s

TestCase70 Survey Sale Negative_NoInput OA_OptinYes_Guided_UVS00039
    #Open Browser
    Open Browser    ${LinksurveySale_70}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC70/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC70/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC70/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0999999970    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC70/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC70/Negative_PageCSAT_TH.png
    Click Element    ${Score4}    #Click Score 4 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC70/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC70/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='8']    #Click Score 8 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC70/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(11)    # Click Score 10
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC70/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC70/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC70/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC70/Attibute7_TH.png
    Click Element    name=Answer_15_0_0_0    #ได้รับ
    Sleep    2s
    #Attribute7_Profile
    Attribute7_Profile    ${CheckAtt7_Profile1}
    ChoiceProfile
    Click Element    ${CheckChoice3_TH}    #ทางไลน์/เฟซบุ๊ค (ทางร้านเพิ่มลูกค้าทางไลน์ หรือลูกค้าเห็นทางเพจเฟซบุ๊คของทางร้านจากการเชิญเฟซบุ๊ค)
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC47/Negative_Profile_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Attribute8
    Attribute8_Sale    ${CheckAttribute_8}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC47/Negative_Attibute8_TH.png
    Click Element    css=div[name='page16'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC70/Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC70/Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC70/Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice9_TH}    #ออกบูธ/ อีเว้นท์ ตามสถานที่ต่างๆ
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC70/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC70/EndingPage_TH.png
    Sleep    2s
    Close Browser
