*** Settings ***
Resource          Variables.robot

*** Keywords ***
IntroductionSale_Service
    [Arguments]    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckIntro}
    Element Should Contain    name=Title_1_0    ${CheckIntro_1}
    Element Should Contain    name=Title_1_0    ${CheckIntro_2}
    Element Should Contain    name=Title_1_0    ${CheckIntro_3}
    Element Should Contain    xpath=//*[@class="btn next"]    ${btn_TH}

Reward Condition
    [Arguments]    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Element Should Contain    name=Title_2_0    ${CheckRewardTH}
    Element Should Contain    name=Title_2_0    ${CheckRewardTH_1}
    Element Should Contain    name=Title_2_0    ${CheckRewardTH_2}
    Element Should Contain    name=Title_2_0    ${CheckRewardTH_3}
    Element Should Contain    name=Title_2_0    ${CheckRewardTH_4}
    Element Should Contain    name=Title_2_0    ${CheckRewardTH_5}
    Element Should Contain    name=Title_2_0    ${CheckRewardTH_6}
    Element Should Contain    name=Title_2_0    ${CheckRewardTH_7}
    Element Should Contain    name=Title_2_0    ${CheckRewardTH_8}
    Element Should Contain    name=Title_2_0    ${CheckRewardTH_9}
    Element Should Contain    name=Question_2_0_0    ${CheckQuestionReward}
    Element Should Contain    name=Answer_2_0_0_0    ${Opt_in_Yes_TH}
    Element Should Contain    name=Answer_2_0_0_1    ${Opt_in_No_TH}

Please TelePhoneNumber
    [Arguments]    ${CheckPleaseTel}    ${FieldTel_Input}
    Element Should Contain    name=Question_3_0_0    ${CheckPleaseTel}
    Page Should Contain Textfield    ${FieldTel_Input}

QCSAT_Sale
    [Arguments]    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Element Should Contain    name=Question_4_0_0    ${CheckquestionCSAT}
    Element Should Contain    name=Question_4_0_0    ${CheckAdaptiveText_Sale}
    Element Should Contain    name=Question_4_0_0    ${CheckquestionCSAT1}
    Element Should Contain    xpath=//label[text()='ไม่พึงพอใจเลย']    ไม่พึงพอใจเลย
    Element Should Contain    xpath=//label[text()='พึงพอใจอย่างมาก']    พึงพอใจอย่างมาก

QCSAT_Service
    [Arguments]    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Element Should Contain    name=Question_4_0_0    ${CheckquestionCSAT}
    Element Should Contain    name=Question_4_0_0    ${CheckAdaptiveText_Service}
    Element Should Contain    name=Question_4_0_0    ${CheckquestionCSAT1}
    Element Should Contain    xpath=//label[text()='ไม่พึงพอใจเลย']    ไม่พึงพอใจเลย
    Element Should Contain    xpath=//label[text()='พึงพอใจอย่างมาก']    พึงพอใจอย่างมาก

OA_CSATNeg
    [Arguments]    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Element Should Contain    name=Question_6_0_0    ${CheckCSAT_Neg}
    Element Should Contain    name=Question_6_0_0    ${CheckCSAT_Neg1}
    Page Should Contain Element    name=csat_neg
    Page Should Contain Element    xpath=//div[@name='page5']//span[@class='btn next']

OptinNegative
    [Arguments]    ${CheckOptinNegative}
    Element Should Contain    name=Question_7_0_0    ${CheckOptinNegative}
    Element Should Contain    name=Answer_7_0_0_0    ยินยอม
    Element Should Contain    name=Answer_7_0_0_1    ไม่ยินยอม

OA_CSATPos
    [Arguments]    ${CheckCSAT_Pos}    ${CheckCSAT_Pos1}
    Element Should Contain    name=Question_5_0_0    ${CheckCSAT_Pos}
    Element Should Contain    name=Question_5_0_0    ${CheckCSAT_Pos1}
    Page Should Contain Element    name=csat_pos
    Page Should Contain Element    xpath=//div[@name='page4']//span[@class='btn next']

QNPS_Sale
    [Arguments]    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Sleep    2s
    Element Should Contain    name=Question_8_0_0    ${CheckquestionNPS}
    Sleep    2s
    Element Should Contain    name=Question_8_0_0    ${CheckAdaptiveText_Sale}
    Element Should Contain    name=Question_8_0_0    ${CheckquestionNPS1}
    Sleep    2s
    Element Should Contain    xpath=//label[text()='ไม่แนะนำ']    ไม่แนะนำ
    Element Should Contain    xpath=//label[text()='แนะนำอย่างแน่นอน']    แนะนำอย่างแน่นอน

QNPS_Service
    [Arguments]    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Element Should Contain    name=Question_8_0_0    ${CheckquestionNPS}
    Element Should Contain    name=Question_8_0_0    ${CheckAdaptiveText_Service}
    Element Should Contain    name=Question_8_0_0    ${CheckquestionNPS1}
    Element Should Contain    xpath=//label[text()='ไม่แนะนำ']    ไม่แนะนำ
    Element Should Contain    xpath=//label[text()='แนะนำอย่างแน่นอน']    แนะนำอย่างแน่นอน

Attribute1_Sale_Service
    [Arguments]    ${CheckAttribute_1}
    Element Should Contain    name=Question_9_0_0    ${CheckAttribute_1}
    Element Should Contain    xpath=//label[text()='ช้ามาก']    ช้ามาก
    Element Should Contain    xpath=//label[text()='รวดเร็วเป็นอย่างมาก']    รวดเร็วเป็นอย่างมาก
    Element Should Contain    ${ChoiceAttri1_NA}    ไม่มีพนักงานเข้ามาทักทาย

Attribute2_Service
    [Arguments]    ${CheckAttribute_2}
    Element Should Contain    name=Question_10_0_0    ${CheckAttribute_2}
    Element Should Contain    xpath=//label[text()='ไม่เรียบร้อยเลย']    ไม่เรียบร้อยเลย
    Element Should Contain    xpath=//label[text()='เรียบร้อยมาก']    เรียบร้อยมาก

Attribute3_Service
    [Arguments]    ${CheckAttribute_3}
    Element Should Contain    name=Question_11_0_0    ${CheckAttribute_3}
    Element Should Contain    xpath=//label[text()='ไม่เอาใจใส่เลย']    ไม่เอาใจใส่เลย
    Element Should Contain    xpath=//label[text()='เอาใจใส่ดีมาก']    เอาใจใส่ดีมาก

Attibute4_Sale_Service
    [Arguments]    ${CheckAttibute_4}
    Element Should Contain    name=Question_12_0_0    ${CheckAttribute_4}
    Element Should Contain    xpath=//label[text()='อธิบายไม่ดีเลย']    อธิบายไม่ดีเลย
    Element Should Contain    xpath=//label[text()='อธิบายได้ดีมาก']    อธิบายได้ดีมาก

Attribute5_Sale
    [Arguments]    ${CheckAttribute_5}
    Element Should Contain    name=Question_13_0_0    ${CheckAttribute_5}
    Element Should Contain    xpath=//label[text()='ไม่อิสระเลย']    ไม่อิสระเลย
    Element Should Contain    xpath=//label[text()='อิสระดีมาก']    อิสระดีมาก

Attribute6_Sale
    [Arguments]    ${CheckAttribute_6}
    Element Should Contain    name=Question_14_0_0    ${CheckAttribute_6}
    Element Should Contain    xpath=//label[text()='ดูไม่น่าซื้อเลย']    ดูไม่น่าซื้อเลย
    Element Should Contain    xpath=//label[text()='ดูน่าซื้อมาก']    ดูน่าซื้อมาก
    Page Should Contain Element    css=div[name='page13'] .NA.STAR11

Attribute7_Sale
    [Arguments]    ${CheckAttribute_7}
    Element Should Contain    name=Question_15_0_0    ${CheckAttribute_7}
    Element Should Contain    name=Answer_15_0_0_0    ได้รับ
    Element Should Contain    name=Answer_15_0_0_1    ไม่ได้รับ

Attribute7_Profile
    [Arguments]    ${CheckAtt7_Profile1}
    Element Text Should Be    name=Question_16_0_0    ${CheckAtt7_Profile1}

ChoiceProfile
    Element Should Contain    ${CheckChoice1_TH}    พนักงานอธิบายด้วยปากเปล่า
    Element Should Contain    ${CheckChoice2_TH}    พนักงานอธิบายด้วยโบรชัวร์/สมุดคู่มือการรับประกัน
    Element Should Contain    ${CheckChoice3_TH}    ทางไลน์/เฟซบุ๊ค (ทางร้านเพิ่มลูกค้าทางไลน์ หรือลูกค้าเห็นทางเพจเฟซบุ๊คของทางร้านจากการเชิญเฟซบุ๊ค)
    Element Should Contain    ${CheckChoice4_TH}    จอทีวี
    Element Should Contain    ${CheckChoice5_TH}    จอคอมพิวเตอร์ (คอมตั้งโต๊ะ หรือโน๊ตบุ๊ค)
    Element Should Contain    ${CheckChoice6_TH}    มือถือสมาร์ทโฟน (Smartphone)
    Element Should Contain    ${CheckChoice7_TH}    แท็บเล็ต (Tablet)
    Element Should Contain    ${CheckChoice8_TH}    ป้ายโฆษณาดิจิทัล ที่ไม่ใช่ทีวี (Digital Signage)
    Element Should Contain    ${CheckChoice9_TH}    อื่นๆ โปรดระบุ
    Page Should Contain Textfield    name=profile1_9_oa

Attribute8_sale
    [Arguments]    ${CheckAttribute_8}
    Element Should Contain    name=Question_17_0_0    ${CheckAttribute_8}
    Element Should Contain    xpath=//label[text()='ไม่มีประโยชน์เลย']    ไม่มีประโยชน์เลย
    Element Should Contain    xpath=//label[text()='มีประโยชน์เป็นอย่างมาก']    มีประโยชน์เป็นอย่างมาก

Attribute9_Sale
    [Arguments]    ${CheckAttribute_9}
    Element Should Contain    name=Question_18_0_0    ${CheckAttribute_9}
    Element Should Contain    xpath=//label[text()='ไม่เข้าใจเลย']    ไม่เข้าใจเลย
    Element Should Contain    xpath=//label[text()='เข้าใจเป็นอย่างมาก']    เข้าใจเป็นอย่างมาก

Attribute10_Sale
    [Arguments]    ${CheckAttribute_10}
    Element Should Contain    name=Question_19_0_0    ${CheckAttribute_10}
    Element Should Contain    xpath=//label[text()='ไม่เอาใจใส่เลย']    ไม่เอาใจใส่เลย
    Element Should Contain    xpath=//label[text()='เอาใจใส่เป็นอย่างมาก']    เอาใจใส่เป็นอย่างมาก

Attribute11_Sale
    [Arguments]    ${CheckAttribute_11}
    Element Should Contain    name=Question_20_0_0    ${CheckAttribute_11}
    Element Should Contain    xpath=//label[text()='รู้สึกไม่สำคัญเลย']    รู้สึกไม่สำคัญเลย
    Element Should Contain    xpath=//label[text()='รู้สึกสำคัญมาก']    รู้สึกสำคัญมาก

Attribute12_Service
    [Arguments]    ${CheckAttribute_12}
    Element Should Contain    name=Question_21_0_0    ${CheckAttribute_12}
    Element Should Contain    name=Answer_21_0_0_0    ได้รับการแจ้ง
    Element Should Contain    name=Answer_21_0_0_1    ไม่ได้รับการแจ้ง

Attribute13_Service
    [Arguments]    ${CheckAttribute_13}
    Element Should Contain    name=Question_22_0_0    ${CheckAttribute_13}
    Element Should Contain    //*[@compname="LayoutNodeUI_246"]//following::label[text()='ไม่เข้าใจเลย']    ไม่เข้าใจเลย
    Element Should Contain    //*[@compname="LayoutNodeUI_246"]//following::label[text()='เข้าใจเป็นอย่างมาก']    เข้าใจเป็นอย่างมาก

Attribute14_Service
    [Arguments]    ${CheckAttribute_14}
    Element Should Contain    name=Question_23_0_0    ${CheckAttribute_14}
    Element Should Contain    name=Answer_23_0_0_0    ได้รับการแจ้ง
    Element Should Contain    name=Answer_23_0_0_1    ไม่ได้รับการแจ้ง

Attribute15_Service
    [Arguments]    ${CheckAttribute_15}
    Element Should Contain    name=Question_24_0_0    ${CheckAttribute_15}
    Sleep    2s
    Element Should Contain    //*[@compname="LayoutNodeUI_267"]//following::label[text()='ไม่เข้าใจเลย']    ไม่เข้าใจเลย
    Sleep    2s
    Element Should Contain    //*[@compname="LayoutNodeUI_267"]//following::label[text()='เข้าใจเป็นอย่างมาก']    เข้าใจเป็นอย่างมาก

Attribute16_Service
    [Arguments]    ${CheckAttribute_16}
    Element Should Contain    name=Question_25_0_0    ${CheckAttribute_16}
    Element Should Contain    xpath=//label[text()='ต้องปรับปรุง']    ต้องปรับปรุง
    Element Should Contain    xpath=//label[text()='ดีมาก']    ดีมาก

Attribute17_Service
    [Arguments]    ${CheckAttribute_17}
    Element Should Contain    name=Question_26_0_0    ${CheckAttribute_17}
    Element Should Contain    name=Answer_26_0_0_0    ได้รับการแจ้ง
    Element Should Contain    name=Answer_26_0_0_1    ไม่ได้รับการแจ้ง

Attribute18_Service
    [Arguments]    ${CheckAttribute_18}
    Element Should Contain    name=Question_27_0_0    ${CheckAttribute_18}
    Element Should Contain    name=Answer_27_0_0_0    ได้รับการแจ้ง
    Element Should Contain    name=Answer_27_0_0_1    ไม่ได้รับการแจ้ง

Attribute19_Service
    [Arguments]    ${CheckAttribute_19}
    Element Should Contain    name=Question_28_0_0    ${CheckAttribute_19}
    Element Should Contain    name=Answer_28_0_0_0    ได้รับการแจ้ง
    Element Should Contain    name=Answer_28_0_0_1    ไม่ได้รับการแจ้ง

Attribute20_Service
    [Arguments]    ${CheckAttribute_20}
    Element Should Contain    name=Question_29_0_0    ${CheckAttribute_20}
    Element Should Contain    name=Answer_29_0_0_0    ได้รับการติดต่อ
    Element Should Contain    name=Answer_29_0_0_1    ไม่ได้รับการติดต่อ

QMedia_Sale
    [Arguments]    ${CheckQMedia}
    Element Text Should Be    name=Question_30_0_0    ${CheckQMedia}

ChoiceMedia
    Element Text Should Be    ${CheckMChoice1_TH}    Facebook
    Element Text Should Be    ${CheckMChoice2_TH}    Instagram
    Element Text Should Be    ${CheckMChoice3_TH}    Line
    Element Text Should Be    ${CheckMChoice4_TH}    Blogger Review
    Element Text Should Be    ${CheckMChoice5_TH}    โฆษณาทางโทรทัศน์
    Element Text Should Be    ${CheckMChoice6_TH}    โฆษณาทางวิทยุ
    Element Text Should Be    ${CheckMChoice7_TH}    โฆษณาใน Youtube
    Element Text Should Be    ${CheckMChoice8_TH}    โฆษณาในเวปไซต์
    Element Text Should Be    ${CheckMChoice9_TH}    ออกบูท/อีเว้นท์ ตามสถานที่ต่างๆ
    Element Text Should Be    ${CheckMChoice10_TH}    ป้ายโฆษณาริมถนน
    Element Text Should Be    ${CheckMChoice11_TH}    หน้าร้านฮอนด้า
    Element Text Should Be    ${CheckMChoice12_TH}    เพื่อน/ญาติ/คนรู้จักแนะนำ
    Element Text Should Be    ${CheckMChoice13_TH}    อื่นๆ โปรดระบุ
    Page Should Contain Element    name=media_13_oa

Score0to10_text
    Page Should Contain    0
    Page Should Contain    1
    Page Should Contain    2
    Page Should Contain    3
    Page Should Contain    4
    Page Should Contain    5
    Page Should Contain    6
    Page Should Contain    7
    Page Should Contain    8
    Page Should Contain    9
    Page Should Contain    10

CheckTitleandMailNegativeAlert
    [Arguments]    ${MailTitle}    ${MailTitle_1}
    Element Text Should Be    //h2[@id=':no']    ${MailTitle}
    Element Text Should Be    css=h2#\:no    ${MailTitle_1}
    Element Text Should Be    xpath=//span[@name='noreply@bizcuitintel.com']    noreply@bizcuitintel.com

CheckRDID_5
    [Arguments]    ${RD_ID5_1}    ${RD_ID5_2}    ${RD_ID5_3}    ${RD_ID5_4}    ${RD_ID5_5}
    Element Text Should Be    //h2[@id=':no']/span[1]    ${RD_ID5_1}
    Element Text Should Be    //h2[@id=':no']/span[2]    ${RD_ID5_2}
    Element Text Should Be    //h2[@id=':no']/span[3]    ${RD_ID5_3}
    Element Text Should Be    //h2[@id=':no']/span[4]    ${RD_ID5_4}
    Element Text Should Be    //h2[@id=':no']/span[5]    ${RD_ID5_5}

CheckMailNegativeAlert
    Element Text Should Be    css=table:nth-of-type(2) > tbody > tr:nth-of-type(1) > td    ลูกค้าของคุณให้คะแนนความพึงพอใจต่ำกว่า 5 จากคะแนนเต็ม 10 เคสของคุณยังไม่ถูกปิดภายใน 24 ชั่วโมง
    Element Text Should Be    //td[.=' กรุณาติดตามเรื่อง ตามรายละเอียดด้านล่างนี้ ']    กรุณาติดตามเรื่อง ตามรายละเอียดด้านล่างนี้
    Element Text Should Be    //td[.=' CSAT Score ']    CSAT Score
    Element Text Should Be    //td[.=' Message ']    Message
    Element Text Should Be    //td[.=' Opt-in Contact ']    Opt-in Contact
    Element Text Should Be    //td[.=' Transaction Date ']    Transaction Date
    Element Text Should Be    //td[.=' First Name ']    First Name
    Element Text Should Be    //td[.=' Last Name ']    Last Name
    Element Text Should Be    //td[.=' Tel. ']    Tel.
    Element Text Should Be    //td[.=' Shop ID ']    Shop ID
    Element Text Should Be    //td[.=' Shop name ']    Shop name
    Element Text Should Be    //td[.=' Touchpoint ']    Touchpoint
    Element Text Should Be    //td[.=' Tel. ']    Tel.
    Element Text Should Be    //td[.=' Model ']    Model
    Element Text Should Be    //td[.=' Time over SLA ']    Time over SLA
    Element Text Should Be    css=table:nth-of-type(4) > tbody > tr:nth-of-type(1) > td    คุณสามารถปิดเคสหรืออัพเดทเกี่ยวกับเคสนี้ จากลิ้งค์ด้านล่าง

CheckMailDetialNegativeAlert_UVS0008
    #CheckDetial
    Element Text Should Be    xpath=//td[.='3']    3
    Element Text Should Be    css=table:nth-of-type(3) > tbody > tr:nth-of-type(2) > td:nth-of-type(2)    พนักงานไม่เอาใจใส่แนะนำการชับขี่ปลอดภัยไม่รู้เรื่อง
    Element Text Should Be    xpath=//td[.='อนุญาต']    อนุญาต
    Element Text Should Be    css=table:nth-of-type(3) > tbody > tr:nth-of-type(4) > td:nth-of-type(2)    2019-12-30T00:00:00.000Z
    Element Text Should Be    css=table:nth-of-type(3) > tbody > tr:nth-of-type(5) > td:nth-of-type(2)    รัตนา
    Element Text Should Be    css=table:nth-of-type(3) > tbody > tr:nth-of-type(6) > td:nth-of-type(2)    สุรเดช
    Element Text Should Be    css=table:nth-of-type(3) > tbody > tr:nth-of-type(7) > td:nth-of-type(2)    0646459299
    Element Text Should Be    css=table:nth-of-type(3) > tbody > tr:nth-of-type(8) > td:nth-of-type(2)    1210300
    Element Text Should Be    css=table:nth-of-type(3) > tbody > tr:nth-of-type(9) > td:nth-of-type(2)    หจก. แสงชัยพาณิชย์ สำนักงานใหญ่
    Element Text Should Be    css=table:nth-of-type(3) > tbody > tr:nth-of-type(10) > td:nth-of-type(2)    Sales
    Element Text Should Be    css=table:nth-of-type(3) > tbody > tr:nth-of-type(11) > td:nth-of-type(2)    WAVE
    Element Text Should Be    css=table:nth-of-type(3) > tbody > tr:nth-of-type(12) > td:nth-of-type(2)    24 hrs
