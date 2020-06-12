*** Settings ***
Library           Selenium2Library

*** Variables ***
${Linksurvey1}    https://s-atv-staging.bizcuitvoc.com/SandboxFullLoopN/?ivCount=1&ivVal_1=1&ivIdx_1=21
${SCORE_9}        xpath=//span[text()='6']
${Checkintro}     ขอขอบคุณที่มาเลือกใช้บริการที่ Spring Diamond ในวันนี้ ทางเราขอทราบความคิดเห็นในการมาช้อปปิ้งครั้งนี้ บริษัทจะนำข้อมูลนี้ไปใช้พัฒนาการให้บริการต่อไปในอนาคตค่ะ
${Checkintro2}    เพียงแสดงความคิดเห็นในการช้อปปิ้งครั้งนี้ ครบทุกข้อ ก็มีสิทธิลุ้นช้อปฟรี 500 บาท
${Browser}        firefox
${btn_start}      xpath=//*[@class="btn start"]
${CheckquestionCSAT_TH}    โดยรวมแล้วคุณพึงพอใจมากน้อยแค่ไหน ในการมาซื้อเครื่องประดับที่ Spring Diamond ในครั้งนี้คะ?
${OA_CSATPos}     เราดีใจที่คุณประทับใจในบริการของเราในครั้งนี้ ไม่ทราบว่าคุณพอจะบอกได้ไหมคะ ว่าอะไรที่ทำให้คุณพึงพอใจเพื่อที่เราจะได้พัฒนาบริการของเราให้ดียิ่งขึ้นค่ะ
${btn_next}       xpath=//*[@class="btn next"]
${CheckquestionCES_TH}    คุณคิดว่า Spring Diamond ทำให้การซื้อเครื่องประดับเป็นเรื่องง่ายสำหรับคุณมากน้อยแค่ไหนคะ?
${SCORE_CES}      xpath=/html/body/div[2]/div[2]/div[1]/div[4]/div[3]/div/div[2]/div[3]/div/div/div/div[2]/label[10]/span/span
${CheckquestionRP_TH}    คุณมีแนวโน้มจะกลับมาซื้อเครื่องประดับที่ Spring Diamond มากน้อยแค่นั้นไหนคะ?
${SCORE_RP}       xpath=/html/body/div[2]/div[2]/div[1]/div[4]/div[4]/div/div[2]/div[3]/div/div/div/div[2]/label[7]/span
${CheckquestionNPS_TH}    หากมีคนที่กำลังสนใจเครื่องประดับของ Spring Diamond มาปรึกษาว่า ซื้อเครื่องประดับที่ Spring Diamond ดีหรือไม่ คุณมีแนวโน้มที่จะแนะนำในระดับใดคะ?
${SCORE_NPS}      xpath=/html/body/div[2]/div[2]/div[1]/div[4]/div[5]/div/div[2]/div[3]/div/div/div/div[2]/label[10]/span
${Checkquestion_Optin_con_TH}    Spring Diamond อาจติดต่อกลับเพื่อสอบถามข้อมูลเพิ่มเติม เพื่อพัฒนาผลิตภัณฑ์และบริการให้ตอบโจทย์ยิ่งขึ้น คุณยินดีให้เราติดต่อกลับหรือไม่คะ?
${Opt_in_Yes}     xpath=/html/body/div[2]/div[2]/div[1]/div[4]/div[6]/div/div[2]/div[3]/div[1]/div/label/span[1]
${Opt_in_No}      xpath=/html/body/div[2]/div[2]/div[1]/div[4]/div[6]/div/div[2]/div[3]/div[2]/div/label/span[1]
${Next_footer}    xpath=//*[@class="icon fl-fl-chevron-right"]
${Back_footer}    xpath=//*[@class="icon fl-fl-chevron-left"]
${CheckquesProvince_TH}    ไม่ทราบว่าคุณเข้ามาใช้บริการเคาน์เตอร์ Spring Diamond ที่จังหวัดไหนคะ?
${Province}       xpath=//option[@value="d3e0ec6f-23b8-4e41-8dc9-365b951b26ef"]
${CheckquesBranch_TH}    แล้วสาขาที่คุณเข้ามาใช้บริการในวันนี้คือสาขาอะไรคะ?
${Branch}         xpath=//option[@value="7fb4d9c6-dbe1-4eef-aa3f-67c828652f99"]
${TWOSECOND}      2.0
${CheckquesDateTime_TH}    กรุณาระบุช่วงเวลาที่คุณเข้ามาใช้บริการที่สาขานี้ด้วยค่ะ
${DateTimePicker}    xpath=//*[@id="f2ca22c3-d5b2-4e81-b093-045726692817"]
${CheckquesQ1_TH}    คุณรู้สึกประทับใจที่ได้รับการต้อนรับอย่างอบอุ่นจากพนักงาน มากน้อยแค่ไหน?
${CheckquesQ2_TH}    พนักงานขายให้คำปรึกษาได้อย่างผู้เชี่ยวชาญ มากน้อยแค่ไหน?
${CheckquesQ3_TH}    พนักงานขายสามารถอธิบายถึงจุดเด่นของ Spring Diamond จนทำให้คุณสามารถเข้าใจความต่างกับยี่ห้ออื่นได้มากน้อยแค่ไหน?
${CheckquesQ4_TH}    สินค้าที่มีให้เลือก ณ จุดขาย มีความหลากหลายเพียงพอกับความต้องการ มากน้อยแค่ไหน?
${CheckquesQ5_TH}    ราคาและโปรโมชั่น มีความน่าสนใจ ตรงกับความต้องการของคุณ มากน้อยแค่ไหน?
${SCORE_Q1}       xpath=/html/body/div[2]/div[2]/div[1]/div[4]/div[10]/div/div[2]/div[3]/div/div/div/div[2]/label[9]/span
${SCORE_Q2}       xpath=/html/body/div[2]/div[2]/div[1]/div[4]/div[11]/div/div[2]/div[4]/div/div/div/div[2]/label[7]/span
${SCORE_Q3}       xpath=/html/body/div[2]/div[2]/div[1]/div[4]/div[12]/div/div[2]/div[3]/div/div/div/div[2]/label[11]/span
${CheckquesMedia}    ในการซื้อครั้งนี้ คุณเข้ามาที่ร้านของเราจากการเห็นสื่อหรือการติดต่อมาจากช่องทางไหนบ้างคะ?
${Choice_Newspaper_TH}    name:Answer_15_0_0_0
${Choice_DirectMail_TH}    name:Answer_15_0_0_1
${Choice_Instagram_TH}    name:Answer_15_0_0_2
${Choice_Facebook_TH}    name:Answer_15_0_0_3
${Choice_Line_TH}    name:Answer_15_0_0_4
${Choice_wwwSP_TH}    name:Answer_15_0_0_5
${CheckquesSug_TH}    สุดท้ายนี้ กรุณาระบุข้อเสนอแนะเพิ่มเติม เพื่อให้เรานำไปปรับปรุงการบริการของเรา (ถ้ามี)
${Checkques_inform_TH}    ขอทราบข้อมูลของคุณเพิ่มเติมด้วยค่ะ
${Checkques_informGender_TH}    เพศ
${Gender_Women_TH}    name:Answer_17_0_0_0
${Gender_Man_TH}    name:Answer_17_0_0_1
${InformAge1_TH}    name:Answer_17_0_1_0
${InformAge2_TH}    name:Answer_17_0_1_1
${InformAge3_TH}    name:Answer_17_0_1_2
${InformAge4_TH}    name:Answer_17_0_1_3
${Marital1_TH}    name:Answer_17_0_2_0
${Marital2_TH}    name:Answer_17_0_2_1
${Marital3_TH}    name:Answer_17_0_2_2
${LinksurveyNonInProdQR1}    https://s.bizcuitvoc.com/SandboxFullLoopN/?ivCount=1&ivVal_1=1&ivIdx_1=21
${OA_CSATNeg}     เราต้องขออภัยคุณลูกค้าเป็นอย่างยิ่ง ที่เกิดเหตุการณ์ไม่ประทับใจขึ้น คุณช่วยเล่าเหตุการณ์ที่เกิดขึ้นให้เราทราบ โดยละเอียด เพื่อที่เราจะได้เร่งแก้ไขอย่างเร่งด่วนค่ะ
${SCORE_3}        xpath=//span[text()='3']
${Checkques_informAge_TH}    อายุ
${Checkques_informMarital_TH}    สถานะการสมรส
${Checkques_informOccupation_TH}    อาชีพ
${Checkques_informMonthly_TH}    รายได้ส่วนตัวเฉลี่ยต่อเดือน
${Occupation1_TH}    name:Answer_18_0_0_0
${Occupation2_TH}    name:Answer_18_0_0_1
${Occupation3_TH}    name:Answer_18_0_0_2
${Occupation4_TH}    name:Answer_18_0_0_3
${Occupation5_TH}    name:Answer_18_0_0_4
${Occupation6_TH}    name:Answer_18_0_0_5
${Monthly1_TH}    name:Answer_18_0_1_0
${Monthly2_TH}    name:Answer_18_0_1_1
${Monthly3_TH}    name:Answer_18_0_1_2
${Monthly4_TH}    name:Answer_18_0_1_3
${Checkques_page10_TH}    กรุณากรอก ชื่อ-นามสกุล และ เบอร์โทรที่สามารถติดต่อได้หากคุณได้รับรางวัลค่ะ
${Checkques_page10-1_TH}    (ขอสงวนสิทธิ์ มีสิทธิ์ลุ้นรางวัลเฉพาะ คนที่กรอกแบบสอบถามครบถ้วนเท่านั้น)
${Checklucky_drawTH}    รายละเอียดกิจกรรมส่งเสริมการขาย
${Checklucky_drawTH1}    ลุ้นช้อปฟรี 500 บาท เมื่อตอบแบบสอบถาม
${Checklucky_drawTH2}    ระยะเวลาจัดรายการ วันที่ 1 กรกฏาคม 2563 - 30 มิถุนายน 2564
${Checklucky_drawTH3}    - รอบที่ 1 : 1 กรกฏาคม - 30 กันยายน 2563
${Checklucky_drawTH4}    - รอบที่ 2 : 1 ตุลาคม - 31 ธันวาคม 2563
${Checklucky_drawTH5}    - รอบที่ 3 : 1 มกราคม - 31 มีนาคม 2564
${Checklucky_drawTH6}    - รอบที่ 4 : 1 เมษายน - 30 มิถุนายน 2564
${Checklucky_drawTH7}    รายละเอียดของรางวัล**
${Checklucky_drawTH8}    รหัสช้อปฟรีมูลค่า 500 บาท 1,200 รางวัล รวมมูลค่า 600,000 บาท (รอบละ 300 รางวัล)
${CheckparticipTH_1}    เงื่อนไขการชิงโชค
${CheckparticipTH_2}    1. ผู้เข้าร่วมกิจกรรมต้องตอบแบบสอบถามด้วยข้อมูลที่ถูกต้องและต้องตอบแบบสอบถามให้ครบถ้วน ผ่าน https://fullloop.co.th/(UNIQUE_PATH)
${CheckparticipTH_3}    2. สิทธิ์ในการลุ้นรางวัลจะถูกบันทึกในระบบอัตโนมัติ และเมื่อสิ้นสุดวันตอบแบบสอบถามในแต่ละรอบ บริษัทฯ จะจัดพิมพ์ชื่อ และเบอร์โทรฯ ตามที่ระบุไว้ ที่ได้รับสิทธิ์ออกมาจากระบบตัดเป็นชิ้นส่วน
${CheckparticipTH_4}    3. สถานที่จับรางวัลSpring Diamond สำนักงานใหญ่ ต่อหน้าพยานและคณะกรรมการตัดสิน
${CheckparticipTH_5}    4. วันที่จับรางวัล
${CheckparticipTH_6}    - รอบที่ 1 : จับรางวัลวันที่ 10 ตุลาคม 2563 เวลา 11.00น. จำนวน 300 รางวัล
${CheckparticipTH_7}    - รอบที่ 2 : จับรางวัลวันที่ 10 มกราคม 2563 เวลา 11.00น. จำนวน 300 รางวัล
${CheckparticipTH_8}    - รอบที่ 3 : จับรางวัลวันที่ 10 เมษายน 2564 เวลา 11.00น. จำนวน 300 รางวัล
${CheckparticipTH_9}    - รอบที่ 4 : จับรางวัลวันที่ 10 กรกฏาคม 2564 เวลา 11.00น. จำนวน 300 รางวัล
${CheckparticipTH_10}    5. ประกาศรายชื่อผู้โชคดี 4 รอบ ผ่านทาง www.Facebook.com
${CheckparticipTH_11}    - รอบที่ 1 : วันที่ 15 ตุลาคม 2563
${CheckparticipTH_12}    - รอบที่ 2 : วันที่ 15 มกราคม 2563
${CheckparticipTH_13}    - รอบที่ 3 : วันที่ 15 เมษายน 2564
${CheckparticipTH_14}    - รอบที่ 4 : วันที่ 15 กรกฏาคม 2564
${CheckparticipTH_15}    และจะแจ้งให้ผู้โชคดีที่ได้รับรางวัลทราบทางหมายเลขโทรศัพท์มือถือ ตามที่ระบุไว้ หากติดต่อไม่ได้ภายในระยะเวลา 5 วัน หลังจากประกาศรายชื่อผู้โชคดี ทาง www.Facebook.com ให้ถือว่าผู้โชคดียินยอมที่จะสละสิทธิ์ไม่ขอรับรางวัลใดๆทั้งสิ้น
${CheckparticipTH_16}    6. หลังจากบริษัทฯ ไปแจ้งทางโทรศัพท์มือถือแล้ว ผู้โชคดีจะได้รับ SMS ที่มี รหัสช้อปฟรี 500 บาท ทางโทรศัพท์มือถือตามหมายเลขโทรศัพท์ที่ผู้โชคดีได้ให้ไว้
${CheckparticipTH_17}    7. ผู้โชคดีมีสิทธิ์ได้รับรางวัล จำกัด 1 สิทธิ์/คน/รอบ
${CheckparticipTH_18}    8. ผู้ได้รับรางวัลจะต้องทำตามกติกาครบถ้วนเท่านั้น ผู้ที่ไม่ทำตามกฏและกติกา ทางบริษัทฯจะถือเป็นโมฆะ และปฏิเสธการให้รางวัลโดยไม่ต้องแจ้งให้ทราบล่วงหน้า
${CheckparticipTH_19}    9. รางวัลไม่สามารถเปลี่ยนเป็นเงินสดและไม่สามารถโอนสิทธิ์ให้กับผู้อื่นได้
${CheckparticipTH_20}    10. บริษัทฯ ขอสงวนสิทธิ์ในการจับรางวัลสำรองเพื่อทดแทน ในกรณีผู้ที่ได้รับรางวัลมีคุณสมบัติไม่ครบถ้วนตามเงื่อนไขที่กำหนด หรือบริษัทฯ ไม่สามารถติดต่อผู้ที่ได้รับรางวัลได้ หรือมีการสละสิทธิ์
${CheckparticipTH_21}    11. บริษัทฯ ขอสงวนสิทธิในการเปลี่ยนแปลงของรางวัล หรือเงื่อนไขการชิงโชค โดยไม่ต้องแจ้งให้ทราบล่วงหน้า และการตัดสินของคณะกรรมการถือเป็นเด็ดขาด และสิ้นสุด
${CheckparticipTH_22}    12. บริษัทฯ มีสิทธิ์ในการปฏิเสธ ยกเลิก หรือหยุดกิจกรรม ดังกล่าวได้โดยชอบธรรมและไม่จำเป็นต้องแจ้งให้ทราบล่วงหน้า
${CheckparticipTH_23}    13. บริษัทฯ มีสิทธิ์ในการนำชื่อ นามสกุล และรายละเอียดอื่นใดของผู้ที่ได้รับรางวัล ทั้งภาพและเสียงออกเผยแพร่โฆษณาประชาสัมพันธ์ และ/หรือนำไปใช้เพื่อการอื่นเพื่อประโยชน์สำหรับธุรกิจตามที่บริษัทฯ เห็นสมควรโดยไม่ต้องจ่ายค่าตอบแทนใดๆ ให้แก่ผู้ที่ได้รับรางวัล โดยผู้ที่ได้รับรางวัลไม่มีสิทธิ์เรียกร้องให้ได้มาซึ่งค่าตอบแทนเพิ่มเติมใดๆ ทั้งสิ้น
${CheckparticipTH_24}    14. พนักงานและบุคคลในครอบครัวของ บริษัท Spring Diamond ซูเปอร์เซ็นเตอร์ จำกัด (มหาชน), บริษัทในเครือและบริษัทที่เกี่ยวข้องไม่มีสิทธิ์ ร่วมรายการชิงโชค
${CheckparticipTH_25}    15. สอบถามรายละเอียดเพิ่มเติม ณ จุดบริการลูกค้า
${CheckrewardTH_1}    เงื่อนไขการใช้รหัสช้อปฟรี
${CheckrewardTH_2}    1. กรุณาแสดง SMS ที่มีรหัสช้อปฟรีแก่พนักงานก่อนการชำระเงิน
${CheckrewardTH_3}    2. ผู้โชคดีคลิก Link จาก SMS ที่ได้รับ และกดใช้รหัสช้อปฟรีต่อหน้าพนักงานที่เลนแคชเชียร์ โดยต้องใช้ภายใน 20 นาที นับแต่เวลาที่ผู้โชคดีกดใช้รหัส (สามารถกดใช้รหัสได้เพียงครั้งเดียวเท่านั้น)
${CheckrewardTH_4}    3. รหัสช้อปฟรีนี้ใช้เป็นส่วนลดในใบเสร็จเดียวกัน (หลังหักส่วนลด สินค้ายกเว้น คูปองต่างๆ และไม่สามารถรวมใบเสร็จได้) (สินค้ายกเว้นได้แก่ บัตรกำนัล, บุหรี่, เครื่องดื่มแอลกอฮอล์, เครื่องดื่มชูกำลังแบบแพ็ค, กาแฟกระป๋องแบบแพ็ค, นมผงดัดแปลงสำหรับทารก และนมผงดัดแปลงสูตรต่อเนื่องสำหรับทารกเด็กเล็ก,บัตรหรือรหัสเติมเงินมือถือ, แว่นตาที่ซื้อจากร้านแว่นตา,สินค้าเงินผ่อน, ลูกค้าประเภทค้าส่ง, สินค้าจากพลาซ่าและศูนย์อาหาร)
${CheckrewardTH_5}    4. รหัสช้อปฟรีนี้ใช้เป็นส่วนลดได้ที่Spring Diamond และSpring Diamondมาร์เก็ตเท่านั้น ยกเว้นมินิSpring Diamond
${CheckrewardTH_6}    5. รหัสช้อปฟรีนี้ไม่สามารถแลกเปลี่ยนหรือทอนเป็นเงินสดได้
${CheckrewardTH_7}    6. ระยะเวลาในการใช้รหัสช้อปฟรี
${CheckrewardTH_8}    - ผู้โชคดีที่ได้รับรางวัลรหัสช้อปฟรี รอบที่ 1 สามารถใช้รหัสช้อปฟรีได้จนถึงวันที่ 20 พฤศจิกายน 2560
${CheckrewardTH_9}    - ผู้โชคดีที่ได้รับรางวัลรหัสช้อปฟรี รอบที่ 2 สามารถใช้รหัสช้อปฟรีได้จนถึงวันที่ 20 กุมภาพันธ์ 2561
${CheckrewardTH_10}    - ผู้โชคดีที่ได้รับรางวัลรหัสช้อปฟรี รอบที่ 3 สามารถใช้รหัสช้อปฟรีได้จนถึงวันที่ 20 พฤษภาคม 2561
${CheckrewardTH_11}    - ผู้โชคดีที่ได้รับรางวัลรหัสช้อปฟรี รอบที่ 4 สามารถใช้รหัสช้อปฟรีได้จนถึงวันที่ 20 สิงหาคม 2561
${CheckrewardTH_12}    7. กรณีลูกค้าขอคืนสินค้าที่ใช้รหัสช้อปฟรีเป็นส่วนลดแล้ว ลูกค้าจะได้รับเงินคืนเฉพาะส่วนที่ชำระจริงด้วยเงินสด / บัตรเครดิต / บัตรเดบิต เท่านั้น (ทั้งนี้ ลูกค้าผู้โชคดีจะไม่ได้รหัสช้อปฟรีคืน)
${CheckrewardTH_13}    8. ส่วนลดจากการใช้รหัสช้อปฟรีจะไม่นำมาคำนวณเป็นยอดซื้อสะสม
${CheckrewardTH_14}    9. ไม่สามารถใช้ร่วมกับคูปองส่วนลดอื่น
${CheckrewardTH_15}    10. ยกเว้นการซื้อผ่าน Shopping Online
${CheckrewardTH_16}    11. บริษัทฯขอสงวนสิทธิ์ในการเปลี่ยนแปลงรายละเอียดหรือเงื่อนไข โดยมิต้องแจ้งให้ทราบล่วงหน้า
${Checkques_Optin_reward_TH}    คุณอ่าน และ ยอมรับเงื่อนไขการชิงโชคนี้หรือไม่คะ?
${Opt_in_reward_Yes}    xpath=/html/body/div[2]/div[2]/div[1]/div[4]/div[18]/div/div[2]/div[3]/div[1]/div/label/span[1]
${Opt_in_reward_No}    xpath=/html/body/div[2]/div[2]/div[1]/div[4]/div[18]/div/div[2]/div[3]/div[2]/div/label/span[1]
${Choice_Banner_TH}    name:Answer_15_0_0_6
${Choice_ConSpringDia_TH}    name:Answer_15_0_0_7
${Choice_WalkPass_TH}    name:Answer_15_0_0_8
${Choice_Friends_TH}    name:Answer_15_0_0_9
${Choice_OtherOA_TH}    name:Answer_15_0_0_11
${Linksurvey2}    https://s-atv-staging.bizcuitvoc.com/SandboxFullLoopN/?ivCount=1&ivVal_1=2&ivIdx_1=21
${CheckEnd01_TH}    ขอบคุณที่สละเวลาแสดงความคิดเห็น ทาง Spring Diamond จะนำไปปรับปรุงและพัฒนาคุณภาพการให้บริการต่อไปค่ะ
${CheckEnd01_EN}    Thank you for your feedback. Spring Diamond will use your feedback for future improvement.
${CheckEnd02_TH}    กรุณาโชว์คูปองนี้ เพื่อใช้เป็นส่วนลดในการซื้อครั้งถัดไปที่เคาน์เตอร์ Spring Diamond ทุกสาขาค่ะ
${CheckEnd02_EN}    Please show this coupon at any Spring Diamond store to get the discount on your next purchase.
${locator_language}    xpath=//select[@id="g_language"]
${Language_TH}    Thai
${Language_EN}    English
${CheckquestionCSAT_EN}    From your experience in shopping with Spring Diamond this time, how satisfied are you with overall shopping experience at Spring Diamond?
${OA_CSATPos_EN}    We are happy to know that you are happy with your shopping experience, could you tell us what makes you satisfied with this shopping trip?
${OA_CSATNeg_EN}    We are sorry to hear that you did not have a delightful shopping experience. Could you tell us what made you dissatisfied?
${CheckquestionCES_EN}    How much do you think Spring Diamond make shopping easy for you?
${CheckquestionRP_EN}    How likely would you repeat your purchase with Spring Diamond?
${CheckquestionNPS_EN}    On the scale of 0-10, to what extent would you recommend others to come and shop at Spring Diamond?
${Checkquestion_Optin_con_EN}    In order to serve you better, do you allow we to contact you for further information?
${CheckquesProvince_EN}    Please select the provice of branch that you shop today.
${CheckquesBranch_EN}    Please identify the branch that you have the shopping experience with today.
${CheckquesDateTime_EN}    Please select the period you recieved your service.
${CheckquesQ1_EN}    To what extent do you agree that you received warm welcome from our staff?
${CheckquesQ2_EN}    To what extent do you agree that you received professional advice from our staff?
${CheckquesQ3_EN}    To what extent do you agree that our staff can explain Spring Diamond's distinctive points that make you understand the difference between our brand and others?
${CheckquesQ4_EN}    To what extent do you agree that Spring Diamond has variety of products that meet your need?
${CheckquesQ5_EN}    To what extent do you agree that price and promotions are interested and meet your need?
${CheckquesMedia_EN}    How did you get our information from when you visit Spring Diamond for shopping?
${CheckquesSug_EN}    Lastly, please provide your suggestions to improve our services (if any)
${Checkques_inform_EN}    Please provide more information.
${Checkques_informGender_EN}    Gender
${Checkques_informAge_EN}    Age
${Checkques_informMarital_EN}    Marital Status
${Checkques_informOccupation_EN}    Occupation
${Checkques_informMonthly_EN}    Monthly Personal Income
${Checkques_page10_EN}    Please provide your name-last name and telephone no., in order \ to contact you in case you won the prize.
${Checkques_page10-1_EN}    (We will only award to customer who answer the survey completely.)
${Checklucky_drawEN}    Information for lucky draw
${Checklucky_drawEN1}    Chance to win 500 Baht free shopping at Spring Diamond
${Checklucky_drawEN2}    Campaign period: 1 July 2020 - 30 June 2021
${Checklucky_drawEN3}    - Round 1: 1 July 2020 - 30 September 2020
${Checklucky_drawEN4}    - Round 2: 1 October 2020 - 31 December 2020
${Checklucky_drawEN5}    - Round 3: 1 January 2021 - 31 March 2021
${Checklucky_drawEN6}    - Round 4: 1 April 2021 - 30 June 2021
${Checklucky_drawEN7}    Detail of prize
${Checklucky_drawEN8}    1,200 codes for free shopping worth 500 Baht at Spring Diamond, total of 600,000 baht (300 prizes per round)
${CheckparticipEN_1}    Condition for participation:
${CheckparticipEN_2}    1. Participants must complete the questionnaire through https://fulllooop.co.th/(UNIQUE_PATH)
${CheckparticipEN_3}    2. Participation in lucky draw will be recorded in the survey system. At the end of each round, Company will print out name and telephone number ticket for lucky draw.
${CheckparticipEN_4}    3. Lucky draw will be done at Spring Diamond HQ with presence of witness and committee
${CheckparticipEN_5}    4. Date of lucky draw
${CheckparticipEN_6}    - Round 1: 10 October 2020, 11.00 am, total 300 prizes
${CheckparticipEN_7}    - Round 2: 10 January 2021, 11.00 am, total 300 prizes
${CheckparticipEN_8}    - Round 3: 10 April 2021, 11.00 am, total 300 prizes
${CheckparticipEN_9}    - Round 4: 10 July 2021, 11.00 am, total 300 prizes
${CheckparticipEN_10}    5. Spring Diamond will announce the winner of each round at www.Facebook.com/
${CheckparticipEN_11}    - Round 1: 15 October 2020
${CheckparticipEN_12}    - Round 2: 15 January 2021
${CheckparticipEN_13}    - Round 3: 15 April 2021
${CheckparticipEN_14}    - Round 4: 15 July 2021
${CheckparticipEN_15}    Thai Lucky Draw co,Ltd, tel. 02-9999999 will inform the winners through mobilephone number that is provided in the questionnaire. In case the winner cannot be contacted within 5 days from announcement at www.Facebook.com, Company will consider that the winner forfeit the right to claim the prize.
${CheckparticipEN_16}    6. After Thai Lucky Draw inform the winner through mobilephone, it will send SMS that contains code for 500 Baht free shopping at Spring Diamond
${CheckparticipEN_17}    7. Limit 1 prize per person per round
${CheckparticipEN_18}    8. Winner of lucky draw must comply to the terms and conditions. The company holds the right to refuse payment in case of non compliance.
${CheckparticipEN_19}    9. the prizes cannot be exchanged for cash, or transferred to other person
${CheckparticipEN_20}    10. the company holds the right to make substitute lucky draw in case the winners are not eligible, or cannot be contacted
${CheckparticipEN_21}    11. the company reserves the right to change the prizes or terms and conditions without notification in advance. Judgement from committee is considered final.
${CheckparticipEN_22}    12. The company reserves right to cancel or stop the activity without notification in advance
${CheckparticipEN_23}    13. The company holds the right to use name and other detail of the winner, including picture and sound, for advertising purpose without further payment to the winner.
${CheckparticipEN_24}    14. Spring Diamond employee and their family, company in company group, and related companies staff cannot participate in the lucky draw
${CheckparticipEN_25}    15. for more detail, please contact Customer Service Counter
${Province_Chaingmai}    xpath=//option[@value="8471bba6-e405-47b3-9b79-9d25f8596f71"]
${Branch_Chaingmai1}    xpath=//option[@value="064832fc-0e97-4174-a66a-5d80c260ab3c"]
${Branch_Chaingmai2}    xpath=//option[@value="ea507d2a-d119-4e5d-ac74-0d9d0f8451a6"]
${Province_Chonburi}    xpath=//option[@value="359b32be-c941-4446-9f7e-3c851a3c8bcb"]
${Branch_Chonburi1}    xpath=//option[@value="2c2f4540-fe65-49be-b0e8-43f494950df9"]
${Branch_Chonburi2}    xpath=//option[@value="54424a1d-987a-45da-bb02-81eeeca663dd"]
${Branch_Chonburi3}    xpath=//option[@value="bd73d5d1-76fa-4e3b-a57f-c5a939a3bdca"]
${Province_Rayong}    xpath=//option[@value="74198b21-f369-49d7-ae3a-5f3fcdc349c0"]
${Branch_Rayong1}    xpath=//option[@value="bad5815e-c092-43cb-9914-a00ea82aff30"]
${Checkintro_EN}    Thank you for shopping at Spring Diamond. In order for Spring Diamond to serve you better, we would like to hear your feedback on our services.
${Checkintro2_EN}    Just feedback all questions, you will be eligible for lucky draw for 500 Baht free shopping.
${LinksurveyNonInProdQR2}    https://s.bizcuitvoc.com/SandboxFullLoopN/?ivCount=1&ivVal_1=2&ivIdx_1=21
