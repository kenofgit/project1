*** Settings ***
Library           Selenium2Library
Resource          Variables.robot
Resource          Keywords.robot

*** Test Cases ***
TestCase46 Survey Service Positive_Attr12 Yes_Attr14 Yes_UVS00120
    #Open Browser
    Open Browser    ${LinksurveyService_41}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC41/Positive_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC41/Positive_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC41/Positive_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC41/Positive_PageTel_TH.png
    Click Element    ${Btn_IconNext}
    Element Text Should Be    id=bar-alert-message    กรุณาตอบคำถามที่จำเป็นให้ครบถ้วน    #Check Alert No Input Tel
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC41/Positive_PageTelNoSuccess_TH.png
    Sleep    2s
    Select Window    MAIN
    Sleep    2s
    Press Key    name=tel_opt_in    0888888841    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC41/Positive_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC41/Positive_PageCSAT_TH.png
    Click Element    ${Score9}    #Click Score 9 CSAT
    #Input CSAT OA
    OA_CSATPos    ${CheckCSAT_Pos}    ${CheckCSAT_Pos1}
    Press Key    name = csat_pos    ประทับใจกับการบริการที่ดี แต่ความรู้ทางเทคนิคไม่ค่อยดีเลย
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC41/Positive_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC41/Positive_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='10']    #Click Score 10 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC41/Positive_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC41/Positive_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC41/Positive_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC41/Positive_Attribute4_TH.png
    Click Element    css=div[name='page11'] .Scale .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC41/Positive_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC41/Positive_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(11)    #Click Score10
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
    Click Element    css=div[name='page25'] label:nth-of-type(6)    #Click Score 5
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC41/Positive_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC41/Positive_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC41/Positive_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC41/Positive_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_1    #ไม่ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC41/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase47 Survey Sale Positive_Attr12 Yes_Attr14Yes_UVS00085
    #Open Browser
    Open Browser    ${LinksurveyService_42}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC42/Positive_Page0_TH.png
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
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC42/Positive_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888842    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC42/Positive_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC42/Positive_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='9']    #Click Score 9 CSAT
    #Input CSAT OA
    OA_CSATPos    ${CheckCSAT_Pos}    ${CheckCSAT_Pos1}
    Press Key    name = csat_pos    โอเคดี
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC42/Positive_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC42/Positive_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='8']    #Click Score 8 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC42/Positive_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(7)    #Click Score 9
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC42/Positive_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC42/Positive_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC42/Positive_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC42/Positive_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC42/Positive_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC42/Positive_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC42/Positive_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(8)    #Click Score 7
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC42/Positive_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(3)    #Click Score 2
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC42/Positive_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC42/Positive_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC42/Positive_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC42/Positive_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC42/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase48 Survey Service Positive_Attr12 No_Attr14 Yes_UVS00139
    #Open Browser
    Open Browser    ${LinksurveyService_43}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC43/Positive_Page0_TH.png
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
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC43/Positive_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC43/Positive_PageTel_TH.png
    Click Element    ${Btn_IconNext}
    Element Text Should Be    id=bar-alert-message    กรุณาตอบคำถามที่จำเป็นให้ครบถ้วน    #Check Alert No Input Tel
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC43/Positive_PageTelNoSuccess_TH.png
    Sleep    2s
    Select Window    MAIN
    Sleep    2s
    Press Key    name=tel_opt_in    0888888843    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC43/Positive_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC43/Positive_PageCSAT_TH.png
    Click Element    ${Score10}    #Click Score 9 CSAT
    #Input CSAT OA
    OA_CSATPos    ${CheckCSAT_Pos}    ${CheckCSAT_Pos1}
    Press Key    name = csat_pos    โอเคนะ รวมๆ ถือว่าอยู่ในระดับโอเค
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC43/Positive_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC43/Positive_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='7']    #Click Score 6 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC43/Positive_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC43/Positive_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC43/Positive_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC43/Positive_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC43/Positive_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC43/Positive_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC43/Positive_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC43/Positive_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC43/Positive_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(5)    #Click Score 4
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC43/Positive_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC43/Positive_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC43/Positive_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC43/Positive_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_1    #ไม่ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC43/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase49 Survey Service Neutral_Attr12 Yes_Attr14No_UVS00131
    #Open Browser
    Open Browser    ${LinksurveyService_46}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC46/Neutral_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC46/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC46/Neutral_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888846    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC46/Neutral_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC46/Neutral_PageCSAT_TH.png
    Click Element    ${Score8}    #Click Score 8CSAT
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC46/Neutral_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='3']    #Click Score 3NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC46/Neutral_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC46/Neutral_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC46/Neutral_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC46/Neutral_Attribute4_TH.png
    Click Element    css=div[name='page11'] .Scale .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC46/Neutral_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC46/Neutral_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC46/Neutral_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_1    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC45/Neutral_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC46/Neutral_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(7)    #Click Score 6
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC46/Neutral_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC46/Neutral_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC46/Neutral_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC46/Neutral_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC46/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase50 Survey Service Neutral_Attr12_Attr14 Yes_UVS00087
    #Open Browser
    Open Browser    ${LinksurveyService_47}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC47/Neutral_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC47/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC47/Neutral_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888847    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC47/Neutral_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC47/Neutral_PageCSAT_TH.png
    Click Element    ${Score7}    #Click Score 7 CSAT
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC47/Neutral_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='2']    #Click Score 2 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC47/Neutral_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC47/Neutral_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC47/Neutral_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC47/Neutral_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC47/Neutral_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC46/Neutral_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC47/Neutral_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC47/Neutral_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC47/Neutral_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(4)    #Click Score 3
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC47/Neutral_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC47/Neutral_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC47/Neutral_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC47/Neutral_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC47/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase51 (N) Survey Service Negative Input OA Optin_Yes_Attr12 Yes_Attr14 Yes_UVS00084
    #Open Browser
    Open Browser    ${LinksurveyService_48}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC48/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC48/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC48/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC48/Negative_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='3']    #Click Score 3 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    สีทำออกมาไม่เท่ากัน มีความขรุขระสีไม่เรียบเนียน
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC48/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC48/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='1']    #Click Score 1 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC48/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC48/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC48/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC48/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC48/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC48/Negative_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC48/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC48/Negative_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC48/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(3)    #Click Score 2
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC48/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC48/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC48/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC48/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC48/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase52 Survey Service Negative Input OA Optin_No_Attr12 Yes_Attr14 Yes_UVS00117
    #Open Browser
    Open Browser    ${LinksurveyService_50}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC50/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC50/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC50/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888834    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC50/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC50/Negative_PageCSAT_TH.png
    Click Element    ${Score1}    #Click Score 1 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    เอารถไปทิ้งไว้ เนื่องจากมีธุระและรอนาน ทางพนักงานแจ้งว่าจะมีการโทรมาแจ้งรายละเอียดเพิ่มเติม กว่าจะโทรมาแจ้งคืออีก 1 วัน นึกว่ารถหายไปสะหละ
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC50/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_1    #ไม่ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC50/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='0']    #Click Score 0 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC50/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] .Scale .NA.STAR11    #ไม่มีพนักงานเข้ามาทักทาย
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC50/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC50/Negative_Attribute3_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC50/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC50/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC50/Negative_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC50/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC50/Negative_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC50/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(4)    #Click Score 3
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC50/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC50/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC50/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC50/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC50/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase53 (N) Survey Service Negative Input OA Optin_Yes_Attr12 No_Attr14 Yes_UVS00137
    #Open Browser
    Open Browser    ${LinksurveyService_52}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC52/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC52/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC52/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888852    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC52/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC52/Negative_PageCSAT_TH.png
    Click Element    ${Score1}    #Click Score 1 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    น๊อตไขไม่สนิท ดีนะที่เจอก่อน
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC52/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC52/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='1']    #Click Score 1 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC52/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC52/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC52/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] .Scale .ScaleValue > label:nth-of-type(1)    #Click Score0
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC52/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC52/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC52/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC52/Negative_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC52/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(8)    #Click Score 7
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC52/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC52/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC52/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC52/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC52/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase54 (N) Survey Service Negative Input OA Optin_Yes_Attr12 No_Attr14 No_UVS00126
    #Open Browser
    Open Browser    ${LinksurveyService_53}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC53/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC53/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC53/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Sleep    2s
    Press Key    name=tel_opt_in    0888888853    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC53/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC53/Negative_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='2']    #Click Score 2 CSAT
    #Input CSAT OA
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    พนักงานมาทักทายช้า รอนาน รวมทั้งอธิบายเรื่องเทคนิคได้ไม่ดี
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC53/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC53/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='1']    #Click Score 1 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC53/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC53/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC53/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC53/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC53/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC53/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC53/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(4)    #Click Score 3
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC53/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC53/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC53/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC53/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_1    #ไม่ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC53/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase55 (N) Survey Service Negative Input OA Optin_Yes_Attr12_Attr14_Yes_UVS00136
    #Open Browser
    Open Browser    ${LinksurveyService_54}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC54/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC54/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC54/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888854    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC54/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC54/Negative_PageCSAT_TH.png
    Click Element    ${Score0}    #Click Score 0 CSAT
    #Input CSAT OA
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    ไม่ค่อยรับฟังลูกค้า พูดแทรกตลอดเวลา
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC54/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC54/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='3']    #Click Score 3 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC54/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC54/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC54/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] .Scale .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC54/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC54/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC51/Negative_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC51/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC50/Negative_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC54/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(11)    #Click Score 10
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC54/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC54/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC54/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC54/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC54/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase56 Survey Service Negative NoInput OA Optin_No_Attr12 Yes_Attr14 Yes_UVS00132
    #Open Browser
    Open Browser    ${LinksurveyService_56}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC56/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC56/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC56/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888856    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC56/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC56/Negative_PageCSAT_TH.png
    Click Element    ${Score2}    #Click Score 2 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC56/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_1    #ไม่ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC56/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='2']    #Click Score 2 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC56/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC56/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC56/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC56/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC56/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC56/Negative_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC56/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC56/Negative_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC56/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(7)    #Click Score 6
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC56/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC56/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC56/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC56/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC56/EndingPage_TH.png
    Sleep    2s
    Close Browser
