*** Settings ***
Resource          Variables.robot
Resource          Keywords.robot    ###############################################################

*** Test Cases ***
TC1-LoginTBank_CSI System and click View Survey Reports-Success
    #Open and Login
    Open Browser    ${InputTBANKCEM}    Chrome
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
    ...    ${LabelDetailScore}    ${LinkDetialbyBranch}    ${LinkDetialbyDistr}    ${LinkMMImprbyBranch}    ${LinkMMImprbyDistr}    ${LinkMMImprbyRH}
    ...    ${LinkMMImprBank}    ${LinkMeanandConsistency}    ${LinkCSIPerform}    ${LinkSalsePerform}    ${LinkSevicePerform}    ${LinkSatisConsistency}
    ...    ${LabelCustFeedbyAtt}    ${LinkQ3}    ${LinkQ6}    ${LinkO1Positive}    ${LinkO1Negative}    ${LinkO2Positive}
    ...    ${LinkO2Negative}    ${LinkCustFeedBranch}    ${LinkOverallCust}    ${LinkRespondeProfile}    ${LabelLoginReport}    ${LinkLoginReportBranch}
    ...    ${LinkLoginReportDistr}    ${LabelAccountSetting}    ${LinkChgPassword}

TC2-Respondent Profile Menu
    Click Link    ${LinkRespondeProfile}
    Sleep    1s
    Capture Page Screenshot
    Select From List By Value    ${DropdownGender}    F
    Select From List By Value    ${DropdownAge}    2
    Select From List By Value    ${DropdownValue}    4
    Click button    Reload
    Capture Page Screenshot

facebook
    Open Browser    https://www.facebook.com/    Chrome
    Input Text    email    smart.line.sincere@gmail.com
    Input Password    pass    P0rns1r!2621fonn
    Click Element    loginbutton
    Click Image    src= https://scontent-kut2-1.xx.fbcdn.net/v/t1.0-1/p24x24/23518986_770312733172205_1873208635229454624_n.jpg?oh=ad4a082dcc4a4c4ddafde8a4e5c7f79b&oe=5B4CEDFB
