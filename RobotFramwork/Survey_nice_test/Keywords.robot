*** Settings ***
Resource          Variables.robot

*** Keywords ***
Introduction_1

MOT Inquiry
    [Arguments]    ${CheckLabelIntro}    ${CheckLabelIntro_1}    ${CheckLabelQ1_MeetNeed}    ${CheckLabelChoiceQ1_MeetNeed}    ${CheckLabelQ2_CES}    ${CheckLabelChoiceQ2_CES}
    ...    ${CheckLabelQ3_NPS}    ${CheckLabelChoiceQ3_NPS}    ${Checkbutton_Next}
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
    Page Should Contain Element    ${Checkbutton_Next}

NPS_Score_QuesionAndOptin0_6
    [Arguments]    ${CheckLabelNPS0_6}
    Element Text Should Be    id=q5-text    ${CheckLabelNPS0_6}

NPS_Score_QuesionAndOptin7_8
    [Arguments]    ${CheckLablNPS7_8}
    Element Should Contain    id=q7-text    ${CheckLablNPS7_8}

NPS_Score_QuesionAndOptin9_10
    [Arguments]    ${CheckLablNPS9_10}
    Element Should Contain    id=q6-text    ${CheckLablNPS9_10}

Opt_in Question
    [Arguments]    ${CheckLabelOpt_in}    ${CheckbuttonOptin_Yes}    ${CheckbuttonOptin_No}    ${Checkbutton_Prev}    ${Checkbutton_Submit}
    Element Should Contain    id=q8-text    ${CheckLabelOpt_in}
    Page Should Contain Element    ${CheckbuttonOptin_Yes}
    Page Should Contain Element    ${CheckbuttonOptin_No}
    Page Should Contain Element    ${Checkbutton_Prev}
    Page Should Contain Element    ${Checkbutton_Submit}

Header View Survey Reports row2
    [Arguments]    ${LabelGender}    ${DropdownGender}    ${LabeAge}    ${DropdownAge}    ${LabeValue}    ${DropdownValue}
    ...    ${BthReload}    ${BthPrint}    ${IconQuestion}
    Page Should Contain Element    ${LabelGender}
    Page Should Contain Element    ${DropdownGender}
    Page Should Contain Element    ${LabeAge}
    Page Should Contain Element    ${DropdownAge}
    #Page Should Contain Element    ${LabeLifestage}
    #Page Should Contain Element    ${DropdownLife}
    Page Should Contain Element    ${LabeValue}
    Page Should Contain Element    ${DropdownValue}
    Page Should Contain Element    ${BthReload}
    Page Should Contain Element    ${BthPrint}
    Page Should Contain Element    ${IconQuestion}

Menu Reports
    [Arguments]    ${LabelReports}    ${LinkDashboard}    ${LinkCallSum}    ${LabelCSIScore}    ${LinkSumbyBranch}    ${LinkSumbyDistr}
    ...    ${LabelEngagement}    ${LinkEngaOverall}    ${LinkEngabyBranch}    ${LinkEngabyDistr}    ${LabelImpress}    ${LinkImpressOveall}
    ...    ${LinkImpressbyBranch}    ${LinkImpressbyDistr}    ${LabelCustEff}    ${LinkCustEffOveall}    ${LinkCustEffbyBranch}    ${LinkCustEffbyDistr}
    ...    ${LabelDetailScoreAndWeight}    ${LinkDetialbyBranch}    ${LinkDetialbyDistr}    ${LabelDistributionScore}    ${LinkDistributionbyBranch}    ${LinkDistributionbyDistr}
    ...    ${LinkDistributionbyRH}    ${LinkMMImprbyBranch}    ${LinkMMImprbyDistr}    ${LinkMMImprbyRH}    ${LinkMMImprBank}    ${LinkMeanandConsistency}
    ...    ${LinkCSIPerform}    ${LinkSalsePerform}    ${LinkSevicePerform}    ${LinkSatisConsistency}    ${LabelCustFeedbyAtt}    ${LinkQ3}
    ...    ${LinkQ6}    ${LinkO1Positive}    ${LinkO1Negative}    ${LinkO2Positive}    ${LinkO2Negative}    ${LinkCustFeedBranch}
    ...    ${LinkOverallCust}    ${LinkRespondeProfile}    ${LabelLoginReport}    ${LinkLoginReportBranch}    ${LinkLoginReportDistr}    ${LabelAccountSetting}
    ...    ${LinkChgPassword}
    Page Should Contain Element    ${LabelReports}
    Page Should Contain Element    ${LinkDashboard}
    Page Should Contain Element    ${LinkCallSum}
    Page Should Contain Element    ${LabelCSIScore}
    Page Should Contain Element    ${LinkSumbyBranch}
    Page Should Contain Element    ${LinkSumbyDistr}
    Page Should Contain Element    ${LabelEngagement}
    Page Should Contain Element    ${LinkEngaOverall}
    Page Should Contain Element    ${LinkEngabyBranch}
    Page Should Contain Element    ${LinkEngabyDistr}
    Page Should Contain Element    ${LabelImpress}
    Page Should Contain Element    ${LinkImpressOveall}
    Page Should Contain Element    ${LinkImpressbyBranch}
    Page Should Contain Element    ${LinkImpressbyDistr}
    Page Should Contain Element    ${LabelCustEff}
    Page Should Contain Element    ${LinkCustEffOveall}
    Page Should Contain Element    ${LinkCustEffbyBranch}
    Page Should Contain Element    ${LinkCustEffbyDistr}
    Page Should Contain Element    ${LabelDetailScoreAndWeight}
    Page Should Contain Element    ${LinkDetialbyBranch}
    Page Should Contain Element    ${LinkDetialbyDistr}
    Page Should Contain Element    ${LabelDistributionScore}
    Page Should Contain Element    ${LinkDistributionbyBranch}
    Page Should Contain Element    ${LinkDistributionbyDistr}
    Page Should Contain Element    ${LinkDistributionbyRH}
    Page Should Contain Element    ${LabelMMImpr}
    Page Should Contain Element    ${LinkMMImprbyBranch}
    Page Should Contain Element    ${LinkMMImprbyDistr}
    Page Should Contain Element    ${LinkMMImprbyRH}
    Page Should Contain Element    ${LinkMMImprBank}
    Page Should Contain Element    ${LinkMeanandConsistency}
    Page Should Contain Element    ${LinkCSIPerform}
    Page Should Contain Element    ${LinkSalsePerform}
    Page Should Contain Element    ${LinkSevicePerform}
    Page Should Contain Element    ${LinkSatisConsistency}
    Page Should Contain Element    ${LabelCustFeedbyAtt}
    Page Should Contain Element    ${LinkQ3}
    Page Should Contain Element    ${LinkQ6}
    Page Should Contain Element    ${LinkO1Positive}
    Page Should Contain Element    ${LinkO1Negative}
    Page Should Contain Element    ${LinkO2Positive}
    Page Should Contain Element    ${LinkO2Negative}
    Page Should Contain Element    ${LinkCustFeedBranch}
    Page Should Contain Element    ${LinkOverallCust}
    Page Should Contain Element    ${LinkRespondeProfile}
    Page Should Contain Element    ${LabelLoginReport}
    Page Should Contain Element    ${LinkLoginReportBranch}
    Page Should Contain Element    ${LinkLoginReportDistr}
    Page Should Contain Element    ${LabelAccountSetting}
    Page Should Contain Element    ${LinkChgPassword}

Three Dropdown list default
    [Arguments]    ${listRH}    ${listDistr}    ${listBranch}    ${BthSubmit}
    Page Should Contain Element    ${listRH}
    Element Should Be Disabled    ${listDistr}
    Element Should Be Disabled    ${listBranch}
    Page Should Contain Element    ${BthSubmit}

Two list Service&Month
    [Arguments]    ${listType}    ${listMonth}    ${BthSubmit}
    Page Should Contain Element    ${listType}
    Page Should Contain Element    ${listMonth}
    Page Should Contain Element    ${BthSubmit}
