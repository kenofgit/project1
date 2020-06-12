*** Settings ***
Resource          Variables.robot
Resource          Keywords.robot    ###############################################################

*** Test Cases ***
TC1-LoginTBank_CSI System and click View Survey Reports-Success
    #Open and Login
    Open Browser    https://www.facebook.com/    Chrome
    Login    ${InputUsername}    ${InputPwd}
    Wait Until Element Is Visible    j_idt8:j_idt37
    Wait Until Element Is Visible    j_idt8:j_idt41
    Click Link    xpath=//a[@href="../reportviewer/index.jsp"]
    Sleep    5s
    Select Window    Title=Report
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

TC2-Login Report By Branch & District Menu
    Click Link    ${LinkLoginReportBranch}
    Sleep    2s
    Click Button    Export to Excel
    Capture Page Screenshot
    Click Link    ${LinkLoginReportDistr}
    Sleep    1s
    Click Button    Export to Excel
    Capture Page Screenshot
