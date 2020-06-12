*** Settings ***
Resource          Variables.robot
Resource          Keywords.robot    ###############################################################

*** Test Cases ***
TC1- View Survey Reports & Click Call Summar-Success
    #Open and Login
    Open Browser    ${InputTBANKCEM}    Chrome
    Login    ${InputUsername}    ${InputPwd}
    Wait Until Element Is Visible    j_idt8:j_idt37
    Wait Until Element Is Visible    j_idt8:j_idt41
    Click Link    xpath=//a[@href="../reportviewer/index.jsp"]
    Sleep    5s
    Select Window    Title=Report
    Sleep    5s
    Click Link    ${LinkCallSumByMonth}
    #check Header
    Header View Survey Reports row1    ${LabelCallRound}    ${DropdownCallRound}    ${LabelProtocol}    ${DropdownProtocol}    ${ChangeEN}    ${ChangeTH}
    Header View Survey Reports row2    ${LabelGender}    ${DropdownGender}    ${LabeAge}    ${DropdownAge}    ${LabeValue}    ${DropdownValue}
    ...    ${BthReload}    ${BthPrint}    ${IconQuestion}
    #Check Report Menu
    Menu Reports    ${LabelReports}    ${LinkDashboard}    ${LinkCallSum}    ${LabelCSIScore}    ${LinkSumbyBranch}    ${LinkSumbyDistr}
    ...    ${LabelEngagement}    ${LinkEngaOverall}    ${LinkEngabyBranch}    ${LinkEngabyDistr}    ${LabelImpress}    ${LinkImpressOveall}
    ...    ${LinkImpressbyBranch}    ${LinkImpressbyDistr}    ${LabelCustEff}    ${LinkCustEffOveall}    ${LinkCustEffbyBranch}    ${LinkCustEffbyDistr}
    ...    ${LabelDetailScoreAndWeight}    ${LinkDetialbyBranch}    ${LinkDetialbyDistr}    ${LabelDistributionScore}    ${LinkDistributionbyBranch}    ${LinkDistributionbyDistr}
    ...    ${LinkDistributionbyRH}    ${LinkMMImprbyBranch}    ${LinkMMImprbyDistr}    ${LinkMMImprbyRH}    ${LinkMMImprBank}    ${LinkMeanandConsistency}
    ...    ${LinkCSIPerform}    ${LinkSalsePerform}    ${LinkSevicePerform}    ${LinkSatisConsistency}    ${LabelCustFeedbyAtt}    ${LinkQ3}
    ...    ${LinkQ6}    ${LinkO1Positive}    ${LinkO1Negative}    ${LinkO2Positive}    ${LinkO2Negative}    ${LinkCustFeedBranch}
    ...    ${LinkOverallCust}    ${LinkRespondeProfile}    ${LabelLoginReport}    ${LinkLoginReportBranch}    ${LinkLoginReportDistr}    ${LabelAccountSetting}
    ...    ${LinkChgPassword}
    Capture Page Screenshot

TC2- Verify Call Summary by Month page
    Maximize Browser Window
    sleep    4s
    Two list Service&Month    ${listType}    ${listMonth}    ${BthSubmit}
    Capture Page Screenshot

TC3 - Verify change dropdown list
    Select From List by Value    ${listType}    sales
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    ${listType}    service
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    ${listType}    sales
    Select From List by Value    ${listMonth}    2017/06
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    ${listMonth}    2017/05
    Select From List by Value    ${listType}    service
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Click Button    Export to Excel
