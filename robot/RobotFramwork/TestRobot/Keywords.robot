*** Settings ***
Resource          Variables.robot

*** Keywords ***
Introduction_Fullloop
    [Arguments]    ${Checkintro}    ${Checkintro2}
    #Introduction
    Element Should Contain    name=Title_0_0    ${Checkintro}
    Element Should Contain    name=Title_0_0    ${Checkintro2}

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
    Element Should Contain    name=Question_10_0_0    ${CheckquesQ1_TH}

Question_Q2
    [Arguments]    ${CheckquesQ2_TH}
    #Question Q2
    Element Should Contain    name=Question_11_0_0    ${CheckquesQ2_TH}

Question_Q3
    [Arguments]    ${CheckquesQ3_TH}
    #Question Q3
    Element Should Contain    name=Question_12_0_0    ${CheckquesQ3_TH}

Question_Sug
    [Arguments]    ${CheckquesSug_TH}
    #Question CSAT
    Element Should Contain    name=Question_16_0_0    ${CheckquesSug_TH}

Question_inform
    [Arguments]    ${Checkques_inform_TH}
    #Question provide more information
    Element Should Contain    name=Title_17_0    ${Checkques_inform_TH}

Question_informGender
    [Arguments]    ${Checkques_informGender_TH}
    #Question provide more information - Gender
    Element Should Contain    name=Question_17_0_0    ${Checkques_informGender_TH}

Question_informAge
    [Arguments]    ${Checkques_informAge_TH}
    #Question provide more information - Age
    Element Should Contain    name=Question_17_0_1    ${Checkques_informAge_TH}

Question_informMarital
    [Arguments]    ${Checkques_informMarital_TH}
    #Question provide more information - Marital
    Element Should Contain    name=Question_17_0_2    ${Checkques_informMarital_TH}

OA_CSATNeg
    [Arguments]    ${OA_CSATNeg}
    #Comment_CSATNeg
    Element Should Contain    name=Question_2_0_1    ${OA_CSATNeg}

Question_informOccupation
    [Arguments]    ${Checkques_informOccupation_TH}
    #Question provide more information - Occupation
    Element Should Contain    name=Question_18_0_0    ${Checkques_informOccupation_TH}

Question_informMonthly
    [Arguments]    ${Checkques_informMonthly_TH}
    #Question provide more information - Monthly
    Element Should Contain    name=Question_18_0_1    ${Checkques_informMonthly_TH}

Question_page10
    [Arguments]    ${Checkques_page10_TH}    ${Checkques_page10-1_TH}
    #Question provide more information - page10
    Element Should Contain    name=Title_19_0    ${Checkques_page10_TH}
    Element Should Contain    name=Title_19_0    ${Checkques_page10-1_TH}

Question_lucky_drawTH
    [Arguments]    ${Checklucky_drawTH}    ${Checklucky_drawTH1}    ${Checklucky_drawTH2}    ${Checklucky_drawTH3}    ${Checklucky_drawTH4}    ${Checklucky_drawTH5}
    ...    ${Checklucky_drawTH6}    ${Checklucky_drawTH7}    ${Checklucky_drawTH8}
    #Question lucky draw
    Element Should Contain    name=Title_20_0    ${Checklucky_drawTH}
    Element Should Contain    name=Title_20_0    ${Checklucky_drawTH1}
    Element Should Contain    name=Title_20_0    ${Checklucky_drawTH2}
    Element Should Contain    name=Title_20_0    ${Checklucky_drawTH3}
    Element Should Contain    name=Title_20_0    ${Checklucky_drawTH4}
    Element Should Contain    name=Title_20_0    ${Checklucky_drawTH5}
    Element Should Contain    name=Title_20_0    ${Checklucky_drawTH6}
    Element Should Contain    name=Title_20_0    ${Checklucky_drawTH7}
    Element Should Contain    name=Title_20_0    ${Checklucky_drawTH8}

Question_participTH
    [Arguments]    ${CheckparticipTH_1}    ${CheckparticipTH_2}    ${CheckparticipTH_3}    ${CheckparticipTH_4}    ${CheckparticipTH_5}    ${CheckparticipTH_6}
    ...    ${CheckparticipTH_7}    ${CheckparticipTH_8}    ${CheckparticipTH_9}    ${CheckparticipTH_10}    ${CheckparticipTH_11}    ${CheckparticipTH_12}
    ...    ${CheckparticipTH_13}    ${CheckparticipTH_14}    ${CheckparticipTH_15}    ${CheckparticipTH_16}    ${CheckparticipTH_17}    ${CheckparticipTH_18}
    ...    ${CheckparticipTH_19}    ${CheckparticipTH_20}    ${CheckparticipTH_21}    ${CheckparticipTH_22}    ${CheckparticipTH_23}    ${CheckparticipTH_24}
    ...    ${CheckparticipTH_25}
    #Question Condition for participation
    Element Should Contain    name=Title_20_1    ${CheckparticipTH_1}
    Element Should Contain    name=Title_20_1    ${CheckparticipTH_2}
    Element Should Contain    name=Title_20_1    ${CheckparticipTH_3}
    Element Should Contain    name=Title_20_1    ${CheckparticipTH_4}
    Element Should Contain    name=Title_20_1    ${CheckparticipTH_5}
    Element Should Contain    name=Title_20_1    ${CheckparticipTH_6}
    Element Should Contain    name=Title_20_1    ${CheckparticipTH_7}
    Element Should Contain    name=Title_20_1    ${CheckparticipTH_8}
    Element Should Contain    name=Title_20_1    ${CheckparticipTH_9}
    Element Should Contain    name=Title_20_1    ${CheckparticipTH_10}
    Element Should Contain    name=Title_20_1    ${CheckparticipTH_11}
    Element Should Contain    name=Title_20_1    ${CheckparticipTH_12}
    Element Should Contain    name=Title_20_1    ${CheckparticipTH_13}
    Element Should Contain    name=Title_20_1    ${CheckparticipTH_14}
    Element Should Contain    name=Title_20_1    ${CheckparticipTH_15}
    Element Should Contain    name=Title_20_1    ${CheckparticipTH_16}
    Element Should Contain    name=Title_20_1    ${CheckparticipTH_17}
    Element Should Contain    name=Title_20_1    ${CheckparticipTH_18}
    Element Should Contain    name=Title_20_1    ${CheckparticipTH_19}
    Element Should Contain    name=Title_20_1    ${CheckparticipTH_20}
    Element Should Contain    name=Title_20_1    ${CheckparticipTH_21}
    Element Should Contain    name=Title_20_1    ${CheckparticipTH_22}
    Element Should Contain    name=Title_20_1    ${CheckparticipTH_23}
    Element Should Contain    name=Title_20_1    ${CheckparticipTH_24}
    Element Should Contain    name=Title_20_1    ${CheckparticipTH_25}

Question_rewardTH
    [Arguments]    ${CheckrewardTH_1}    ${CheckrewardTH_2}    ${CheckrewardTH_3}    ${CheckrewardTH_4}    ${CheckrewardTH_5}    ${CheckrewardTH_6}
    ...    ${CheckrewardTH_7}    ${CheckrewardTH_8}    ${CheckrewardTH_9}    ${CheckrewardTH_10}    ${CheckrewardTH_11}    ${CheckrewardTH_12}
    ...    ${CheckrewardTH_13}    ${CheckrewardTH_5}    ${CheckrewardTH_16}
    #Question opt_in_reward
    Element Should Contain    name=Title_20_2    ${CheckrewardTH_1}
    Element Should Contain    name=Title_20_2    ${CheckrewardTH_2}
    Element Should Contain    name=Title_20_2    ${CheckrewardTH_3}
    Element Should Contain    name=Title_20_2    ${CheckrewardTH_4}
    Element Should Contain    name=Title_20_2    ${CheckrewardTH_5}
    Element Should Contain    name=Title_20_2    ${CheckrewardTH_6}
    Element Should Contain    name=Title_20_2    ${CheckrewardTH_7}
    Element Should Contain    name=Title_20_2    ${CheckrewardTH_8}
    Element Should Contain    name=Title_20_2    ${CheckrewardTH_9}
    Element Should Contain    name=Title_20_2    ${CheckrewardTH_10}
    Element Should Contain    name=Title_20_2    ${CheckrewardTH_11}
    Element Should Contain    name=Title_20_2    ${CheckrewardTH_12}
    Element Should Contain    name=Title_20_2    ${CheckrewardTH_13}
    Element Should Contain    name=Title_20_2    ${CheckrewardTH_14}
    Element Should Contain    name=Title_20_2    ${CheckrewardTH_15}
    Element Should Contain    name=Title_20_2    ${CheckrewardTH_16}

Question_Opin_Reward
    [Arguments]    ${Checkques_Optin_reward_TH}
    #Question Opt-In Reward
    Element Should Contain    name=Question_20_2_0    ${Checkques_Optin_reward_TH}

Question_Q4
    [Arguments]    ${CheckquesQ4_TH}
    #Question Q4
    Element Should Contain    name=Question_13_0_0    ${CheckquesQ4_TH}

Question_Q5
    [Arguments]    ${CheckquesQ5_TH}
    #Question Q5
    Element Should Contain    name=Question_14_0_0    ${CheckquesQ5_TH}

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

Introduction_Fullloop_EN
    [Arguments]    ${Checkintro_EN}    ${Checkintro2_EN}
    #Introduction
    Element Should Contain    name=Title_0_0    ${Checkintro_EN}
    Element Should Contain    name=Title_0_0    ${Checkintro2_EN}

Question_CSAT_EN
    [Arguments]    ${CheckquestionCSAT_EN}
    #Question CSAT
    Element Should Contain    name=Question_1_0_0    ${CheckquestionCSAT_EN}

OA_CSATPos_EN
    [Arguments]    ${OA_CSATPos_EN}
    #Comment_CSATPos
    Element Should Contain    name=Question_2_0_0    ${OA_CSATPos_EN}

Question_CES_EN
    [Arguments]    ${CheckquestionCES_EN}
    #Question CES
    Element Should Contain    name=Question_3_0_0    ${CheckquestionCES_EN}

Question_RP_EN
    [Arguments]    ${CheckquestionRP_EN}
    #Question RP
    Element Should Contain    name=Question_4_0_0    ${CheckquestionRP_EN}

Question_NPS_EN
    [Arguments]    ${CheckquestionNPS_EN}
    #Question NPS
    Element Should Contain    name=Question_5_0_0    ${CheckquestionNPS_EN}

Question_Optin_Contact_EN
    [Arguments]    ${Checkquestion_Optin_con_EN}
    #Question Opt-In Contact
    Element Should Contain    name=Question_6_0_0    ${Checkquestion_Optin_con_EN}

Question_province_EN
    [Arguments]    ${CheckquesProvince_EN}
    #Question Province
    Element Should Contain    name=Question_7_0_0    ${CheckquesProvince_EN}

Question_Branch_EN
    [Arguments]    ${CheckquesBranch_EN}
    #Question Branch
    Element Should Contain    name=Question_8_0_0    ${CheckquesBranch_EN}

Question_DateTime_EN
    [Arguments]    ${CheckquesDateTime_EN}
    #Question Date&Time
    Element Should Contain    name=Question_9_0_0    ${CheckquesDateTime_EN}

Question_Q1_EN
    [Arguments]    ${CheckquesQ1_EN}
    #Question Q1
    Element Should Contain    name=Question_10_0_0    ${CheckquesQ1_EN}

Question_Q2_EN
    [Arguments]    ${CheckquesQ2_EN}
    #Question Q2
    Element Should Contain    name=Question_11_0_0    ${CheckquesQ2_EN}

Question_Q3_EN
    [Arguments]    ${CheckquesQ3_EN}
    #Question Q3
    Element Should Contain    name=Question_12_0_0    ${CheckquesQ3_EN}

Question_Sug_EN
    [Arguments]    ${CheckquesSug_EN}
    #Question CSAT
    Element Should Contain    name=Question_16_0_0    ${CheckquesSug_EN}

Question_inform_EN
    [Arguments]    ${Checkques_inform_EN}
    #Question provide more information
    Element Should Contain    name=Title_17_0    ${Checkques_inform_EN}

Question_informGender_EN
    [Arguments]    ${Checkques_informGender_EN}
    #Question provide more information - Gender
    Element Should Contain    name=Question_17_0_0    ${Checkques_informGender_EN}

Question_informAge_EN
    [Arguments]    ${Checkques_informAge_EN}
    #Question provide more information - Age
    Element Should Contain    name=Question_17_0_1    ${Checkques_informAge_EN}

Question_informMarital_EN
    [Arguments]    ${Checkques_informMarital_EN}
    #Question provide more information - Marital
    Element Should Contain    name=Question_17_0_2    ${Checkques_informMarital_EN}

OA_CSATNeg_EN
    [Arguments]    ${OA_CSATNeg_EN}
    #Comment_CSATNeg
    Element Should Contain    name=Question_2_0_1    ${OA_CSATNeg_EN}

Question_informOccupation_EN
    [Arguments]    ${Checkques_informOccupation_EN}
    #Question provide more information - Occupation
    Element Should Contain    name=Question_18_0_0    ${Checkques_informOccupation_EN}

Question_informMonthly_EN
    [Arguments]    ${Checkques_informMonthly_EN}
    #Question provide more information - Monthly
    Element Should Contain    name=Question_18_0_1    ${Checkques_informMonthly_EN}

Question_page10_EN
    [Arguments]    ${Checkques_page10_EN}    ${Checkques_page10-1_EN}
    #Question provide more information - page10
    Element Should Contain    name=Title_19_0    ${Checkques_page10_EN}
    Element Should Contain    name=Title_19_0    ${Checkques_page10-1_EN}

Question_lucky_drawEN
    [Arguments]    ${Checklucky_drawEN}    ${Checklucky_drawEN1}    ${Checklucky_drawEN2}    ${Checklucky_drawEN3}    ${Checklucky_drawEN4}    ${Checklucky_drawEN5}
    ...    ${Checklucky_drawEN6}    ${Checklucky_drawEN7}    ${Checklucky_drawEN8}
    #Question lucky draw
    Element Should Contain    name=Title_20_0    ${Checklucky_drawEN}
    Element Should Contain    name=Title_20_0    ${Checklucky_drawEN1}
    Element Should Contain    name=Title_20_0    ${Checklucky_drawEN2}
    Element Should Contain    name=Title_20_0    ${Checklucky_drawEN3}
    Element Should Contain    name=Title_20_0    ${Checklucky_drawEN4}
    Element Should Contain    name=Title_20_0    ${Checklucky_drawEN5}
    Element Should Contain    name=Title_20_0    ${Checklucky_drawEN6}
    Element Should Contain    name=Title_20_0    ${Checklucky_drawEN7}
    Element Should Contain    name=Title_20_0    ${Checklucky_drawEN8}

Question_participEN
    [Arguments]    ${CheckparticipEN_1}    ${CheckparticipEN_2}    ${CheckparticipEN_3}    ${CheckparticipEN_4}    ${CheckparticipEN_5}    ${CheckparticipEN_6}
    ...    ${CheckparticipEN_7}    ${CheckparticipEN_8}    ${CheckparticipEN_9}    ${CheckparticipEN_10}    ${CheckparticipEN_11}    ${CheckparticipEN_12}
    ...    ${CheckparticipEN_13}    ${CheckparticipEN_14}    ${CheckparticipEN_15}    ${CheckparticipEN_16}    ${CheckparticipEN_17}    ${CheckparticipEN_18}
    ...    ${CheckparticipEN_19}    ${CheckparticipEN_20}    ${CheckparticipEN_21}    ${CheckparticipEN_22}    ${CheckparticipEN_23}    ${CheckparticipEN_24}
    ...    ${CheckparticipEN_25}
    #Question Condition for participation
    Element Should Contain    name=Title_20_1    ${CheckparticipEN_1}
    Element Should Contain    name=Title_20_1    ${CheckparticipEN_2}
    Element Should Contain    name=Title_20_1    ${CheckparticipEN_3}
    Element Should Contain    name=Title_20_1    ${CheckparticipEN_4}
    Element Should Contain    name=Title_20_1    ${CheckparticipEN_5}
    Element Should Contain    name=Title_20_1    ${CheckparticipEN_6}
    Element Should Contain    name=Title_20_1    ${CheckparticipEN_7}
    Element Should Contain    name=Title_20_1    ${CheckparticipEN_8}
    Element Should Contain    name=Title_20_1    ${CheckparticipEN_9}
    Element Should Contain    name=Title_20_1    ${CheckparticipEN_10}
    Element Should Contain    name=Title_20_1    ${CheckparticipEN_11}
    Element Should Contain    name=Title_20_1    ${CheckparticipEN_12}
    Element Should Contain    name=Title_20_1    ${CheckparticipEN_13}
    Element Should Contain    name=Title_20_1    ${CheckparticipEN_14}
    Element Should Contain    name=Title_20_1    ${CheckparticipEN_15}
    Element Should Contain    name=Title_20_1    ${CheckparticipEN_16}
    Element Should Contain    name=Title_20_1    ${CheckparticipEN_17}
    Element Should Contain    name=Title_20_1    ${CheckparticipEN_18}
    Element Should Contain    name=Title_20_1    ${CheckparticipEN_19}
    Element Should Contain    name=Title_20_1    ${CheckparticipEN_20}
    Element Should Contain    name=Title_20_1    ${CheckparticipEN_21}
    Element Should Contain    name=Title_20_1    ${CheckparticipEN_22}
    Element Should Contain    name=Title_20_1    ${CheckparticipEN_23}
    Element Should Contain    name=Title_20_1    ${CheckparticipEN_24}
    Element Should Contain    name=Title_20_1    ${CheckparticipEN_25}

Question_rewardEN
    [Arguments]    ${CheckrewardEN_1}    ${CheckrewardEN_2}    ${CheckrewardEN_3}    ${CheckrewardEN_4}    ${CheckrewardEN_5}    ${CheckrewardEN_6}
    ...    ${CheckrewardEN_7}    ${CheckrewardEN_8}    ${CheckrewardEN_9}    ${CheckrewardEN_10}    ${CheckrewardEN_11}    ${CheckrewardEN_12}
    ...    ${CheckrewardEN_13}    ${CheckrewardEN_14}    ${CheckrewardEN_15}    ${CheckrewardEN_16}
    #Question opt_in_reward
    Element Should Contain    name=Title_20_2    ${CheckrewardEN_1}
    Element Should Contain    name=Title_20_2    ${CheckrewardEN_2}
    Element Should Contain    name=Title_20_2    ${CheckrewardEN_3}
    Element Should Contain    name=Title_20_2    ${CheckrewardEN_4}
    Element Should Contain    name=Title_20_2    ${CheckrewardEN_5}
    Element Should Contain    name=Title_20_2    ${CheckrewardEN_6}
    Element Should Contain    name=Title_20_2    ${CheckrewardEN_7}
    Element Should Contain    name=Title_20_2    ${CheckrewardEN_8}
    Element Should Contain    name=Title_20_2    ${CheckrewardEN_9}
    Element Should Contain    name=Title_20_2    ${CheckrewardEN_10}
    Element Should Contain    name=Title_20_2    ${CheckrewardEN_11}
    Element Should Contain    name=Title_20_2    ${CheckrewardEN_12}
    Element Should Contain    name=Title_20_2    ${CheckrewardEN_13}
    Element Should Contain    name=Title_20_2    ${CheckrewardEN_14}
    Element Should Contain    name=Title_20_2    ${CheckrewardEN_15}
    Element Should Contain    name=Title_20_2    ${CheckrewardEN_16}

Question_Opin_Reward_EN
    [Arguments]    ${Checkques_Optin_reward_EN}
    #Question Opt-In Reward
    Element Should Contain    name=Question_20_2_0    ${Checkques_Optin_reward_EN}

Question_Q4_EN
    [Arguments]    ${CheckquesQ4_EN}
    #Question Q4
    Element Should Contain    name=Question_13_0_0    ${CheckquesQ4_EN}

Question_Q5_EN
    [Arguments]    ${CheckquesQ5_EN}
    #Question Q5
    Element Should Contain    name=Question_14_0_0    ${CheckquesQ5_EN}
