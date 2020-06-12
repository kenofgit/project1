*** Settings ***
Resource          Variables.robot
Resource          Keywords.robot    ###############################################################

*** Test Cases ***
TC1-View Survey Report & Verify Dashboard-Success
    #Open and Login
    Open Browser    ${InputTBANKCEM}    Chrome
    Login    ${InputUsername}    ${InputPwd}
    Wait Until Element Is Visible    j_idt8:j_idt37
    Wait Until Element Is Visible    j_idt8:j_idt41
    Click Link    xpath=//a[@href="../reportviewer/index.jsp"]
    Sleep    5s
    Select Window    Title=Report
    Sleep    5s
    Click Link    ${LinkDashboard}
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

TC2- Verify Default Dashboard page
    Maximize Browser Window
    Three Dropdown list default    ${listRH}    ${listDistr}    ${listBranch}    ${BthSubmit}
    Capture Page Screenshot

TC3- Verify Dashboard page case select RH list
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

TC4- Verify Dashboard page case select RH & District list
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

TC5-Verify Dashboard page case select RH1 & District103 & Branch
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0103
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0010
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0103
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0014
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0103
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0026
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0103
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0055
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0103
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0057
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0103
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0082
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0103
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0096
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0103
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0097
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0103
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0102
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0103
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0115
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0103
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0124
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0103
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0141
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0103
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0165
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0103
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0169
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0103
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0170
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0103
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0206
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0103
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0209
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0103
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0220
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0103
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0244
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0103
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0250
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0103
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0251
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0103
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0253
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0103
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0260
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0103
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0288
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0103
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0295
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0103
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0497
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0103
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0678
    Click Element    ${BthSubmit}
    Capture Page Screenshot

TC6-Verify Dashboard page case select RH1 & District105 & Branch
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0105
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0052
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0105
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0066
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0105
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0069
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0105
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0071
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0105
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0073
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0105
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0080
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0105
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0091
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0105
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0150
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0105
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0155
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0105
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0156
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0105
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0190
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0105
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0195
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0105
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0221
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0105
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0241
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0105
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0284
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0105
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0289
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0105
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0485
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0105
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0488
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0105
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0491
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0105
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0492
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0105
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0543
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0105
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0579
    Click Element    ${BthSubmit}
    Capture Page Screenshot

TC7-Verify Dashboard page case select RH1 & District106 & Branch
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0106
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0012
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0106
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0013
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0106
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0037
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0106
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0042
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0106
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0106
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0106
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0144
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0106
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0154
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0106
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0159
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0106
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0160
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0106
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0144
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0106
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0154
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0106
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0159
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0106
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0160
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0106
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0162
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0106
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0172
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0106
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0184
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0106
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0242
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0106
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0256
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0106
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0283
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0106
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0292
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0106
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0479
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0106
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0582
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0106
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0682
    Click Element    ${BthSubmit}
    Capture Page Screenshot

TC8-Verify Dashboard page case select RH1 & District108 & Branch
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0108
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0035
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0108
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0067
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0108
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0083
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0108
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0108
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0108
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0113
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0108
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0127
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0108
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0149
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0108
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0163
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0108
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0174
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0108
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0176
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0108
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0177
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0108
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0180
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0108
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0246
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0108
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0267
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0108
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0268
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0108
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0272
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0108
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0273
    Click Element    ${BthSubmit}
    Capture Page Screenshot

TC9-Verify Dashboard page case select RH1 & District109 & Branch
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0109
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0007
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0109
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0039
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0109
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0043
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0109
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0051
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0109
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0084
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0109
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0103
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0109
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0133
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0109
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0199
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0109
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0203
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0109
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0217
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0109
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0229
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0109
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0252
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0109
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0257
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0109
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0265
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0109
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0281
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0109
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0282
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0109
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0285
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0109
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0286
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0109
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0291
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0109
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0411
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0109
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0495
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0109
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0499
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0109
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0688
    Click Element    ${BthSubmit}
    Capture Page Screenshot

TC10-Verify Dashboard page case select RH1 & District110 & Branch
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0110
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0049
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0110
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0068
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0110
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0109
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0110
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0140
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0110
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0142
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0110
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0158
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0110
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0167
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0110
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0171
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0110
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0194
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0110
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0237
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0110
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0248
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0110
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0249
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0110
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0254
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0110
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0293
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0110
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0483
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0110
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0486
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0110
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0494
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0110
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0542
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0110
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0550
    Click Element    ${BthSubmit}
    Capture Page Screenshot

TC11-Verify Dashboard page case select RH1 & District0205 & Branch
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0205
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0053
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0205
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0090
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0205
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0132
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0205
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0147
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0205
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0225
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0205
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0231
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0205
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0235
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0205
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0243
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0205
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0269
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0205
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0274
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0205
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0277
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0205
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0297
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0205
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0298
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0205
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0320
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0205
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0325
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0205
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0358
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0205
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0368
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0205
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0371
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0205
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0487
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0205
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0502
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0205
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0521
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0205
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0656
    Click Element    ${BthSubmit}
    Capture Page Screenshot
