*** Settings ***
Library           Selenium2Library
Resource          Variables.robot
Resource          Keywords.robot

*** Test Cases ***
TestCase1 Survey Service Positive_Attr12 Yes_Attr14 Yes_UVS00073
    #Open Browser
    Open Browser    ${LinksurveyService_1}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC1/Positive_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC1/Positive_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC1/Positive_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC1/Positive_PageTel_TH.png
    Click Element    ${Btn_IconNext}
    Element Text Should Be    id=bar-alert-message    กรุณาตอบคำถามที่จำเป็นให้ครบถ้วน    #Check Alert No Input Tel
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC1/Positive_PageTelNoSuccess_TH.png
    Sleep    2s
    Select Window    MAIN
    Sleep    2s
    Press Key    name=tel_opt_in    0888888881    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC1/Positive_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC1/Positive_PageCSAT_TH.png
    Click Element    ${Score10}    #Click Score 10 CSAT
    #Input CSAT OA
    OA_CSATPos    ${CheckCSAT_Pos}    ${CheckCSAT_Pos1}
    Press Key    name = csat_pos    พนักงานแนะนำดีรวมทั้งได้เปรียบเทียบข้อดีที่แตกต่างกันของแต่ละรุ่น รวมทั้งแนะนำการใช้งานที่ดีให้กับลูกค้า แถมยังมีโปรดีๆ ให้อีกด้วย
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC1/Positive_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC1/Positive_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='10']    #Click Score 10 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC1/Positive_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC1/Positive_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC1/Positive_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC1/Positive_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC1/Positive_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC1/Positive_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC1/Positive_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC1/Positive_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC1/Positive_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(11)    #Click Score10
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC1/Positive_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC1/Positive_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC1/Positive_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC1/Positive_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC1/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase2 Survey Service Positive_Attr12 Yes_Attr14No_UVS00091
    #Open Browser
    Open Browser    ${LinksurveyService_2}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC2/Positive_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC2/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC2/Positive_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888882    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC2/Positive_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC2/Positive_PageCSAT_TH.png
    Click Element    ${Score10}    #Click Score 10 CSAT
    #Input CSAT OA
    OA_CSATPos    ${CheckCSAT_Pos}    ${CheckCSAT_Pos1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC2/Positive_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC2/Positive_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='10']    #Click Score 10 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC2/Positive_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(8)    #Click Score7
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC2/Positive_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(10)    #Click Score9
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC2/Positive_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(5)    #Click Score4
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC2/Positive_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(9)    #Click Score8
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC2/Positive_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC2/Positive_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(10)    #Click Score9
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC2/Positive_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC2/Positive_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(11)    #Click Score10
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC2/Positive_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC2/Positive_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC2/Positive_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC2/Positive_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC2/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase3 Survey Service Positive_Attr12 No_Attr14 Yes_UVS00096
    #Open Browser
    Open Browser    ${LinksurveyService_3}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC3/Positive_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC3/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC3/Positive_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC3/Positive_PageTel_TH.png
    Click Element    ${Btn_IconNext}
    Element Text Should Be    id=bar-alert-message    กรุณาตอบคำถามที่จำเป็นให้ครบถ้วน    #Check Alert No Input Tel
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC3/Positive_PageTelNoSuccess_TH.png
    Sleep    2s
    Select Window    MAIN
    Sleep    2s
    Press Key    name=tel_opt_in    0888888881    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC3/Positive_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC3/Positive_PageCSAT_TH.png
    Click Element    ${Score10}    #Click Score 10 CSAT
    #Input CSAT OA
    OA_CSATPos    ${CheckCSAT_Pos}    ${CheckCSAT_Pos1}
    Press Key    name = csat_pos    พนักงานเตรียมความพร้อมมาดี ความรู้แน่น รวมทั้งบริการดีมาก
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC3/Positive_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC3/Positive_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='7']    #Click Score 6 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC3/Positive_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(8)    #Click Score7
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC3/Positive_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC3/Positive_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC3/Positive_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC3/Positive_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC3/Positive_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC3/Positive_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC3/Positive_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(8)    #Click Score 7
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC3/Positive_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC3/Positive_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC3/Positive_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC3/Positive_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC3/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase4 Survey Service Positive_Attr12 No_Attr14No_UVS00071
    #Open Browser
    Open Browser    ${LinksurveyService_4}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC4/Positive_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC4/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC4/Positive_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC4/Positive_PageCSAT_TH.png
    Click Element    ${Score10}    #Click Score 10 CSAT
    #Input CSAT OA
    OA_CSATPos    ${CheckCSAT_Pos}    ${CheckCSAT_Pos1}
    Press Key    name = csat_pos    พนักงานแนะนำดีรวมทั้งได้เปรียบเทียบข้อดีที่แตกต่างกันของแต่ละรุ่น รวมทั้งแนะนำการใช้งานที่ดีให้กับลูกค้า แถมยังมีโปรดีๆ ให้อีกด้วย
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC4/Positive_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC4/Positive_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='10']    #Click Score 10 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC4/Positive_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC4/Positive_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC4/Positive_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC4/Positive_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC4/Positive_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC4/Positive_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC4/Positive_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(11)    #Click Score10
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC4/Positive_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC4/Positive_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC4/Positive_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC4/Positive_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_1    #ไม่ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC4/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase5 Survey Service Neutral_Attr12 Yes_Attr14 Yes_UVS00115
    Open Browser    ${LinksurveyService_5}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC5/Neutral_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC5/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC5/Neutral_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC5/Neutral_PageTel_TH.png
    Click Element    ${Btn_IconNext}
    Element Text Should Be    id=bar-alert-message    กรุณาตอบคำถามที่จำเป็นให้ครบถ้วน    #Check Alert No Input Tel
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC5/Neutral_PageTelNoSuccess_TH.png
    Sleep    2s
    Select Window    MAIN
    Sleep    2s
    Press Key    name=tel_opt_in    0888888885    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC5/Neutral_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC5/Neutral_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='7']    #Click Score 7 CSAT
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC5/Neutral_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='8']    #Click Score 8 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC5/Neutral_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(10)    #Click Score9
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC5/Neutral_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(5)    #Click Score4
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC5/Neutral_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(6)    #Click Score5
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC5/Neutral_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC5/Neutral_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC5/Neutral_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC5/Neutral_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC5/Neutral_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC5/Neutral_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(10)    #Click Score9
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC5/Neutral_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC5/Neutral_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC5/Neutral_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC5/Neutral_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC5/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase6 Survey Service Neutral_Attr12 Yes_Attr14No_UVS00129
    #Open Browser
    Open Browser    ${LinksurveyService_6}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC6/Neutral_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC6/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC6/Neutral_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888886    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC6/Neutral_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC6/Neutral_PageCSAT_TH.png
    Click Element    ${Score8}    #Click Score 8CSAT
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC6/Neutral_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='9']    #Click Score 8NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC6/Neutral_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(6)    #Click Score5
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC6/Neutral_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(8)    #Click Score7
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC6/Neutral_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(5)    #Click Score4
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC6/Neutral_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(4)    #Click Score3
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC6/Neutral_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC6/Neutral_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(10)    #Click Score9
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC6/Neutral_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC6/Neutral_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(5)    #Click Score 4
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC6/Neutral_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC6/Neutral_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC6/Neutral_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC6/Neutral_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC6/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase7 Survey Service Neutral_Attr12 No_Attr14 Yes_UVS00124
    #Open Browser
    Open Browser    ${LinksurveyService_7}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC7/Neutral_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC7/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC7/Neutral_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888887    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC7/Neutral_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC7/Neutral_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='7']    #Click Score 7 CSAT
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC7/Neutral_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='10']    #Click Score 10 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC7/Neutral_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(8)    #Click Score7
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC7/Neutral_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(5)    #Click Score4
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC7/Neutral_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(3)    #Click Score2
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC7/Neutral_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(5)    #Click Score4
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC7/Neutral_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC7/Neutral_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC7/Neutral_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC7/Neutral_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(11)    #Click Score10
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC7/Neutral_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC7/Neutral_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC7/Neutral_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC7/Neutral_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_1    #ไม่ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC7/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase8 Survey Service Neutral_Attr12 No_Attr14No_UVS0089
    #Open Browser
    Open Browser    ${LinksurveyService_8}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC8/Neutral_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC8/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC8/Neutral_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888888    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC8/Neutral_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC8/Neutral_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='7']    #Click Score 7 CSAT
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC8/Neutral_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='6']    #Click Score 6 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC8/Neutral_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC8/Neutral_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(4)    #Click Score3
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC8/Neutral_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(2)    #Click Score1
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC8/Neutral_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC8/Neutral_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC8/Neutral_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC8/Neutral_Attribute16_TH.png
    Click Element    css=div[name='page25'] .Scale .ScaleValue > label:nth-of-type(1)    #Click Score0
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC8/Neutral_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC8/Neutral_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC8/Neutral_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC8/Neutral_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC8/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase9 (N) Survey Service Negative Input OA Optin_Yes_Attr12 Yes_Attr14 Yes_UVS00074
    #Open Browser
    Open Browser    ${LinksurveyService_9}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC9/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC9/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC9/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC9/Negative_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='3']    #Click Score 2 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    รถทำสีไม่ดี ตรวจเช็คสถาพไม่ละเอียด หาสาเหตุของปัญหาไม่ได้
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC9/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC9/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='3']    #Click Score 3 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC9/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC9/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC9/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(10)    #Click Score9
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC9/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(7)    #Click Score6
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC9/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC9/Negative_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC9/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC9/Negative_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC9/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(8)    #Click Score 7
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC9/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC9/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC9/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC9/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC9/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase10 (N) Survey Service Negative Input OA Optin_Yes_Attr12 Yes_Attr14 No_UVS00135
    #Open Browser
    Open Browser    ${LinksurveyService_10}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC10/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC10/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC10/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888810    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC10/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC10/Negative_PageCSAT_TH.png
    Click Element    ${Score2}    #Click Score 2 CSAT
    #Input CSAT OA
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    ทำสีแย่มากๆ บริการแย่มาก ค่าใช้จ่ายบานปลาย
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC10/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC10/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='2']    #Click Score 2 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC10/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] .Scale .NA.STAR11    #ไม่มีพนักงานเดินมาต้อนรับ
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC10/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click Score0
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC10/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC10/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(2)    #Click Score1
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC10/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC10/Negative_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(10)    #Click Score9
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC10/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC10/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(8)    #Click Score7
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC10/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC10/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC10/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC10/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC10/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase11 Survey Service Negative Input OA Optin_No_Attr12 Yes_Attr14 Yes_UVS00106
    #Open Browser
    Open Browser    ${LinksurveyService_11}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC11/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC11/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC11/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888811    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC11/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC11/Negative_PageCSAT_TH.png
    Click Element    ${Score1}    #Click Score 1 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    ก่อนซ่อมไม่มีการแจ้งประเมินค่าใช้จ่าย ประกันไม่รับเคลมก็ไม่แจ้ง ซ่อมเสร็จค่อยมาแจ้ง ถึงจำนวนเงินไม่เยอะก็เถอะ
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC11/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_1    #ไม่ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC11/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='0']    #Click Score 0 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC11/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC11/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC11/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(4)    #Click Score3
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC11/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC11/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC11/Negative_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC11/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC11/Negative_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC11/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(6)    #Click Score 5
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC11/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC11/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC11/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC11/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_1    #ไม่ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC11/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase12 Survey Service Negative Input OA Optin_No_Attr12 Yes_Attr14 No_UVS00113
    #Open Browser
    Open Browser    ${LinksurveyService_12}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC12/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC12/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC12/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC12/Negative_PageCSAT_TH.png
    Click Element    ${Score4}    #Click Score 4 CSAT
    #Input CSAT OA
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    อยุ่รอนานมากเกิน 30 นาที แต่ไม่มีแม้แต่น้ำมาบริการ
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC12/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_1    #ไม่ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC12/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='5']    #Click Score 5 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC12/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC12/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC12/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(7)    #Click Score6
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC12/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC12/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC12/Negative_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC12/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC12/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(9)    #Click Score8
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC12/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC12/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC12/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC12/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_1    #ไม่ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC12/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase13 (N) Survey Service Negative Input OA Optin_Yes_Attr12 No_Attr14 Yes_UVS00081
    #Open Browser
    Open Browser    ${LinksurveyService_13}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC13/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC13/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC13/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888813    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC13/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC13/Negative_PageCSAT_TH.png
    Click Element    ${Score1}    #Click Score 1 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    รถทำสีไม่ดี ตรวจเช็คสถาพไม่ละเอียด หาสาเหตุของปัญหาไม่ได้
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC13/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC13/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='1']    #Click Score 1 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC13/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(3)    #Click Score2
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC13/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC13/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(6)    #Click Score5
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC13/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(10)    #Click Score9
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC13/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC13/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC13/Negative_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC13/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(11)    #Click Score 10
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC13/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC13/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC13/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC13/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC13/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase14 (N) Survey Service Negative Input OA Optin_Yes_Attr12 No_Attr14 No_UVS00127
    #Open Browser
    Open Browser    ${LinksurveyService_14}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC14/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC14/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC14/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC14/Negative_PageTel_TH.png
    Click Element    ${Btn_IconNext}
    Element Text Should Be    id=bar-alert-message    กรุณาตอบคำถามที่จำเป็นให้ครบถ้วน    #Check Alert No Input Tel
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC14/Negative_PageTelNoSuccess_TH.png
    Sleep    2s
    Select Window    MAIN
    Sleep    2s
    Press Key    name=tel_opt_in    0888888814    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC14/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC14/Negative_PageCSAT_TH.png
    Click Element    ${Score3}    #Click Score 3 CSAT
    #Input CSAT OA
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    เหมือนจะดีแต่ก็แย่ บริการหลักๆห่วยมาก
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC14/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC14/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='1']    #Click Score 1 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC14/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(3)    #Click Score2
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC14/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(2)    #Click Score1
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC14/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(6)    #Click Score5
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC14/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(7)    #Click Score6
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC14/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC14/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC14/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click Score0
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC14/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC14/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC14/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC14/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC14/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase15 Survey Service Negative Input OA Optin_No_Attr12 No_Attr14 Yes_UVS00134
    #Open Browser
    Open Browser    ${LinksurveyService_15}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC15/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC15/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC15/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    08888888815    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC15/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC15/Negative_PageCSAT_TH.png
    Click Element    ${Score4}    #Click Score 4 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    -
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC15/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_1    #ไม่ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC15/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='4']    #Click Score 4 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC15/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(4)    #Click Score3
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC15/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(9)    #Click Score8
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC15/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(2)    #Click Score1
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC15/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(6)    #Click Score5
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC15/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC15/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC15/Negative_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(10)    #Click Score9
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC15/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(5)    #Click Score4
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC15/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC15/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC15/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC15/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_1    #ไม่ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC15/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase16 Survey Service Negative Input OA Optin_No_Attr12 No_Attr14 No_UVS00082
    #Open Browser
    Open Browser    ${LinksurveyService_16}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC16/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC16/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC16/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888816    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC16/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC16/Negative_PageCSAT_TH.png
    Click Element    ${Score0}    #Click Score 0 CSAT
    #Input CSAT OA
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    ขี้เกียจจะเล่าเบื่อ
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC16/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_1    #ไม่ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC16/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='3']    #Click Score 3 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC16/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC16/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC16/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC16/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC16/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC16/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC16/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(2)    #Click Score1
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC16/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC16/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC16/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC16/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC16/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase17 Survey Service Negative NoInput OA Optin_Yes_Attr12 Yes_Attr14 Yes_UVS00075
    #Open Browser
    Open Browser    ${LinksurveyService_17}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC17/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC17/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC17/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888817    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC17/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC17/Negative_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='2']    #Click Score 2 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC17/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC17/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='2']    #Click Score 2 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC17/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(8)    #Click Score7
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC17/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(4)    #Click Score3
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC17/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(3)    #Click Score2
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC17/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(7)    #Click Score6
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC17/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC17/Negative_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(9)    #Click Score8
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC17/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC17/Negative_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC17/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click Score 0
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC17/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC17/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC17/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC17/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC17/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase18 Survey Service Negative NoInput OA Optin_Yes_Attr12 Yes_Attr14 No_UVS00078
    #Open Browser
    Open Browser    ${LinksurveyService_18}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC18/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC18/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC18/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC18/Negative_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='1']    #Click Score 1 CSAT
    #Input CSAT OA
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC18/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_1    #ไม่ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC18/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='1']    #Click Score 1 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC18/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC18/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC18/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC18/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(2)    #Click Score1
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC18/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC18/Negative_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC18/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC18/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click Score 0
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC18/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC18/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC18/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC18/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC18/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase19 Survey Service Negative NoInput OA Optin_No_Attr12 Yes_Attr14 Yes_UVS00079
    #Open Browser
    Open Browser    ${LinksurveyService_19}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC19/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC19/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC19/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888819    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC19/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC19/Negative_PageCSAT_TH.png
    Click Element    ${Score2}    #Click Score 2 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC19/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_1    #ไม่ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC19/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='2']    #Click Score 2 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC19/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC19/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC19/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC19/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC19/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC19/Negative_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC19/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC19/Negative_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC19/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click Score 0
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC19/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC19/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC19/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC19/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC19/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase20 Survey Service Negative NoInput OA Optin_No_Attr12 Yes_Attr14 No_UVS00119
    #Open Browser
    Open Browser    ${LinksurveyService_20}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC20/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC20/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC20/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888820    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC20/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC20/Negative_PageCSAT_TH.png
    Click Element    ${Score3}    #Click Score 3 CSAT
    #Input CSAT OA
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC20/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_1    #ไม่ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC20/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='5']    #Click Score 5 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC20/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC20/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC20/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC20/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC20/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC20/Negative_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC20/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC20/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(6)    #Click Score 5
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC20/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC20/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC20/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC20/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC20/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase21 Survey Service Negative NoInput OA Optin_Yes_Attr12 No_Attr14 Yes_UVS00077
    #Open Browser
    Open Browser    ${LinksurveyService_21}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC21/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC21/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC21/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC21/Negative_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='4']    #Click Score 4 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC21/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC21/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='4']    #Click Score 4 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC21/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC21/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC21/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC21/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC21/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC21/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC21/Negative_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC21/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(9)    #Click Score 8
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC21/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC21/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC21/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC21/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_1    #ไม่ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC21/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase22 Survey Service Negative NoInput OA Optin_Yes_Attr12 No_Attr14 No_UVS00128
    #Open Browser
    Open Browser    ${LinksurveyService_22}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC22/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC22/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC22/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888822    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC22/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC22/Negative_PageCSAT_TH.png
    Click Element    ${Score2}    #Click Score 2 CSAT
    #Input CSAT OA
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC22/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_1    #ไม่ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC22/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='10']    #Click Score 10 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC22/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC22/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC22/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC22/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC22/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC22/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC22/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(6)    #Click Score 5
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC22/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC22/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC22/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC22/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC22/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase23 Survey Service Negative NoInput OA Optin_No_Attr12 No_Attr14 Yes_UVS00088
    #Open Browser
    Open Browser    ${LinksurveyService_23}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC23/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC23/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC23/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888823    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC23/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC23/Negative_PageCSAT_TH.png
    Click Element    ${Score4}    #Click Score 4 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC23/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_1    #ไม่ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC23/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='4']    #Click Score 4 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC23/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC23/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC23/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC23/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC23/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC23/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC23/Negative_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC23/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(6)    #Click Score 5
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC23/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC23/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC23/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC23/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC23/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase24 Survey Service Negative NoInput OA Optin_No_Attr12 No_Attr14 No_UVS00112
    #Open Browser
    Open Browser    ${LinksurveyService_24}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC24/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC24/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC24/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888824    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC24/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC24/Negative_PageCSAT_TH.png
    Click Element    ${Score0}    #Click Score 0 CSAT
    #Input CSAT OA
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC24/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_1    #ไม่ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC24/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='0']    #Click Score 0 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC24/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC24/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(9)    #Click Score    8
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC24/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC24/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC24/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC24/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC24/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(6)    #Click Score 5
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC24/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC24/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute19้
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC24/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC24/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC24/EndingPage_TH.png
    Sleep    2s
    Close Browser
