*** Settings ***
Resource          Variables.robot
Resource          Keywords.robot    ###############################################################

*** Test Cases ***
TC1- View Survey Reports & Click CSI Score Menu-Success
    #Open and Login
    Open Browser    ${InputTBANKCEM}    Chrome
    Login    ${InputUsername}    ${InputPwd}
    Wait Until Element Is Visible    j_idt8:j_idt37
    Wait Until Element Is Visible    j_idt8:j_idt41
    Click Link    xpath=//a[@href="../reportviewer/index.jsp"]
    Sleep    5s
    Select Window    Title=Report
    Sleep    5s
    Click Link    ${LinkSumbyBranch}
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

TC2- Verify CSI Score Summary page
    Maximize Browser Window
    sleep    4s
    Three Dropdown list default    ${listRH}    ${listDistr}    ${listBranch}    ${BthSubmit}
    Capture Page Screenshot
    Click Button    Export to Excel

TC3- Verify Summary by Branch page case select RH & District & Branch
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0104
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0019
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0104
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0033
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0104
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0059
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0104
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0060
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0104
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0078
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0104
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0087
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0104
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0105
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0104
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0129
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0104
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0148
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0104
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0168
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0104
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0179
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0104
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0193
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0104
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0198
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0104
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0200
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0104
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0219
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0104
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0239
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0104
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0259
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0104
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0296
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0104
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0498
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0104
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0679
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0104
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0686
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0104
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0693
    Click Element    ${BthSubmit}
    Capture Page Screenshot

TC4- Verify Summary by Branch page case select RH2 & District0111 & Branch
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0111
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0018
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0111
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0034
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0111
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0061
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0111
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0062
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0111
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0065
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0111
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0072
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0111
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0086
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0111
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0111
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0111
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0128
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0111
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0136
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0111
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0145
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0111
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0214
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0111
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0224
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0111
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0227
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0111
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0230
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0111
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0234
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0111
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0263
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0111
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0270
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0111
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0407
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0111
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0473
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0111
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0484
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0111
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0490
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0111
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0541
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0111
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0712
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0111
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0777
    Click Element    ${BthSubmit}
    Capture Page Screenshot

TC5- Verify Summary by Branch page case select RH2 & District0112 & Branch
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0112
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0004
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0112
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0025
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0112
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0036
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0112
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0044
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0112
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0056
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0112
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0058
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0112
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0075
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0112
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0092
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0112
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0098
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0112
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0101
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0112
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0134
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0112
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0213
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0112
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0216
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0112
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0236
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0112
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0276
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0112
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0474
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0112
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0475
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0112
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0477
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0112
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0482
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0112
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0789
    Click Element    ${BthSubmit}
    Capture Page Screenshot

TC6- Verify Summary by Branch page case select RH2 & District0113 & Branch
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0113
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0001
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0113
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0002
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0113
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0005
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0113
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0008
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0113
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0020
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0113
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0022
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0113
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0032
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0113
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0089
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0113
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0093
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0113
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0114
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0113
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0121
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0113
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0157
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0113
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0183
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0113
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0196
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0113
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0205
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0113
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0211
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0113
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0215
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0113
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0218
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0113
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0228
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0113
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0261
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0113
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0279
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0113
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0280
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0113
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0287
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0113
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0406
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0113
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0410
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0113
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0476
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0113
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0478
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0113
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0557
    Click Element    ${BthSubmit}
    Capture Page Screenshot

TC7- Verify Summary by Branch page case select RH2 & District0114 & Branch
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0114
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0003
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0114
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0009
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0114
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0024
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0114
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0028
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0114
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0041
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0114
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0048
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0114
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0054
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0114
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0088
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0114
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0117
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0114
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0152
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0114
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0164
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0114
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0233
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0114
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0240
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0114
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0264
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0114
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0481
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0114
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0489
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0114
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0493
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0114
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0496
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0114
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0584
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0114
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0673
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0114
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0680
    Click Element    ${BthSubmit}
    Capture Page Screenshot

TC8-Verify Summary Report by District/RH
    Open Browser    ${InputTBANKCEM}    Chrome
    Login    ${InputUsername}    ${InputPwd}
    Wait Until Element Is Visible    j_idt8:j_idt37
    Wait Until Element Is Visible    j_idt8:j_idt41
    Click Link    xpath=//a[@href="../reportviewer/index.jsp"]
    Sleep    5s
    Select Window    Title=Report
    Sleep    5s
    Click Link    ${LinkSumbyDistr}
    Page Should Contain Element    ${listRH}
    Capture Page Screenshot
    #Export Excel RH
    Click Button    Export to Excel
    Sleep    2s
    #Export Excel District
    Click Element    //*[@id="printdiv"]/button[2]

TC9-Verify Summary Report by District/RH case select RH
    sleep    3s
    #SelectRH
    Select From List by Value    xpath=//*[@class="step1"]    RH1
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    sleep    3s
    Select From List by Value    xpath=//*[@class="step1"]    RH2
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    sleep    3s
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    sleep    3s
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    sleep    3s
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    Click Element    ${BthSubmit}
    Capture Page Screenshot
