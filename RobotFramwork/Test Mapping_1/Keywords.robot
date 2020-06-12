*** Settings ***
Resource          Variables.robot

*** Keywords ***
Introduction_Fullloop
    [Arguments]    ${Checkintro}    ${Checkintro2}
    #Introduction
    Element Should Contain    id=f1ca8e3a-a487-4e04-92cf-4fcacf9d5047    ${Checkintro}
    Element Should Contain    id=f1ca8e3a-a487-4e04-92cf-4fcacf9d5047    ${Checkintro2}

NPS_Score_QuesionAndOptin0_6
    [Arguments]    ${CheckLabelNPS0_6}    ${CheckLabelOpt_in}
    Element Should Contain    //h3[@id='q5-text']    ${CheckLabelNPS0_6}
    Element Should Contain    id=q8-text    ${CheckLabelOpt_in}

NPS_Score_QuesionAndOptin7_8
    [Arguments]    ${CheckLablNPS7_8}    ${CheckLabelOpt_in}
    Element Should Contain    id=q7-text    ${CheckLablNPS7_8}
    Element Should Contain    id=q8-text    ${CheckLabelOpt_in}

NPS_Score_QuesionAndOptin9_10
    [Arguments]    ${CheckLablNPS9_10}    ${CheckLabelOpt_in}
    Element Should Contain    id=q6-text    ${CheckLablNPS9_10}
    Element Should Contain    id=q8-text    ${CheckLabelOpt_in}

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

Question_CSAT
    [Arguments]    ${CheckquestionCSAT_TH}
    #Question CSAT
    Element Should Contain    name=Question_1_0_0    ${CheckquestionCSAT_TH}

OA_CSATPos
    [Arguments]    ${OA_CSATPos}
    #Comment_CSATPos
    Element Should Contain    name=Question_2_0_0    ${OA_CSATPos}

Question_CES
    [Arguments]    ${CheckquestionCES_TH}
    #Question CES
    Element Should Contain    name=Question_3_0_0    ${CheckquestionCES_TH}

Question_RP
    [Arguments]    ${CheckquestionRP_TH}
    #Question RP
    Element Should Contain    name=Question_4_0_0    ${CheckquestionRP_TH}

Question_NPS
    [Arguments]    ${CheckquestionNPS_TH}
    #Question NPS
    Element Should Contain    name=Question_5_0_0    ${CheckquestionNPS_TH}

Question_Optin_Contact
    [Arguments]    ${Checkquestion_Optin_con_TH}
    #Question Opt-In Contact
    Element Should Contain    name=Question_6_0_0    ${Checkquestion_Optin_con_TH}

Question_province
    [Arguments]    ${CheckquesProvince_TH}
    #Question Province
    Element Should Contain    name=Question_7_0_0    ${CheckquesProvince_TH}

Question_Branch
    [Arguments]    ${CheckquesBranch_TH}
    #Question Branch
    Element Should Contain    name=Question_8_0_0    ${CheckquesBranch_TH}

Question_DateTime
    [Arguments]    ${CheckquesDateTime_TH}
    #Question Date&Time
    Element Should Contain    name=Question_9_0_0    ${CheckquesDateTime_TH}

Question_Q1
    [Arguments]    ${CheckquesQ1_TH}
    #Question Q1
    Element Should Contain    id=531d0192-657c-403a-b1e6-9e200b992926    ${CheckquesQ1_TH}

Question_Q2
    [Arguments]    ${CheckquesQ2_TH}
    #Question Q2
    Element Should Contain    id=1c58bfc7-54cc-44bf-96a9-3c4241fcfe64    ${CheckquesQ2_TH}

Question_Q3
    [Arguments]    ${CheckquesQ3_TH}
    #Question Q3
    Element Should Contain    id=9f39ab27-ed08-404c-8d28-81eef2a943af    ${CheckquesQ3_TH}

Question_Sug
    [Arguments]    ${CheckquesSug_TH}
    #Question CSAT
    Element Should Contain    id=5e5e6e57-c0b6-4ac2-8b49-56bf89e64e8d    ${CheckquesSug_TH}

Question_inform
    [Arguments]    ${Checkques_inform_TH}
    #Question provide more information
    Element Should Contain    id=ad6e6206-d82e-4bb2-83a0-e71e36bc593a    ${Checkques_inform_TH}

Question_informGender
    [Arguments]    ${Checkques_informGender_TH}
    #Question provide more information - Gender
    Element Should Contain    id=58d719e8-84c2-4575-8b04-884cf2780fec    ${Checkques_informGender_TH}

Question_informAge
    [Arguments]    ${Checkques_informAge_TH}
    #Question provide more information - Age
    Element Should Contain    id=f3327786-e634-4b24-a722-de961b75560c    ${Checkques_informAge_TH}

Question_informMarital
    [Arguments]    ${Checkques_informMarital_TH}
    #Question provide more information - Marital
    Element Should Contain    id=9e2b734e-1443-4d38-a7aa-042d407ead45    ${Checkques_informMarital_TH}

OA_CSATNeg
    [Arguments]    ${OA_CSATNeg}
    #Comment_CSATNeg
    Element Should Contain    id=6922bd56-bfae-4943-9a62-1994d66c6fa8    ${OA_CSATNeg}

Question_informOccupation
    [Arguments]    ${Checkques_informOccupation_TH}
    #Question provide more information - Occupation
    Element Should Contain    id=f2baa598-09c2-4857-81bf-82744c54a741    ${Checkques_informOccupation_TH}

Question_informMonthly
    [Arguments]    ${Checkques_informMonthly_TH}
    #Question provide more information - Monthly
    Element Should Contain    id=7c879129-8ec7-4cc9-959a-7c26e854bd5c    ${Checkques_informMonthly_TH}

Question_page10
    [Arguments]    ${Checkques_page10_TH}    ${Checkques_page10-1_TH}
    #Question provide more information - page10
    Element Should Contain    id=4f7811c4-3ce9-4ee1-9db8-87c2bb3f34d9    ${Checkques_page10_TH}
    Element Should Contain    id=4f7811c4-3ce9-4ee1-9db8-87c2bb3f34d9    ${Checkques_page10-1_TH}

Question_lucky_drawTH
    [Arguments]    ${Checklucky_drawTH}    ${Checklucky_drawTH1}    ${Checklucky_drawTH2}    ${Checklucky_drawTH3}    ${Checklucky_drawTH4}    ${Checklucky_drawTH5}
    ...    ${Checklucky_drawTH6}    ${Checklucky_drawTH7}    ${Checklucky_drawTH8}
    #Question lucky draw
    Element Should Contain    id=b5c5cd93-cd74-462f-a357-72fcf5d833ed    ${Checklucky_drawTH}
    Element Should Contain    id=b5c5cd93-cd74-462f-a357-72fcf5d833ed    ${Checklucky_drawTH1}
    Element Should Contain    id=b5c5cd93-cd74-462f-a357-72fcf5d833ed    ${Checklucky_drawTH2}
    Element Should Contain    id=b5c5cd93-cd74-462f-a357-72fcf5d833ed    ${Checklucky_drawTH3}
    Element Should Contain    id=b5c5cd93-cd74-462f-a357-72fcf5d833ed    ${Checklucky_drawTH4}
    Element Should Contain    id=b5c5cd93-cd74-462f-a357-72fcf5d833ed    ${Checklucky_drawTH5}
    Element Should Contain    id=b5c5cd93-cd74-462f-a357-72fcf5d833ed    ${Checklucky_drawTH6}
    Element Should Contain    id=b5c5cd93-cd74-462f-a357-72fcf5d833ed    ${Checklucky_drawTH7}
    Element Should Contain    id=b5c5cd93-cd74-462f-a357-72fcf5d833ed    ${Checklucky_drawTH8}

Question_participTH
    [Arguments]    ${CheckparticipTH_1}    ${CheckparticipTH_2}    ${CheckparticipTH_3}    ${CheckparticipTH_4}    ${CheckparticipTH_5}    ${CheckparticipTH_6}
    ...    ${CheckparticipTH_7}    ${CheckparticipTH_8}    ${CheckparticipTH_9}    ${CheckparticipTH_10}    ${CheckparticipTH_11}    ${CheckparticipTH_12}
    ...    ${CheckparticipTH_13}    ${CheckparticipTH_14}    ${CheckparticipTH_15}    ${CheckparticipTH_16}    ${CheckparticipTH_17}    ${CheckparticipTH_18}
    ...    ${CheckparticipTH_19}    ${CheckparticipTH_20}    ${CheckparticipTH_21}    ${CheckparticipTH_22}    ${CheckparticipTH_23}    ${CheckparticipTH_24}
    ...    ${CheckparticipTH_25}
    #Question Condition for participation
    Element Should Contain    id=cd624e20-4535-481c-ab74-f01e561382b2    ${CheckparticipTH_1}
    Element Should Contain    id=cd624e20-4535-481c-ab74-f01e561382b2    ${CheckparticipTH_2}
    Element Should Contain    id=cd624e20-4535-481c-ab74-f01e561382b2    ${CheckparticipTH_3}
    Element Should Contain    id=cd624e20-4535-481c-ab74-f01e561382b2    ${CheckparticipTH_4}
    Element Should Contain    id=cd624e20-4535-481c-ab74-f01e561382b2    ${CheckparticipTH_5}
    Element Should Contain    id=cd624e20-4535-481c-ab74-f01e561382b2    ${CheckparticipTH_6}
    Element Should Contain    id=cd624e20-4535-481c-ab74-f01e561382b2    ${CheckparticipTH_7}
    Element Should Contain    id=cd624e20-4535-481c-ab74-f01e561382b2    ${CheckparticipTH_8}
    Element Should Contain    id=cd624e20-4535-481c-ab74-f01e561382b2    ${CheckparticipTH_9}
    Element Should Contain    id=cd624e20-4535-481c-ab74-f01e561382b2    ${CheckparticipTH_10}
    Element Should Contain    id=cd624e20-4535-481c-ab74-f01e561382b2    ${CheckparticipTH_11}
    Element Should Contain    id=cd624e20-4535-481c-ab74-f01e561382b2    ${CheckparticipTH_12}
    Element Should Contain    id=cd624e20-4535-481c-ab74-f01e561382b2    ${CheckparticipTH_13}
    Element Should Contain    id=cd624e20-4535-481c-ab74-f01e561382b2    ${CheckparticipTH_14}
    Element Should Contain    id=cd624e20-4535-481c-ab74-f01e561382b2    ${CheckparticipTH_15}
    Element Should Contain    id=cd624e20-4535-481c-ab74-f01e561382b2    ${CheckparticipTH_16}
    Element Should Contain    id=cd624e20-4535-481c-ab74-f01e561382b2    ${CheckparticipTH_17}
    Element Should Contain    id=cd624e20-4535-481c-ab74-f01e561382b2    ${CheckparticipTH_18}
    Element Should Contain    id=cd624e20-4535-481c-ab74-f01e561382b2    ${CheckparticipTH_19}
    Element Should Contain    id=cd624e20-4535-481c-ab74-f01e561382b2    ${CheckparticipTH_20}
    Element Should Contain    id=cd624e20-4535-481c-ab74-f01e561382b2    ${CheckparticipTH_21}
    Element Should Contain    id=cd624e20-4535-481c-ab74-f01e561382b2    ${CheckparticipTH_22}
    Element Should Contain    id=cd624e20-4535-481c-ab74-f01e561382b2    ${CheckparticipTH_23}
    Element Should Contain    id=cd624e20-4535-481c-ab74-f01e561382b2    ${CheckparticipTH_24}
    Element Should Contain    id=cd624e20-4535-481c-ab74-f01e561382b2    ${CheckparticipTH_25}

Question_rewardTH
    [Arguments]    ${CheckrewardTH_1}    ${CheckrewardTH_2}    ${CheckrewardTH_3}    ${CheckrewardTH_4}    ${CheckrewardTH_5}    ${CheckrewardTH_6}
    ...    ${CheckrewardTH_7}    ${CheckrewardTH_8}    ${CheckrewardTH_9}    ${CheckrewardTH_10}    ${CheckrewardTH_11}    ${CheckrewardTH_12}
    ...    ${CheckrewardTH_13}    ${CheckrewardTH_5}    ${CheckrewardTH_16}
    #Question opt_in_reward
    Element Should Contain    id=49809d2e-5aac-412f-a811-cfc96ee1a036    ${CheckrewardTH_1}
    Element Should Contain    id=49809d2e-5aac-412f-a811-cfc96ee1a036    ${CheckrewardTH_2}
    Element Should Contain    id=49809d2e-5aac-412f-a811-cfc96ee1a036    ${CheckrewardTH_3}
    Element Should Contain    id=49809d2e-5aac-412f-a811-cfc96ee1a036    ${CheckrewardTH_4}
    Element Should Contain    id=49809d2e-5aac-412f-a811-cfc96ee1a036    ${CheckrewardTH_5}
    Element Should Contain    id=49809d2e-5aac-412f-a811-cfc96ee1a036    ${CheckrewardTH_6}
    Element Should Contain    id=49809d2e-5aac-412f-a811-cfc96ee1a036    ${CheckrewardTH_7}
    Element Should Contain    id=49809d2e-5aac-412f-a811-cfc96ee1a036    ${CheckrewardTH_8}
    Element Should Contain    id=49809d2e-5aac-412f-a811-cfc96ee1a036    ${CheckrewardTH_9}
    Element Should Contain    id=49809d2e-5aac-412f-a811-cfc96ee1a036    ${CheckrewardTH_10}
    Element Should Contain    id=49809d2e-5aac-412f-a811-cfc96ee1a036    ${CheckrewardTH_11}
    Element Should Contain    id=49809d2e-5aac-412f-a811-cfc96ee1a036    ${CheckrewardTH_12}
    Element Should Contain    id=49809d2e-5aac-412f-a811-cfc96ee1a036    ${CheckrewardTH_13}
    Element Should Contain    id=49809d2e-5aac-412f-a811-cfc96ee1a036    ${CheckrewardTH_14}
    Element Should Contain    id=49809d2e-5aac-412f-a811-cfc96ee1a036    ${CheckrewardTH_15}
    Element Should Contain    id=49809d2e-5aac-412f-a811-cfc96ee1a036    ${CheckrewardTH_16}

Question_Opin_Reward
    [Arguments]    ${Checkques_Optin_reward_TH}
    #Question Opt-In Reward
    Element Should Contain    id=0d283889-280f-43c3-a16a-7e5fb5699ac9    ${Checkques_Optin_reward_TH}

Question_Q4
    [Arguments]    ${CheckquesQ4_TH}
    #Question Q4
    Element Should Contain    id=c0163f27-e6e3-4e31-8d35-e4bea117ac1c    ${CheckquesQ4_TH}

Question_Q5
    [Arguments]    ${CheckquesQ5_TH}
    #Question Q5
    Element Should Contain    id=c2a5818a-75ef-4569-a0b7-fab67cb5c76d    ${CheckquesQ5_TH}

End_FullLoopTH
    [Arguments]    ${CheckEnd01_TH}    ${CheckEnd02_TH}
    #End Page - TH
    Element Should Contain    id=endMessage    ${CheckEnd01_TH}
    Element Should Contain    id=endMessage    ${CheckEnd02_TH}

End_FullLoopEN
    [Arguments]    ${CheckEnd01_EN}    ${CheckEnd02_EN}
    #End Page - EN
    Element Should Contain    id=endMessage    ${CheckEnd01_EN}
    Element Should Contain    id=endMessage    ${CheckEnd02_EN}
