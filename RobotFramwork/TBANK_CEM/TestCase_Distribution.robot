*** Settings ***
Resource          Variables.robot
Resource          Keywords.robot    ###############################################################

*** Test Cases ***
TC1- View Survey Reports & Click Distrubution by Branch Menu-Success
    #Open and Login
    Open Browser    ${InputTBANKCEM}    Chrome
    Login    ${InputUsername}    ${InputPwd}
    Wait Until Element Is Visible    j_idt8:j_idt37
    Wait Until Element Is Visible    j_idt8:j_idt41
    Click Link    xpath=//a[@href="../reportviewer/index.jsp"]
    Sleep    5s
    Select Window    Title=Report
    Sleep    5s
    Click Link    ${LinkDistributionbyBranch}
    #check Header
    Header View Survey Reports row1    ${LabelCallRound}    ${DropdownCallRound}    ${LabelProtocol}    ${DropdownProtocol}    ${ChangeEN}    ${ChangeTH}
    Header View Survey Reports row2    ${LabelGender}    ${DropdownGender}    ${LabeAge}    ${DropdownAge}    ${LabeValue}    ${DropdownValue}
    ...    ${BthReload}    ${BthPrint}    ${IconQuestion}
    Page Should Contain Element    ${LabelAttribute}
    Page Should Contain Element    ${DropdownAttribute}    Q1
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
    Maximize Browser Window
    sleep    4s
    Page Should Contain Element    ${listRH}
    Element Should Be Disabled    ${listDistr}
    Capture Page Screenshot
    Click Button    Export to Excel

TC2- Verify Distrubution Branch case select RH & District list
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0103
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0105
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0106
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0108
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0109
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0110
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0205
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0104
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0111
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0112
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0113
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0114
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0115
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0203
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0206
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0208
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0209
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0204
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0211
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0212
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0214
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0215
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0201
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0207
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0210
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0218
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0219
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q1
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q2
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q3
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q4
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q5
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q6
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q7
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q8
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q9
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    PC1
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    PC2
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    PC3
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    O1
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    O2
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    O3
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List By Value    ${DropdownProtocol}    1
    Select From List by Value    ${DropdownAttribute}    Q1
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q2
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q3
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q4
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q5
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q6
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q7
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q8
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q9
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    PC1
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    PC2
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    PC3
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    O1
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    O2
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    O3
    Click button    Reload
    sleep    1s
    Capture Page Screenshot

TC3-Verify Distribution District And Select RH
    Click Link    ${LinkDistributionbyDistr}
    Page Should Contain Element    ${listRH}
    Capture Page Screenshot
    Click Button    Export to Excel
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q1
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q2
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q3
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q4
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q5
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q6
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q7
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q8
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q9
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    PC1
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    PC2
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    PC3
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    O1
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    O2
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    O3
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List By Value    ${DropdownProtocol}    1
    Select From List by Value    ${DropdownAttribute}    Q1
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q2
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q3
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q4
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q5
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q6
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q7
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q8
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q9
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    PC1
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    PC2
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    PC3
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    O1
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    O2
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    O3
    Click button    Reload
    sleep    1s
    Capture Page Screenshot

TC4-Verify Distribution RH
    sleep    3s
    Click Link    ${LinkDistributionbyDistr}
    Capture Page Screenshot
    Click Button    Export to Excel
    Select From List by Value    ${DropdownAttribute}    Q1
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q2
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q3
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q4
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q5
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q6
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q7
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q8
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q9
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    PC1
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    PC2
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    PC3
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    O1
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    O2
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    O3
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List By Value    ${DropdownProtocol}    1
    Select From List by Value    ${DropdownAttribute}    Q1
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q2
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q3
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q4
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q5
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q6
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q7
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q8
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q9
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    PC1
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    PC2
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    PC3
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    O1
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    O2
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    O3
    Click button    Reload
    sleep    1s
    Capture Page Screenshot

TC5-Change Attribute<Protocol Exclude>
    Select From List by Value    ${DropdownAttribute}    Q1
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q2
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q3
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q4
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q5
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q6
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q7
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q8
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q9
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    PC1
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    PC2
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    PC3
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    O1
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    O2
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    O3
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List By Value    ${DropdownProtocol}    1
    Select From List by Value    ${DropdownAttribute}    Q1
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q2
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q3
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q4
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q5
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q6
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q7
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q8
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    Q9
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    PC1
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    PC2
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    PC3
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    O1
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    O2
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
    Select From List by Value    ${DropdownAttribute}    O3
    Click button    Reload
    sleep    1s
    Capture Page Screenshot
