*** Settings ***
Resource          Variables.robot

*** Keywords ***
Introduction
    [Arguments]    ${Check_introMainTH1}
    Element Should Contain    //*[@id="greeting-page"]/div/div[2]/label    ${Check_introMainTH1}
    Page Should Contain Element    //span[@class="btn start"][text()='เริ่มใช้งาน']

Q1
    [Arguments]    ${Check_Q1_TH}
    Element Should Contain    name=Question_1_0_0    ${Check_Q1_TH}
    Element Should Contain    ${CheckChoiceQ1_1}    ต้องการคุยกับพนักงาน
    Element Should Contain    ${CheckChoiceQ1_2}    ต้องการให้พนักงานมาสาธิตการใช้สินค้า
    Element Should Contain    ${CheckChoiceQ1_3}    หาสินค้าที่ต้องการไม่เจอ
    Element Should Contain    ${CheckChoiceQ1_4}    ต้องการแจ้งข้อร้องเรียน
    Element Should Contain    ${CheckChoiceQ1_5}    อื่นๆ ระบุ
    Page Should Contain Element    name=q1_5_oa

Q1_iCare
    [Arguments]    ${Check_Q1_TH}
    Element Should Contain    name=Question_1_0_0    ${Check_Q1_TH}
    Element Should Contain    ${CheckChoiceQ1_1}    ต้องการคุยกับพนักงาน
    Element Should Contain    ${CheckChoiceQ1_4}    ต้องการแจ้งข้อร้องเรียน
    Element Should Contain    ${CheckChoiceQ1_5}    อื่นๆ ระบุ
    Page Should Contain Element    name=q1_5_oa

WaitingStaff
    [Arguments]    ${CheckWaitingStaff}    ${CheckWaitingStaff_1}    ${CheckWaitingStaff_2}    ${CheckWaitingStaff_3}
    Element Should Contain    name=Title_2_0    ${CheckWaitingStaff}
    Element Should Contain    name=Title_2_0    ${CheckWaitingStaff_1}
    Element Should Contain    name=Title_2_0    ${CheckWaitingStaff_2}
    Element Should Contain    name=Title_2_0    ${CheckWaitingStaff_3}
    Page Should Contain Element    //span[@class="btn next"][text()='ถัดไป']

Q2
    [Arguments]    ${Check_Q2_TH}
    Element Should Contain    name=Question_3_0_0    ${Check_Q2_TH}
    Element Should Contain    ${CheckChoiceQ2_1}    เข้ามาในร้านแล้วไม่มีพนักงานดูแล
    Element Should Contain    ${CheckChoiceQ2_2}    คนในร้านแน่นจนพนักงานมาดูแลไม่ทัน
    Element Should Contain    ${CheckChoiceQ2_3}    พนักงานไม่สนใจ
    Element Should Contain    ${CheckChoiceQ2_4}    ได้คุยกับพนักงานแล้วแต่ต้องการเปลี่ยนคน
    Element Should Contain    ${CheckChoiceQ2_5}    จุดที่เรียกเป็นมุมอับมองไม่เห็นพนักงาน
    Element Should Contain    ${CheckChoiceQ2_6}    เรียกพนักงานไปแล้วแต่ก็ยังไม่มีใครมา
    Element Should Contain    ${CheckChoiceQ2_7}    อื่นๆ ระบุ
    Page Should Contain Element    name=q2_7_oa

Q3
    [Arguments]    ${Check_Q3_TH}
    Element Should Contain    name=Question_4_0_0    ${Check_Q3_TH}
    Element Should Contain    ${CheckChoiceQ3_1}    คอมพิวเตอร์แล็บท็อป (Laptop)
    Element Should Contain    ${CheckChoiceQ3_2}    คอมพิวเตอร์ตั้งโต๊ะ (Desktop)
    Element Should Contain    ${CheckChoiceQ3_3}    โทรศัพท์มือถือ (Mobile Phone)
    Element Should Contain    ${CheckChoiceQ3_4}    แท็บเล็ต (Tablet)
    Element Should Contain    ${CheckChoiceQ3_5}    สินค้าอุปกรณ์เสริม (Accessories)
    Element Should Contain    ${CheckChoiceQ3_6}    สินค้าเกมมิ่ง (Gaming Gears)
    Element Should Contain    ${CheckChoiceQ3_7}    สมาร์ทวอทช์และสินค้าอุปกรณ์สุขภาพ (Smartwatch and Health Gadgets)
    Element Should Contain    ${CheckChoiceQ3_8}    สินค้าเกี่ยวกับสมาร์ทโฮม (Smart Home Product)
    Element Should Contain    ${CheckChoiceQ3_9}    อื่นๆ ระบุ
    Page Should Contain Element    name=q3_9_oa

Q4
    [Arguments]    ${Check_Q4_TH}
    Element Should Contain    name=Question_5_0_0    ${Check_Q4_TH}
    Element Should Contain    ${CheckChoiceQ4_1}    คอมพิวเตอร์แล็บท็อป (Laptop)
    Element Should Contain    ${CheckChoiceQ4_2}    คอมพิวเตอร์ตั้งโต๊ะ (Desktop)
    Element Should Contain    ${CheckChoiceQ4_3}    โทรศัพท์มือถือ (Mobile Phone)
    Element Should Contain    ${CheckChoiceQ4_4}    แท็บเล็ต (Tablet)
    Element Should Contain    ${CheckChoiceQ4_5}    สินค้าอุปกรณ์เสริม (Accessories)
    Element Should Contain    ${CheckChoiceQ4_6}    สินค้าเกมมิ่ง (Gaming Gears)
    Element Should Contain    ${CheckChoiceQ4_7}    สมาร์ทวอทช์และสินค้าอุปกรณ์สุขภาพ (Smartwatch and Health Gadgets)
    Element Should Contain    ${CheckChoiceQ4_8}    สินค้าเกี่ยวกับสมาร์ทโฮม (Smart Home Product)
    Element Should Contain    ${CheckChoiceQ4_9}    อื่นๆ ระบุ
    Page Should Contain Element    name=q4_9_oa

Q5
    [Arguments]    ${Check_Q5_TH}
    Element Should Contain    name=Question_6_0_0    ${Check_Q5_TH}
    Page Should Contain Element    name=q5

Q6_Banana Store
    [Arguments]    ${Check_Q6_TH_BananaStore}
    Element Should Contain    name=Question_7_0_0    ${Check_Q6_TH_BananaStore}
    Page Should Contain Element    name=q6

Q6_Banana Mobile
    [Arguments]    ${Check_Q6_TH_BananaMobile}
    Element Should Contain    name=Question_7_0_0    ${Check_Q6_TH_BananaMobile}
    Page Should Contain Element    name=q6

Q6_Studio7
    [Arguments]    ${Check_Q6_TH_Studio7}
    Element Should Contain    name=Question_7_0_0    ${Check_Q6_TH_Studio7}
    Page Should Contain Element    name=q6

Q6_UStore
    [Arguments]    ${Check_Q6_TH_UStore}
    Element Should Contain    name=Question_7_0_0    ${Check_Q6_TH_UStore}
    Page Should Contain Element    name=q6

Q6_iCare
    [Arguments]    ${Check_Q6_TH_iCare}
    Element Should Contain    name=Question_7_0_0    ${Check_Q6_TH_iCare}
    Page Should Contain Element    name=q6

Q7
    [Arguments]    ${Check_Q7_TH}
    Element Should Contain    name=Question_7_0_1    ${Check_Q7_TH}
    Element Should Contain    name=Answer_7_0_1_0    ${Opt_in_Q7_have}
    Element Should Contain    name=Answer_7_0_1_1    ${Opt_in_Q7_Nothave}

Ending_BananaStore
    [Arguments]    ${Ending_BananaStore}
    Element Should Contain    css=#survey #endMessage    ${Ending_BananaStore}

Ending_BananaMobile
    [Arguments]    ${Ending_BananaMobile}
    Element Should Contain    css=#survey #endMessage    ${Ending_BananaMobile}

Ending_Studio7
    [Arguments]    ${Ending_Studio7}
    Element Should Contain    css=#survey #endMessage    ${Ending_Studio7}

Ending_UStore
    [Arguments]    ${Ending_UStore}
    Element Should Contain    css=#survey #endMessage    ${Ending_UStore}

Ending_iCare
    [Arguments]    ${Ending_iCare}
    Element Should Contain    css=#survey #endMessage    ${Ending_iCare}
