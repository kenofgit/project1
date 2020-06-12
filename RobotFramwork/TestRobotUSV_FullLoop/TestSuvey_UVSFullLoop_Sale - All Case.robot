*** Settings ***
Library           Selenium2Library
Resource          Variables.robot
Resource          Keywords.robot

*** Test Cases ***
TestCase13 Survey Sale Positive NoInput OA CSAT ได้รับคำแนะนำการขับขี่_UVS00004
    #Open Browser
    Open Browser    ${LinksurveySale_13}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC13/Positive_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC13/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC13/Positive_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Sleep    2s
    Press Key    name=tel_opt_in    0999999913    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC13/Positive_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC13/Positive_PageCSAT_TH.png
    Click Element    ${Score9}    #Click Score 9 CSAT
    #Input CSAT OA
    OA_CSATPos    ${CheckCSAT_Pos}    ${CheckCSAT_Pos1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC13/Positive_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC13/Positive_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='7']    #Click Score 7 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC13/Positive_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(7)    #Click Score6
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC13/Positive_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(10)    #Click Score9
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC13/Positive_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(4)    #Click Score3
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC13/Positive_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC13/Positive_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_0    #ได้รับ
    Sleep    2s
    #Attribute7_Profile
    Attribute7_Profile    ${CheckAtt7_Profile1}
    ChoiceProfile
    Click Element    ${CheckChoice1_TH}    #พนักงานอธิบายด้วยปากเปล่า
    Click Element    ${CheckChoice7_TH}    #แท็บเล็ต (Tablet)
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC13/Positive_Profile_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Attribute8
    Attribute8_Sale    ${CheckAttribute_8}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC13/Positive_Attibute8_TH.png
    Click Element    css=div[name='page16'] label:nth-of-type(7)    #Click Score6
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC13/Positive_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(8)    #Click Score7
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC13/Positive_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(4)    #Click Score3
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC13/Positive_Attibute11_TH.png
    Click Element    css=div[name='page19'] .Scale .ScaleValue > label:nth-of-type(1)    #Click Score0
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice1_TH}    #Facebook
    Click Element    ${CheckMChoice13_TH}    #อื่นๆ โปรดระบุ
    Press Key    name=media_13_oa    โฆษณาใน MRT
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC13/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC13/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase14 Survey Sale Positive_ได้รับคำแนะนำการขับขี่_UVS0006
    #Open Browser
    Open Browser    ${LinksurveySale_14}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC14/Positive_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC14/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC14/Positive_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC14/Positive_PageCSAT_TH.png
    Click Element    ${Score10}    #Click Score 10 CSAT
    #Input CSAT OA
    OA_CSATPos    ${CheckCSAT_Pos}    ${CheckCSAT_Pos1}
    Press Key    name = csat_pos    พนักงานเอาใจใส่ดี แต่ตอนสาธิตเกี่ยวกับการใช้รถ และอุปกรณ์ดูเหมือนไม่ค่อยชำนาญ
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC14/Positive_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC14/Positive_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='8']    #Click Score 8 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC14/Positive_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(9)    #Click Score8
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC14/Positive_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC14/Positive_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(9)    #Click Score8
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC14/Positive_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(8)    #Click Score7
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC14/Positive_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_0    #ได้รับ
    Sleep    2s
    #Attribute7_Profile
    Attribute7_Profile    ${CheckAtt7_Profile1}
    ChoiceProfile
    Click Element    ${CheckChoice5_TH}    #จอคอมพิวเตอร์ (คอมตั้งโต๊ะ หรือโน๊ตบุ๊ค)
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC14/Positive_Profile_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Attribute8
    Attribute8_Sale    ${CheckAttribute_8}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC14/Positive_Attibute8_TH.png
    Click Element    css=div[name='page16'] label:nth-of-type(8)    #Click Score7
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC14/Positive_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(9)    #Click Score8
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC14/Positive_Attibute10_TH.png
    Click Element    css=div[name='page18'] .Scale .ScaleValue > label:nth-of-type(1)    #Click Score0
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC14/Positive_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(7)    #Click Score6
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice10_TH}    #ป้ายโฆษณาริมถนน
    Click Element    ${CheckMChoice12_TH}    #เพื่อน/ญาติ/คนรู้จักแนะนำ
    Click Element    ${CheckMChoice3_TH}    #Line
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC14/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC14/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase15 Survey Neutral_ได้รับคำแนะนำการขับขี่_UVS00010
    #Open Browser
    Open Browser    ${LinksurveySale_15}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC15/Positive_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC15/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC15/Neutral_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC15/Neutral_PageTel_TH.png
    Press Key    name=tel_opt_in    0999999915    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC15/Neutral_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC15/Neutral_PageCSAT_TH.png
    Click Element    ${Score7}    #Click Score 7 CSAT
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC15/Neutral_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='5']    #Click Score 5 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC15/Neutral_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC15/Neutral_Attibute4_TH.png
    Click Element    css=div[name='page11'] .Scale .ScaleValue > label:nth-of-type(1)    #Click Score0
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC15/Neutral_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(7)    #Click Score6
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC15/Neutral_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(5)    #Click Score4
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC15/Neutral_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_0    #ได้รับ
    Sleep    2s
    #Attribute7_Profile
    Attribute7_Profile    ${CheckAtt7_Profile1}
    ChoiceProfile
    Click Element    ${CheckChoice1_TH}    #พนักงานอธิบายด้วยปากเปล่า
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC15/Neutral_Profile_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Attribute8
    Attribute8_Sale    ${CheckAttribute_8}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC15/Neutral_Attibute8_TH.png
    Click Element    css=div[name='page16'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC15/Neutral_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC15/Neutral_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC15/Neutral_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice13_TH}    #อื่นๆ
    Press Key    name=media_13_oa    จำไม่ได้
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC15/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC15/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase16 Survey Neutral_ไม่ได้รับคำแนะนำการขับขี่_UVS00042
    #Open Browser
    Open Browser    ${LinksurveySale_16}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC16/Neutral_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC16/Neutral_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC16/Neutral_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC16/Neutral_PageCSAT_TH.png
    Click Element    ${Score7}    #Click Score 7 CSAT
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC16/Neutral_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='5']    #Click Score 5 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC16/Neutral_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(7)    #Click Score6
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC16/Neutral_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC16/Neutral_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC16/Neutral_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC16/Neutral_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_1    #ไม่ได้รับ
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC16/Neutral_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC16/Neutral_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC16/Neutral_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice7_TH}    #โฆษณาใน Youtube
    Click Element    ${CheckMChoice11_TH}    # หน้าร้านฮอนด้า
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC16/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC16/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase17 (N) Survey Sale Negative_Input OA_Optin Yes_Guided_UVS00005
    #Open Browser
    Open Browser    ${LinksurveySale_17}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC17/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC17/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC17/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0999999917    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC17/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC17/Negative_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='2']    #Click Score 2 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    บอกมีโปรโมชั่น แต่ของไม่มีให้ ต้องรอของซึ่งตอนนี้ก็ยังไม่ได้
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC17/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC17/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='1']    #Click Score 1 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC17/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC17/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC17/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC17/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC17/Negative_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_0    #ได้รับ
    Sleep    2s
    #Attribute7_Profile
    Attribute7_Profile    ${CheckAtt7_Profile1}
    ChoiceProfile
    Click Element    ${CheckChoice5_TH}    #จอคอมพิวเตอร์ (คอมตั้งโต๊ะ หรือโน๊ตบุ๊ค)
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC17/Negative_Profile_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Attribute8
    Attribute8_Sale    ${CheckAttribute_8}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC17/Negative_Attibute8_TH.png
    Click Element    css=div[name='page16'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC17/Negative_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC17/Negative_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC17/Negative_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice4_TH}    #Blogger Review
    Click Element    ${CheckMChoice2_TH}    #Instagram
    Click Element    ${CheckMChoice11_TH}    #หน้าร้านฮอนด้า
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC17/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC17/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase18 (N) Survey Sale Negative_Input OA_Optin Yes_NoGuided_UVS00026_ไม่มีพนักงานเข้ามาทักทาย
    #Open Browser
    Open Browser    ${LinksurveySale_18}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC18/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC18/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC18/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC18/Negative_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='4']    #Click Score 4 CSAT
    Sleep    2s
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    พนักงานไม่เอาใจใส่แนะนำการชับขี่ปลอดภัยไม่รู้เรื่อง
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC18/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    Sleep    2s
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC18/Negative_NPS_TH.png
    Sleep    2s
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='5']    #Click Score 5 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC18/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] .Scale .NA.STAR11    #ไม่มีพนักงานเข้ามาทักทาย
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC18/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(7)    #Click Score6
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC18/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC18/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC18/Negative_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_1    #ไม่ได้รับ
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC18/Negative_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC18/Negative_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC18/Negative_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice2_TH}    #Instagram
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC18/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC18/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase19 Survey Sale Negative_Input OA_OptinNo_Guided_UVS00027
    #Open Browser
    Open Browser    ${LinksurveySale_19}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC19/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC19/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC19/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0999999919    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC19/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC19/Negative_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='3']    #Click Score 3 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    พนักงานพูดจาดี แต่อธิบายไม่ค่อยรู้เรื่อง อยากให้มีการอบรมพนักงานให้ดีกว่านี้
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC19/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_1    #ไม่ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC19/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='3']    #Click Score 3 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC19/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(8)    # Click Score7
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC19/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(3)    #Click Score2
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC19/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC19/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC19/Negative_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_0    #ได้รับ
    Sleep    2s
    #Attribute7_Profile
    Attribute7_Profile    ${CheckAtt7_Profile1}
    ChoiceProfile
    Click Element    ${CheckChoice7_TH}    #แท็บเล็ต (Tablet)
    Click Element    ${CheckChoice2_TH}    # พนักงานอธิบายด้วยโบรชัวร์/สมุดคู่มือการรับประกัน
    Click Element    ${CheckChoice4_TH}    #จอทีวี
    Click Element    ${CheckChoice8_TH}    #ป้ายโฆษณาดิจิทัล ที่ไม่ใช่ทีวี (Digital Signage)
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC19/Negative_Profile_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Attribute8
    Attribute8_Sale    ${CheckAttribute_8}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC19/Negative_Attibute8_TH.png
    Click Element    css=div[name='page16'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC19/Negative_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC19/Negative_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC19/Negative_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice5_TH}    #โฆษณาทางโทรทัศน์
    Click Element    ${CheckMChoice6_TH}    #โฆษณาทางวิทยุ
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC19/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC19/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase20 Survey Sale Negative_Input OA_OptinNo_NoGuided_UVS00048
    #Open Browser
    Open Browser    ${LinksurveySale_20}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC20/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC20/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC20/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0999999920    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC20/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC20/Negative_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='2']    #Click Score 2 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    ไม่มีอะไรดีเลย แต่จำเป็นต้องซื้อที่นี่เพราะเป็นสาขาใกล้บ้าน
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC20/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_1    #ไม่ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC20/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='2']    #Click Score2    NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC20/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(3)    # Click Score 2
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC20/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC20/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC20/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC20/Negative_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_1    #ไม่ได้รับ
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC20/Negative_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC20/Negative_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC20/Negative_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice13_TH}    #อื่นๆ
    Press Key    name=media_13_oa    บัตร BTS
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC20/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC20/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase21 Survey Sale Negative_NoInput OA_Optin Yes_Guided_UVS00062
    #Open Browser
    Open Browser    ${LinksurveySale_21}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC21/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC21/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC21/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0999999921    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC21/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC21/Negative_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='3']    #Click Score 3 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC21/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC21/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='5']    #Click Score 5 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC21/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] .Scale .NA.STAR11    #ไม่มีพนักงานเข้ามาทักทาย
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC21/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC21/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC21/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC21/Negative_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_0    #ได้รับ
    Sleep    2s
    #Attribute7_Profile
    Attribute7_Profile    ${CheckAtt7_Profile1}
    ChoiceProfile
    Click Element    ${CheckChoice9_TH}    #อื่นๆ โปรดระบุ
    Press Key    name=profile1_9_oa    จำไม่ได้
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC21/Negative_Profile_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Attribute8
    Attribute8_Sale    ${CheckAttribute_8}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC21/Negative_Attibute8_TH.png
    Click Element    css=div[name='page16'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC21/Negative_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC21/Negative_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC21/Negative_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(10)    #Click Score9
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice1_TH}    #Facebook
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC21/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC21/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase22 Survey Sale Negative_NoInputOA_Optin Yes_NoGuided_UVS00031
    #Open Browser
    Open Browser    ${LinksurveySale_22}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC22/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC22/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC22/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC22/Negative_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='2']    #Click Score 2 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC22/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC22/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='2']    #Click Score 2 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC22/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #ClickScore 0
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC22/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(10)    #Click Score9
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC22/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(5)    #Click Score4
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC22/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC22/Negative_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_1    #ไม่ได้รับ
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC22/Negative_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC22/Negative_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(6)    #Click Score5
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC22/Negative_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice2_TH}    #Instagram
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC22/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC22/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase23 Survey Sale Negative_NoInput OA_OptinNo_Guided_UVS00013
    #Open Browser
    Open Browser    ${LinksurveySale_23}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC23/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC23/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC23/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0999999923    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC23/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC23/Negative_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='1']    #Click Score 1 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC23/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_1    #ไม่ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC23/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='5']    #Click Score 5 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC23/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(9)    # Click Score 8
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC23/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC23/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(2)    #Click Score1
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC23/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(7)    #Click Score6
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC23/Negative_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_0    #ได้รับ
    Sleep    2s
    #Attribute7_Profile
    Attribute7_Profile    ${CheckAtt7_Profile1}
    ChoiceProfile
    Click Element    ${CheckChoice6_TH}    #มือถือสมาร์ทโฟน (Smartphone)
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC23/Negative_Profile_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Attribute8
    Attribute8_Sale    ${CheckAttribute_8}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC23/Negative_Attibute8_TH.png
    Click Element    css=div[name='page16'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC23/Negative_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC23/Negative_Attibute10_TH.png
    Click Element    css=div[name='page18'] .Scale .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC23/Negative_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice5_TH}    #โฆษณาทางโทรทัศน์
    Click Element    ${CheckMChoice6_TH}    #โฆษณาทางวิทยุ
    Click Element    ${CheckMChoice8_TH}    #โฆษณาในเวปไซต์
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC23/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC23/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase24 Survey Sale Negative_NoInput OA_OptinNo_NoGuidedUVS00058
    #Open Browser
    Open Browser    ${LinksurveySale_24}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC24/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC24/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC24/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0999999924    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC24/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC24/Negative_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='4']    #Click Score 4 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC24/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_1    #ไม่ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC24/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='8']    #Click Score 8 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC24/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(2)    # Click Score 1
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC24/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC24/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC24/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click Score0
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC24/Attibute7_TH.png
    Click Element    name=Answer_15_0_0_1    #ไม่ได้รับ
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC24/Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(8)    #Click Score7
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC24/Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC242/Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice9_TH}    #ออกบูธ/ อีเว้นท์ ตามสถานที่ต่างๆ
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC24/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC24/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase25 Survey Sale Positive NoInput OA CSAT ได้รับคำแนะนำการขับขี่_UVS00015
    #Open Browser
    Open Browser    ${LinksurveySale_25}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC25/Positive_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC25/Positive_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Sleep    2s
    Press Key    name=tel_opt_in    0999999925    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC25/Positive_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC25/Positive_PageCSAT_TH.png
    Click Element    ${Score10}    #Click Score 10 CSAT
    #Input CSAT OA
    OA_CSATPos    ${CheckCSAT_Pos}    ${CheckCSAT_Pos1}
    Press Key    name = csat_pos    ชอบมาซื้อของที่สาขาดี พนักงานน่ารักทุกคน
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC25/Positive_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC25/Positive_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='8']    #Click Score 8 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC25/Positive_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC25/Positive_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(10)    #Click Score9
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC25/Positive_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(5)    #Click Score6
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC25/Positive_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(9)    #Click Score8
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC25/Positive_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_0    #ได้รับ
    Sleep    2s
    #Attribute7_Profile
    Attribute7_Profile    ${CheckAtt7_Profile1}
    ChoiceProfile
    Click Element    ${CheckChoice1_TH}    #พนักงานอธิบายด้วยปากเปล่า
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC25/Positive_Profile_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Attribute8
    Attribute8_Sale    ${CheckAttribute_8}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC25/Positive_Attibute8_TH.png
    Click Element    css=div[name='page16'] label:nth-of-type(6)    #Click Score6
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC25/Positive_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC25/Positive_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(9)    #Click Score8
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC25/Positive_Attibute11_TH.png
    Click Element    css=div[name='page19'] .Scale .ScaleValue > label:nth-of-type(1)    #Click Score0
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice1_TH}    #Facebook
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC25/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC25/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase26 Survey Sale Positive_ได้รับคำแนะนำการขับขี่_UVS0036
    #Open Browser
    Open Browser    ${LinksurveySale_26}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC26/Positive_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC26/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC26/Positive_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC26/Positive_PageCSAT_TH.png
    Click Element    ${Score10}    #Click Score 10 CSAT
    #Input CSAT OA
    OA_CSATPos    ${CheckCSAT_Pos}    ${CheckCSAT_Pos1}
    Press Key    name = csat_pos    มีรถรุ่นใหม่เข้าเร็ว มีให้ทดลองขับขี่ก่อนตัดสินใจ
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC26/Positive_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC26/Positive_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='8']    #Click Score 8 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC26/Positive_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC26/Positive_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(10)    #Click Score9
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC26/Positive_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(10)    #Click Score9
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC26/Positive_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(8)    #Click Score7
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC26/Positive_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_0    #ได้รับ
    Sleep    2s
    #Attribute7_Profile
    Attribute7_Profile    ${CheckAtt7_Profile1}
    ChoiceProfile
    Click Element    ${CheckChoice5_TH}    #จอคอมพิวเตอร์ (คอมตั้งโต๊ะ หรือโน๊ตบุ๊ค)
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC26/Positive_Profile_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Attribute8
    Attribute8_Sale    ${CheckAttribute_8}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC26/Positive_Attibute8_TH.png
    Click Element    css=div[name='page16'] label:nth-of-type(8)    #Click Score7
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC26/Positive_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC26/Positive_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(3)    #Click Score2
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC26/Positive_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(10)    #Click Score9
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice10_TH}    #ป้ายโฆษณาริมถนน
    Click Element    ${CheckMChoice3_TH}    #Line
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC26/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC26/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase27 Survey Neutral_ได้รับคำแนะนำการขับขี่_UVS00016
    #Open Browser
    Open Browser    ${LinksurveySale_27}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC27/Positive_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC27/Neutral_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC27/Neutral_PageTel_TH.png
    Press Key    name=tel_opt_in    0999999927    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC27/Neutral_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC27/Neutral_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='7']    #Click Score 7 CSAT
    Sleep    2s
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC27/Neutral_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='7']    #Click Score    7 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC27/Neutral_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC27/Neutral_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC27/Neutral_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC27/Neutral_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC27/Neutral_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_0    #ได้รับ
    Sleep    2s
    #Attribute7_Profile
    Attribute7_Profile    ${CheckAtt7_Profile1}
    ChoiceProfile
    Click Element    ${CheckChoice1_TH}    #พนักงานอธิบายด้วยปากเปล่า
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC27/Neutral_Profile_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Attribute8
    Attribute8_Sale    ${CheckAttribute_8}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC27/Neutral_Attibute8_TH.png
    Click Element    css=div[name='page16'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC27/Neutral_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(3)    #Click Score2
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC27/Neutral_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC27/Neutral_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice13_TH}    #อื่นๆ
    Press Key    name=media_13_oa    จำไม่ได้
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC27/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC27/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase28 Survey Neutral_ไม่ได้รับคำแนะนำการขับขี่_UVS00022
    #Open Browser
    Open Browser    ${LinksurveySale_28}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC28/Neutral_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC28/Neutral_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC28/Neutral_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC28/Neutral_PageCSAT_TH.png
    Click Element    ${Score7}    #Click Score 7 CSAT
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC28/Neutral_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='5']    #Click Score 5 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC28/Neutral_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(7)    #Click Score6
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC28/Neutral_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC28/Neutral_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC28/Neutral_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC28/Neutral_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_1    #ไม่ได้รับ
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC28/Neutral_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC28/Neutral_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC28/Neutral_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice7_TH}    #โฆษณาใน Youtube
    Click Element    ${CheckMChoice11_TH}    # หน้าร้านฮอนด้า
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC28/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC28/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase29 (N) Survey Sale Negative_Input OA_Optin Yes_Guided_UVS00014
    #Open Browser
    Open Browser    ${LinksurveySale_29}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC29/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC29/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC29/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0999999929    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC29/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC29/Negative_PageCSAT_TH.png
    Click Element    ${Score3}    #Click Score 3 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    ราคาไม่ตรงกับการโฆษณา แต่ก็ถือว่ายังอยู่ในเกณฑ์ที่รับได้
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC29/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC29/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='4']    #Click Score 4 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC29/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC29/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC29/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC29/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC29/Negative_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_0    #ได้รับ
    Sleep    2s
    #Attribute7_Profile
    Attribute7_Profile    ${CheckAtt7_Profile1}
    ChoiceProfile
    Click Element    ${CheckChoice6_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC29/Negative_Profile_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Attribute8
    Attribute8_Sale    ${CheckAttribute_8}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC29/Negative_Attibute8_TH.png
    Click Element    css=div[name='page16'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC29/Negative_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC29/Negative_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC29/Negative_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice4_TH}    #Blogger Review
    Click Element    ${CheckMChoice11_TH}    #หน้าร้านฮอนด้า
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC29/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC29/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase30 (N) Survey Sale Negative_Input OA_Optin Yes_NoGuided_UVS00041
    #Open Browser
    Open Browser    ${LinksurveySale_30}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC30/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC30/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC30/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC30/Negative_PageCSAT_TH.png
    Click Element    ${Score4}    #Click Score 4 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    พนักงานพูดไม่รู้เรื่อง ต้องให้อีกคนมาอธิบายให้ฟังอีกครั้ง
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC30/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC30/Negative_NPS_TH.png
    Sleep    2s
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='5']    #Click Score 5 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC30/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC30/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(9)    #Click Score8
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC30/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC30/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(4)    #Click Score 5
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC30/Negative_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_1    #ไม่ได้รับ
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC30/Negative_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC30/Negative_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC30/Negative_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice2_TH}    #Instagram
    Click Element    ${CheckMChoice1_TH}    #Facebook
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC30/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC30/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase31 Survey Sale Negative_Input OA_OptinNo_Guided_UVS00021
    #Open Browser
    Open Browser    ${LinksurveySale_31}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC31/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC31/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC31/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0999999931    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC31/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC31/Negative_PageCSAT_TH.png
    Click Element    ${Score2}    #Click Score 2 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    ควรอบรมพนักงานให้มีความรู้พื้นฐานทุกคน
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC31/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_1    #ไม่ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC31/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='1']    #Click Score 1 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC31/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(11)    # Click Score 10
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC31/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC31/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC31/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC31/Negative_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_0    #ได้รับ
    Sleep    2s
    #Attribute7_Profile
    Attribute7_Profile    ${CheckAtt7_Profile1}
    ChoiceProfile
    Click Element    ${CheckChoice7_TH}    #แท็บเล็ต (Tablet)
    Click Element    ${CheckChoice2_TH}    # พนักงานอธิบายด้วยโบรชัวร์/สมุดคู่มือการรับประกัน
    Click Element    ${CheckChoice4_TH}    #จอทีวี
    Click Element    ${CheckChoice8_TH}    #ป้ายโฆษณาดิจิทัล ที่ไม่ใช่ทีวี (Digital Signage)
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC31/Negative_Profile_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Attribute8
    Attribute8_Sale    ${CheckAttribute_8}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC31/Negative_Attibute8_TH.png
    Click Element    css=div[name='page16'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC31/Negative_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC31/Negative_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC31/Negative_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice5_TH}    #โฆษณาทางโทรทัศน์
    Click Element    ${CheckMChoice6_TH}    #โฆษณาทางวิทยุ
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC31/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC31/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase32 Survey Sale Negative_Input OA_OptinNo_NoGuided_UVS00067
    #Open Browser
    Open Browser    ${LinksurveySale_32}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC32/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC32/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC32/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0999999932    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC32/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC32/Negative_PageCSAT_TH.png
    Click Element    ${Score2}    #Click Score 2 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    ควรพูดจากับลูกค้าให้ดีกว่านี้ และพนักงานควรพูดจากันเองให้ดี
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC32/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_1    #ไม่ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC32/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='2']    #Click Score2    NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC32/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(7)    # Click Score 6
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC32/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC32/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC32/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC32/Negative_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_1    #ไม่ได้รับ
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC32/Negative_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC32/Negative_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC32/Negative_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice13_TH}    #อื่นๆ
    Press Key    name=media_13_oa    บัตร BTS
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC32/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC32/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase33 Survey Sale Negative_NoInput OA_Optin Yes_Guided_UVS00028
    #Open Browser
    Open Browser    ${LinksurveySale_33}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC33/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC33/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC33/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0999999933    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC33/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC33/Negative_PageCSAT_TH.png
    Click Element    ${Score1}    #Click Score 1 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC33/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC33/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='1']    #Click Score 1 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC33/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] .Scale .NA.STAR11    #ไม่มีพนักงานเข้ามาทักทาย
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC33/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC33/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC33/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC33/Negative_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_0    #ได้รับ
    Sleep    2s
    #Attribute7_Profile
    Attribute7_Profile    ${CheckAtt7_Profile1}
    ChoiceProfile
    Click Element    ${CheckChoice9_TH}    #อื่นๆ โปรดระบุ
    Press Key    name=profile1_9_oa    โทรศัพท์โดยการคุย
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC33/Negative_Profile_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Attribute8
    Attribute8_Sale    ${CheckAttribute_8}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC33/Negative_Attibute8_TH.png
    Click Element    css=div[name='page16'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC33/Negative_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC33/Negative_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC33/Negative_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(10)    #Click Score9
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice1_TH}    #Facebook
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC33/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC33/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase34 Survey Sale Negative_NoInputOA_Optin Yes_NoGuided_UVS00054
    #Open Browser
    Open Browser    ${LinksurveySale_34}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC34/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC34/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC34/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC34/Negative_PageCSAT_TH.png
    Click Element    ${Score2}    #Click Score 2 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC34/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC34/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='2']    #Click Score 2 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC34/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(2)    #ClickScore 1
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC34/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(5)    #Click Score4
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC34/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(7)    #Click Score6
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC34/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC34/Negative_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_1    #ไม่ได้รับ
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC34/Negative_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC34/Negative_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(6)    #Click Score5
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC34/Negative_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(6)    #Click Score5
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice2_TH}    #Instagram
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC34/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC34/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase35 Survey Sale Negative_NoInput OA_OptinNo_Guided_UVS00030
    #Open Browser
    Open Browser    ${LinksurveySale_35}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC35/Negative_Page0_TH.png
    Click Element    ${btn_start}
    Sleep    2s
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC35/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC35/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0999999935    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC35/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC35/Negative_PageCSAT_TH.png
    Click Element    ${Score1}    #Click Score 1 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC35/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_1    #ไม่ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC35/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='5']    #Click Score 5 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC35/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(4)    # Click Score 3
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC35/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC35/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC35/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC35/Negative_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_0    #ได้รับ
    Sleep    2s
    #Attribute7_Profile
    Attribute7_Profile    ${CheckAtt7_Profile1}
    ChoiceProfile
    Click Element    ${CheckChoice6_TH}    #มือถือสมาร์ทโฟน (Smartphone)
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC35/Negative_Profile_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Attribute8
    Attribute8_Sale    ${CheckAttribute_8}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC35/Negative_Attibute8_TH.png
    Click Element    css=div[name='page16'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC35/Negative_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC35/Negative_Attibute10_TH.png
    Click Element    css=div[name='page18'] .Scale .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC35/Negative_Attibute11_TH.png
    Click Element    css=div[name='page19'] .Scale .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice5_TH}    #โฆษณาทางโทรทัศน์
    Click Element    ${CheckMChoice6_TH}    #โฆษณาทางวิทยุ
    Click Element    ${CheckMChoice8_TH}    #โฆษณาในเวปไซต์
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC35/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC35/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase36 Survey Sale Negative_NoInput OA_OptinNo_NoGuided_UVS00064
    #Open Browser
    Open Browser    ${LinksurveySale_36}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC36/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC36/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC36/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0999999936    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC36/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC36/Negative_PageCSAT_TH.png
    Click Element    ${Score4}    #Click Score 4 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC36/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_1    #ไม่ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC36/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='8']    #Click Score 8 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC36/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(2)    # Click Score 1
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC36/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC36/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC36/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC36/Attibute7_TH.png
    Click Element    name=Answer_15_0_0_1    #ไม่ได้รับ
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC36/Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC36/Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC36/Attibute11_TH.png
    Click Element    css=div[name='page19'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice9_TH}    #ออกบูธ/ อีเว้นท์ ตามสถานที่ต่างๆ
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC36/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC36/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase37 Survey Sale Positive NoInput OA CSAT ได้รับคำแนะนำการขับขี่_UVS00070
    #Open Browser
    Open Browser    ${LinksurveySale_37}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC37/Positive_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC37/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC37/Positive_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Sleep    2s
    Press Key    name=tel_opt_in    0999999937    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC37/Positive_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC37/Positive_PageCSAT_TH.png
    Click Element    ${Score 9}    #Click Score 9 CSAT
    #Input CSAT OA
    OA_CSATPos    ${CheckCSAT_Pos}    ${CheckCSAT_Pos1}
    Press Key    name = csat_pos    รวมๆ ก็โอเค
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC37/Positive_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC37/Positive_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='4']    #Click Score 4 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC37/Positive_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC37/Positive_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC37/Positive_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC37/Positive_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC37/Positive_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_0    #ได้รับ
    Sleep    2s
    #Attribute7_Profile
    Attribute7_Profile    ${CheckAtt7_Profile1}
    ChoiceProfile
    Click Element    ${CheckChoice1_TH}    #พนักงานอธิบายด้วยปากเปล่า
    Click Element    ${CheckChoice5_TH}    #จอคอมพิวเตอร์ (คอมตั้งโต๊ะ หรือโน๊ตบุ๊ค)
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC37/Positive_Profile_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Attribute8
    Attribute8_Sale    ${CheckAttribute_8}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC37/Positive_Attibute8_TH.png
    Click Element    css=div[name='page16'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC37/Positive_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC37/Positive_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC37/Positive_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice1_TH}    #Facebook
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC37/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC37/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase38 Survey Sale Positive_ได้รับคำแนะนำการขับขี่_UVS00069
    #Open Browser
    Open Browser    ${LinksurveySale_38}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC38/Positive_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC38/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC38/Positive_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC38/Positive_PageCSAT_TH.png
    Click Element    ${Score9}    #Click Score 9 CSAT
    #Input CSAT OA
    OA_CSATPos    ${CheckCSAT_Pos}    ${CheckCSAT_Pos1}
    Press Key    name = csat_pos    ชอบมาก บริการดีมาก แต่เสียอย่างเดียวพนักงานบางคนไม่ยิ้มเลย
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC38/Positive_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC38/Positive_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='4']    #Click Score 4 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC38/Positive_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(5)    #Click Score4
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC38/Positive_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(10)    #Click Score9
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC38/Positive_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC38/Positive_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC38/Positive_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_0    #ได้รับ
    Sleep    2s
    #Attribute7_Profile
    Attribute7_Profile    ${CheckAtt7_Profile1}
    ChoiceProfile
    Click Element    ${CheckChoice5_TH}    #จอคอมพิวเตอร์ (คอมตั้งโต๊ะ หรือโน๊ตบุ๊ค)
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC38/Positive_Profile_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Attribute8
    Attribute8_Sale    ${CheckAttribute_8}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC38/Positive_Attibute8_TH.png
    Click Element    css=div[name='page16'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC38/Positive_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC38/Positive_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC38/Positive_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice3_TH}    #Line
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC38/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC38/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase39 Survey Neutral_ได้รับคำแนะนำการขับขี่_UVS00068
    #Open Browser
    Open Browser    ${LinksurveySale_39}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC39/Positive_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC39/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC39/Neutral_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC39/Neutral_PageTel_TH.png
    Press Key    name=tel_opt_in    09999999239    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC39/Neutral_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC39/Neutral_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='7']    #Click Score 7 CSAT
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC39/Neutral_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='7']    #Click Score    6 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC39/Neutral_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC39/Neutral_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC39/Neutral_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC39/Neutral_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC39/Neutral_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_0    #ได้รับ
    Sleep    2s
    #Attribute7_Profile
    Attribute7_Profile    ${CheckAtt7_Profile1}
    ChoiceProfile
    Click Element    ${CheckChoice1_TH}    #พนักงานอธิบายด้วยปากเปล่า
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC39/Neutral_Profile_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Attribute8
    Attribute8_Sale    ${CheckAttribute_8}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC39/Neutral_Attibute8_TH.png
    Click Element    css=div[name='page16'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC39/Neutral_Attibute9_TH.png
    Click Element    css=div[name='page17'] .Scale .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC39/Neutral_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC39/Neutral_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(7)    #Click Score 8
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice13_TH}    #อื่นๆ
    Press Key    name=media_13_oa    จำไม่ได้
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC39/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC39/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase40 Survey Neutral_ไม่ได้รับคำแนะนำการขับขี่_UVS00055
    #Open Browser
    Open Browser    ${LinksurveySale_40}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC40/Neutral_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC40/Neutral_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC40/Neutral_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC40/Neutral_PageCSAT_TH.png
    Click Element    ${Score7}    #Click Score 7 CSAT
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC40/Neutral_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='5']    #Click Score 5 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC40/Neutral_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC40/Neutral_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC40/Neutral_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC40/Neutral_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC40/Neutral_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_1    #ไม่ได้รับ
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC40/Neutral_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC40/Neutral_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC40/Neutral_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice7_TH}    #โฆษณาใน Youtube
    Click Element    ${CheckMChoice11_TH}    # หน้าร้านฮอนด้า
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC40/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC40/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase41 (N) Survey Sale Negative_Input OA_Optin Yes_Guided_UVS00066
    #Open Browser
    Open Browser    ${LinksurveySale_41}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC41/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC41/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC41/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0999999941    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC41/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC41/Negative_PageCSAT_TH.png
    Click Element    ${Score3}    #Click Score 3 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    ได้รถตัวโชว์มา แต่พนักงานแจ้งว่าถ้ารถใหม่มาจะรีบโทรมาแจ้งแต่นี่ผ่านไปหลายวันแล้วยังไม่มีใครมาแจ้ง
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC41/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC41/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='4']    #Click Score 4 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC41/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC41/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC41/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC41/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC41/Negative_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_0    #ได้รับ
    Sleep    2s
    #Attribute7_Profile
    Attribute7_Profile    ${CheckAtt7_Profile1}
    ChoiceProfile
    Click Element    ${CheckChoice6_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC41/Negative_Profile_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Attribute8
    Attribute8_Sale    ${CheckAttribute_8}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC41/Negative_Attibute8_TH.png
    Click Element    css=div[name='page16'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC41/Negative_Attibute9_TH.png
    Click Element    css=div[name='page17'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC41/Negative_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC41/Negative_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice4_TH}    #Blogger Review
    Click Element    ${CheckMChoice11_TH}    #หน้าร้านฮอนด้า
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC41/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC41/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase42 (N) Survey Sale Negative_Input OA_Optin Yes_NoGuided_UVS00057
    #Open Browser
    Open Browser    ${LinksurveySale_42}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC42/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC42/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC42/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC42/Negative_PageCSAT_TH.png
    Click Element    ${Score4}    #Click Score 4 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    ห้องบริการที่ให้นั่งรอ แอร์ไม่เย็นเลย
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC42/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC42/Negative_NPS_TH.png
    Sleep    2s
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='5']    #Click Score 5 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC42/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC42/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC42/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC42/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC42/Negative_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_1    #ไม่ได้รับ
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC42/Negative_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC42/Negative_Attibute10_TH.png
    Click Element    css=div[name='page18'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC42/Negative_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice2_TH}    #Instagram
    Click Element    ${CheckMChoice1_TH}    #Facebook
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC42/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC42/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase43 Survey Sale Negative_Input OA_OptinNo_Guided_UVS00024
    #Open Browser
    Open Browser    ${LinksurveySale_43}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC43/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC43/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC43/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0999999943    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC43/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC43/Negative_PageCSAT_TH.png
    Click Element    ${Score2}    #Click Score 2 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    อยากให้ทางร้านมีการปรับปรุงส่วนที่รอเซ็นสัญญาหรือรับรถ เนื่องจาากแอร์ไม่เย็น ที่นั่งไม่สะอาดมีกลื่นอับ
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC43/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_1    #ไม่ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC43/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='1']    #Click Score 1 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC43/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(10)    # Click Score 9
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC43/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC43/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC43/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC43/Negative_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_0    #ได้รับ
    Sleep    2s
    #Attribute7_Profile
    Attribute7_Profile    ${CheckAtt7_Profile1}
    ChoiceProfile
    Click Element    ${CheckChoice2_TH}    # พนักงานอธิบายด้วยโบรชัวร์/สมุดคู่มือการรับประกัน
    Click Element    ${CheckChoice4_TH}    #จอทีวี
    Click Element    ${CheckChoice8_TH}    #ป้ายโฆษณาดิจิทัล ที่ไม่ใช่ทีวี (Digital Signage)
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC43/Negative_Profile_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Attribute8
    Attribute8_Sale    ${CheckAttribute_8}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC43/Negative_Attibute8_TH.png
    Click Element    css=div[name='page16'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC43/Negative_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC43/Negative_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC43/Negative_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice5_TH}    #โฆษณาทางโทรทัศน์
    Click Element    ${CheckMChoice6_TH}    #โฆษณาทางวิทยุ
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC43/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC43/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase44 (N) Survey Sale Negative_Input OA_OptinYes_Guided_UVS00065
    #Open Browser
    Open Browser    ${LinksurveySale_44}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC44/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC44/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC44/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC44/Negative_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='2']    #Click Score 2 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    ควรพูดจากับลูกค้าให้ดีกว่านี้ และพนักงานควรพูดจากันเองให้ดี
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC44/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ไม่ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC44/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='2']    #Click Score2    NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC44/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    # Click Score 0
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC44/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC44/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC44/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC44/Negative_Attibute7_TH.png
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
    Click Element    css=div[name='page16'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC44/Negative_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC44/Negative_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC44/Negative_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice13_TH}    #อื่นๆ
    Press Key    name=media_13_oa    บัตร BTS
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC44/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC44/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase45 Survey Sale Negative_NoInput OA_Optin Yes_Guided_UVS00060
    #Open Browser
    Open Browser    ${LinksurveySale_45}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC45/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC45/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC45/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0999999945    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC45/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC45/Negative_PageCSAT_TH.png
    Click Element    ${Score1}    #Click Score 1 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC45/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC45/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='1']    #Click Score 1 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC45/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC45/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC45/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC45/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC45/Negative_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_0    #ได้รับ
    Sleep    2s
    #Attribute7_Profile
    Attribute7_Profile    ${CheckAtt7_Profile1}
    ChoiceProfile
    Click Element    ${CheckChoice9_TH}    #อื่นๆ โปรดระบุ
    Press Key    name=profile1_9_oa    โทรศัพท์โดยการคุย
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC45/Negative_Profile_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Attribute8
    Attribute8_Sale    ${CheckAttribute_8}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC45/Negative_Attibute8_TH.png
    Click Element    css=div[name='page16'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC45/Negative_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC45/Negative_Attibute10_TH.png
    Click Element    css=div[name='page18'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC45/Negative_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(3)    #Click Score2
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice1_TH}    #Facebook
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC45/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC45/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase46 (N) Survey Sale Negative_InputOA_Optin Yes_Guided_UVS00061
    #Open Browser
    Open Browser    ${LinksurveySale_46}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC46/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC46/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC46/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC46/Negative_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='2']    #Click Score 2 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    ห้องน้ำไม่สะอาด พนักงานทำอะไรช้ามาก
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC46/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC46/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='2']    #Click Score 2 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC46/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(4)    #ClickScore 3
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC46/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC46/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(7)    #Click Score 5
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC46/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(8)    #Click Score 2
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC46/Negative_Attibute7_TH.png
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
    Click Element    css=div[name='page16'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC46/Negative_Attibute9_TH.png
    Click Element    css=div[name='page17'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC46/Negative_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(6)    #Click Score5
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC46/Negative_Attibute11_TH.png
    Click Element    css=div[name='page19'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice2_TH}    #Instagram
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC46/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC46/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase47 Survey Sale Negative_NoInput OA_OptinNo_Guided_UVS00059
    #Open Browser
    Open Browser    ${LinksurveySale_47}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC47/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC47/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC47/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0999999947    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC47/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC47/Negative_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='1']    #Click Score 1 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC47/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_1    #ไม่ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC47/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='5']    #Click Score 5 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC47/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    # Click Score 0
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC47/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC47/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC47/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC47/Negative_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_0    #ได้รับ
    Sleep    2s
    #Attribute7_Profile
    Attribute7_Profile    ${CheckAtt7_Profile1}
    ChoiceProfile
    Click Element    ${CheckChoice6_TH}    #มือถือสมาร์ทโฟน (Smartphone)
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC47/Negative_Profile_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Attribute8
    Attribute8_Sale    ${CheckAttribute_8}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC47/Negative_Attibute8_TH.png
    Click Element    css=div[name='page16'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC47/Negative_Attibute9_TH.png
    Click Element    css=div[name='page17'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC47/Negative_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC47/Negative_Attibute11_TH.png
    Click Element    css=div[name='page19'] .Scale .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice5_TH}    #โฆษณาทางโทรทัศน์
    Click Element    ${CheckMChoice6_TH}    #โฆษณาทางวิทยุ
    Click Element    ${CheckMChoice8_TH}    #โฆษณาในเวปไซต์
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC47/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC47/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase48 Survey Sale Negative_NoInput OA_OptinYes_Guided_UVS00053
    #Open Browser
    Open Browser    ${LinksurveySale_48}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC48/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC48/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC48/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0999999936    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC48/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC48/Negative_PageCSAT_TH.png
    Click Element    ${Score4}    #Click Score 4 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC48/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC48/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='8']    #Click Score 8 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC48/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(4)    # Click Score 3
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC48/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC48/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC48/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC48/Attibute7_TH.png
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
    Click Element    css=div[name='page16'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC48/Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC48/Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC48/Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice9_TH}    #ออกบูธ/ อีเว้นท์ ตามสถานที่ต่างๆ
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC48/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC48/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase49 Survey Sale Positive NoInput OA CSAT ได้รับคำแนะนำการขับขี่_UVS00034
    #Open Browser
    Open Browser    ${LinksurveySale_49}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC49/Positive_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC49/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC49/Positive_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Sleep    2s
    Press Key    name=tel_opt_in    0999999949    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC49/Positive_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC49/Positive_PageCSAT_TH.png
    Click Element    ${Score 9}    #Click Score 9 CSAT
    #Input CSAT OA
    OA_CSATPos    ${CheckCSAT_Pos}    ${CheckCSAT_Pos1}
    Press Key    name = csat_pos    มาแล้วแฮปปี้ดี พนักงานเป็นกันเองแต่รู้จักกาละเทศะ
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC49/Positive_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC49/Positive_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='4']    #Click Score 4 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC49/Positive_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC49/Positive_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC49/Positive_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC49/Positive_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC49/Positive_Attibute7_TH.png
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
    Click Element    css=div[name='page16'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC49/Positive_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC49/Positive_Attibute10_TH.png
    Click Element    css=div[name='page18'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC49/Positive_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice1_TH}    #Facebook
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC49/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC49/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase50 Survey Sale Positive_ได้รับคำแนะนำการขับขี่_UVS00023
    #Open Browser
    Open Browser    ${LinksurveySale_50}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC50/Positive_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC50/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC50/Positive_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC50/Positive_PageCSAT_TH.png
    Click Element    ${Score9}    #Click Score 9 CSAT
    #Input CSAT OA
    OA_CSATPos    ${CheckCSAT_Pos}    ${CheckCSAT_Pos1}
    Press Key    name = csat_pos    ดีคะ
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC50/Positive_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC50/Positive_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='4']    #Click Score 4 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC50/Positive_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC50/Positive_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC50/Positive_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC50/Positive_Attibute6_TH.png
    Click Element    css=div[name='page13'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC50/Positive_Attibute7_TH.png
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
    Click Element    css=div[name='page16'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC50/Positive_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC50/Positive_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC50/Positive_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice3_TH}    #Line
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC50/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC50/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase51 Survey Neutral_ได้รับคำแนะนำการขับขี่_UVS00025
    #Open Browser
    Open Browser    ${LinksurveySale_51}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC51/Positive_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC51/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC51/Neutral_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC51/Neutral_PageTel_TH.png
    Press Key    name=tel_opt_in    09999999239    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC51/Neutral_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC51/Neutral_PageCSAT_TH.png
    Click Element    ${Score7}    #Click Score 7 CSAT
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC51/Neutral_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='7']    #Click Score    6 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC51/Neutral_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC51/Neutral_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC51/Neutral_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC51/Neutral_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC51/Neutral_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_0    #ได้รับ
    Sleep    2s
    #Attribute7_Profile
    Attribute7_Profile    ${CheckAtt7_Profile1}
    ChoiceProfile
    Click Element    ${CheckChoice1_TH}    #พนักงานอธิบายด้วยปากเปล่า
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC51/Neutral_Profile_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Attribute8
    Attribute8_Sale    ${CheckAttribute_8}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC51/Neutral_Attibute8_TH.png
    Click Element    css=div[name='page16'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC51/Neutral_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(8)    #Click Score7
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC51/Neutral_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC51/Neutral_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice13_TH}    #อื่นๆ
    Press Key    name=media_13_oa    -
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC51/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC51/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase52 Survey Neutral_ได้รับคำแนะนำการขับขี่ _UVS00044
    #Open Browser
    Open Browser    ${LinksurveySale_52}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC52/Neutral_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC52/Neutral_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC52/Neutral_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC52/Neutral_PageCSAT_TH.png
    Click Element    ${Score7}    #Click Score 7 CSAT
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC52/Neutral_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='5']    #Click Score 5 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC52/Neutral_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC52/Neutral_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC52/Neutral_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC52/Neutral_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC52/Neutral_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_0    #ได้รับ
    Sleep    2s
    #Attribute7_Profile
    Attribute7_Profile    ${CheckAtt7_Profile1}
    ChoiceProfile
    Click Element    ${CheckChoice1_TH}    #พนักงานอธิบายด้วยปากเปล่า
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC51/Neutral_Profile_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Attribute8
    Attribute8_Sale    ${CheckAttribute_8}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC51/Neutral_Attibute8_TH.png
    Click Element    css=div[name='page16'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC52/Neutral_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC52/Neutral_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC52/Neutral_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice7_TH}    #โฆษณาใน Youtube
    Click Element    ${CheckMChoice11_TH}    # หน้าร้านฮอนด้า
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC52/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC52/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase53 (N) Survey Sale Negative_Input OA_Optin Yes_Guided_UVS00052
    #Open Browser
    Open Browser    ${LinksurveySale_53}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC53/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC53/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC53/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0999999953    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC53/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC53/Negative_PageCSAT_TH.png
    Click Element    ${Score3}    #Click Score 3 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    พนักงานบางคนมองด้วยสีหน้าไม่ดี และมีบางคนคุยโทรศัพท์จนไม่สนใจลูดค้า
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC53/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC53/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='4']    #Click Score 4 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC53/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC53/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC53/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC53/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC53/Negative_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_0    #ได้รับ
    Sleep    2s
    #Attribute7_Profile
    Attribute7_Profile    ${CheckAtt7_Profile1}
    ChoiceProfile
    Click Element    ${CheckChoice6_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC53/Negative_Profile_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Attribute8
    Attribute8_Sale    ${CheckAttribute_8}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC53/Negative_Attibute8_TH.png
    Click Element    css=div[name='page16'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC53/Negative_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC53/Negative_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC53/Negative_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice4_TH}    #Blogger Review
    Click Element    ${CheckMChoice11_TH}    #หน้าร้านฮอนด้า
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC53/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC53/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase54 (N) Survey Sale Negative_Input OA_Optin Yes_NoGuided_UVS00056_ไม่มีพนักงานเดินเข้ามาทักทาย
    #Open Browser
    Open Browser    ${LinksurveySale_54}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC54/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC54/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC54/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC54/Negative_PageCSAT_TH.png
    Click Element    ${Score4}    #Click Score 4 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    ไม่มีพนักงานคนไหนเดินเข้ามาทักทายพอเรียกก็ไม่สนใจ
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC54/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC54/Negative_NPS_TH.png
    Sleep    2s
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='5']    #Click Score 5 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC54/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] .Scale .NA.STAR11    #ไม่มีพนักงานเดินเข้ามาทักทาย
    #Click Score 0
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC54/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC54/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC54/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC54/Negative_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_1    #ไม่ได้รับ
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC54/Negative_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC54/Negative_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC54/Negative_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice2_TH}    #Instagram
    Click Element    ${CheckMChoice1_TH}    #Facebook
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC54/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC54/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase55 Survey Sale Negative_Input OA_OptinNo_Guided_UVS00063
    #Open Browser
    Open Browser    ${LinksurveySale_55}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC55/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC55/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC55/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0999999955    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC55/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC55/Negative_PageCSAT_TH.png
    Click Element    ${Score2}    #Click Score 2 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    ซื้อเงินสดแต่รอนานมาก ทำไมไม่จ่ายตังแล้วจบๆ ไป
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC55/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_1    #ไม่ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC55/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='1']    #Click Score 1 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC55/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(5)    # Click Score 4
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC55/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC55/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC55/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC55/Negative_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_0    #ได้รับ
    Sleep    2s
    #Attribute7_Profile
    Attribute7_Profile    ${CheckAtt7_Profile1}
    ChoiceProfile
    Click Element    ${CheckChoice2_TH}    # พนักงานอธิบายด้วยโบรชัวร์/สมุดคู่มือการรับประกัน
    Click Element    ${CheckChoice4_TH}    #จอทีวี
    Click Element    ${CheckChoice8_TH}    #ป้ายโฆษณาดิจิทัล ที่ไม่ใช่ทีวี (Digital Signage)
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC55/Negative_Profile_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Attribute8
    Attribute8_Sale    ${CheckAttribute_8}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC55/Negative_Attibute8_TH.png
    Click Element    css=div[name='page16'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC55/Negative_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC55/Negative_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC55/Negative_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice5_TH}    #โฆษณาทางโทรทัศน์
    Click Element    ${CheckMChoice6_TH}    #โฆษณาทางวิทยุ
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC55/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC55/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase56 (N) Survey Sale Negative_Input OA_OptinYes_Guided_UVS00051
    #Open Browser
    Open Browser    ${LinksurveySale_56}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC56/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC56/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC56/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC56/Negative_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='2']    #Click Score 2 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    ไม่มีอะไรจะเสนอแนะ ควรไปดูกล้องวงจรปิดเองในร้าน
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC56/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC56/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='2']    #Click Score2    NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC56/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(2)    # Click Score 1
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC56/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC56/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC56/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC56/Negative_Attibute7_TH.png
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
    Click Element    css=div[name='page16'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC56/Negative_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC56/Negative_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC56/Negative_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice13_TH}    #อื่นๆ
    Press Key    name=media_13_oa    บัตร BTS
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC56/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC56/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase57 Survey Sale Negative_NoInput OA_Optin Yes_Guided_UVS00050
    #Open Browser
    Open Browser    ${LinksurveySale_57}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC57/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC57/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC57/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0999999957    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC57/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC57/Negative_PageCSAT_TH.png
    Click Element    ${Score1}    #Click Score 1 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC57/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC57/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='1']    #Click Score 1 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC57/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC57/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC57/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC57/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC57/Negative_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_0    #ได้รับ
    Sleep    2s
    #Attribute7_Profile
    Attribute7_Profile    ${CheckAtt7_Profile1}
    ChoiceProfile
    Click Element    ${CheckChoice9_TH}    #อื่นๆ โปรดระบุ
    Press Key    name=profile1_9_oa    โทรศัพท์โดยการคุย
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC57/Negative_Profile_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Attribute8
    Attribute8_Sale    ${CheckAttribute_8}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC57/Negative_Attibute8_TH.png
    Click Element    css=div[name='page16'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC57/Negative_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC57/Negative_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC57/Negative_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice1_TH}    #Facebook
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC57/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC57/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase58 (N) Survey Sale Negative_InputOA_Optin Yes_Guided_UVS00032
    #Open Browser
    Open Browser    ${LinksurveySale_58}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC58/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC58/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC58/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC58/Negative_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='2']    #Click Score 2 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    ห้องน้ำไม่สะอาด พนักงานทำอะไรช้ามาก
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC58/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC58/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='2']    #Click Score 2 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC58/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(3)    #ClickScore 2
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC58/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC58/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC58/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC58/Negative_Attibute7_TH.png
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
    Click Element    css=div[name='page16'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC58/Negative_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC58/Negative_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC58/Negative_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice2_TH}    #Instagram
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC58/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC58/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase59 Survey Sale Negative_NoInput OA_OptinNo_Guided_UVS00038
    #Open Browser
    Open Browser    ${LinksurveySale_59}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC59/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC59/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC59/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0999999959    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC59/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC59/Negative_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='1']    #Click Score 1 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC59/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_1    #ไม่ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC59/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='5']    #Click Score 5 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC59/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(4)    # Click Score 3
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC59/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC59/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC59/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC59/Negative_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_0    #ได้รับ
    Sleep    2s
    #Attribute7_Profile
    Attribute7_Profile    ${CheckAtt7_Profile1}
    ChoiceProfile
    Click Element    ${CheckChoice6_TH}    #มือถือสมาร์ทโฟน (Smartphone)
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC59/Negative_Profile_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Attribute8
    Attribute8_Sale    ${CheckAttribute_8}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC59/Negative_Attibute8_TH.png
    Click Element    css=div[name='page16'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC59/Negative_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC59/Negative_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(10)    #Click Score 11
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC59/Negative_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(8)    #Click Score 9
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice5_TH}    #โฆษณาทางโทรทัศน์
    Click Element    ${CheckMChoice6_TH}    #โฆษณาทางวิทยุ
    Click Element    ${CheckMChoice8_TH}    #โฆษณาในเวปไซต์
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC59/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC59/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase60 Survey Sale Negative_NoInput OA_OptinYes_Guided_UVS00047
    #Open Browser
    Open Browser    ${LinksurveySale_60}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC60/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC60/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC60/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0999999960    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC60/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC60/Negative_PageCSAT_TH.png
    Click Element    ${Score4}    #Click Score 4 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC60/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC60/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='8']    #Click Score 8 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC60/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(3)    # Click Score 2
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC60/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC60/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC60/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC60/Attibute7_TH.png
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
    Click Element    css=div[name='page16'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC60/Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC60/Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC60/Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice9_TH}    #ออกบูธ/ อีเว้นท์ ตามสถานที่ต่างๆ
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC60/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC60/EndingPage_TH.png
    Sleep    2s
    Close Browser
