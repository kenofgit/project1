*** Settings ***
Resource          Variables.robot
Resource          Keywords.robot    ###############################################################

*** Test Cases ***
TC1- View Survey Reports & Click Detial S/W by Branch Menu-Success
    #Open and Login
    Open Browser    ${InputTBANKCEM}    Chrome
    Login    ${InputUsername}    ${InputPwd}
    Wait Until Element Is Visible    j_idt8:j_idt37
    Wait Until Element Is Visible    j_idt8:j_idt41
    Click Link    xpath=//a[@href="../reportviewer/index.jsp"]
    Sleep    5s
    Select Window    Title=Report
    Sleep    5s
    Click Link    ${LinkDetialbyBranch}
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
    Maximize Browser Window
    sleep    4s
    Three Dropdown list default    ${listRH}    ${listDistr}    ${listBranch}    ${BthSubmit}
    Capture Page Screenshot
    Click Button    Export to Excel

TC2- Verify Summary by Branch page case select RH3 & DistrictH0115 & Branch
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0115
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0006
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0115
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0011
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0115
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0027
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0115
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0045
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0115
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0074
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0115
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0095
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0115
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0112
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0115
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0119
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0115
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0166
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0115
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0182
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0115
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0202
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0115
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0223
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0115
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0232
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0115
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0247
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0115
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0255
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0115
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0271
    Click Element    ${BthSubmit}
    Capture Page Screenshot

TC3- Verify Summary by Branch page case select RH3 & DistrictH0116 & Branch
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0116
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0016
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0116
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0046
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0116
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0047
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0116
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0099
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0116
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0139
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0116
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0151
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0116
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0173
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0116
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0238
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0116
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0245
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0116
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0266
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0116
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0290
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0116
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0294
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0116
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0556
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0116
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0581
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0116
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0588
    Click Element    ${BthSubmit}
    Capture Page Screenshot

TC4- Verify Summary by Branch page case select RH3 & DistrictH203 & Branch
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0203
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0307
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0203
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0341
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0203
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0345
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0203
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0391
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0203
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0419
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0203
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0425
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0203
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0449
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0203
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0461
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0203
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0470
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0203
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0501
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0203
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0507
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0203
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0508
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0203
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0510
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0203
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0513
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0203
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0518
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0203
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0520
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0203
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0535
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0203
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0546
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0203
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0555
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0203
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0577
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0203
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0518
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0203
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0594
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0203
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0669
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0203
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0685
    Click Element    ${BthSubmit}
    Capture Page Screenshot

TC5- Verify Summary by Branch page case select RH3 & DistrictH206 & Branch
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0206
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0324
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0206
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0343
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0206
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0346
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0206
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0348
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0206
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0356
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0206
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0363
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0206
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0384
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0206
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0385
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0206
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0392
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0206
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0417
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0206
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0421
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0206
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0447
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0206
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0515
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0206
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0523
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0206
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0531
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0206
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0532
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0206
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0538
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0206
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0540
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0206
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0554
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0206
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0570
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0206
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0658
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0206
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0661
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0206
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0665
    Click Element    ${BthSubmit}
    Capture Page Screenshot

TC5- Verify Summary by Branch page case select RH3 & DistrictH208 & Branch
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0208
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0353
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0208
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0372
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0208
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0390
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0208
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0436
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0208
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0453
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0208
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0466
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0208
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0503
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0208
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0517
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0208
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0519
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0208
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0527
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0208
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0528
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0208
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0533
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0208
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0572
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0208
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0643
    Click Element    ${BthSubmit}
    Capture Page Screenshot

TC5- Verify Summary by Branch page case select RH3 & DistrictH209 & Branch
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0209
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0302
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0209
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0323
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0209
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0349
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0209
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0381
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0209
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0424
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0209
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0433
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0209
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0454
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0209
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0504
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0209
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0544
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0209
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0596
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0209
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0660
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0209
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0664
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0209
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0666
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0209
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0700
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH3
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0209
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0735
    Click Element    ${BthSubmit}
    Capture Page Screenshot

TC6 - Change Filter Header And Click Detail Score and Weight By District/RH
    Select From List by Value    ${DropdownCallRound}    1/2016
    Click button    Reload
    Capture Page Screenshot
    Select From List By Value    ${DropdownProtocol}    1
    Select From List By Value    ${DropdownGender}    M
    Click button    Reload
    Capture Page Screenshot
    Select From List By Value    ${DropdownAge}    3
    Select From List By Value    ${DropdownProtocol}    0
    Select From List By Value    ${DropdownValue}    1
    Click button    Reload
    Capture Page Screenshot
    Click Link    ${LinkDetialbyDistr}
    Page Should Contain Element    ${listRH}
    Page Should Contain Element    ${LabelCallRound}
    Page Should Contain Element    ${DropdownCallRound}    1/2016
    Page Should Contain Element    ${LabelProtocol}
    Page Should Contain Element    ${DropdownProtocol}    0
    Page Should Contain Element    ${ChangeEN}
    Page Should Contain Element    ${ChangeTH}
    Page Should Contain Element    ${LabelGender}
    Page Should Contain Element    ${DropdownGender}    M
    Page Should Contain Element    ${LabeAge}
    Page Should Contain Element    ${DropdownAge}    3
    Page Should Contain Element    ${LabeValue}
    Page Should Contain Element    ${DropdownValue}    1
    Page Should Contain Element    ${BthReload}
    Page Should Contain Element    ${BthPrint}
    Page Should Contain Element    ${IconQuestion}
    Capture Page Screenshot
    #Export Excel RH
    Click Button    Export to Excel
    Sleep    2s
    #Export Excel District
    Click Element    //*[@id="printdiv"]/button[2]

TC7-Verify Summary Report by District/RH case select RH
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
