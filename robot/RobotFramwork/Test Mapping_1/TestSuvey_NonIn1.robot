*** Settings ***
Library           Selenium2Library
Resource          Variables.robot
Resource          Keywords.robot

*** Test Cases ***
Test Survey nonInStgPos_Flow1
    #Open Browser
    Open Browser    ${Linksurvey1}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Introduction_Fullloop    ${Checkintro}    ${Checkintro2}
    Click Element    ${btn_start}
    Sleep    2s
    Question_CSAT    ${CheckquestionCSAT_TH}
    #Score CSAT = 9
    Click Element    xpath=/html/body/div[2]/div[2]/div[1]/div[4]/div/div[1]/div[2]/div[3]/div/div/div/div[2]/label[10]/span
    Sleep    2s
    OA_CSATPos    ${OA_CSATPos}
    Input Text    name = csat_pos    สินค้าราคาไม่แพง พนักงานบริการดีมาก
    Click Element    ${btn_next}
    Sleep    ${TWOSECOND}
    Question_CES    ${CheckquestionCES_TH}
    Click Element    ${Next_footer}
    Sleep    ${TWOSECOND}
    #Score ces = 9
    Click Element    xpath=/html/body/div[2]/div[2]/div[1]/div[4]/div[3]/div/div[2]/div[3]/div/div/div/div[2]/label[10]/span
    Sleep    ${TWOSECOND}
    Question_RP    ${CheckquestionRP_TH}
    #Score RP = 10
    Click Element    xpath=/html/body/div[2]/div[2]/div[1]/div[4]/div[4]/div/div[2]/div[3]/div/div/div/div[2]/label[11]/span
    Sleep    ${TWOSECOND}
    Question_NPS    ${CheckquestionNPS_TH}
    #Score NPS = 9
    Click Element    xpath=/html/body/div[2]/div[2]/div[1]/div[4]/div[5]/div/div[2]/div[3]/div/div/div/div[2]/label[10]/span
    Sleep    2s
    Question_Optin_Contact    ${Checkquestion_Optin_con_TH}
    Click Element    ${Opt_in_Yes}
    Sleep    2s
    Question_province    ${CheckquesProvince_TH}
    Click Element    ${Province}
    wait until page contains element    41c2d213-19d3-4ae3-87ef-9cab025f5232
    wait until element is enabled    id=41c2d213-19d3-4ae3-87ef-9cab025f5232
    page should contain element    id=41c2d213-19d3-4ae3-87ef-9cab025f5232
    Question_Branch    ${CheckquesBranch_TH}
    Click Element    ${Branch}
    Sleep    ${TWOSECOND}
    #Click Element    ${Next_footer}
    Question_DateTime    ${CheckquesDateTime_TH}
    Sleep    ${TWOSECOND}
    Input Text    ${DateTimePicker}    2019-09-14 15:57:44
    Click Element    ${Next_footer}
    Question_Q1    ${CheckquesQ1_TH}
    Sleep    ${TWOSECOND}
    Click Element    ${SCORE_Q1}
    Question_Q2    ${CheckquesQ2_TH}
    Sleep    ${TWOSECOND}
    Click Element    ${SCORE_Q2}
    Question_Q3    ${CheckquesQ3_TH}
    Sleep    ${TWOSECOND}
    Click Element    ${SCORE_Q3}
    #Select Checkbox    ${Choice_Newspaper_TH}
    wait until page contains element    003d5bfb-82e9-4ac3-9117-9f1d4a9da0cf
    wait until element is enabled    id=003d5bfb-82e9-4ac3-9117-9f1d4a9da0cf
    page should contain element    id=003d5bfb-82e9-4ac3-9117-9f1d4a9da0cf
    click element    ${Choice_Newspaper_TH}
    #checkbox should be selected    ${Choice_Newspaper_TH}
    Click Element    ${Choice_Facebook_TH}
    Click Element    ${Choice_Line_TH}
    Click Element    ${Choice_OtherOA_TH}
    Input Text    name=media_12_oa    นกพิราบขาว
    Sleep    ${TWOSECOND}
    Click Element    ${Next_footer}
    Question_Sug    ${CheckquesSug_TH}
    Input Text    name=q_sug    พนักงานบริการดีอยู่แล้วค่ะ
    Sleep    ${TWOSECOND}
    Click Element    ${Next_footer}
    Question_inform    ${Checkques_inform_TH}
    Question_informGender    ${Checkques_informGender_TH}
    wait until page contains element    014f97f2-e4de-480e-80e0-d3c0d2d21701
    wait until element is enabled    id=014f97f2-e4de-480e-80e0-d3c0d2d21701
    page should contain element    id=014f97f2-e4de-480e-80e0-d3c0d2d21701
    click element    ${Gender_Women_TH}
    Question_informAge    ${Checkques_informAge_TH}
    Click Element    ${InformAge2_TH}
    Question_informMarital    ${Checkques_informMarital_TH}
    Click Element    ${Marital2_TH}
    wait until page contains element    1acfd7b2-305e-459b-b330-851c34f3ccd7
    wait until element is enabled    id=1acfd7b2-305e-459b-b330-851c34f3ccd7
    page should contain element    id=1acfd7b2-305e-459b-b330-851c34f3ccd7
    Question_informOccupation    ${Checkques_informOccupation_TH}
    Click Element    ${Occupation6_TH}
    Click Element    ${Next_footer}
    sleep    2s
    Input Text    name=d4_6_oa    เกษตรกร
    sleep    2s
    Question_informMonthly    ${Checkques_informMonthly_TH}
    Click Element    ${Monthly3_TH}
    Click Element    ${Next_footer}
    Question_page10    ${Checkques_page10_TH}    ${Checkques_page10-1_TH}
    Input Text    name=q_name    จีรนันท์
    Input Text    name=q_surname    เบสทดสอบ
    Click Element    ${Next_footer}
    Sleep    ${TWOSECOND}
    Input Text    name=q_tel    0972390935
    Click Element    ${Next_footer}
    Sleep    ${TWOSECOND}
    Question_lucky_drawTH    ${Checklucky_drawTH}    ${Checklucky_drawTH1}    ${Checklucky_drawTH2}    ${Checklucky_drawTH3}    ${Checklucky_drawTH4}    ${Checklucky_drawTH5}
    ...    ${Checklucky_drawTH6}    ${Checklucky_drawTH7}    ${Checklucky_drawTH8}
    Sleep    3s
    Question_participTH    ${CheckparticipTH_1}    ${CheckparticipTH_2}    ${CheckparticipTH_3}    ${CheckparticipTH_4}    ${CheckparticipTH_5}    ${CheckparticipTH_6}
    ...    ${CheckparticipTH_7}    ${CheckparticipTH_8}    ${CheckparticipTH_9}    ${CheckparticipTH_10}    ${CheckparticipTH_11}    ${CheckparticipTH_12}
    ...    ${CheckparticipTH_13}    ${CheckparticipTH_14}    ${CheckparticipTH_15}    ${CheckparticipTH_16}    ${CheckparticipTH_17}    ${CheckparticipTH_18}
    ...    ${CheckparticipTH_19}    ${CheckparticipTH_20}    ${CheckparticipTH_21}    ${CheckparticipTH_22}    ${CheckparticipTH_23}    ${CheckparticipTH_24}
    ...    ${CheckparticipTH_25}
    Sleep    ${TWOSECOND}
    Question_rewardTH    ${CheckrewardTH_1}    ${CheckrewardTH_2}    ${CheckrewardTH_3}    ${CheckrewardTH_4}    ${CheckrewardTH_5}    ${CheckrewardTH_6}
    ...    ${CheckrewardTH_7}    ${CheckrewardTH_8}    ${CheckrewardTH_9}    ${CheckrewardTH_10}    ${CheckrewardTH_11}    ${CheckrewardTH_12}
    ...    ${CheckrewardTH_13}    ${CheckrewardTH_14}    ${CheckrewardTH_15}
    Question_Opin_Reward    ${Checkques_Optin_reward_TH}
    Click Element    ${Opt_in_reward_Yes}

Test Survey nonInProd_Flow1
    #Open Browser
    Open Browser    ${LinksurveyNonInProdQR1}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Introduction_Fullloop    ${Checkintro}    ${Checkintro2}
    Click Element    ${btn_start}
    Question_CSAT    ${CheckquestionCSAT_TH}
    Click Element    xpath=//span[text()='3']
    Question_Optin_Contact    ${OA_CSATNeg}
    Input Text    name = csat_neg    บริการแย่มากค่ะ พนักงานพูดจาไม่ดี
    Sleep    ${TWOSECOND}
    Click Element    ${btn_next}
    Question_CES    ${CheckquestionCES_TH}
    Click Element    ${Next_footer}
    Sleep    ${TWOSECOND}
    Click Element    ${SCORE_CES}
    Question_RP    ${CheckquestionRP_TH}
    Sleep    ${TWOSECOND}
    Click Element    ${SCORE_RP}
    Question_NPS    ${CheckquestionNPS_TH}
    Sleep    ${TWOSECOND}
    Click Element    ${SCORE_NPS}
    Question_Optin_Contact    ${Checkquestion_Optin_con_TH}
    Click Element    ${Opt_in_Yes}
    Question_province    ${CheckquesProvince_TH}
    Click Element    ${Province}
    wait until page contains element    41c2d213-19d3-4ae3-87ef-9cab025f5232
    wait until element is enabled    id=41c2d213-19d3-4ae3-87ef-9cab025f5232
    page should contain element    id=41c2d213-19d3-4ae3-87ef-9cab025f5232
    Question_Branch    ${CheckquesBranch_TH}
    Click Element    ${Branch}
    Sleep    ${TWOSECOND}
    #Click Element    ${Next_footer}
    Question_DateTime    ${CheckquesDateTime_TH}
    Sleep    ${TWOSECOND}
    Input Text    ${DateTimePicker}    2019-09-06 10:57:44
    Click Element    ${Next_footer}
    Question_Q1    ${CheckquesQ1_TH}
    Sleep    ${TWOSECOND}
    Click Element    ${SCORE_Q1}
    Question_Q2    ${CheckquesQ2_TH}
    Sleep    ${TWOSECOND}
    Click Element    ${SCORE_Q2}
    Question_Q3    ${CheckquesQ3_TH}
    Sleep    ${TWOSECOND}
    Click Element    ${SCORE_Q3}
    #Select Checkbox    ${Choice_Newspaper_TH}
    wait until page contains element    003d5bfb-82e9-4ac3-9117-9f1d4a9da0cf
    wait until element is enabled    id=003d5bfb-82e9-4ac3-9117-9f1d4a9da0cf
    page should contain element    id=003d5bfb-82e9-4ac3-9117-9f1d4a9da0cf
    click element    ${Choice_Newspaper_TH}
    #checkbox should be selected    ${Choice_Newspaper_TH}
    Click Element    ${Choice_Facebook_TH}
    Click Element    ${Choice_Line_TH}
    Sleep    ${TWOSECOND}
    Click Element    ${Next_footer}
    Question_Sug    ${CheckquesSug_TH}
    Input Text    name=q_sug    อบรมพนักงานให้ดีกว่านี้ค่ะ
    Sleep    ${TWOSECOND}
    Click Element    ${Next_footer}
    Question_inform    ${Checkques_inform_TH}
    Question_informGender    ${Checkques_informGender_TH}
    wait until page contains element    014f97f2-e4de-480e-80e0-d3c0d2d21701
    wait until element is enabled    id=014f97f2-e4de-480e-80e0-d3c0d2d21701
    page should contain element    id=014f97f2-e4de-480e-80e0-d3c0d2d21701
    click element    ${Gender_Women_TH}
    Question_informAge    ${Checkques_informAge_TH}
    Click Element    ${InformAge2_TH}
    Question_informMarital    ${Checkques_informMarital_TH}
    Click Element    ${Marital2_TH}
    wait until page contains element    1acfd7b2-305e-459b-b330-851c34f3ccd7
    wait until element is enabled    id=1acfd7b2-305e-459b-b330-851c34f3ccd7
    page should contain element    id=1acfd7b2-305e-459b-b330-851c34f3ccd7
    Question_informOccupation    ${Checkques_informOccupation_TH}
    Click Element    ${Occupation3_TH}
    Question_informMonthly    ${Checkques_informMonthly_TH}
    Click Element    ${Monthly3_TH}
    Question_page10    ${Checkques_page10_TH}    ${Checkques_page10-1_TH}
    Input Text    name=q_name    จีรนันท์
    Input Text    name=q_surname    เบสทดสอบ
    Click Element    ${Next_footer}
    Sleep    ${TWOSECOND}
    Input Text    name=q_tel    0972390935
    Click Element    ${Next_footer}
    Sleep    ${TWOSECOND}
    Question_lucky_drawTH    ${Checklucky_drawTH}    ${Checklucky_drawTH1}    ${Checklucky_drawTH2}    ${Checklucky_drawTH3}    ${Checklucky_drawTH4}    ${Checklucky_drawTH5}
    ...    ${Checklucky_drawTH6}    ${Checklucky_drawTH7}    ${Checklucky_drawTH8}
    Sleep    5s
    Question_participTH    ${CheckparticipTH_1}    ${CheckparticipTH_2}    ${CheckparticipTH_3}    ${CheckparticipTH_4}    ${CheckparticipTH_5}    ${CheckparticipTH_6}
    ...    ${CheckparticipTH_7}    ${CheckparticipTH_8}    ${CheckparticipTH_9}    ${CheckparticipTH_10}    ${CheckparticipTH_11}    ${CheckparticipTH_12}
    ...    ${CheckparticipTH_13}    ${CheckparticipTH_14}    ${CheckparticipTH_15}    ${CheckparticipTH_16}    ${CheckparticipTH_17}    ${CheckparticipTH_18}
    ...    ${CheckparticipTH_19}    ${CheckparticipTH_20}    ${CheckparticipTH_21}    ${CheckparticipTH_22}    ${CheckparticipTH_23}    ${CheckparticipTH_24}
    ...    ${CheckparticipTH_25}
    Sleep    ${TWOSECOND}
    Question_rewardTH    ${CheckrewardTH_1}    ${CheckrewardTH_2}    ${CheckrewardTH_3}    ${CheckrewardTH_4}    ${CheckrewardTH_5}    ${CheckrewardTH_6}
    ...    ${CheckrewardTH_7}    ${CheckrewardTH_8}    ${CheckrewardTH_9}    ${CheckrewardTH_10}    ${CheckrewardTH_11}    ${CheckrewardTH_12}
    ...    ${CheckrewardTH_13}    ${CheckrewardTH_14}    ${CheckrewardTH_15}
    Question_Opin_Reward    ${Checkques_Optin_reward_TH}
    Click Element    ${Opt_in_reward_Yes}

Test Survey nonInStgNegQR1_Flow1
    #Open Browser
    Open Browser    ${Linksurvey1}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Introduction_Fullloop    ${Checkintro}    ${Checkintro2}
    select from list by value    ${locator_language}    ${Language_TH}
    sleep    1s
    Click Element    ${btn_start}
    Question_CSAT    ${CheckquestionCSAT_TH}
    Click Element    xpath=//span[text()='1']
    OA_CSATNeg    ${OA_CSATNeg}
    Input Text    name = csat_neg    พนักงานนี่เทรนมารึป่าวคะ? ถามจริง ต้องใส่ชุดกาลา ตีกระบังลมไปซื้อหรอคะถึงจะได้รับบริการ โอ๊ยยย นี่เลือกซื้ออยู่สักพักมีคุณหญิงเดินมาก็เข้าใจว่าลูกค้าประจำแต่พนักงานร้าน4-5คนกรูเข้าไปหาหมด ขนาดเราจะจ่ายเงินยังไม่สนใจ นี่อยากลอง อยากถามก็ไม่สนใจ คือไรอะแบบนี้อ่ะ ถ้าไม่ขายคนธรรมดาก็ระบุไว้บนโลโก้เลยค่ะว่าขายเฉพาะ คุณหญิง คุณนาย ไฮโซ อ้อ แล้วก็โปรบัตรอ่ะ ไม่ต้องมีหรอกขายแต่คนร๊วยรวย เค้ามีเงิน นี่ออกโปรมา เราก็เออจะซื้อ 50,000 ก็เยอะมากสำหรับเรา แต่พนักงานไม่ขายให้...บายยยไปซื้อที่อื่นก็ได้ มีลูกบอกลูก มีหลานบอกหลาน ไม่ต้องซื้อของยี่ห้อนี่ละ
    Sleep    ${TWOSECOND}
    Click Element    ${btn_next}
    Question_CES    ${CheckquestionCES_TH}
    Click Element    ${Next_footer}
    Sleep    ${TWOSECOND}
    Click Element    ${SCORE_CES}
    Question_RP    ${CheckquestionRP_TH}
    Sleep    ${TWOSECOND}
    Click Element    ${SCORE_RP}
    Question_NPS    ${CheckquestionNPS_TH}
    Sleep    ${TWOSECOND}
    Click Element    ${SCORE_NPS}
    Question_Optin_Contact    ${Checkquestion_Optin_con_TH}
    Click Element    ${Opt_in_Yes}
    Question_province    ${CheckquesProvince_TH}
    Click Element    ${Province_Rayong}
    wait until page contains element    41c2d213-19d3-4ae3-87ef-9cab025f5232
    wait until element is enabled    id=41c2d213-19d3-4ae3-87ef-9cab025f5232
    page should contain element    id=41c2d213-19d3-4ae3-87ef-9cab025f5232
    Question_Branch    ${CheckquesBranch_TH}
    Click Element    ${Branch_Rayong1}
    Sleep    ${TWOSECOND}
    #Click Element    ${Next_footer}
    Question_DateTime    ${CheckquesDateTime_TH}
    Sleep    ${TWOSECOND}
    Input Text    ${DateTimePicker}    2019-09-16 10:57:44
    Click Element    ${Next_footer}
    Question_Q1    ${CheckquesQ1_TH}
    Sleep    ${TWOSECOND}
    Click Element    ${SCORE_Q1}
    Question_Q2    ${CheckquesQ2_TH}
    Sleep    ${TWOSECOND}
    Click Element    ${SCORE_Q2}
    Question_Q3    ${CheckquesQ3_TH}
    Sleep    ${TWOSECOND}
    Click Element    ${SCORE_Q3}
    #Select Checkbox    ${Choice_Newspaper_TH}
    wait until page contains element    003d5bfb-82e9-4ac3-9117-9f1d4a9da0cf
    wait until element is enabled    id=003d5bfb-82e9-4ac3-9117-9f1d4a9da0cf
    page should contain element    id=003d5bfb-82e9-4ac3-9117-9f1d4a9da0cf
    click element    ${Choice_Newspaper_TH}
    #checkbox should be selected    ${Choice_Newspaper_TH}
    Click Element    ${Choice_Facebook_TH}
    Click Element    ${Choice_Line_TH}
    Sleep    ${TWOSECOND}
    Click Element    ${Next_footer}
    Question_Sug    ${CheckquesSug_TH}
    Input Text    name=q_sug    อบรมพนักงานให้ดีกว่านี้ค่ะ
    Sleep    ${TWOSECOND}
    Click Element    ${Next_footer}
    Question_inform    ${Checkques_inform_TH}
    Question_informGender    ${Checkques_informGender_TH}
    wait until page contains element    014f97f2-e4de-480e-80e0-d3c0d2d21701
    wait until element is enabled    id=014f97f2-e4de-480e-80e0-d3c0d2d21701
    page should contain element    id=014f97f2-e4de-480e-80e0-d3c0d2d21701
    click element    ${Gender_Women_TH}
    Question_informAge    ${Checkques_informAge_TH}
    Click Element    ${InformAge2_TH}
    Question_informMarital    ${Checkques_informMarital_TH}
    Click Element    ${Marital2_TH}
    wait until page contains element    1acfd7b2-305e-459b-b330-851c34f3ccd7
    wait until element is enabled    id=1acfd7b2-305e-459b-b330-851c34f3ccd7
    page should contain element    id=1acfd7b2-305e-459b-b330-851c34f3ccd7
    Question_informOccupation    ${Checkques_informOccupation_TH}
    Click Element    ${Occupation3_TH}
    Question_informMonthly    ${Checkques_informMonthly_TH}
    Click Element    ${Monthly3_TH}
    Question_page10    ${Checkques_page10_TH}    ${Checkques_page10-1_TH}
    Input Text    name=q_name    จีรนันท์
    Input Text    name=q_surname    เบสทดสอบ
    Click Element    ${Next_footer}
    Sleep    ${TWOSECOND}
    Input Text    name=q_tel    0972390935
    Click Element    ${Next_footer}
    Sleep    ${TWOSECOND}
    Question_lucky_drawTH    ${Checklucky_drawTH}    ${Checklucky_drawTH1}    ${Checklucky_drawTH2}    ${Checklucky_drawTH3}    ${Checklucky_drawTH4}    ${Checklucky_drawTH5}
    ...    ${Checklucky_drawTH6}    ${Checklucky_drawTH7}    ${Checklucky_drawTH8}
    Sleep    3s
    Question_participTH    ${CheckparticipTH_1}    ${CheckparticipTH_2}    ${CheckparticipTH_3}    ${CheckparticipTH_4}    ${CheckparticipTH_5}    ${CheckparticipTH_6}
    ...    ${CheckparticipTH_7}    ${CheckparticipTH_8}    ${CheckparticipTH_9}    ${CheckparticipTH_10}    ${CheckparticipTH_11}    ${CheckparticipTH_12}
    ...    ${CheckparticipTH_13}    ${CheckparticipTH_14}    ${CheckparticipTH_15}    ${CheckparticipTH_16}    ${CheckparticipTH_17}    ${CheckparticipTH_18}
    ...    ${CheckparticipTH_19}    ${CheckparticipTH_20}    ${CheckparticipTH_21}    ${CheckparticipTH_22}    ${CheckparticipTH_23}    ${CheckparticipTH_24}
    ...    ${CheckparticipTH_25}
    Sleep    ${TWOSECOND}
    Question_rewardTH    ${CheckrewardTH_1}    ${CheckrewardTH_2}    ${CheckrewardTH_3}    ${CheckrewardTH_4}    ${CheckrewardTH_5}    ${CheckrewardTH_6}
    ...    ${CheckrewardTH_7}    ${CheckrewardTH_8}    ${CheckrewardTH_9}    ${CheckrewardTH_10}    ${CheckrewardTH_11}    ${CheckrewardTH_12}
    ...    ${CheckrewardTH_13}    ${CheckrewardTH_14}    ${CheckrewardTH_15}
    Question_Opin_Reward    ${Checkques_Optin_reward_TH}
    Click Element    ${Opt_in_reward_Yes}
    sleep    5s
    End_FullLoopTH    ${CheckEnd01_TH}    ${CheckEnd02_TH}
    Close Window

Test Survey nonInStgNeu_Flow1
    #Open Browser
    Open Browser    ${Linksurvey2}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Introduction_Fullloop    ${Checkintro}    ${Checkintro2}
    Click Element    ${btn_start}
    Question_CSAT    ${CheckquestionCSAT_TH}
    Click Element    xpath=//span[text()='7']
    Sleep    ${TWOSECOND}
    Click Element    ${btn_next}
    Question_CES    ${CheckquestionCES_TH}
    Sleep    ${TWOSECOND}
    #CES=6
    Click Element    xpath=/html/body/div[2]/div[2]/div[1]/div[4]/div[2]/div/div[2]/div[3]/div/div/div/div[2]/label[7]/span/span
    Question_RP    ${CheckquestionRP_TH}
    Sleep    ${TWOSECOND}
    #RP=7
    Click Element    xpath=/html/body/div[2]/div[2]/div[1]/div[4]/div[3]/div/div[2]/div[3]/div/div/div/div[2]/label[8]/span/span
    Question_NPS    ${CheckquestionNPS_TH}
    Sleep    ${TWOSECOND}
    #NPS=4
    Click Element    xpath=/html/body/div[2]/div[2]/div[1]/div[4]/div[4]/div/div[2]/div[3]/div/div/div/div[2]/label[5]/span/span
    Question_Optin_Contact    ${Checkquestion_Optin_con_TH}
    #Opt-in=Yes
    Click Element    xpath=/html/body/div[2]/div[2]/div[1]/div[4]/div[5]/div/div[2]/div[3]/div[1]/div/label/span[1]
    Question_province    ${CheckquesProvince_TH}
    #Province=กรุงเทพฯ
    Click Element    ${Province}
    wait until page contains element    41c2d213-19d3-4ae3-87ef-9cab025f5232
    wait until element is enabled    id=41c2d213-19d3-4ae3-87ef-9cab025f5232
    page should contain element    id=41c2d213-19d3-4ae3-87ef-9cab025f5232
    Question_Branch    ${CheckquesBranch_TH}
    #Branch=ลาดพร้าว
    Click Element    xpath=//option[@value="598cf321-4ddf-4084-b0d2-ab8ae6b85f1e"]
    Sleep    ${TWOSECOND}
    #Click Element    ${Next_footer}
    Question_DateTime    ${CheckquesDateTime_TH}
    Sleep    ${TWOSECOND}
    Input Text    ${DateTimePicker}    2019-09-05 10:57:44
    Click Element    ${Next_footer}
    Question_Q4    ${CheckquesQ4_TH}
    Sleep    ${TWOSECOND}
    #Q4=6
    Click Element    xpath=/html/body/div[2]/div[2]/div[1]/div[4]/div[9]/div[1]/div[2]/div[4]/div/div/div/div[2]/label[7]/span
    Question_Q5    ${CheckquesQ5_TH}
    Sleep    ${TWOSECOND}
    #Q5=7
    Click Element    xpath=/html/body/div[2]/div[2]/div[1]/div[4]/div[10]/div/div[2]/div[3]/div/div/div/div[2]/label[8]/span
    wait until page contains element    003d5bfb-82e9-4ac3-9117-9f1d4a9da0cf
    wait until element is enabled    id=003d5bfb-82e9-4ac3-9117-9f1d4a9da0cf
    page should contain element    id=003d5bfb-82e9-4ac3-9117-9f1d4a9da0cf
    click element    ${Choice_Newspaper_TH}
    Click Element    ${Choice_Facebook_TH}
    Click Element    ${Choice_Banner_TH}
    Click Element    ${Choice_DirectMail_TH}
    Click Element    ${Choice_OtherOA_TH}
    Input Text    name=media_12_oa    เต่า
    Sleep    ${TWOSECOND}
    Click Element    ${Next_footer}
    Question_Sug    ${CheckquesSug_TH}
    Input Text    name=q_sug    พนักงานบริการดีอยู่แล้วค่ะ แต่พัฒนาให้ดียิ่งขึ้นได้ก็ดีนะค่ะ
    Sleep    ${TWOSECOND}
    Click Element    ${Next_footer}
    Question_inform    ${Checkques_inform_TH}
    Question_informGender    ${Checkques_informGender_TH}
    wait until page contains element    014f97f2-e4de-480e-80e0-d3c0d2d21701
    wait until element is enabled    id=014f97f2-e4de-480e-80e0-d3c0d2d21701
    page should contain element    id=014f97f2-e4de-480e-80e0-d3c0d2d21701
    click element    ${Gender_Man_TH}
    Question_informAge    ${Checkques_informAge_TH}
    Click Element    ${InformAge3_TH}
    Question_informMarital    ${Checkques_informMarital_TH}
    Click Element    ${Marital2_TH}
    wait until page contains element    1acfd7b2-305e-459b-b330-851c34f3ccd7
    wait until element is enabled    id=1acfd7b2-305e-459b-b330-851c34f3ccd7
    page should contain element    id=1acfd7b2-305e-459b-b330-851c34f3ccd7
    Question_informOccupation    ${Checkques_informOccupation_TH}
    Click Element    ${Occupation6_TH}
    Click Element    ${Next_footer}
    sleep    2s
    Input Text    name=d4_6_oa    เกษตรกร
    sleep    2s
    Question_informMonthly    ${Checkques_informMonthly_TH}
    Click Element    ${Monthly3_TH}
    Click Element    ${Next_footer}
    Question_page10    ${Checkques_page10_TH}    ${Checkques_page10-1_TH}
    Input Text    name=q_name    รัฐนันท์
    Input Text    name=q_surname    เบสทดสอบ
    Click Element    ${Next_footer}
    Sleep    ${TWOSECOND}
    Input Text    name=q_tel    0972390935
    Click Element    ${Next_footer}
    Sleep    ${TWOSECOND}
    Question_lucky_drawTH    ${Checklucky_drawTH}    ${Checklucky_drawTH1}    ${Checklucky_drawTH2}    ${Checklucky_drawTH3}    ${Checklucky_drawTH4}    ${Checklucky_drawTH5}
    ...    ${Checklucky_drawTH6}    ${Checklucky_drawTH7}    ${Checklucky_drawTH8}
    Sleep    3s
    Question_participTH    ${CheckparticipTH_1}    ${CheckparticipTH_2}    ${CheckparticipTH_3}    ${CheckparticipTH_4}    ${CheckparticipTH_5}    ${CheckparticipTH_6}
    ...    ${CheckparticipTH_7}    ${CheckparticipTH_8}    ${CheckparticipTH_9}    ${CheckparticipTH_10}    ${CheckparticipTH_11}    ${CheckparticipTH_12}
    ...    ${CheckparticipTH_13}    ${CheckparticipTH_14}    ${CheckparticipTH_15}    ${CheckparticipTH_16}    ${CheckparticipTH_17}    ${CheckparticipTH_18}
    ...    ${CheckparticipTH_19}    ${CheckparticipTH_20}    ${CheckparticipTH_21}    ${CheckparticipTH_22}    ${CheckparticipTH_23}    ${CheckparticipTH_24}
    ...    ${CheckparticipTH_25}
    Sleep    ${TWOSECOND}
    Question_rewardTH    ${CheckrewardTH_1}    ${CheckrewardTH_2}    ${CheckrewardTH_3}    ${CheckrewardTH_4}    ${CheckrewardTH_5}    ${CheckrewardTH_6}
    ...    ${CheckrewardTH_7}    ${CheckrewardTH_8}    ${CheckrewardTH_9}    ${CheckrewardTH_10}    ${CheckrewardTH_11}    ${CheckrewardTH_12}
    ...    ${CheckrewardTH_13}    ${CheckrewardTH_14}    ${CheckrewardTH_15}
    Question_Opin_Reward    ${Checkques_Optin_reward_TH}
    #Opt-in=Yes
    Click Element    xpath=/html/body/div[2]/div[2]/div[1]/div[4]/div[16]/div/div[2]/div[3]/div[1]/div/label/span[1]
    Close Window

Test Survey nonInStgNegQR2_Flow1
    #Open Browser
    Open Browser    ${Linksurvey2}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Introduction_Fullloop    ${Checkintro}    ${Checkintro2}
    select from list by value    ${locator_language}    ${Language_TH}
    sleep    1s
    Click Element    ${btn_start}
    Question_CSAT    ${CheckquestionCSAT_TH}
    Click Element    xpath=//span[text()='4']
    OA_CSATNeg    ${OA_CSATNeg}
    Input Text    name = csat_neg    โปรโมชั่นไม่น่าสนใจ
    Sleep    ${TWOSECOND}
    Click Element    ${btn_next}
    Question_CES    ${CheckquestionCES_TH}
    Click Element    ${Next_footer}
    Sleep    ${TWOSECOND}
    #SCORE CES = 5
    Click Element    xpath=/html/body/div[2]/div[2]/div[1]/div[4]/div[3]/div/div[2]/div[3]/div/div/div/div[2]/label[6]/span
    Question_RP    ${CheckquestionRP_TH}
    Sleep    ${TWOSECOND}
    #SCORE RP = 4
    Click Element    xpath=/html/body/div[2]/div[2]/div[1]/div[4]/div[4]/div/div[2]/div[3]/div/div/div/div[2]/label[5]/span
    Question_NPS    ${CheckquestionNPS_TH}
    Sleep    ${TWOSECOND}
    #SCORE NPS = 6
    Click Element    xpath=/html/body/div[2]/div[2]/div[1]/div[4]/div[5]/div/div[2]/div[3]/div/div/div/div[2]/label[7]/span
    Question_Optin_Contact    ${Checkquestion_Optin_con_TH}
    Click Element    ${Opt_in_Yes}
    sleep    2s
    Question_province    ${CheckquesProvince_TH}
    Click Element    ${Province_Chonburi}
    wait until page contains element    41c2d213-19d3-4ae3-87ef-9cab025f5232
    wait until element is enabled    id=41c2d213-19d3-4ae3-87ef-9cab025f5232
    page should contain element    id=41c2d213-19d3-4ae3-87ef-9cab025f5232
    Question_Branch    ${CheckquesBranch_TH}
    Click Element    ${Branch_Chonburi1}
    Sleep    ${TWOSECOND}
    #Click Element    ${Next_footer}
    Question_DateTime    ${CheckquesDateTime_TH}
    Sleep    ${TWOSECOND}
    Input Text    ${DateTimePicker}    2019-09-14 20:57:44
    Click Element    ${Next_footer}
    #เช็คคำถามข้อ Q4
    Question_Q4    ${CheckquesQ4_TH}
    Sleep    ${TWOSECOND}
    #Q4=4
    Click Element    xpath=/html/body/div[2]/div[2]/div[1]/div[4]/div[10]/div/div[2]/div[4]/div/div/div/div[2]/label[4]/span
    #เช็คคำถามข้อ Q5
    Question_Q5    ${CheckquesQ5_TH}
    Sleep    ${TWOSECOND}
    #Q5=2
    Click Element    xpath=/html/body/div[2]/div[2]/div[1]/div[4]/div[11]/div/div[2]/div[3]/div/div/div/div[2]/label[3]/span
    #Choice Media
    wait until page contains element    003d5bfb-82e9-4ac3-9117-9f1d4a9da0cf
    wait until element is enabled    id=003d5bfb-82e9-4ac3-9117-9f1d4a9da0cf
    page should contain element    id=003d5bfb-82e9-4ac3-9117-9f1d4a9da0cf
    click element    ${Choice_Newspaper_TH}
    #checkbox should be selected    ${Choice_Newspaper_TH}
    Click Element    ${Choice_Facebook_TH}
    Click Element    ${Choice_Line_TH}
    Sleep    ${TWOSECOND}
    Click Element    ${Next_footer}
    Question_Sug    ${CheckquesSug_TH}
    Input Text    name=q_sug    ควรอบรมพนักงานให้ดีกว่านี้นะค่ะ
    Sleep    ${TWOSECOND}
    Click Element    ${Next_footer}
    Question_inform    ${Checkques_inform_TH}
    Question_informGender    ${Checkques_informGender_TH}
    wait until page contains element    014f97f2-e4de-480e-80e0-d3c0d2d21701
    wait until element is enabled    id=014f97f2-e4de-480e-80e0-d3c0d2d21701
    page should contain element    id=014f97f2-e4de-480e-80e0-d3c0d2d21701
    click element    ${Gender_Women_TH}
    Question_informAge    ${Checkques_informAge_TH}
    Click Element    ${InformAge2_TH}
    Question_informMarital    ${Checkques_informMarital_TH}
    Click Element    ${Marital2_TH}
    wait until page contains element    1acfd7b2-305e-459b-b330-851c34f3ccd7
    wait until element is enabled    id=1acfd7b2-305e-459b-b330-851c34f3ccd7
    page should contain element    id=1acfd7b2-305e-459b-b330-851c34f3ccd7
    Question_informOccupation    ${Checkques_informOccupation_TH}
    Click Element    ${Occupation3_TH}
    Question_informMonthly    ${Checkques_informMonthly_TH}
    Click Element    ${Monthly3_TH}
    Question_page10    ${Checkques_page10_TH}    ${Checkques_page10-1_TH}
    Input Text    name=q_name    จีรนันท์
    Input Text    name=q_surname    เบสทดสอบ
    Click Element    ${Next_footer}
    Sleep    ${TWOSECOND}
    Input Text    name=q_tel    0972390935
    Click Element    ${Next_footer}
    Sleep    ${TWOSECOND}
    Question_lucky_drawTH    ${Checklucky_drawTH}    ${Checklucky_drawTH1}    ${Checklucky_drawTH2}    ${Checklucky_drawTH3}    ${Checklucky_drawTH4}    ${Checklucky_drawTH5}
    ...    ${Checklucky_drawTH6}    ${Checklucky_drawTH7}    ${Checklucky_drawTH8}
    Sleep    3s
    Question_participTH    ${CheckparticipTH_1}    ${CheckparticipTH_2}    ${CheckparticipTH_3}    ${CheckparticipTH_4}    ${CheckparticipTH_5}    ${CheckparticipTH_6}
    ...    ${CheckparticipTH_7}    ${CheckparticipTH_8}    ${CheckparticipTH_9}    ${CheckparticipTH_10}    ${CheckparticipTH_11}    ${CheckparticipTH_12}
    ...    ${CheckparticipTH_13}    ${CheckparticipTH_14}    ${CheckparticipTH_15}    ${CheckparticipTH_16}    ${CheckparticipTH_17}    ${CheckparticipTH_18}
    ...    ${CheckparticipTH_19}    ${CheckparticipTH_20}    ${CheckparticipTH_21}    ${CheckparticipTH_22}    ${CheckparticipTH_23}    ${CheckparticipTH_24}
    ...    ${CheckparticipTH_25}
    Sleep    ${TWOSECOND}
    Question_rewardTH    ${CheckrewardTH_1}    ${CheckrewardTH_2}    ${CheckrewardTH_3}    ${CheckrewardTH_4}    ${CheckrewardTH_5}    ${CheckrewardTH_6}
    ...    ${CheckrewardTH_7}    ${CheckrewardTH_8}    ${CheckrewardTH_9}    ${CheckrewardTH_10}    ${CheckrewardTH_11}    ${CheckrewardTH_12}
    ...    ${CheckrewardTH_13}    ${CheckrewardTH_14}    ${CheckrewardTH_15}
    Question_Opin_Reward    ${Checkques_Optin_reward_TH}
    #Opt-in Reward = Yes
    Click Element    xpath=/html/body/div[2]/div[2]/div[1]/div[4]/div[17]/div/div[2]/div[3]/div[1]/div/label/span[1]
    sleep    5s
    End_FullLoopTH    ${CheckEnd01_TH}    ${CheckEnd02_TH}
    Close Window
