*** Settings ***
Resource          Variables.robot
Resource          Keywords.robot    ###############################################################

*** Test Cases ***
TC3-Verify flow Question and condition of survey when customer have answer NPS = 5
    #Open and Login
    Open Browser    ${InputSurveylink_MOTInquiry_T3}    Chrome
    #checkwording page1
    Sleep    5s
    MOT Inquiry    ${CheckLabelIntro}    ${CheckLabelIntro_1}    ${CheckLabelQ1_MeetNeed}    ${CheckLabelChoiceQ1_MeetNeed}    ${CheckLabelQ2_CES}    ${CheckLabelChoiceQ2_CES}
    ...    ${CheckLabelQ3_NPS}    ${CheckLabelChoiceQ3_NPS}    ${Checkbutton_Next}
    #clickanswer
    Click Element    xpath=(.//*[normalize-space(text()) and normalize-space(.)='*'])[2]/preceding::span[24]    #click3
    Click Element    xpath=(.//*[normalize-space(text()) and normalize-space(.)='*'])[3]/preceding::span[15]    #click6
    Click Element    xpath=(.//*[normalize-space(text()) and normalize-space(.)='*'])[2]/following::span[50]    #click5
    Sleep    5s
    Scroll Element Into View    id=submit
    Wait Until Element is visible    id=submit    timeout=5s
    Set Focus To Element    id=submit
    Click Element    id=submit
    Sleep    5s
    #Page2_NPSOptin
    NPS_Score_QuesionAndOptin0_6    ${CheckLabelNPS0_6}
    Input Text    id=q5    รอนาน ไม่สามารถให้ความช่วยเหลือหรือตอบคำถามได้ชัดเจน
    Opt_in Question    ${CheckLabelOpt_in}    ${CheckbuttonOptin_Yes}    ${CheckbuttonOptin_No}    ${Checkbutton_Prev}    ${Checkbutton_Submit}
    Click Element    ${CheckbuttonOptin_Yes}

TC4-Verify flow Question and condition of survey when customer \ have answer NPS = 2
    #Open and Login
    Open Browser    ${InputSurveylink_MOTInquiry_T4}    Chrome
    #checkwording page1
    Sleep    5s
    MOT Inquiry    ${CheckLabelIntro}    ${CheckLabelIntro_1}    ${CheckLabelQ1_MeetNeed}    ${CheckLabelChoiceQ1_MeetNeed}    ${CheckLabelQ2_CES}    ${CheckLabelChoiceQ2_CES}
    ...    ${CheckLabelQ3_NPS}    ${CheckLabelChoiceQ3_NPS}    ${Checkbutton_Next}
    #clickanswer
    Click Element    xpath=(.//*[normalize-space(text()) and normalize-space(.)='*'])[2]/preceding::span[24]    #click3
    Click Element    xpath=(.//*[normalize-space(text()) and normalize-space(.)='*'])[3]/preceding::span[15]    #click6
    Click Element    xpath=(.//*[normalize-space(text()) and normalize-space(.)='*'])[2]/following::span[50]    #click5
    Sleep    5s
    Scroll Element Into View    id=submit
    Wait Until Element is visible    id=submit    timeout=5s
    Set Focus To Element    id=submit
    Click Element    id=submit
    Sleep    5s
    #Page2_NPSOptin
    NPS_Score_QuesionAndOptin0_6    ${CheckLabelNPS0_6}
    Input Text    id=q5    รอนาน ไม่สามารถให้ความช่วยเหลือหรือตอบคำถามได้ชัดเจน
    Opt_in Question    ${CheckLabelOpt_in}    ${CheckbuttonOptin_Yes}    ${CheckbuttonOptin_No}    ${Checkbutton_Prev}    ${Checkbutton_Submit}
    Click Element    ${CheckbuttonOptin_Yes}
    Catenate
