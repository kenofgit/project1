*** Settings ***
Library           Selenium2Library
Resource          Variables.robot
Resource          Keywords.robot

*** Test Cases ***
TestCase25 Survey Service Positive_Attr12 Yes_Attr14 Yes_UVS00072
    #Open Browser
    Open Browser    ${LinksurveyService_25}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/Positive_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/Positive_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/Positive_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/Positive_PageTel_TH.png
    Click Element    ${Btn_IconNext}
    Element Text Should Be    id=bar-alert-message    กรุณาตอบคำถามที่จำเป็นให้ครบถ้วน    #Check Alert No Input Tel
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/Positive_PageTelNoSuccess_TH.png
    Sleep    2s
    Select Window    MAIN
    Sleep    2s
    Press Key    name=tel_opt_in    0888888825    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/Positive_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/Positive_PageCSAT_TH.png
    Click Element    ${Score9}    #Click Score 9 CSAT
    #Input CSAT OA
    OA_CSATPos    ${CheckCSAT_Pos}    ${CheckCSAT_Pos1}
    Press Key    name = csat_pos    รวมๆแล้วชอบการบริการที่นี้ทุกอย่างเลย พนักงานยิ้มแย้มแจ่มใส แต่งตัวสะอาดสะอ้าน ถึงเป็นแค่ส่วนของการบริการรถมอไซต์แต่ก็มีระดับเทียบเท่าศูนย์รถยนต์ ชอบคะ
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/Positive_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/Positive_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='10']    #Click Score 10 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/Positive_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/Positive_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/Positive_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/Positive_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/Positive_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/Positive_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/Positive_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/Positive_Attribute15_TH.png
    Click Element    css=div[name='page24'] .Scale .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/Positive_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(11)    #Click Score10
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/Positive_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/Positive_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/Positive_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/Positive_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase26 Survey Sale Positive_Attr12 Yes_Attr14No_UVS00083
    #Open Browser
    Open Browser    ${LinksurveyService_26}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC26/Positive_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC26/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC26/Positive_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888826    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC26/Positive_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC26/Positive_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='9']    #Click Score 9 CSAT
    #Input CSAT OA
    OA_CSATPos    ${CheckCSAT_Pos}    ${CheckCSAT_Pos1}
    Press Key    name = csat_pos    บริการอยู่ในเกณฑ์มาตรฐานของศูนย์อื่นๆ ดี แต่ก็ความสะอาดของส่วนรองรับดูเลอะน้ำมันเครื่อง เหมือนมีพนักงานมานั่งเล่นมากกว่าจะเป็นส่วนของลูกต้า
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC26/Positive_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC26/Positive_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='8']    #Click Score 8 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC26/Positive_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC26/Positive_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC26/Positive_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(9)    #Click Score 8
    Sleep    4s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC26/Positive_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC26/Positive_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC26/Positive_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC26/Positive_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC26/Positive_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(5)    #Click Score 4
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC26/Positive_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC26/Positive_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC26/Positive_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC26/Positive_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC26/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase27 Survey Service Positive_Attr12 No_Attr14 Yes_UVS00118
    #Open Browser
    Open Browser    ${LinksurveyService_27}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Positive_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Positive_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Positive_PageTel_TH.png
    Click Element    ${Btn_IconNext}
    Element Text Should Be    id=bar-alert-message    กรุณาตอบคำถามที่จำเป็นให้ครบถ้วน    #Check Alert No Input Tel
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Positive_PageTelNoSuccess_TH.png
    Sleep    2s
    Select Window    MAIN
    Sleep    2s
    Press Key    name=tel_opt_in    088888827    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Positive_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Positive_PageCSAT_TH.png
    Click Element    ${Score10}    #Click Score 10 CSAT
    #Input CSAT OA
    OA_CSATPos    ${CheckCSAT_Pos}    ${CheckCSAT_Pos1}
    Press Key    name = csat_pos    รวมๆดีเลยนะ แต่เหมือนพนักงานไม่ค่อยฟังในสิ่งที่เราต้องการพูด หรือบางทีก็พูดแทรกชึ้นมา ถ้าปรับปรุงข้อนี้ได้คงจะดีกว่านี้
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Positive_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Positive_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='7']    #Click Score 6 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Positive_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Positive_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Positive_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] .Scale .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Positive_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(5)    #Click Score 2
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Positive_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Positive_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Positive_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Positive_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(3)    #Click Score 2
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Positive_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Positive_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Positive_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Positive_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_1    #ไม่ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase28 Survey Service Positive NoInput_Attr12_Attr14 Yes_UVS00098
    #Open Browser
    Open Browser    ${LinksurveyService_28}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC28/Positive_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC28/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC28/Positive_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC28/Positive_PageCSAT_TH.png
    Click Element    ${Score9}    #Click Score 9 CSAT
    #Input CSAT OA #No Input
    OA_CSATPos    ${CheckCSAT_Pos}    ${CheckCSAT_Pos1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC28/Positive_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC28/Positive_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='9']    #Click Score 9 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC28/Positive_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC28/Positive_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC28/Positive_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC28/Positive_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(10)    #Click Score9
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC28/Positive_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC26/Positive_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC28/Positive_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Positive_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC28/Positive_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(5)    #Click Score 4
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC28/Positive_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC28/Positive_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC28/Positive_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC28/Positive_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_1    #ไม่ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC28/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase29 Survey Service Neutral_Attr12 Yes_Attr14 Yes_UVS00076
    Open Browser    ${LinksurveyService_29}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC29/Neutral_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC29/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC29/Neutral_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC29/Neutral_PageTel_TH.png
    Click Element    ${Btn_IconNext}
    Element Text Should Be    id=bar-alert-message    กรุณาตอบคำถามที่จำเป็นให้ครบถ้วน    #Check Alert No Input Tel
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC29/Neutral_PageTelNoSuccess_TH.png
    Sleep    2s
    Select Window    MAIN
    Sleep    2s
    Press Key    name=tel_opt_in    0888888885    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC29/Neutral_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC29/Neutral_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='7']    #Click Score 7 CSAT
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC29/Neutral_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='7']    #Click Score 7 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC29/Neutral_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC29/Neutral_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC29/Neutral_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC29/Neutral_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC29/Neutral_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC29/Neutral_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(10)    #Click Score 10
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC29/Neutral_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC29/Neutral_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC29/Neutral_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(5)    #Click Score4
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC29/Neutral_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC29/Neutral_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC29/Neutral_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC29/Neutral_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC29/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase30 Survey Service Neutral_Attr12 Yes_Attr14No_UVS00097
    #Open Browser
    Open Browser    ${LinksurveyService_30}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC30/Neutral_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC30/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC30/Neutral_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888830    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC30/Neutral_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC30/Neutral_PageCSAT_TH.png
    Click Element    ${Score8}    #Click Score 8CSAT
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC30/Neutral_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='3']    #Click Score 3NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC30/Neutral_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC30/Neutral_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC30/Neutral_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC30/Neutral_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC30/Neutral_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC30/Neutral_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC30/Neutral_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC30/Neutral_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(4)    #Click Score 3
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC30/Neutral_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC30/Neutral_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC30/Neutral_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC30/Neutral_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC30/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase31 Survey Service Neutral_Attr12 No_Attr14 Yes_UVS00101
    #Open Browser
    Open Browser    ${LinksurveyService_31}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC31/Neutral_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC31/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC31/Neutral_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888831    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC31/Neutral_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC31/Neutral_PageCSAT_TH.png
    Click Element    ${Score7}    #Click Score 7 CSAT
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC31/Neutral_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='2']    #Click Score 2 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC31/Neutral_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] .Scale .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC31/Neutral_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC31/Neutral_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC31/Neutral_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC31/Neutral_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC31/Neutral_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC31/Neutral_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC31/Neutral_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(7)    #Click Score 6
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC31/Neutral_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC31/Neutral_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC31/Neutral_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC31/Neutral_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC31/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase32 (N) Survey Service Negative Input OA Optin_Yes_Attr12 Yes_Attr14 Yes_UVS00140
    #Open Browser
    Open Browser    ${LinksurveyService_32}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC32/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC32/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC32/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC32/Negative_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='3']    #Click Score 3 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    เอารถมาเคลมทำสี และเช็คระยะ ไม่มีพนักงานมาต้อนรับ ผ้าเบรคแจ้งให้เปลี่ยนสรุปไม่ได้เปลี่ยน เหนื่อยหน่าย
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC32/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC32/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='1']    #Click Score 1 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC32/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC32/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC32/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(4)    #Click Score3
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC32/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(4)    #Click Score3
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC32/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC32/Negative_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(9)    #Click Score8
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC32/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC32/Negative_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC32/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(2)    #Click Score 1
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC32/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC32/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC32/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC32/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC32/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase33 (N) Survey Service Negative Input OA Optin_Yes_Attr12 Yes_Attr14 No_UVS00102
    #Open Browser
    Open Browser    ${LinksurveyService_33}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC33/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC33/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC33/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888833    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC33/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC33/Negative_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='1']    #Click Score 1 CSAT
    #Input CSAT OA
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    สีทำออกมาไม่สม่ำเสมอ ค่าใช้จ่ายไม่ตรงกับที่ประเมิน
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC33/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC33/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='2']    #Click Score 2 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC33/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC33/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC33/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC33/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC33/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC33/Negative_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(10)    #Click Score9
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC33/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC33/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(4)    #Click Score 3
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC33/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC33/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC33/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC33/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC33/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase34 Survey Service Negative Input OA Optin_No_Attr12 Yes_Attr14 Yes_UVS00105
    #Open Browser
    Open Browser    ${LinksurveyService_34}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC34/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC34/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC34/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888834    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC34/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC34/Negative_PageCSAT_TH.png
    Click Element    ${Score1}    #Click Score 1 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    เอารถไปทิ้งไว้ เนื่องจากมีธุระและรอนาน ทางพนักงานแจ้งว่าจะมีการโทรมาแจ้งรายละเอียดเพิ่มเติม กว่าจะโทรมาแจ้งคืออีก 1 วัน นึกว่ารถหายไปสะหละ
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC34/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_1    #ไม่ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC34/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='0']    #Click Score 0 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC34/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC34/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC34/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC34/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC34/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC34/Negative_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC34/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC34/Negative_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC34/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(10)    #Click Score 9
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC34/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC34/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC34/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC34/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC34/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase35 Survey Service Negative Input OA Optin_No_Attr12 Yes_Attr14 No_UVS00138
    #Open Browser
    Open Browser    ${LinksurveyService_35}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC35/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC35/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC35/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC35/Negative_PageCSAT_TH.png
    Click Element    ${Score1}    #Click Score 1 CSAT
    #Input CSAT OA
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    รถทำออกมามีเสียงแปลกๆ สุดท้ายต้องกลับเข้าศูนย์ไปใหม่ แต่พนักงานบริการโอเค มีแค่บางคนที่ไม่ยิ้มแย้ม ไม่สนใจลูกค้า
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC35/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_1    #ไม่ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC35/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='2']    #Click Score 2 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC35/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC35/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC35/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] .Scale .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC35/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC35/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC35/Negative_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC35/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC35/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(2)    #Click Score1
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC35/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC35/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC35/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC35/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC35/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase36 (N) Survey Service Negative Input OA Optin_Yes_Attr12 No_Attr14 Yes_UVS00111
    #Open Browser
    Open Browser    ${LinksurveyService_36}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC36/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC36/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC36/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888836    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC36/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC36/Negative_PageCSAT_TH.png
    Click Element    ${Score1}    #Click Score 1 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    ตรวจเช็คสถาพไม่ละเอียด
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC36/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC36/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='1']    #Click Score 1 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC36/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC36/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC36/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(6)    #Click Score5
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC36/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC36/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC36/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC36/Negative_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC36/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(8)    #Click Score 7
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC36/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC36/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC36/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC36/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC36/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase37 (N) Survey Service Negative Input OA Optin_Yes_Attr12 No_Attr14 No_UVS00125
    #Open Browser
    Open Browser    ${LinksurveyService_37}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC37/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC37/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC37/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC37/Negative_PageTel_TH.png
    Click Element    ${Btn_IconNext}
    Element Text Should Be    id=bar-alert-message    กรุณาตอบคำถามที่จำเป็นให้ครบถ้วน    #Check Alert No Input Tel
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC37/Negative_PageTelNoSuccess_TH.png
    Sleep    2s
    Select Window    MAIN
    Sleep    2s
    Press Key    name=tel_opt_in    0888888837    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC37/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC37/Negative_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='2']    #Click Score 2 CSAT
    #Input CSAT OA
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    ข้อเสียมากกว่าข้อดี จำดีเทลไม่ได้เท่าไหร่
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC37/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC37/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='1']    #Click Score 1 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC37/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC37/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC37/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(8)    #Click Score 7
    Sleep    4s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC37/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click Score0
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC37/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC37/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC37/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(8)    #Click Score 7
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC37/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC37/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC37/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC37/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC37/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase38 (N) Survey Service Negative Input OA Optin_Yes_Attr12 No_Attr14 No_UVS00090
    #Open Browser
    Open Browser    ${LinksurveyService_38}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC38/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC38/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC38/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888838    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC38/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC38/Negative_PageCSAT_TH.png
    Click Element    ${Score0}    #Click Score 0 CSAT
    #Input CSAT OA
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    รู้สึกพอมาใช้บริการที่นี่แล้วไม่อยากมาอีก ด้วยสภาพแวดล้อม และ พนักงานไม่ค่อยโอเค
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC38/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC38/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='3']    #Click Score 3 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC38/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC38/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC38/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] .Scale .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC38/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC38/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC38/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC38/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(2)    #Click Score1
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC38/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC38/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC38/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC38/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC38/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase39 Survey Service Negative NoInput OA Optin_Yes_Attr12 Yes_Attr14 Yes_UVS00130
    #Open Browser
    Open Browser    ${LinksurveyService_39}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC39/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC39/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC39/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888839    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC39/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC39/Negative_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='2']    #Click Score 2 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC39/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC39/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='2']    #Click Score 2 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC39/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(2)    #Click Score1
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC39/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(6)    #Click Score5
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC39/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(7)    #Click Score6
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC39/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] .Scale .ScaleValue > label:nth-of-type(1)    #Click Score0
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC39/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC39/Negative_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC39/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC39/Negative_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC39/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(10)    #Click Score 9
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC39/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC39/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC39/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC39/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC39/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase40 Survey Service Negative NoInput OA Optin_No_Attr12 Yes_Attr14 Yes_UVS00122
    #Open Browser
    Open Browser    ${LinksurveyService_40}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC40/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC40/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC40/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888840    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC40/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC40/Negative_PageCSAT_TH.png
    Click Element    ${Score2}    #Click Score 2 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC40/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_1    #ไม่ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC40/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='2']    #Click Score 2 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC40/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC40/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC40/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC40/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC40/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC40/Negative_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC40/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC40/Negative_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC40/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(7)    #Click Score 6
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC40/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC40/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC40/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC40/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC40/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase41 Survey Service Positive NoInput_Attr12_Attr14 Yes_UVS00093
    #Open Browser
    Open Browser    ${LinksurveyService_41}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC41/Positive_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC41/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC41/Positive_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC41/Positive_PageCSAT_TH.png
    Click Element    ${Score9}    #Click Score 9 CSAT
    #Input CSAT OA #No Input
    OA_CSATPos    ${CheckCSAT_Pos}    ${CheckCSAT_Pos1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC41/Positive_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC41/Positive_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='9']    #Click Score 9 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC41/Positive_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC41/Positive_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC41/Positive_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC41/Positive_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC41/Positive_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC41/Positive_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC41/Positive_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC41/Positive_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC41/Positive_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(11)    #Click Score 10
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC41/Positive_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC41/Positive_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC41/Positive_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC41/Positive_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC41/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase42 Survey Service Neutral_Attr12 Yes_Attr14 Yes_UVS00092
    Open Browser    ${LinksurveyService_42}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC42/Neutral_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC42/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC42/Neutral_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888845    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC42/Neutral_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC42/Neutral_PageCSAT_TH.png
    Click Element    ${Score7}    #Click Score 7 CSAT
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC42/Neutral_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='7']    #Click Score 7 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC42/Neutral_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC42/Neutral_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC42/Neutral_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC42/Neutral_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC42/Neutral_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC42/Neutral_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC42/Neutral_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC42/Neutral_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC42/Neutral_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(5)    #Click Score4
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC42/Neutral_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC42/Neutral_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC42/Neutral_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC42/Neutral_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC42/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase43 (N) Survey Service Negative Input OA Optin_Yes_Attr12 Yes_Attr14 Yes_UVS00099
    #Open Browser
    Open Browser    ${LinksurveyService_43}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC49/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC43/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC43/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888849    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC43/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC43/Negative_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='1']    #Click Score 1 CSAT
    #Input CSAT OA
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    มีการเก็บค่าใช้จ่ายเพิ่มเติมแต่ไม่มีการโทรแจ้งก่อน
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC43/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC43/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='2']    #Click Score 2 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC43/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC43/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC43/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] .Scale .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC43/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] .Scale .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC43/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC43/Negative_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC43/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC43/Negative_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC43/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(4)    #Click Score 3
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC43/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC43/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC43/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC43/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC43/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase44 Survey Service Negative Input OA Optin_No_Attr12 Yes_Attr14 Yes_UVS00094
    #Open Browser
    Open Browser    ${LinksurveyService_44}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC44/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC44/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC44/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC44/Negative_PageCSAT_TH.png
    Click Element    ${Score1}    #Click Score 1 CSAT
    #Input CSAT OA
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    พนักงานพูดจาไม่โอเค
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC44/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_1    #ไม่ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC44/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='2']    #Click Score 2 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC44/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC44/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC44/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC44/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC44/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC44/Negative_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC44/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC44/Negative_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC44/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(3)    #Click Score 2
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC44/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC44/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC44/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC44/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC44/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase45 Survey Service Negative NoInput OA Optin_Yes_Attr12 Yes_Attr14 Yes_UVS00103
    #Open Browser
    Open Browser    ${LinksurveyService_45}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC45/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC45/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC45/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888855    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC45/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC45/Negative_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='2']    #Click Score 2 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC45/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC45/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='2']    #Click Score 2 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC45/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC45/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC45/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] .Scale .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC45/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] .Scale .ScaleValue > label:nth-of-type(1)    #Click Score0
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC45/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC45/Negative_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC45/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC45/Negative_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC45/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(10)    #Click Score 9
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC45/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC45/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC45/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC45/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC45/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase57 Survey Service Positive NoInput_Attr12_Attr14 Yes_UVS00080
    #Open Browser
    Open Browser    ${LinksurveyService_57}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC57/Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC57/PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC57/PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC57/PageCSAT_TH.png
    Click Element    ${Score9}    #Click Score 9 CSAT
    #Input CSAT OA #No Input
    OA_CSATPos    ${CheckCSAT_Pos}    ${CheckCSAT_Pos1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC57/PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC57/NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='9']    #Click Score 9 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC57/Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC57/Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC57/Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC57/Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC57/Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC26/Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC57/Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC57/Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(8)    #Click Score 7
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC57/Attribute17_TH.png
    Click Element    name=Answer_26_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC57/Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC57/Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC57/Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC57/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase58 Survey Service Neutral_Attr12 Yes_Attr14 Yes_UVS00086
    Open Browser    ${LinksurveyService_58}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC58/Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC58/PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC58/PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888858    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC58/PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC58/PageCSAT_TH.png
    Click Element    ${Score7}    #Click Score 7 CSAT
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC58/NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='7']    #Click Score 7 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC58/Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC58/Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC58/Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC58/Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC58/Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC58/Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC58/Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC58/Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC58/Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(10)    #Click Score 9
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC58/Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC58/Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC58/Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC58/Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC58/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase59 (N) Survey Service Negative Input OA Optin_Yes_Attr12 Yes_Attr14 Yes_UVS00095
    #Open Browser
    Open Browser    ${LinksurveyService_59}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC59/Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC59/PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC59/PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888859    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC59/PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC59/PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='1']    #Click Score 1 CSAT
    #Input CSAT OA
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    พนักงานบริการไม่สุภาพ ระหว่างคุยมีการถุยเสมหะ น่าเกลียดมาก
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC59/PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC59/NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='2']    #Click Score 2 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC59/Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC59/Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC59/Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] .Scale .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC59/Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC59/Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC59/Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC59/Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC59/Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC59/Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(4)    #Click Score 3
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC59/Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC59/Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC59/Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC59/Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC59/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase60 Survey Service Negative Input OA Optin_No_Attr12 Yes_Attr14 Yes_UVS000100
    #Open Browser
    Open Browser    ${LinksurveyService_60}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC60/Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC60/PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC60/PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC60/PageCSAT_TH.png
    Click Element    ${Score1}    #Click Score 1 CSAT
    #Input CSAT OA
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    พนักงานพูดจาไม่สุภาพ กิริยาไม่ดี
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC60/PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_1    #ไม่ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC60/NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='2']    #Click Score 2 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC60/Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC60/Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC60/Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC60/Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC60/Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC60/Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC60/Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC50/Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC60/Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(6)    #Click Score 6
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC60/Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC60/Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC60/Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC60/Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC60/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase61 Survey Service Negative NoInput OA Optin_Yes_Attr12 Yes_Attr14 Yes_UVS00104
    #Open Browser
    Open Browser    ${LinksurveyService_61}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC61/Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC61/PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC61/PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888861    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC61/PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC61/PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='2']    #Click Score 2 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC61/PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC61/NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='2']    #Click Score 2 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC61/Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC61/Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC61/Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC61/Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC61/Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC61/Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC61/Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC61/Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC61/Attribute16_TH.png
    Click Element    css=div[name='page25'] .Scale .ScaleValue > label:nth-of-type(1)    #Click Score 0
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC61/Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC61/Attribute18_TH.png
    Click Element    name=Answer_27_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC61/Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC61/Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC61/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase62 Survey Service Negative Input OA Optin_No_Attr12 Yes_Attr14 Yes_UVS000107
    #Open Browser
    Open Browser    ${LinksurveyService_62}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC62/Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC62/PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC62/PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC62/PageCSAT_TH.png
    Click Element    ${Score4}    #Click Score 4 CSAT
    #Input CSAT OA
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    เทคนิคความรู้ไม่ดีเท่าที่ควร ควรปรับปรุง
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC62/PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_1    #ไม่ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC62/NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='2']    #Click Score 2 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC62/Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC62/Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC62/Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC62/Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC62/Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC62/Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC62/Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC50/Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC62/Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(11)    #Click Score 10
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC62/Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC62/Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC62/Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC62/Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC62/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase63 Survey Service Negative NoInput OA Optin_Yes_Attr12 Yes_Attr14 Yes_UVS00108
    #Open Browser
    Open Browser    ${LinksurveyService_63}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC63/Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC63/PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC63/PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888863    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC63/PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC63/PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='2']    #Click Score 2 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC63/PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC63/NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='2']    #Click Score 2 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC63/Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC63/Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC63/Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC63/Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC63/Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC63/Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC63/Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC63/Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC63/Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(3)    #Click Score 2
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC63/Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC63/Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC63/Attribute19_TH.png
    Click Element    name=Answer_28_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC63/Attribute20_TH.png
    Click Element    name=Answer_29_0_0_1    #ไม่ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC63/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase64 (N) Survey Service Negative Input OA Optin_Yes_Attr12 Yes_Attr14 Yes_UVS00109
    #Open Browser
    Open Browser    ${LinksurveyService_64}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC64/Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC64/PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC64/PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888864    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC64/PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC64/PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='1']    #Click Score 1 CSAT
    #Input CSAT OA
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    ยืนงงอยู่นาน กว่าจะมีพนักงานเข้ามาทัก
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC64/PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC64/NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='2']    #Click Score 2 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC64/Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC64/Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC64/Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC64/Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC64/Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC64/Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC64/Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC64/Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC64/Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(4)    #Click Score 3
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC64/Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC64/Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC64/Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC64/Attribute20_TH.png
    Click Element    name=Answer_29_0_0_1    #ไม่ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC64/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase65 Survey Service Negative Input OA Optin_No_Attr12 Yes_Attr14 Yes_UVS000110
    #Open Browser
    Open Browser    ${LinksurveyService_65}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC65/Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC65/PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC65/PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC65/PageCSAT_TH.png
    Click Element    ${Score4}    #Click Score 4 CSAT
    #Input CSAT OA
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    ...
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC65/PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_1    #ไม่ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC65/NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='2']    #Click Score 2 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC65/Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC65/Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC65/Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC65/Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC65/Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC65/Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC65/Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC50/Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC65/Attribute16_TH.png
    Click Element    css=div[name='page25'] .Scale .ScaleValue > label:nth-of-type(1)    #Click Score 0
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC65/Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC65/Attribute18_TH.png
    Click Element    name=Answer_27_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC65/Attribute19_TH.png
    Click Element    name=Answer_28_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC65/Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC65/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase66 Survey Service Negative NoInput OA Optin_Yes_Attr12 Yes_Attr14 Yes_UVS00114
    #Open Browser
    Open Browser    ${LinksurveyService_66}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC66/Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC66/PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC66/PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888866    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC66/PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC66/PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='2']    #Click Score 2 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC66/PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC66/NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='2']    #Click Score 2 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC66/Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC66/Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC66/Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC66/Attribute4_TH.png
    Click Element    css=div[name='page11'] .Scale .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC66/Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC66/Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC66/Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC66/Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(10)    #Click Score    9
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC66/Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(9)    #Click Score 8
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC66/Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC66/Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC66/Attribute19_TH.png
    Click Element    name=Answer_28_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC66/Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC66/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase67 (N) Survey Service Negative Input OA Optin_Yes_Attr12 Yes_Attr14 Yes_UVS00116
    #Open Browser
    Open Browser    ${LinksurveyService_67}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC67/Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC67/PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC67/PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888867    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC67/PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC67/PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='1']    #Click Score 1 CSAT
    #Input CSAT OA
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    ยืนงงอยู่นาน กว่าจะมีพนักงานเข้ามาทัก
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC67/PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC67/NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='2']    #Click Score 2 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC67/Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC67/Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC67/Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC67/Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC67/Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC67/Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC67/Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC67/Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC67/Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(6)    #Click Score 5
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC67/Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC67/Attribute18_TH.png
    Click Element    name=Answer_27_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC67/Attribute19_TH.png
    Click Element    name=Answer_28_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC67/Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC67/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase68 Survey Service Negative Input OA Optin_No_Attr12 Yes_Attr14 Yes_UVS000121
    #Open Browser
    Open Browser    ${LinksurveyService_68}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC68/Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC68/PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC68/PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC68/PageCSAT_TH.png
    Click Element    ${Score4}    #Click Score 4 CSAT
    #Input CSAT OA
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    ...
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC68/PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_1    #ไม่ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC68/NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='2']    #Click Score 2 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC68/Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC68/Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC68/Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC68/Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC68/Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC68/Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC68/Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC50/Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC68/Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(5)    #Click Score 4
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC68/Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC68/Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC68/Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC68/Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC68/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase69 Survey Service Negative NoInput OA Optin_Yes_Attr12 Yes_Attr14 Yes_UVS00123
    #Open Browser
    Open Browser    ${LinksurveyService_69}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC69/Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC69/PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC69/PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888869    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC69/PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC69/PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='2']    #Click Score 2 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC69/PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC69/NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='2']    #Click Score 2 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC69/Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC69/Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] .Scale .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC69/Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC69/Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC69/Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC69/Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC69/Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC69/Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(10)    #Click Score    9
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC69/Attribute16_TH.png
    Click Element    css=div[name='page25'] .Scale .ScaleValue > label:nth-of-type(1)    #Click Score 0
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC69/Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC69/Attribute18_TH.png
    Click Element    name=Answer_27_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC69/Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC69/Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC69/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase70 (N) Survey Service Negative Input OA Optin_Yes_Attr12 Yes_Attr14 Yes_UVS00133
    #Open Browser
    Open Browser    ${LinksurveyService_70}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC70/Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC70/PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC70/PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888870    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC70/PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC70/PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='1']    #Click Score 1 CSAT
    #Input CSAT OA
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    เฉยๆ ค่อนไปทางแย่ แนะนำปรับปรุงให้ดียิ่งขึ้นก็ดี
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC70/PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC70/NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='2']    #Click Score 2 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC70/Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC70/Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC70/Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC70/Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC70/Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC70/Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC70/Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC70/Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(6)    #Click Score 7
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC70/Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(2)    #Click Score 1
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC70/Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC70/Attribute18_TH.png
    Click Element    name=Answer_27_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC70/Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC70/Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC70/EndingPage_TH.png
    Sleep    2s
    Close Browser
