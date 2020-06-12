*** Settings ***
Resource          Variables.robot

*** Keywords ***
MOT Inquiry
    [Arguments]    ${CheckLabelIntro}    ${CheckLabelIntro_1}    ${CheckLabelQ1_MeetNeed}    ${CheckLabelChoiceQ1_MeetNeed}    ${CheckLabelQ2_CES}    ${CheckLabelChoiceQ2_CES}
    ...    ${CheckLabelQ3_NPS}    ${CheckLabelChoiceQ3_NPS}
    #Introduction
    Element Should Contain    id=q1-text    ${CheckLabelIntro}
    Element Should Contain    id=q1-text    ${CheckLabelIntro_1}
    #q1_MeetNeed
    Element Should Contain    id=q1-text    ${CheckLabelQ1_MeetNeed}
    Element Should Contain    id=q1-text    ${CheckLabelChoiceQ1_MeetNeed}
    #q2_CES
    Element Should Contain    id=q3-text    ${CheckLabelQ2_CES}
    Element Should Contain    id=q3-text    ${CheckLabelChoiceQ2_CES}
    #q3_NPS
    Element Should Contain    id=q4-text    ${CheckLabelQ3_NPS}
    Element Should Contain    id=q4-text    ${CheckLabelChoiceQ3_NPS}

NPS_Score_QuesionAndOptin0_6
    [Arguments]    ${CheckLabelNPS0_6}    ${CheckLabelOpt_in}
    Element Should Contain    //h3[@id='q5-text']    ${CheckLabelNPS0_6}
    Element Should Contain    id=q8-text    ${CheckLabelOpt_in}

NPS_Score_QuesionAndOptin7_8
    [Arguments]    ${CheckLablNPS7_8}    ${CheckLabelOpt_in}
    Element Should Contain    id=q7-text    ${CheckLablNPS7_8}
    Element Should Contain    id=q8-text    ${CheckLabelOpt_in}

NPS_Score_QuesionAndOptin9_10
    [Arguments]    ${CheckLablNPS9_10}    ${CheckLabelOpt_in}
    Element Should Contain    id=q6-text    ${CheckLablNPS9_10}
    Element Should Contain    id=q8-text    ${CheckLabelOpt_in}
