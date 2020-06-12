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
    Click Link    ${LinkMMImprbyBranch}
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

TC2- Verify MM Improvement by Branch page case select RH4 & DistrictH204 & Branch
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0204
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0299
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0204
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0312
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0204
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0332
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0204
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0337
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0204
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0378
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0204
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0380
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0204
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0382
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0204
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0388
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0204
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0399
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0204
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0404
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0204
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0415
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0204
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0435
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0204
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0437
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0204
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0451
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0204
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0455
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0204
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0460
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step2"]    H0204
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0467
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0204
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0468
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0204
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0578
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0204
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0599
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0204
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0600
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0204
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0601
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0204
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0605
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0204
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0607
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step2"]    H0204
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0608
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0204
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0610
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0204
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0612
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0204
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0615
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0204
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0619
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0204
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0620
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0204
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0624
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0204
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0631
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0204
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0635
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0204
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0642
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0204
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0644
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0204
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0646
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0204
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0647
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0204
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0650
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0204
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0655
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0204
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0668
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0204
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0671
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0204
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0691
    Click Element    ${BthSubmit}
    Capture Page Screenshot

TC3- Verify MM Improvement by Branch page case select RH4 & DistrictH211 & Branch
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0211
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0376
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0211
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0395
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0211
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0402
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0211
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0434
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0211
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0564
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0211
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0585
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0211
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0591
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0211
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0592
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0211
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0606
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0211
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0617
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0211
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0626
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0211
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0634
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0211
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0636
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0211
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0640
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0211
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0690
    Click Element    ${BthSubmit}
    Capture Page Screenshot

TC4- Verify MM Improvement by Branch page case select RH4 & DistrictH212 & Branch
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0212
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0333
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0212
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0339
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0212
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0389
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0212
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0427
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0212
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0445
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0212
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0446
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0212
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0465
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0212
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0561
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0212
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0580
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0212
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0602
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0212
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0603
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0212
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0613
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0212
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0616
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0212
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0618
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0212
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0639
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0212
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0645
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0212
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0653
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0212
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0687
    Click Element    ${BthSubmit}
    Capture Page Screenshot

TC5- Verify MM Improvement by Branch page case select RH4 & DistrictH214 & Branch
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0214
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0331
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0214
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0334
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0214
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0340
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0214
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0357
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0214
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0367
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0214
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0370
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0214
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0387
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0214
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0397
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0214
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0438
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0214
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0506
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0214
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0516
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0214
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0529
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0214
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0537
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0214
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0638
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0214
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0651
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0214
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0652
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0214
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0657
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0214
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0659
    Click Element    ${BthSubmit}
    Capture Page Screenshot

TC6- Verify MM Improvement by Branch page case select RH4 & DistrictH215 & Branch
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0215
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0359
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0215
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0369
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0215
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0386
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0215
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0394
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0215
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0401
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0215
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0563
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0215
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0589
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0215
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0595
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0215
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0604
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0215
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0609
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0215
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0621
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0215
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0628
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0215
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0633
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0215
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0641
    Click Element    ${BthSubmit}
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH4
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step2"]    H0215
    sleep    4.0s
    Select From List by Value    xpath=//*[@class="step3"]    0681
    Click Element    ${BthSubmit}
    Capture Page Screenshot

TC7-Verify MM Improve by District & Select RH & Select District
    Click Link    ${LinkMMImprbyDistr}
    sleep    1s
    Page Should Contain Element    ${listRH}
    Element Should Be Disabled    ${listDistr}
    Click Button    Export to Excel
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
    Select From List by Value    ${DropdownAttribute}    O3
    Click button    Reload
    sleep    1s
    Capture Page Screenshot

TC8-Verify MM Improve by RH & Select RH
    Click Link    ${LinkMMImprbyRH}
    sleep    1s
    Page Should Contain Element    ${listRH}
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
    Click Button    Export to Excel
    Capture Page Screenshot
    Select From List by Value    xpath=//*[@class="step1"]    RH5
    Click Element    ${BthSubmit}
    Capture Page Screenshot

TC9-Verify MM Improve (Bank) & Filter Header
    [Template]
    sleep    2s
    Click Link    ${LinkMMImprBank}
    sleep    1s
    Click Button    Export to Excel
    Capture Page Screenshot
    Select From List By Value    ${DropdownProtocol}    1
    Select From List By Value    ${DropdownAge}    1
    Select From List By Value    ${DropdownGender}    F
    Click button    Reload
    Capture Page Screenshot
    Click Button    Export to Excel
    Select From List By Value    ${DropdownAge}    5
    Select From List By Value    ${DropdownCallRound}    2/2016
    Select From List By Value    ${DropdownValue}    1
    Click button    Reload
    Capture Page Screenshot
