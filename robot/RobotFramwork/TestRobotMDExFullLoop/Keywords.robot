*** Settings ***
Resource          Variables.robot

*** Keywords ***
Introduction
    [Arguments]    ${Check_introMainTH1}    ${Check_introMainTH2}    ${Check_introMainTH3}    ${Check_introMainTH4}
    Element Should Contain    //*[@id="greeting-page"]/div/div[2]/label    ${Check_introMainTH1}
    Element Should Contain    //*[@id="greeting-page"]/div/div[2]/label    ${Check_introMainTH2}
    Element Should Contain    //*[@id="greeting-page"]/div/div[2]/label    ${Check_introMainTH3}
    Element Should Contain    //*[@id="greeting-page"]/div/div[3]/label    ${Check_introMainTH4}
    Element Should Contain    ${locator_language}    ${language_TH}
    Page Should Contain Element    //span[@class="btn start"][text()='เริ่มต้น']

Q1_CSAT_TH
    [Arguments]    ${Check_QNCSAT_TH}
    Element Should Contain    name=Question_3_0_0    ${Check_QNCSAT_TH}
    Element Should Contain    //label[text()='ไม่พึงพอใจเลย']    ไม่พึงพอใจเลย
    Element Should Contain    //label[text()='พึงพอใจอย่างมาก']    พึงพอใจอย่างมาก

OA_CSATPos_TH
    [Arguments]    ${Check_QACSATPos_TH}
    Element Should Contain    name=Question_4_0_0    ${Check_OACSATPos_TH}
    Page Should Contain Element    //*[@name='csat_pos']
    Page Should Contain Element    //div[@name='page2']//span[@class='btn next'][text()='ถัดไป']

OA_CSATNeg_TH
    [Arguments]    ${Check_QACSATNeg_TH}
    Element Should Contain    name=Question_4_0_1    ${Check_OACSATNeg_TH}
    Page Should Contain Element    //*[@name='csat_neg']
    Page Should Contain Element    //div[@name='page2']//span[@class='btn next'][text()='ถัดไป']

Optin_Negative_TH
    [Arguments]    ${Check_Optin_TH}
    Element Should Contain    name=Question_5_0_0    ${Check_Optin_TH}
    Element Should Contain    name=Answer_5_0_0_0    ยินยอม
    Element Should Contain    name=Answer_5_0_0_1    ไม่ยินยอม

Att1_TH
    [Arguments]    ${Check_Attri1_TH}
    Element Should Contain    name=Question_6_0_0    ${Check_Attri1_TH}
    Page Should Contain Element    //div[@name='page4_01']//label[text()='ไม่ทราบ/ไม่ได้ใช้บริการ']

Att2_TH
    [Arguments]    ${Check_Attri2_TH}
    Element Should Contain    name=Question_7_0_0    ${Check_Attri2_TH}
    Page Should Contain Element    //div[@name='page4_02']//label[text()='ไม่ทราบ/ไม่ได้ใช้บริการ']

Att4_TH
    [Arguments]    ${Check_Attri4_TH}
    Element Should Contain    name=Question_8_0_0    ${Check_Attri4_TH}
    Page Should Contain Element    //div[@name='page4_03']//label[text()='ไม่ทราบ/ไม่ได้ใช้บริการ']

Att40_TH
    [Arguments]    ${Check_Attri40_TH}
    Element Should Contain    name=Question_9_0_0    ${Check_Attri40_TH}
    Page Should Contain Element    //div[@name='page4_04']//label[text()='ไม่ทราบ/ไม่ได้ใช้บริการ']

Att5_TH
    [Arguments]    ${Check_Attri5_TH}
    Element Should Contain    name=Question_10_0_0    ${Check_Attri5_TH}
    Element Should Contain    name=Answer_10_0_0_0    ใช่
    Element Should Contain    name=Answer_10_0_0_1    ไม่ใช่

Att6_TH
    [Arguments]    ${Check_Attri6_TH}
    Element Should Contain    name=Question_11_0_0    ${Check_Attri6_TH}
    Element Should Contain    name=Answer_11_0_0_0    ใช่
    Element Should Contain    name=Answer_11_0_0_1    ไม่ใช่

Att7_TH
    [Arguments]    ${Check_Attri7_TH}
    Element Should Contain    name=Question_12_0_0    ${Check_Attri7_TH}

Att8_TH
    [Arguments]    ${Check_Attri40_TH}
    Element Should Contain    name=Question_13_0_0    ${Check_Attri8_TH}
    Element Should Contain    name=Answer_13_0_0_0    ใช่
    Element Should Contain    name=Answer_13_0_0_1    ไม่ใช่

Att9_TH
    [Arguments]    ${Check_Attri9_TH}
    Element Should Contain    name=Question_14_0_0    ${Check_Attri9_TH}

Att10_TH
    [Arguments]    ${Check_Attri10_TH}
    Element Should Contain    name=Question_15_0_0    ${Check_Attri10_TH}
    Element Should Contain    name=Answer_15_0_0_0    ใช่
    Element Should Contain    name=Answer_15_0_0_1    ไม่ใช่

Att11_TH
    [Arguments]    ${Check_Attri11_TH}
    Element Should Contain    name=Question_16_0_0    ${Check_Attri11_TH}
    Element Should Contain    name=Answer_16_0_0_0    ใช่
    Element Should Contain    name=Answer_16_0_0_1    ไม่ใช่

Att41_TH
    [Arguments]    ${Check_Attri41_TH}
    Element Should Contain    name=Question_17_0_0    ${Check_Attri41_TH}
    Element Should Contain    name=Answer_17_0_0_0    ใช่
    Element Should Contain    name=Answer_17_0_0_1    ไม่ใช่

Att13_TH
    [Arguments]    ${Check_Attri13_TH}
    Element Should Contain    name=Question_18_0_0    ${Check_Attri13_TH}
    Element Should Contain    name=Answer_18_0_0_0    ใช่
    Element Should Contain    name=Answer_18_0_0_1    ไม่ใช่

Att14_TH
    [Arguments]    ${Check_Attri14_TH}
    Element Should Contain    name=Question_19_0_0    ${Check_Attri14_TH}
    Page Should Contain Element    //div[@name='page7_01']//label[text()='ไม่ทราบ/ไม่ได้ใช้บริการ']

Att15_TH
    [Arguments]    ${Check_Attri15_TH}
    Element Should Contain    name=Question_20_0_0    ${Check_Attri15_TH}
    Page Should Contain Element    //div[@name='page7_02']//label[text()='ไม่ทราบ/ไม่ได้ใช้บริการ']

Att16_TH
    [Arguments]    ${Check_Attri16_TH}
    Element Should Contain    name=Question_21_0_0    ${Check_Attri16_TH}
    Page Should Contain Element    //div[@name='page7_03']//label[text()='ไม่ทราบ/ไม่ได้ใช้บริการ']

Att17_TH
    [Arguments]    ${Check_Attri17_TH}
    Element Should Contain    name=Question_22_0_0    ${Check_Attri17_TH}
    Page Should Contain Element    //div[@name='page7_04']//label[text()='ไม่ทราบ/ไม่ได้ใช้บริการ']

Att18_TH
    [Arguments]    ${Check_Attri18_TH}
    Element Should Contain    name=Question_23_0_0    ${Check_Attri18_TH}

Att19_TH
    [Arguments]    ${Check_Attri19_TH}
    Element Should Contain    name=Question_24_0_0    ${Check_Attri19_TH}
    Element Should Contain    name=Answer_24_0_0_0    ใช่
    Element Should Contain    name=Answer_24_0_0_1    ไม่ใช่

Att20_TH
    [Arguments]    ${Check_Attri20_TH}
    Element Should Contain    name=Question_25_0_0    ${Check_Attri20_TH}
    Element Should Contain    name=Answer_25_0_0_0    ใช่
    Element Should Contain    name=Answer_25_0_0_1    ไม่ใช่

Att21_TH
    [Arguments]    ${Check_Attri21_TH}
    Element Should Contain    name=Question_26_0_0    ${Check_Attri21_TH}

Att22_TH
    [Arguments]    ${Check_Attri22_TH}
    Element Should Contain    name=Question_27_0_0    ${Check_Attri22_TH}
    Page Should Contain Element    //div[@name='page8_05']//label[text()='ไม่ทราบ/ไม่ได้ใช้บริการ']

Att23_TH
    [Arguments]    ${Check_Attri23_TH}
    Element Should Contain    name=Question_28_0_0    ${Check_Attri23_TH}
    Element Should Contain    name=Answer_28_0_0_0    ใช่
    Element Should Contain    name=Answer_28_0_0_1    ไม่ใช่

Att24_TH
    [Arguments]    ${Check_Attri24_TH}
    Element Should Contain    name=Question_29_0_0    ${Check_Attri24_TH}

Att25_TH
    [Arguments]    ${Check_Attri25_TH}
    Element Should Contain    name=Question_30_0_0    ${Check_Attri25_TH}

Att26_TH
    [Arguments]    ${Check_Attri26_TH}
    Element Should Contain    name=Question_31_0_0    ${Check_Attri26_TH}

Att27_TH
    [Arguments]    ${Check_Attri27_TH}
    Element Should Contain    name=Question_32_0_0    ${Check_Attri27_TH}

Att28_TH
    [Arguments]    ${Check_Attri28_TH}
    Element Should Contain    name=Question_33_0_0    ${Check_Attri28_TH}
    Element Should Contain    name=Answer_33_0_0_0    ใช่
    Element Should Contain    name=Answer_33_0_0_1    ไม่ใช่

Att42_TH
    [Arguments]    ${Check_Attri42_TH1}    ${Check_Attri42_TH2}
    Element Should Contain    name=Question_34_0_0    ${Check_Attri42_TH1}
    Element Should Contain    name=Question_34_0_0    ${Check_Attri42_TH2}

Att43_TH
    [Arguments]    ${Check_Attri43_TH1}    ${Check_Attri43_TH2}
    Element Should Contain    name=Question_35_0_0    ${Check_Attri43_TH1}
    Element Should Contain    name=Question_35_0_0    ${Check_Attri43_TH2}

Att44_TH
    [Arguments]    ${Check_Attri44_TH2}    ${Check_Attri44_TH2}
    Element Should Contain    name=Question_36_0_0    ${Check_Attri44_TH1}
    Element Should Contain    name=Question_36_0_0    ${Check_Attri44_TH2}

Att45_TH
    [Arguments]    ${Check_Attri45_TH1}    ${Check_Attri45_TH2}
    Element Should Contain    name=Question_37_0_0    ${Check_Attri45_TH1}
    Element Should Contain    name=Question_37_0_0    ${Check_Attri45_TH2}

Att46_TH
    [Arguments]    ${Check_Attri46_TH}
    Element Should Contain    name=Question_38_0_0    ${Check_Attri46_TH}

Att47_TH
    [Arguments]    ${Check_Attri47_TH}
    Element Should Contain    name=Question_39_0_0    ${Check_Attri47_TH}

Att48_TH
    [Arguments]    ${Check_Attri48_TH}
    Element Should Contain    name=Question_40_0_0    ${Check_Attri48_TH}

Att49_TH
    [Arguments]    ${Check_Attri49_TH}
    Element Should Contain    name=Question_41_0_0    ${Check_Attri49_TH}

OA_Suggession_TH
    [Arguments]    ${Check_OA_SugMDP_TH}
    Element Should Contain    name=Question_42_0_0    ${Check_OA_SugMDP_TH}
    Page Should Contain Element    name=q_suggestion_mdp

Att50_TH
    [Arguments]    ${Check_Attri50_TH}
    Element Should Contain    name=Question_43_0_0    ${Check_Attri50_TH}
    Element Should Contain    name=Answer_43_0_0_0    ฝากขาย/ฝากเช่า
    Element Should Contain    name=Answer_43_0_0_1    หาซื้อ/หาเช่า

Att51_TH
    [Arguments]    ${Check_Attri51_TH}
    Element Should Contain    name=Question_44_0_0    ${Check_Attri51_TH}

Att52_TH
    [Arguments]    ${Check_Attri52_TH}
    Element Should Contain    name=Question_45_0_0    ${Check_Attri52_TH}

Att53_TH
    [Arguments]    ${Check_Attri53_TH}
    Element Should Contain    name=Question_46_0_0    ${Check_Attri53_TH}

Att54_TH
    [Arguments]    ${Check_Attri54_TH}
    Element Should Contain    name=Question_47_0_0    ${Check_Attri54_TH}

Att55_TH
    [Arguments]    ${Check_Attri55_TH}
    Element Should Contain    name=Question_48_0_0    ${Check_Attri55_TH}

Att56_TH
    [Arguments]    ${Check_Attri56_TH}
    Element Should Contain    name=Question_49_0_0    ${Check_Attri56_TH}
    Element Should Contain    name=Answer_49_0_0_0    ใช่
    Element Should Contain    name=Answer_49_0_0_1    ไม่ใช่

IntroProfile_TH
    [Arguments]    ${Check_Intro_Profile_TH}
    Element Should Contain    //div[@class='endMessage']/label[@language='Thai']    ${Check_Intro_Profile_TH}
    Page Should Contain Element    //div[@id='endMessage']//span[@class='btn']//label[text()='ถัดไป']

Profile1_TH
    [Arguments]    ${Check_Profile1_TH}
    Element Should Contain    name=Question_1_0_0    ${Check_Profile1_TH}
    Element Should Contain    ${ChoiceP1_1}    ต่ำกว่า 40,000 บาท
    Element Should Contain    ${ChoiceP1_2}    40,001 - 70,000 บาท
    Element Should Contain    ${ChoiceP1_3}    70,001 - 100,000 บาท
    Element Should Contain    ${ChoiceP1_4}    100,001 - 130,000 บาท
    Element Should Contain    ${ChoiceP1_5}    130,001 - 160,000 บาท
    Element Should Contain    ${ChoiceP1_6}    160,001 - 200,000 บาท
    Element Should Contain    ${ChoiceP1_7}    200,001 - 500,000 บาท
    Element Should Contain    ${ChoiceP1_8}    500,001 - 1,000,000 บาท
    Element Should Contain    ${ChoiceP1_9}    มากกว่า 1,000,000 บาท

Profile2_TH
    [Arguments]    ${Check_Profile2_TH}
    Element Should Contain    name=Question_2_0_0    ${Check_Profile2_TH}
    Element Should Contain    ${ChoiceP2_1}    เจ้าของกิจการ
    Element Should Contain    ${ChoiceP2_2}    พนักงานรัฐวิสาหกิจ
    Element Should Contain    ${ChoiceP2_3}    พนักงานบริษัทเอกชน
    Element Should Contain    ${ChoiceP2_4}    ข้าราชการ
    Element Should Contain    ${ChoiceP2_5}    ทนายความ
    Element Should Contain    ${ChoiceP2_6}    แพทย์
    Element Should Contain    ${ChoiceP2_7}    วิศวกร
    Element Should Contain    ${ChoiceP2_8}    อาชีพอิสระ
    Element Should Contain    ${ChoiceP2_9}    แม่บ้าน / พ่อบ้าน
    Element Should Contain    ${ChoiceP2_10}    นักเรียน / นักศึกษา
    Element Should Contain    ${ChoiceP2_11}    อื่นๆ โปรดระบุ
    Page Should Contain Element    //*[@name='dm2_11_oa']
    Page Should Contain Element    //div[@name='page2']//span[@class='btn next'][text()='ถัดไป']

Profile3_TH
    [Arguments]    ${Check_Profile3_TH}
    Element Should Contain    name=Question_3_0_0    ${Check_Profile3_TH}
    Element Should Contain    ${ChoiceP3_1}    ใกล้ที่ทำงาน
    Element Should Contain    ${ChoiceP3_2}    ใกล้ที่อยู่เดิม
    Element Should Contain    ${ChoiceP3_3}    ใกล้สถานศึกษา
    Element Should Contain    ${ChoiceP3_4}    เดินทางสะดวก
    Element Should Contain    ${ChoiceP3_5}    ต้องการลงทุน
    Element Should Contain    ${ChoiceP3_6}    การออกแบบ
    Element Should Contain    ${ChoiceP3_7}    สามารถเลี้ยงสัตว์ได้
    Element Should Contain    ${ChoiceP3_8}    ราคาสมเหตุผล
    Page Should Contain Element    //div[@name='page3']//span[@class='btn next'][text()='ถัดไป']

Adhoc1_TH
    [Arguments]    ${Check_Adhoc_TH}
    Element Should Contain    name=Question_4_0_0    ${Check_Adhoc_TH}
    Element Should Contain    ${ChoiceA4_1}    ใช้เวลากับสัตว์เลี้ยง
    Element Should Contain    ${ChoiceA4_2}    ดูหนังตามโรงภาพยนต์
    Element Should Contain    ${ChoiceA4_3}    ดูละคร,ซีรี่ย์,Netflix
    Element Should Contain    ${ChoiceA4_4}    ช้อปปิ้ง
    Element Should Contain    ${ChoiceA4_5}    ออกกำลังกาย,ฟิสเนส
    Element Should Contain    ${ChoiceA4_6}    นวดสปา
    Element Should Contain    ${ChoiceA4_7}    ท่องเที่ยวในประเทศ
    Element Should Contain    ${ChoiceA4_8}    ท่องเที่ยวต่างประเทศ
    Element Should Contain    ${ChoiceA4_9}    ถ่ายรูป,นั่งร้านกาแฟ
    Element Should Contain    ${ChoiceA4_10}    ทำอาหาร
    Element Should Contain    ${ChoiceA4_11}    ดูคอนเสิร์ต,ละครเวที,งานศิลป์
    Element Should Contain    ${ChoiceA4_12}    ปลูกต้นไม้,ตกแต่งบ้าน
    Element Should Contain    ${ChoiceA4_13}    Co- working space,อ่านหนังสือ
    Element Should Contain    ${ChoiceA4_14}    ปาร์ตี้,hang out

Media_TH
    [Arguments]    ${Check_Media_TH}
    Element Should Contain    name=Question_5_0_0    ${Check_Media_TH}
    Element Should Contain    ${ChoiceM_1}    บิลบอร์ด
    Element Should Contain    ${ChoiceM_2}    งานอีเวนท์
    Element Should Contain    ${ChoiceM_3}    ผ่านโครงการ
    Element Should Contain    ${ChoiceM_4}    ป้ายบอกทาง
    Element Should Contain    ${ChoiceM_5}    สื่อใน รถไฟฟ้า
    Element Should Contain    ${ChoiceM_6}    สื่อในทีวี
    Element Should Contain    ${ChoiceM_7}    สื่อวิทยุ
    Element Should Contain    ${ChoiceM_8}    เอสเอ็มเอส
    Element Should Contain    ${ChoiceM_9}    เว็บไซต์ โปรดระบุ
    Page Should Contain Element    name=media_9_oa
    Element Should Contain    ${ChoiceM_10}    โซเชียลมีเดีย
    Element Should Contain    ${ChoiceM_11}    สื่อสิ่งพิมพ์
    Element Should Contain    ${ChoiceM_12}    อีเมล
    Element Should Contain    ${ChoiceM_13}    ลูกค้าเก่าแนะนำ
    Element Should Contain    ${ChoiceM_14}    นายหน้า / ตัวแทน
    Element Should Contain    ${ChoiceM_15}    อื่นๆโปรดระบุ
    Page Should Contain Element    name=media_15_oa
    Page Should Contain Element    //div[@name='page5']//span[@class='btn next'][text()='ถัดไป']

Reward Condition_TH
    [Arguments]    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward_TH}    ${Opt_in_rewardYes_TH}
    ...    ${Opt_in_rewardNo_TH}
    Element Should Contain    name=Title_6_0    ${CheckRewardTH}
    Element Should Contain    //*[@language='Thai']//label[@name='br1']    ${CheckRewardTH_1}
    Element Should Contain    //*[@language='Thai']//label[@name='br2']    ${CheckRewardTH_2}
    Element Should Contain    //*[@language='Thai']//label[@name='br3']    ${CheckRewardTH_3}
    Element Should Contain    //*[@language='Thai']//label[@name='br4']    ${CheckRewardTH_4}
    Element Should Contain    //*[@language='Thai']//label[@name='br5']    ${CheckRewardTH_5}
    Element Should Contain    //*[@language='Thai']//label[@name='br6']    ${CheckRewardTH_6}
    Element Should Contain    //*[@language='Thai']//label[@name='br7']    ${CheckRewardTH_7}
    Element Should Contain    //*[@language='Thai']//label[@name='br8']    ${CheckRewardTH_8}
    Element Should Contain    //*[@language='Thai']//label[@name='br9']    ${CheckRewardTH_9}
    Element Should Contain    name=Question_6_0_0    ${CheckQuestionReward_TH}
    Element Should Contain    name=Answer_6_0_0_0    ${Opt_in_rewardYes_TH}
    Element Should Contain    name=Answer_6_0_0_1    ${Opt_in_rewardNo_TH}

Tel Opt-in_TH
    [Arguments]    ${Opt_in_tel_TH1}    ${Opt_in_tel_TH2}
    Element Should Contain    name=Question_7_0_0    ${Opt_in_tel_TH1}
    Element Should Contain    //*[@language='Thai']//label[@name='tel_0']    ${Opt_in_tel_TH2}
    Page Should Contain Element    name=opt_in_tel
    Page Should Contain Element    //div[@name='page7']//span[@class='btn next'][text()='ถัดไป']

Ending_TH
    [Arguments]    ${QN_Ending_TH}
    Element Should Contain    css=#survey #endMessage [language='Thai']    ${QN_Ending_TH}

Introduction_CN
    [Arguments]    ${Check_introMainCN1}    ${Check_introMainCN2}    ${Check_introMainCN3}    ${Check_introMainCN4}
    Element Should Contain    //*[@id="greeting-page"]//label[@language='Chinese']    ${Check_introMainCN1}
    Element Should Contain    //*[@id="greeting-page"]//label[@language='Chinese']    ${Check_introMainCN2}
    Element Should Contain    //*[@id="greeting-page"]//label[@language='Chinese']    ${Check_introMainCN3}
    Element Should Contain    //*[@id="greeting-page"]/div/div[7]//label[@language='Chinese']    ${Check_introMainCN4}
    Element Should Contain    ${locator_language}    ${language_CN}
    Page Should Contain Element    //span[@class="btn start"][text()='开始']

Q1_CSAT_CN
    [Arguments]    ${Check_QNCSAT_CN}
    Element Should Contain    //*[@name='Question_3_0_0'][@language='Chinese']    ${Check_QNCSAT_CN}
    Element Should Contain    //label[text()='很不满意']    很不满意
    Element Should Contain    //label[text()='特别满意']    特别满意

OA_CSATPos_CN
    [Arguments]    ${Check_QACSATPos_CN}
    Element Should Contain    //*[@name='Question_4_0_0'][@language='Chinese']    ${Check_OACSATPos_CN}
    Page Should Contain Element    //*[@name='csat_pos']
    Page Should Contain Element    //div[@name='page2']//span[@class='btn next'][text()='下一页']

OA_CSATNeg_CN
    [Arguments]    ${Check_QACSATNeg_CN}
    Element Should Contain    //*[@name='Question_4_0_1'][@language='Chinese']    ${Check_OACSATNeg_CN}
    Page Should Contain Element    //*[@name='csat_neg']
    Page Should Contain Element    //div[@name='page2']//span[@class='btn next'][text()='下一页']

Optin_Negative_CN
    [Arguments]    ${Check_Optin_TH}
    Element Should Contain    //*[@name='Question_5_0_0'][@language='Chinese']    ${Check_Optin_CN}
    Element Should Contain    //*[@name='Answer_5_0_0_0']//span[@language='Chinese']    愿意
    Element Should Contain    //*[@name='Answer_5_0_0_1']//span[@language='Chinese']    不愿意

Att1_CN
    [Arguments]    ${Check_Attri1_CN}
    Element Should Contain    //*[@name='Question_6_0_0'][@language='Chinese']    ${Check_Attri1_CN}
    Page Should Contain Element    //div[@name='page4_01']//label[.='不给分']

Att2_CN
    [Arguments]    ${Check_Attri2_CN}
    Element Should Contain    //*[@name='Question_7_0_0'][@language='Chinese']    ${Check_Attri2_CN}
    Page Should Contain Element    //div[@name='page4_02']//label[.='不给分']

Att4_CN
    [Arguments]    ${Check_Attri4_CN}
    Element Should Contain    //*[@name='Question_8_0_0'][@language='Chinese']    ${Check_Attri4_CN}
    Page Should Contain Element    //div[@name='page4_03']//label[.='不给分']

Att40_CN
    [Arguments]    ${Check_Attri40_CN}
    Element Should Contain    //*[@name='Question_9_0_0'][@language='Chinese']    ${Check_Attri40_CN}
    Page Should Contain Element    //div[@name='page4_04']//label[.='不给分']

IntroProfile_CN
    [Arguments]    ${Check_Intro_Profile_CN}
    Element Should Contain    //div[@class='endMessage']/label[@language='Chinese']    ${Check_Intro_Profile_CN}
    Page Should Contain Element    //div[@id='endMessage']//span[@class='btn']//label[text()='下一页']

Att5_CN
    [Arguments]    ${Check_Attri5_CN}
    Element Should Contain    //*[@name='Question_10_0_0'][@language='Chinese']    ${Check_Attri5_CN}
    Element Should Contain    //*[@name='Answer_10_0_0_0']    是
    Element Should Contain    //*[@name='Answer_10_0_0_1']    否

Att6_CN
    [Arguments]    ${Check_Attri6_CN}
    Element Should Contain    //*[@name='Question_11_0_0'][@language='Chinese']    ${Check_Attri6_CN}
    Element Should Contain    //*[@name='Answer_11_0_0_0']    是
    Element Should Contain    //*[@name='Answer_11_0_0_1']    否

Att7_CN
    [Arguments]    ${Check_Attri7_CN}
    Element Should Contain    //*[@name='Question_12_0_0'][@language='Chinese']    ${Check_Attri7_CN}

Att8_CN
    [Arguments]    ${Check_Attri40_CN}
    Element Should Contain    //*[@name='Question_13_0_0'][@language='Chinese']    ${Check_Attri8_CN}
    Element Should Contain    //*[@name='Answer_13_0_0_0']    是
    Element Should Contain    //*[@name='Answer_13_0_0_1']    否

Att9_CN
    [Arguments]    ${Check_Attri9_CN}
    Element Should Contain    //*[@name='Question_14_0_0'][@language='Chinese']    ${Check_Attri9_CN}

Att10_CN
    [Arguments]    ${Check_Attri10_CN}
    Element Should Contain    //*[@name='Question_15_0_0'][@language='Chinese']    ${Check_Attri10_CN}
    Element Should Contain    //*[@name='Answer_15_0_0_0']    是
    Element Should Contain    //*[@name='Answer_15_0_0_1']    否

Att11_CN
    [Arguments]    ${Check_Attri11_CN}
    Element Should Contain    //*[@name='Question_16_0_0'][@language='Chinese']    ${Check_Attri11_CN}
    Element Should Contain    //*[@name='Answer_16_0_0_0']    是
    Element Should Contain    //*[@name='Answer_16_0_0_1']    否

Att41_CN
    [Arguments]    ${Check_Attri41_CN}
    Element Should Contain    //*[@name='Question_17_0_0'][@language='Chinese']    ${Check_Attri41_CN}
    Element Should Contain    //*[@name='Answer_17_0_0_0']    是
    Element Should Contain    //*[@name='Answer_17_0_0_1']    否

Att13_CN
    [Arguments]    ${Check_Attri13_CN}
    Element Should Contain    //*[@name='Question_18_0_0'][@language='Chinese']    ${Check_Attri13_CN}
    Element Should Contain    //*[@name='Answer_18_0_0_0']    是
    Element Should Contain    //*[@name='Answer_18_0_0_1']    否

Att14_CN
    [Arguments]    ${Check_Attri14_CN}
    Element Should Contain    //*[@name='Question_19_0_0'][@language='Chinese']    ${Check_Attri14_CN}
    Page Should Contain Element    //div[@name='page7_01']//label[text()='不给分']

Att15_CN
    [Arguments]    ${Check_Attri15_CN}
    Element Should Contain    //*[@name='Question_20_0_0'][@language='Chinese']    ${Check_Attri15_CN}
    Page Should Contain Element    //div[@name='page7_02']//label[text()='不给分']

Att16_CN
    [Arguments]    ${Check_Attri16_CN}
    Element Should Contain    //*[@name='Question_21_0_0'][@language='Chinese']    ${Check_Attri16_CN}
    Page Should Contain Element    //div[@name='page7_03']//label[text()='不给分']

Att17_CN
    [Arguments]    ${Check_Attri17_CN}
    Element Should Contain    //*[@name='Question_22_0_0'][@language='Chinese']    ${Check_Attri17_CN}
    Page Should Contain Element    //div[@name='page7_04']//label[text()='不给分']

Att18_CN
    [Arguments]    ${Check_Attri18_CN}
    Element Should Contain    //*[@name='Question_23_0_0'][@language='Chinese']    ${Check_Attri18_CN}

Att19_CN
    [Arguments]    ${Check_Attri19_CN}
    Element Should Contain    //*[@name='Question_24_0_0'][@language='Chinese']    ${Check_Attri19_CN}
    Element Should Contain    //*[@name='Answer_24_0_0_0']    是
    Element Should Contain    //*[@name='Answer_24_0_0_1']    否

Att20_CN
    [Arguments]    ${Check_Attri20_CN}
    Element Should Contain    //*[@name='Question_25_0_0'][@language='Chinese']    ${Check_Attri20_CN}
    Element Should Contain    //*[@name='Answer_25_0_0_0']    是
    Element Should Contain    //*[@name='Answer_25_0_0_1']    否

Att21_CN
    [Arguments]    ${Check_Attri21_CN}
    Element Should Contain    //*[@name='Question_26_0_0'][@language='Chinese']    ${Check_Attri21_CN}

Att22_CN
    [Arguments]    ${Check_Attri22_CN}
    Element Should Contain    //*[@name='Question_27_0_0'][@language='Chinese']    ${Check_Attri22_CN}
    Page Should Contain Element    //div[@name='page8_05']//label[text()='不给分']

Att23_CN
    [Arguments]    ${Check_Attri23_CN}
    Element Should Contain    //*[@name='Question_28_0_0'][@language='Chinese']    ${Check_Attri23_CN}
    Element Should Contain    //*[@name='Answer_28_0_0_0']    是
    Element Should Contain    //*[@name='Answer_28_0_0_1']    否

Att24_CN
    [Arguments]    ${Check_Attri24_CN}
    Element Should Contain    //*[@name='Question_29_0_0'][@language='Chinese']    ${Check_Attri24_CN}

Att25_CN
    [Arguments]    ${Check_Attri25_CN}
    Element Should Contain    //*[@name='Question_30_0_0'][@language='Chinese']    ${Check_Attri25_CN}

Att26_CN
    [Arguments]    ${Check_Attri26_CN}
    Element Should Contain    //*[@name='Question_31_0_0'][@language='Chinese']    ${Check_Attri26_CN}

Att27_CN
    [Arguments]    ${Check_Attri27_CN}
    Element Should Contain    //*[@name='Question_32_0_0'][@language='Chinese']    ${Check_Attri27_CN}

Att28_CN
    [Arguments]    ${Check_Attri28_CN}
    Element Should Contain    //*[@name='Question_33_0_0'][@language='Chinese']    ${Check_Attri28_CN}
    Element Should Contain    //*[@name='Answer_33_0_0_0']    是
    Element Should Contain    //*[@name='Answer_33_0_0_1']    否

Att42_CN
    [Arguments]    ${Check_Attri42_CN}
    Element Should Contain    //*[@name='Question_34_0_0'][@language='Chinese']    ${Check_Attri42_CN}

Att43_CN
    [Arguments]    ${Check_Attri43_CN}
    Element Should Contain    //*[@name='Question_35_0_0'][@language='Chinese']    ${Check_Attri43_CN}

Att44_CN
    [Arguments]    ${Check_Attri44_CN}
    Element Should Contain    //*[@name='Question_36_0_0'][@language='Chinese']    ${Check_Attri44_CN}

Att45_CN
    [Arguments]    ${Check_Attri45_CN}
    Element Should Contain    //*[@name='Question_37_0_0'][@language='Chinese']    ${Check_Attri45_CN}

Att46_CN
    [Arguments]    ${Check_Attri46_CN}
    Element Should Contain    //*[@name='Question_38_0_0'][@language='Chinese']    ${Check_Attri46_CN}

Att47_CN
    [Arguments]    ${Check_Attri47_CN}
    Element Should Contain    //*[@name='Question_39_0_0'][@language='Chinese']    ${Check_Attri47_CN}

Att48_CN
    [Arguments]    ${Check_Attri48_CN}
    Element Should Contain    //*[@name='Question_40_0_0'][@language='Chinese']    ${Check_Attri48_CN}

Att49_CN
    [Arguments]    ${Check_Attri49_CN}
    Element Should Contain    //*[@name='Question_41_0_0'][@language='Chinese']    ${Check_Attri49_CN}

OA_Suggession_CN
    [Arguments]    ${Check_OA_SugMDP_CN}
    Element Should Contain    //*[@name='Question_42_0_0'][@language='Chinese']    ${Check_OA_SugMDP_CN}
    Page Should Contain Element    name=q_suggestion_mdp

Att50_CN
    [Arguments]    ${Check_Attri50_CN}
    Element Should Contain    //*[@name='Question_43_0_0'][@language='Chinese']    ${Check_Attri50_CN}
    Element Should Contain    //*[@name='Answer_43_0_0_0']    寄售/寄租
    Element Should Contain    //*[@name='Answer_43_0_0_1']    购买/租用

Att51_CN
    [Arguments]    ${Check_Attri51_CN}
    Element Should Contain    //*[@name='Question_44_0_0'][@language='Chinese']    ${Check_Attri51_CN}

Att52_CN
    [Arguments]    ${Check_Attri52_CN}
    Element Should Contain    //*[@name='Question_45_0_0'][@language='Chinese']    ${Check_Attri52_CN}

Att53_CN
    [Arguments]    ${Check_Attri53_CN}
    Element Should Contain    //*[@name='Question_46_0_0'][@language='Chinese']    ${Check_Attri53_CN}

Att54_CN
    [Arguments]    ${Check_Attri54_CN}
    Element Should Contain    //*[@name='Question_47_0_0'][@language='Chinese']    ${Check_Attri54_CN}

Att55_CN
    [Arguments]    ${Check_Attri55_CN}
    Element Should Contain    //*[@name='Question_48_0_0'][@language='Chinese']    ${Check_Attri55_CN}

Att56_CN
    [Arguments]    ${Check_Attri56_CN}
    Element Should Contain    //*[@name='Question_49_0_0'][@language='Chinese']    ${Check_Attri56_CN}
    Element Should Contain    //*[@name='Answer_49_0_0_0']    是
    Element Should Contain    //*[@name='Answer_49_0_0_1']    否

Profile1_CN
    [Arguments]    ${Check_Profile1_CN}
    Element Should Contain    //*[@name='Question_1_0_0'][@language='Chinese']    ${Check_Profile1_CN}
    Element Should Contain    ${ChoiceP1_1}    少于40,000    泰铢
    Element Should Contain    ${ChoiceP1_2}    40,001 - 70,000    泰铢
    Element Should Contain    ${ChoiceP1_3}    70,001 - 100,000    泰铢
    Element Should Contain    ${ChoiceP1_4}    100,001 - 130,000    泰铢
    Element Should Contain    ${ChoiceP1_5}    130,001 - 160,000    泰铢
    Element Should Contain    ${ChoiceP1_6}    160,001 - 200,000    泰铢
    Element Should Contain    ${ChoiceP1_7}    200,001 - 500,000    泰铢
    Element Should Contain    ${ChoiceP1_8}    500,001 - 1,000,000    泰铢
    Element Should Contain    ${ChoiceP1_9}    多余 1,000,000    泰铢

Profile2_CN
    [Arguments]    ${Check_Profile2_CN}
    Element Should Contain    //*[@name='Question_2_0_0'][@language='Chinese']    ${Check_Profile2_CN}
    Element Should Contain    ${ChoiceP2_1}    业主
    Element Should Contain    ${ChoiceP2_2}    国企员工
    Element Should Contain    ${ChoiceP2_3}    公司员工
    Element Should Contain    ${ChoiceP2_4}    公务员
    Element Should Contain    ${ChoiceP2_5}    律师
    Element Should Contain    ${ChoiceP2_6}    医生
    Element Should Contain    ${ChoiceP2_7}    工程师
    Element Should Contain    ${ChoiceP2_8}    自由职业者
    Element Should Contain    ${ChoiceP2_9}    家庭主妇
    Element Should Contain    ${ChoiceP2_10}    学生
    Element Should Contain    ${ChoiceP2_11}    其他，请注明
    Page Should Contain Element    //*[@name='dm2_11_oa']
    Page Should Contain Element    //div[@name='page2']//span[@class='btn next'][text()='下一页']

Profile3_CN
    [Arguments]    ${Check_Profile3_CN}
    Element Should Contain    //*[@name='Question_3_0_0'][@language='Chinese']    ${Check_Profile3_CN}
    Element Should Contain    ${ChoiceP3_1}    靠近工作地点
    Element Should Contain    ${ChoiceP3_2}    靠近原始地址
    Element Should Contain    ${ChoiceP3_3}    在学校附近
    Element Should Contain    ${ChoiceP3_4}    出行方便
    Element Should Contain    ${ChoiceP3_5}    想要投资
    Element Should Contain    ${ChoiceP3_6}    设计
    Element Should Contain    ${ChoiceP3_7}    可以饲养动物
    Element Should Contain    ${ChoiceP3_8}    价格合理
    Page Should Contain Element    //div[@name='page3']//span[@class='btn next'][text()='下一页']

Adhoc1_CN
    [Arguments]    ${Check_Adhoc_CN}
    Element Should Contain    //*[@name='Question_4_0_0'][@language='Chinese']    ${Check_Adhoc_CN}
    Element Should Contain    ${ChoiceA4_1}    陪伴宠物。
    Element Should Contain    ${ChoiceA4_2}    看电影
    Element Should Contain    ${ChoiceA4_3}    观看电视剧/Netflix
    Element Should Contain    ${ChoiceA4_4}    购物
    Element Should Contain    ${ChoiceA4_5}    健身房健身
    Element Should Contain    ${ChoiceA4_6}    水疗按摩
    Element Should Contain    ${ChoiceA4_7}    国内旅行
    Element Should Contain    ${ChoiceA4_8}    出国旅游
    Element Should Contain    ${ChoiceA4_9}    摄影/文艺
    Element Should Contain    ${ChoiceA4_10}    下厨师
    Element Should Contain    ${ChoiceA4_11}    看音乐会，戏剧，展览
    Element Should Contain    ${ChoiceA4_12}    园艺，家居装饰
    Element Should Contain    ${ChoiceA4_13}    在共同工作空间，阅读书籍
    Element Should Contain    ${ChoiceA4_14}    参加派对

Media_CN
    [Arguments]    ${Check_Media_CN}
    Element Should Contain    //*[@name='Question_5_0_0'][@language='Chinese']    ${Check_Media_CN}
    Element Should Contain    ${ChoiceM_1}    广告牌
    Element Should Contain    ${ChoiceM_2}    活动
    Element Should Contain    ${ChoiceM_3}    通过该项目
    Element Should Contain    ${ChoiceM_4}    路牌
    Element Should Contain    ${ChoiceM_5}    地铁上的媒体
    Element Should Contain    ${ChoiceM_6}    电视媒体
    Element Should Contain    ${ChoiceM_7}    收音机
    Element Should Contain    ${ChoiceM_8}    短信
    Element Should Contain    ${ChoiceM_9}    网站 请注明
    Page Should Contain Element    name=media_9_oa
    Element Should Contain    ${ChoiceM_10}    社交媒体
    Element Should Contain    ${ChoiceM_11}    印刷媒体
    Element Should Contain    ${ChoiceM_12}    电子邮件
    Element Should Contain    ${ChoiceM_13}    老客户推荐
    Element Should Contain    ${ChoiceM_14}    经纪人/代理人
    Element Should Contain    ${ChoiceM_15}    其他 请注明
    Page Should Contain Element    name=media_15_oa
    Page Should Contain Element    //div[@name='page5']//span[@class='btn next'][text()='下一页']

Reward Condition_CN
    [Arguments]    ${CheckRewardCN}    ${CheckRewardCN_1}    ${CheckRewardCN_2}    ${CheckRewardCN_3}    ${CheckRewardCN_4}    ${CheckRewardCN_5}
    ...    ${CheckRewardCN_6}    ${CheckRewardCN_7}    ${CheckRewardCN_8}    ${CheckRewardCN_9}    ${CheckQuestionReward_CN}    ${Opt_in_rewardYes_CN}
    ...    ${Opt_in_rewardNo_CN}
    Element Should Contain    //*[@name='Title_6_0'][@language='Chinese']    ${CheckRewardCN}
    Element Should Contain    //*[@language='Chinese']//label[@name='br1']    ${CheckRewardCN_1}
    Element Should Contain    //*[@language='Chinese']//label[@name='br2']    ${CheckRewardCN_2}
    Element Should Contain    //*[@language='Chinese']//label[@name='br3']    ${CheckRewardCN_3}
    Element Should Contain    //*[@language='Chinese']//label[@name='br4']    ${CheckRewardCN_4}
    Element Should Contain    //*[@language='Chinese']//label[@name='br5']    ${CheckRewardCN_5}
    Element Should Contain    //*[@language='Chinese']//label[@name='br6']    ${CheckRewardCN_6}
    Element Should Contain    //*[@language='Chinese']//label[@name='br7']    ${CheckRewardCN_7}
    Element Should Contain    //*[@language='Chinese']//label[@name='br8']    ${CheckRewardCN_8}
    Element Should Contain    //*[@language='Chinese']//label[@name='br9']    ${CheckRewardCN_9}
    Element Should Contain    //*[@name='Question_6_0_0'][@language='Chinese']    ${CheckQuestionReward_CN}
    Element Should Contain    name=Answer_6_0_0_0    ${Opt_in_rewardYes_CN}
    Element Should Contain    name=Answer_6_0_0_1    ${Opt_in_rewardNo_CN}

Tel Opt-in_CN
    [Arguments]    ${Opt_in_tel_CN1}
    Element Should Contain    //*[@name='Question_7_0_0'][@language='Chinese']    ${Opt_in_tel_CN1}
    #Element Should Contain    //*[@language='Chinese']//label[@name='tel_2']    ${Opt_in_tel_CN2}
    Page Should Contain Element    name=opt_in_tel
    Page Should Contain Element    //div[@name='page7']//span[@class='btn next'][text()='下一页']

Ending_CN
    [Arguments]    ${QN_Ending_CN}
    Element Should Contain    css=#survey #endMessage [language='Chinese']    ${QN_Ending_CN}

Introduction_EN
    [Arguments]    ${Check_introMainEN1}    ${Check_introMainEN2}    ${Check_introMainEN3}    ${Check_introMainEN4}
    Element Should Contain    //*[@id="greeting-page"]//label[@language='English']    ${Check_introMainEN1}
    Element Should Contain    //*[@id="greeting-page"]//label[@language='English']    ${Check_introMainEN2}
    Element Should Contain    //*[@id="greeting-page"]//label[@language='English']    ${Check_introMainEN3}
    Element Should Contain    //*[@id="greeting-page"]/div/div[5]//label[@language='English']    ${Check_introMainEN4}
    Element Should Contain    ${locator_language}    ${language_EN}
    Page Should Contain Element    //span[@class="btn start"][text()='Start']

Q1_CSAT_EN
    [Arguments]    ${Check_QNCSAT_EN}
    Element Should Contain    //*[@name='Question_3_0_0'][@language='English']    ${Check_QNCSAT_EN}
    Element Should Contain    //label[text()='Very Dissatisfied']    Very Dissatisfied
    Element Should Contain    //label[text()='Very Satisfied']    Very Satisfied

OA_CSATPos_EN
    [Arguments]    ${Check_QACSATPos_EN}
    Element Should Contain    //*[@name='Question_4_0_0'][@language='English']    ${Check_OACSATPos_EN}
    Page Should Contain Element    //*[@name='csat_pos']
    Page Should Contain Element    //div[@name='page2']//span[@class='btn next'][text()='Next']

OA_CSATNeg_EN
    [Arguments]    ${Check_QACSATNeg_EN}
    Element Should Contain    //*[@name='Question_4_0_1'][@language='English']    ${Check_OACSATNeg_EN}
    Page Should Contain Element    //*[@name='csat_neg']
    Page Should Contain Element    //div[@name='page2']//span[@class='btn next'][text()='Next']

Optin_Negative_EN
    [Arguments]    ${Check_Optin_EN}
    Element Should Contain    //*[@name='Question_5_0_0'][@language='English']    ${Check_Optin_EN}
    Element Should Contain    //*[@name='Answer_5_0_0_0']    Yes
    Element Should Contain    //*[@name='Answer_5_0_0_1']    No

Att1_EN
    [Arguments]    ${Check_Attri1_EN}
    Element Should Contain    //*[@name='Question_6_0_0'][@language='English']    ${Check_Attri1_EN}
    Page Should Contain Element    //div[@name='page4_01']//label[.='N/A']

Att2_EN
    [Arguments]    ${Check_Attri2_EN}
    Element Should Contain    //*[@name='Question_7_0_0'][@language='English']    ${Check_Attri2_EN}
    Page Should Contain Element    //div[@name='page4_02']//label[.='N/A']

Att4_EN
    [Arguments]    ${Check_Attri4_EN}
    Element Should Contain    //*[@name='Question_8_0_0'][@language='English']    ${Check_Attri4_EN}
    Page Should Contain Element    //div[@name='page4_03']//label[.='N/A']

Att40_EN
    [Arguments]    ${Check_Attri40_EN}
    Element Should Contain    //*[@name='Question_9_0_0'][@language='English']    ${Check_Attri40_EN}
    Page Should Contain Element    //div[@name='page4_04']//label[.='N/A']

IntroProfile_EN
    [Arguments]    ${Check_Intro_Profile_EN}
    Element Should Contain    //div[@class='endMessage']/label[@language='English']    ${Check_Intro_Profile_EN}
    Page Should Contain Element    //div[@id='endMessage']//span[@class='btn']//label[text()='Next']

Att5_EN
    [Arguments]    ${Check_Attri5_EN}
    Element Should Contain    //*[@name='Question_10_0_0'][@language='English']    ${Check_Attri5_EN}
    Element Should Contain    //*[@name='Answer_10_0_0_0']    Yes
    Element Should Contain    //*[@name='Answer_10_0_0_1']    No

Att6_EN
    [Arguments]    ${Check_Attri6_EN}
    Element Should Contain    //*[@name='Question_11_0_0'][@language='English']    ${Check_Attri6_EN}
    Element Should Contain    //*[@name='Answer_11_0_0_0']    Yes
    Element Should Contain    //*[@name='Answer_11_0_0_1']    No

Att7_EN
    [Arguments]    ${Check_Attri7_EN}
    Element Should Contain    //*[@name='Question_12_0_0'][@language='English']    ${Check_Attri7_EN}

Att8_EN
    [Arguments]    ${Check_Attri40_EN}
    Element Should Contain    //*[@name='Question_13_0_0'][@language='English']    ${Check_Attri8_EN}
    Element Should Contain    //*[@name='Answer_13_0_0_0']    Yes
    Element Should Contain    //*[@name='Answer_13_0_0_1']    No

Att9_EN
    [Arguments]    ${Check_Attri9_EN}
    Element Should Contain    //*[@name='Question_14_0_0'][@language='English']    ${Check_Attri9_EN}

Att10_EN
    [Arguments]    ${Check_Attri10_EN}
    Element Should Contain    //*[@name='Question_15_0_0'][@language='English']    ${Check_Attri10_EN}
    Element Should Contain    //*[@name='Answer_15_0_0_0']    Yes
    Element Should Contain    //*[@name='Answer_15_0_0_1']    No

Att11_EN
    [Arguments]    ${Check_Attri11_EN}
    Element Should Contain    //*[@name='Question_16_0_0'][@language='English']    ${Check_Attri11_EN}
    Element Should Contain    //*[@name='Answer_16_0_0_0']    Yes
    Element Should Contain    //*[@name='Answer_16_0_0_1']    No

Att41_EN
    [Arguments]    ${Check_Attri41_EN}
    Element Should Contain    //*[@name='Question_17_0_0'][@language='English']    ${Check_Attri41_EN}
    Element Should Contain    //*[@name='Answer_17_0_0_0']    Yes
    Element Should Contain    //*[@name='Answer_17_0_0_1']    No

Att13_EN
    [Arguments]    ${Check_Attri13_EN}
    Element Should Contain    //*[@name='Question_18_0_0'][@language='English']    ${Check_Attri13_EN}
    Element Should Contain    //*[@name='Answer_18_0_0_0']    Yes
    Element Should Contain    //*[@name='Answer_18_0_0_1']    No

Att14_EN
    [Arguments]    ${Check_Attri14_EN}
    Element Should Contain    //*[@name='Question_19_0_0'][@language='English']    ${Check_Attri14_EN}
    Page Should Contain Element    //div[@name='page7_01']//label[text()='N/A']

Att15_EN
    [Arguments]    ${Check_Attri15_EN}
    Element Should Contain    //*[@name='Question_20_0_0'][@language='English']    ${Check_Attri15_EN}
    Page Should Contain Element    //div[@name='page7_02']//label[text()='N/A']

Att16_EN
    [Arguments]    ${Check_Attri16_EN}
    Element Should Contain    //*[@name='Question_21_0_0'][@language='English']    ${Check_Attri16_EN}
    Page Should Contain Element    //div[@name='page7_03']//label[text()='N/A']

Att17_EN
    [Arguments]    ${Check_Attri17_EN}
    Element Should Contain    //*[@name='Question_22_0_0'][@language='English']    ${Check_Attri17_EN}
    Page Should Contain Element    //div[@name='page7_04']//label[text()='N/A']

Att18_EN
    [Arguments]    ${Check_Attri18_EN}
    Element Should Contain    //*[@name='Question_23_0_0'][@language='English']    ${Check_Attri18_EN}

Att19_EN
    [Arguments]    ${Check_Attri19_EN}
    Element Should Contain    //*[@name='Question_24_0_0'][@language='English']    ${Check_Attri19_EN}
    Element Should Contain    //*[@name='Answer_24_0_0_0']    Yes
    Element Should Contain    //*[@name='Answer_24_0_0_1']    No

Att20_EN
    [Arguments]    ${Check_Attri20_EN}
    Element Should Contain    //*[@name='Question_25_0_0'][@language='English']    ${Check_Attri20_EN}
    Element Should Contain    //*[@name='Answer_25_0_0_0']    Yes
    Element Should Contain    //*[@name='Answer_25_0_0_1']    No

Att21_EN
    [Arguments]    ${Check_Attri21_EN}
    Element Should Contain    //*[@name='Question_26_0_0'][@language='English']    ${Check_Attri21_EN}

Att22_EN
    [Arguments]    ${Check_Attri22_EN}
    Element Should Contain    //*[@name='Question_27_0_0'][@language='English']    ${Check_Attri22_EN}
    Page Should Contain Element    //div[@name='page8_05']//label[text()='N/A']

Att23_EN
    [Arguments]    ${Check_Attri23_EN}
    Element Should Contain    //*[@name='Question_28_0_0'][@language='English']    ${Check_Attri23_EN}
    Element Should Contain    //*[@name='Answer_28_0_0_0']    Yes
    Element Should Contain    //*[@name='Answer_28_0_0_1']    No

Att24_EN
    [Arguments]    ${Check_Attri24_EN}
    Element Should Contain    //*[@name='Question_29_0_0'][@language='English']    ${Check_Attri24_EN}

Att25_EN
    [Arguments]    ${Check_Attri25_EN}
    Element Should Contain    //*[@name='Question_30_0_0'][@language='English']    ${Check_Attri25_EN}

Att26_EN
    [Arguments]    ${Check_Attri26_EN}
    Element Should Contain    //*[@name='Question_31_0_0'][@language='English']    ${Check_Attri26_EN}

Att27_EN
    [Arguments]    ${Check_Attri27_EN}
    Element Should Contain    //*[@name='Question_32_0_0'][@language='English']    ${Check_Attri27_EN}

Att28_EN
    [Arguments]    ${Check_Attri28_EN}
    Element Should Contain    //*[@name='Question_33_0_0'][@language='English']    ${Check_Attri28_EN}
    Element Should Contain    //*[@name='Answer_33_0_0_0']    Yes
    Element Should Contain    //*[@name='Answer_33_0_0_1']    No

Att42_EN
    [Arguments]    ${Check_Attri42_EN}
    Element Should Contain    //*[@name='Question_34_0_0'][@language='English']    ${Check_Attri42_EN}
    #Element Should Contain    //*[@name='Question_34_0_0'][@language='English']    ${Check_Attri42_EN2}

Att43_EN
    [Arguments]    ${Check_Attri43_EN}
    Element Should Contain    //*[@name='Question_35_0_0'][@language='English']    ${Check_Attri43_EN}

Att44_EN
    [Arguments]    ${Check_Attri44_EN}
    Element Should Contain    //*[@name='Question_36_0_0'][@language='English']    ${Check_Attri44_EN}

Att45_EN
    [Arguments]    ${Check_Attri45_EN}
    Element Should Contain    //*[@name='Question_37_0_0'][@language='English']    ${Check_Attri45_EN}

Att46_EN
    [Arguments]    ${Check_Attri46_EN}
    Element Should Contain    //*[@name='Question_38_0_0'][@language='English']    ${Check_Attri46_EN}

Att47_EN
    [Arguments]    ${Check_Attri47_EN}
    Element Should Contain    //*[@name='Question_39_0_0'][@language='English']    ${Check_Attri47_EN}

Att48_EN
    [Arguments]    ${Check_Attri48_EN}
    Element Should Contain    //*[@name='Question_40_0_0'][@language='English']    ${Check_Attri48_EN}

Att49_EN
    [Arguments]    ${Check_Attri49_EN}
    Element Should Contain    //*[@name='Question_41_0_0'][@language='English']    ${Check_Attri49_EN}

OA_Suggession_EN
    [Arguments]    ${Check_OA_SugMDP_EN}
    Element Should Contain    //*[@name='Question_42_0_0'][@language='English']    ${Check_OA_SugMDP_EN}
    Page Should Contain Element    name=q_suggestion_mdp

Att50_EN
    [Arguments]    ${Check_Attri50_EN}
    Element Should Contain    //*[@name='Question_43_0_0'][@language='English']    ${Check_Attri50_EN}
    Element Should Contain    //*[@name='Answer_43_0_0_0']    Resales
    Element Should Contain    //*[@name='Answer_43_0_0_1']    Leasing

Att51_EN
    [Arguments]    ${Check_Attri51_EN}
    Element Should Contain    //*[@name='Question_44_0_0'][@language='English']    ${Check_Attri51_EN}

Att52_EN
    [Arguments]    ${Check_Attri52_EN}
    Element Should Contain    //*[@name='Question_45_0_0'][@language='English']    ${Check_Attri52_EN}

Att53_EN
    [Arguments]    ${Check_Attri53_EN}
    Element Should Contain    //*[@name='Question_46_0_0'][@language='English']    ${Check_Attri53_EN}

Att54_EN
    [Arguments]    ${Check_Attri54_EN}
    Element Should Contain    //*[@name='Question_47_0_0'][@language='English']    ${Check_Attri54_EN}

Att55_EN
    [Arguments]    ${Check_Attri55_EN}
    Element Should Contain    //*[@name='Question_48_0_0'][@language='English']    ${Check_Attri55_EN}

Att56_EN
    [Arguments]    ${Check_Attri56_EN}
    Element Should Contain    //*[@name='Question_49_0_0'][@language='English']    ${Check_Attri56_EN}
    Element Should Contain    //*[@name='Answer_49_0_0_0']    Yes
    Element Should Contain    //*[@name='Answer_49_0_0_1']    No

Profile1_EN
    [Arguments]    ${Check_Profile1_EN}
    Element Should Contain    //*[@name='Question_1_0_0'][@language='English']    ${Check_Profile1_EN}
    Element Should Contain    ${ChoiceP1_1}    Less than 40,000 THB
    Element Should Contain    ${ChoiceP1_2}    40,001 - 70,000 THB
    Element Should Contain    ${ChoiceP1_3}    70,001 - 100,000 THB
    Element Should Contain    ${ChoiceP1_4}    100,001 - 130,000 THB
    Element Should Contain    ${ChoiceP1_5}    130,001 - 160,000 THB
    Element Should Contain    ${ChoiceP1_6}    160,001 - 200,000 THB
    Element Should Contain    ${ChoiceP1_7}    200,001 - 500,000 THB
    Element Should Contain    ${ChoiceP1_8}    500,001 - 1,000,000 THB
    Element Should Contain    ${ChoiceP1_9}    More than 1,000,000 THB

Profile2_EN
    [Arguments]    ${Check_Profile2_EN}
    Element Should Contain    //*[@name='Question_2_0_0'][@language='English']    ${Check_Profile2_EN}
    Element Should Contain    ${ChoiceP2_1}    Business owner
    Element Should Contain    ${ChoiceP2_2}    State Enterprise Employee
    Element Should Contain    ${ChoiceP2_3}    Office Employee
    Element Should Contain    ${ChoiceP2_4}    Government Official
    Element Should Contain    ${ChoiceP2_5}    Lawyer
    Element Should Contain    ${ChoiceP2_6}    Doctor
    Element Should Contain    ${ChoiceP2_7}    Engineer
    Element Should Contain    ${ChoiceP2_8}    Freelance
    Element Should Contain    ${ChoiceP2_9}    Housewife
    Element Should Contain    ${ChoiceP2_10}    Student
    Element Should Contain    ${ChoiceP2_11}    Others, please specify
    Page Should Contain Element    //*[@name='dm2_11_oa']
    Page Should Contain Element    //div[@name='page2']//span[@class='btn next'][text()='Next']

Profile3_EN
    [Arguments]    ${Check_Profile3_EN}
    Element Should Contain    //*[@name='Question_3_0_0'][@language='English']    ${Check_Profile3_EN}
    Element Should Contain    ${ChoiceP3_1}    Close to workplace
    Element Should Contain    ${ChoiceP3_2}    Close to my home
    Element Should Contain    ${ChoiceP3_3}    Close to school/university
    Element Should Contain    ${ChoiceP3_4}    Easy to commute
    Element Should Contain    ${ChoiceP3_5}    For investment
    Element Should Contain    ${ChoiceP3_6}    Good design
    Element Should Contain    ${ChoiceP3_7}    Pet-friendly
    Element Should Contain    ${ChoiceP3_8}    Reasonable price
    Page Should Contain Element    //div[@name='page3']//span[@class='btn next'][text()='Next']

Adhoc1_EN
    [Arguments]    ${Check_Adhoc_EN}
    Element Should Contain    //*[@name='Question_4_0_0'][@language='English']    ${Check_Adhoc_EN}
    Element Should Contain    ${ChoiceA4_1}    Spend time with your pet
    Element Should Contain    ${ChoiceA4_2}    Watch movie at cinema
    Element Should Contain    ${ChoiceA4_3}    Watch dramas online i.e. Netflix
    Element Should Contain    ${ChoiceA4_4}    Shopping
    Element Should Contain    ${ChoiceA4_5}    Exercise/ Fitness
    Element Should Contain    ${ChoiceA4_6}    Spa
    Element Should Contain    ${ChoiceA4_7}    Domestic travel
    Element Should Contain    ${ChoiceA4_8}    Overseas travel
    Element Should Contain    ${ChoiceA4_9}    Café hopping/ taking photos
    Element Should Contain    ${ChoiceA4_10}    Cooking
    Element Should Contain    ${ChoiceA4_11}    Join event i.e. concert, stage play, art exhibition
    Element Should Contain    ${ChoiceA4_12}    Plant a tree/ Docorate house
    Element Should Contain    ${ChoiceA4_13}    Go to co-working space/ read a book
    Element Should Contain    ${ChoiceA4_14}    Hangout

Media_EN
    [Arguments]    ${Check_Media_EN}
    Element Should Contain    //*[@name='Question_5_0_0'][@language='English']    ${Check_Media_EN}
    Element Should Contain    ${ChoiceM_1}    Billboard
    Element Should Contain    ${ChoiceM_2}    Event
    Element Should Contain    ${ChoiceM_3}    Walk pass site
    Element Should Contain    ${ChoiceM_4}    Street signage
    Element Should Contain    ${ChoiceM_5}    BTS/MRT Advertising
    Element Should Contain    ${ChoiceM_6}    TV Commercial
    Element Should Contain    ${ChoiceM_7}    Radio
    Element Should Contain    ${ChoiceM_8}    SMS
    Element Should Contain    ${ChoiceM_9}    Website, please specify
    Page Should Contain Element    name=media_9_oa
    Element Should Contain    ${ChoiceM_10}    Social media
    Element Should Contain    ${ChoiceM_11}    Print media
    Element Should Contain    ${ChoiceM_12}    E-Newsletter
    Element Should Contain    ${ChoiceM_13}    Referred by existing Major customer
    Element Should Contain    ${ChoiceM_14}    Agent
    Element Should Contain    ${ChoiceM_15}    Others, please specify
    Page Should Contain Element    name=media_15_oa
    Page Should Contain Element    //div[@name='page5']//span[@class='btn next'][text()='Next']

Reward Condition_EN
    [Arguments]    ${CheckRewardEN}    ${CheckRewardEN_1}    ${CheckRewardEN_2}    ${CheckRewardEN_3}    ${CheckRewardEN_4}    ${CheckRewardEN_5}
    ...    ${CheckRewardEN_6}    ${CheckRewardEN_7}    ${CheckRewardEN_8}    ${CheckRewardEN_9}    ${CheckQuestionReward_EN}    ${Opt_in_rewardYes_EN}
    ...    ${Opt_in_rewardNo_EN}
    Element Should Contain    //*[@name='Title_6_0'][@language='English']    ${CheckRewardEN}
    Element Should Contain    //*[@language='English']//label[@name='br1']    ${CheckRewardEN_1}
    Element Should Contain    //*[@language='English']//label[@name='br2']    ${CheckRewardEN_2}
    Element Should Contain    //*[@language='English']//label[@name='br3']    ${CheckRewardEN_3}
    Element Should Contain    //*[@language='English']//label[@name='br4']    ${CheckRewardEN_4}
    Element Should Contain    //*[@language='English']//label[@name='br5']    ${CheckRewardEN_5}
    Element Should Contain    //*[@language='English']//label[@name='br6']    ${CheckRewardEN_6}
    Element Should Contain    //*[@language='English']//label[@name='br7']    ${CheckRewardEN_7}
    Element Should Contain    //*[@language='English']//label[@name='br8']    ${CheckRewardEN_8}
    Element Should Contain    //*[@language='English']//label[@name='br9']    ${CheckRewardEN_9}
    Element Should Contain    //*[@name='Question_6_0_0'][@language='English']    ${CheckQuestionReward_EN}
    Element Should Contain    name=Answer_6_0_0_0    ${Opt_in_rewardYes_EN}
    Element Should Contain    name=Answer_6_0_0_1    ${Opt_in_rewardNo_EN}

Tel Opt-in_EN
    [Arguments]    ${Opt_in_tel_EN1}    ${Opt_in_tel_EN2}
    Element Should Contain    //*[@name='Question_7_0_0'][@language='English']    ${Opt_in_tel_EN1}
    Element Should Contain    //*[@language='English']//label[@name='tel_1']    ${Opt_in_tel_EN2}
    Page Should Contain Element    name=opt_in_tel
    Page Should Contain Element    //div[@name='page7']//span[@class='btn next'][text()='Next']

Ending_EN
    [Arguments]    ${QN_Ending_EN}
    Element Should Contain    css=#survey #endMessage [language='English']    ${QN_Ending_EN}
