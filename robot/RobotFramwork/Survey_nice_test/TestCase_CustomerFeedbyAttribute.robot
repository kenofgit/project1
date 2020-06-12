*** Settings ***
Resource          Variables.robot
Resource          Keywords.robot    ###############################################################

*** Test Cases ***
TC1- View Survey Reports & Click Q3 Menu-Success
    #Open and Login
    Open Browser    ${InputTBANKCEM}    Chrome
    Login    ${InputUsername}    ${InputPwd}
    Wait Until Element Is Visible    j_idt8:j_idt37
    Wait Until Element Is Visible    j_idt8:j_idt41
    Click Link    xpath=//a[@href="../reportviewer/index.jsp"]
    Sleep    5s
    Select Window    Title=Report
    Sleep    5s
    Click Link    ${LinkQ3}
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

TC2- Verify Q3 page case select RH5 & DistrictH201 & Branch
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0201
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0317
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0201
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0355
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0201
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0364
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0201
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0365
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0201
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0374
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0201
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0396
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0201
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0416
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0201
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0539
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0201
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0663
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0201
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0701
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0201
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0705
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0201
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0706
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0201
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0710
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0201
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0720
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0201
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0723
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0201
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0727
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0201
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0734
    Click Element    ${BthSubmit}
    Capture Page Screenshot

TC3- Verify Q3 page case select RH5 & DistrictH207 & Branch
    Select From List By Value    ${DropdownValue}    N.A.
    Select From List By Value    ${DropdownAge}    1
    Click Button    Reload
    sleep    1s
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0207
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0303
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0207
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0309
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0207
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0310
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0207
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0336
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0207
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0347
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0207
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0351
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0207
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0362
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0207
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0426
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0207
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0442
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0207
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0593
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0207
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0684
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0207
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0689
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0207
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0703
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0207
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0708
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0207
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0716
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0207
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0717
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0207
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0726
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0207
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0731
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0207
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0732
    Click Element    ${BthSubmit}
    Capture Page Screenshot

TC4- Verify Q6 case select RH5 & DistrictH210 & Branch
    Click Link    ${LinkQ6}
    Three Dropdown list default    ${listRH}    ${listDistr}    ${listBranch}    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0210
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0304
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0210
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0305
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0210
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0306
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0210
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0318
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0210
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0327
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0210
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0328
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0210
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0329
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0210
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0344
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0210
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0379
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0210
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0403
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0210
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0430
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0210
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0459
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0210
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0464
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0210
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0704
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0210
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0711
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0210
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0713
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0210
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0719
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0210
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0728
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0210
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0729
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0210
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0737
    Click Element    ${BthSubmit}
    Capture Page Screenshot

TC5- Verify O1 Positive case select RH5 & DistrictH218 & Branch
    Click Link    ${LinkO1Positive}
    Three Dropdown list default    ${listRH}    ${listDistr}    ${listBranch}    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0218
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0314
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0218
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0315
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0218
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0316
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0218
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0321
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0218
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0322
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0218
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0326
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0218
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0335
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0218
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0338
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0218
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0350
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0218
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0360
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0218
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0400
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0218
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0428
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0218
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0462
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0218
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0512
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0218
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0530
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0218
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0545
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0218
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0547
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0218
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0648
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0218
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0649
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0218
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0654
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0218
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0667
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0218
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0670
    Click Element    ${BthSubmit}
    Capture Page Screenshot

TC6- Verify O1 Negative case RH5 & DistrictH219 & Branch
    Click Link    ${LinkO1Positive}
    Three Dropdown list default    ${listRH}    ${listDistr}    ${listBranch}    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0219
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0308
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0219
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0313
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0219
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0319
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0219
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0354
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0219
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0366
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0219
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0373
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0219
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0408
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0219
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0413
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0219
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0432
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0219
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0456
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0219
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0457
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0219
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0458
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0219
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0560
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0219
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0662
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0219
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0671
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0219
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0683
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0219
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0702
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0219
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0715
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0219
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0725
    Click Element    ${BthSubmit}
    Capture Page Screenshot

TC7- Verify O2 Positive case & Select Filter Header
    Click Link    ${LinkO2Positive}
    Three Dropdown list default    ${listRH}    ${listDistr}    ${listBranch}    ${BthSubmit}
    Capture Page Screenshot
    Select From List By Value    ${DropdownCallRound}    2/2016
    Select From List By Value
    Select From List By Value    ${DropdownGender}    M
    Select From List By Value    ${DropdownAge}    2
    Select From List By Value    ${DropdownValue}    2
    Click button    Reload
    Capture Page Screenshot
    Menu Reports    ${LabelReports}    ${LinkDashboard}    ${LinkCallSum}    ${LabelCSIScore}    ${LinkSumbyBranch}    ${LinkSumbyDistr}
    ...    ${LabelEngagement}    ${LinkEngaOverall}    ${LinkEngabyBranch}    ${LinkEngabyDistr}    ${LabelImpress}    ${LinkImpressOveall}
    ...    ${LinkImpressbyBranch}    ${LinkImpressbyDistr}    ${LabelCustEff}    ${LinkCustEffOveall}    ${LinkCustEffbyBranch}    ${LinkCustEffbyDistr}
    ...    ${LabelDetailScoreAndWeight}    ${LinkDetialbyBranch}    ${LinkDetialbyDistr}    ${LabelDistributionScore}    ${LinkDistributionbyBranch}    ${LinkDistributionbyDistr}
    ...    ${LinkDistributionbyRH}    ${LinkMMImprbyBranch}    ${LinkMMImprbyDistr}    ${LinkMMImprbyRH}    ${LinkMMImprBank}    ${LinkMeanandConsistency}
    ...    ${LinkCSIPerform}    ${LinkSalsePerform}    ${LinkSevicePerform}    ${LinkSatisConsistency}    ${LabelCustFeedbyAtt}    ${LinkQ3}
    ...    ${LinkQ6}    ${LinkO1Positive}    ${LinkO1Negative}    ${LinkO2Positive}    ${LinkO2Negative}    ${LinkCustFeedBranch}
    ...    ${LinkOverallCust}    ${LinkRespondeProfile}    ${LabelLoginReport}    ${LinkLoginReportBranch}    ${LinkLoginReportDistr}    ${LabelAccountSetting}
    ...    ${LinkChgPassword}

TC8- Verify O2 Negative case
    Click Link    ${LinkO2Negative}
    Three Dropdown list default    ${listRH}    ${listDistr}    ${listBranch}    ${BthSubmit}
    Capture Page Screenshot
    Click Link    ${ChangeTH}
    Click Link    ${ChangeEN}
