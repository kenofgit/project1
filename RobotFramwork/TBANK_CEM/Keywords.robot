*** Settings ***
Resource          Variables.robot

*** Keywords ***
Login
    [Arguments]    ${InputUsername}    ${InputPwd}
    Select From List by Value    xpath=//select[@id="selectPeriod"]    3
    Input Text    j_idt7:j_idt13    ${InputUsername}
    Input Password     j_idt7:j_idt17    ${InputPwd}
    Click Element    j_idt7:createButton

Header View Survey Reports row1
    [Arguments]    ${LabelCallRound}    ${DropdownCallRound}    ${LabelProtocol}    ${DropdownProtocol}    ${ChangeEN}    ${ChangeTH}
    Page Should Contain Element    ${LabelCallRound}
    Page Should Contain Element    ${DropdownCallRound}
    Page Should Contain Element    ${LabelProtocol}
    Page Should Contain Element    ${DropdownProtocol}
    Page Should Contain Element    ${ChangeEN}
    Page Should Contain Element    ${ChangeTH}

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
