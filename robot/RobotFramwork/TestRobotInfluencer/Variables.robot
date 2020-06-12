*** Settings ***
Library           Selenium2Library

*** Variables ***
${URL_Report}     http://influencer-staging.bizcuitvoc.com/
#Browser
${Browser}        Chrome
#UserPass
${Username}       test
${Password}       test
#Menu
${CampaingEva}    //button[contains(text(), 'Campaign Evaluation')]
${CampaingResults}    //button[contains(text(), 'Campaign Results')]
${InfluencerEva}    //button[contains(text(), 'Influencer Evaluation')]
${InfluencerManage}    //div[@id='gatsby-focus-wrapper']//button[contains(text(), 'Influencer Management')]
${InfluencerResults}    //button[contains(text(), 'Influencer Results')]
${UserManage}     //button[contains(text(), 'User Management')]
${UserActivities}    //button[contains(text(), 'User Activities')]
#InfluencerManage
${AddNewInfluen}    //button[contains(text(), 'Add New Influencer')]
#Page2
${CheckRewardTH}    เงื่อนไขกิจกรรม
${CheckRewardTH_1}    1. ผู้เข้าร่วมกิจกรรม 10 ท่านแรกของแต่ละเดือน และตอบแบบสอบถามด้วยข้อมูลที่ถูกต้องและครบถ้วน จึงจะได้รับรางวัลจากทางบริษัทฯ ตั้งแต่วันที่ 3 เดือนกุมภาพันธ์ 2563 ถึงวันที่ 30 เดือนมิถุนายน 2563 เท่านั้น
${CheckRewardTH_2}    2. ประกาศรายชื่อผู้ได้รับของรางวัลวันที่ 31 เดือนกรกฎาคม 2563 โดยบริษัทจะโทรติดต่อไปยังผู้ได้รับของรางวัลทางหมายเลขโทรศัพท์มือถือ ตามที่ระบุไว้
${CheckRewardTH_3}    3. หากไม่สามารถติดต่อผู้ได้รับของรางวัลได้จะถือว่าผู้ได้รับของรางวัลยินยอมที่จะสละสิทธิไม่ขอรับรางวัลใดๆทั้งสิ้น
${CheckRewardTH_4}    4. ผู้ได้รับของรางวัลมีสิทธิได้รับรางวัล จำกัด 1 สิทธิ/คน
${CheckRewardTH_5}    5. ผู้ได้รับของรางวัลจะต้องทำตามกติกาครบถ้วนเท่านั้น ผู้ที่ไม่ทำตามกฏและกติกา ทางบริษัทฯจะถือเป็นโมฆะ และปฏิเสธการให้รางวัลโดยไม่ต้องแจ้งให้ทราบล่วงหน้า
${CheckRewardTH_6}    6. รางวัลไม่สามารถเปลี่ยนเป็นเงินสดและไม่สามารถโอนสิทธิให้กับผู้อื่นได้
${CheckRewardTH_7}    7. บริษัทฯ ขอสงวนสิทธิในการเปลี่ยนแปลงของรางวัล หรือเงื่อนไขการเข้าร่วม โดยไม่ต้องแจ้งให้ทราบล่วงหน้า และการตัดสินของคณะกรรมการถือเป็นเด็ดขาด และสิ้นสุด
${CheckRewardTH_8}    8. บริษัทฯ มีสิทธิในการปฏิเสธ ยกเลิก หรือหยุดกิจกรรม ดังกล่าวได้โดยชอบธรรมและไม่จำเป็นต้องแจ้งให้ทราบ
${CheckRewardTH_9}    9. สอบถามรายละเอียดเพิ่มเติมที่ คุณณัชชารีย์ นิธิยศกุลพงษ์ 02-6641675 ต่อ 102
${CheckQuestionReward}    ข้าพเจ้าได้อ่านและยอมรับเงื่อนไขการร่วมตอบแบบสอบถามในครั้งนี้
${Opt_in_Yes_TH}    ยอมรับ
${Opt_in_No_TH}    ไม่ยอมรับ
#Page3
${CheckPleaseTel}    กรุณากรอกเบอร์โทรที่สามารถติดต่อได้หากคุณได้รับรางวัลค่ะ
${FieldTel_Input}    name=tel_opt_in
${CheckThankyou_Page}    ขอบคุณที่สละเวลาแสดงความคิดเห็น ทางเราจะนำไปปรับปรุงและพัฒนาคุณภาพการให้บริการต่อไปค่ะ
#CSAT
${CheckquestionCSAT}    จากประสบการณ์ในการ
${CheckquestionCSAT1}    ในครั้งนี้ คะแนนเต็ม 10 คุณจะให้คะแนนร้านเรากี่คะแนนคะ
${CheckCSAT_Pos}    เรารู้สึกยินดีเป็นอย่างมากที่คุณได้รับการบริการที่ถูกใจ
${CheckCSAT_Pos1}    เราอยากทราบว่าคุณชอบสิ่งไหนที่เราบริการคะ
${CheckCSAT_Neg}    เราเสียใจกับเรื่องที่เกิดขึ้นค่ะ
${CheckCSAT_Neg1}    รบกวนเล่าเหตุการณ์ให้เราฟังหน่อยนะคะ
${CheckOptinNegative}    เป็นไปได้ไหม ที่เราจะขอติดต่อกลับไปเพื่อสอบถามข้อมูลเพิ่มเติม เพื่อการพัฒนาผลิตภัณฑ์และบริการของเราให้ดีขึ้นค่ะ
#NPS
${CheckquestionNPS}    จากประสบการณ์ในการ
${CheckquestionNPS1}    ในครั้งนี้ คุณมีแนวโน้มมากแค่ไหนที่จะแนะนำบริการของเราให้กับคนที่คุณรัก?
#Attribute1
${CheckAttribute_1}    ความรวดเร็วในการทักทาย และสอบถามความต้องการของพนักงาน เมื่อท่านมาถึงร้าน อยู่ในระดับใดคะ
${ChoiceAttri1_NA}    xpath=//label[text()='ไม่มีพนักงานเข้ามาทักทาย']
#Attribute2
${CheckAttribute_2}    บุคลิกภาพ กริยา มารยาท ความสุภาพ ของพนักงานที่มาต้อนรับท่าน อยู่ในระดับใดคะ
#Attribute3
${CheckAttribute_3}    ความเอาใจใส่ของพนักงานในการรับฟังความต้องการจากท่าน อยู่ในระดับใดคะ
#Attribute4
${CheckAttribute_4}    พนักงานที่คุณติดต่อด้วยมีความรู้ด้านเทคนิคและตัวสินค้าดีแค่ไหนคะ
#Attribute5
${CheckAttribute_5}    คุณสามารถเดินเลือกดูรถในร้านได้อย่างอิสระมากน้อยแค่ไหนคะ
#Attribute6
${CheckAttribute_6}    การจัดสินค้าอื่นๆ ภายในร้าน เช่น อุปกรณ์ตกแต่งรถ ทำให้สินค้าดูน่าซื้อมากน้อยแค่ไหนคะ
#Attribute7
${CheckAttribute_7}    คุณได้รับคำแนะนำเกี่ยวกับหลักการขับขี่ปลอดภัยจากทางร้านหรือไม่คะ (การขับขี่ปลอดภัยคือ การแนะนำให้สวมหมวกกันน็อค ไม่ขับขี่เร็ว ไม่ขี่ตัดหน้า ไม่ขี้จี้ หรือดื่มไม่ขับ)
#ChoiceProfile7
${CheckAtt7_Profile1}    คุณได้รับคำแนะนำเกี่ยวกับหลักการขับขี่ปลอดภัยจากทางร้านด้วยวิธีการ หรือ ช่องทางไหนบ้างคะ
${CheckChoice1_TH}    xpath=//span[text()='พนักงานอธิบายด้วยปากเปล่า']
${CheckChoice2_TH}    xpath=//span[text()='พนักงานอธิบายด้วยโบรชัวร์/สมุดคู่มือการรับประกัน']
${CheckChoice3_TH}    xpath=//span[text()='ทางไลน์/เฟซบุ๊ค (ทางร้านเพิ่มลูกค้าทางไลน์ หรือลูกค้าเห็นทางเพจเฟซบุ๊คของทางร้านจากการเชิญเฟซบุ๊ค)']
${CheckChoice4_TH}    xpath=//span[text()='จอทีวี']
${CheckChoice5_TH}    xpath=//span[text()='จอคอมพิวเตอร์ (คอมตั้งโต๊ะ หรือโน๊ตบุ๊ค)']
${CheckChoice6_TH}    xpath=//span[text()='มือถือสมาร์ทโฟน (Smartphone)']
${CheckChoice7_TH}    xpath=//span[text()='แท็บเล็ต (Tablet)']
${CheckChoice8_TH}    xpath=//span[text()='ป้ายโฆษณาดิจิทัล ที่ไม่ใช่ทีวี (Digital Signage)']
${CheckChoice9_TH}    xpath=//span[text()='อื่นๆ โปรดระบุ']
#Attribute8
${CheckAttribute_8}    คุณคิดว่าการแนะนำเกี่ยวกับการขับขี่ปลอดภัยเป็นประโยชน์ต่อตัวลูกค้าเองมากน้อยแค่ไหนคะ
#Attribute9
${CheckAttribute_9}    คุณเข้าใจเงื่อนไขการรับประกันคุณภาพรถใหม่ที่พนักงานอธิบายมากน้อยแค่ไหนคะ
#Attribute10
${CheckAttribute_10}    พนักงานได้สาธิตเกี่ยวกับการใช้รถมอเตอร์ไซค์และอุปกรณ์เกี่ยวกับรถมอเตอร์ไซค์ด้วยความเอาใจใส่มากน้อยแค่ไหนคะ
#Attribute11
${CheckAttribute_11}    พนักงานที่ร้านทำให้คุณรู้สึกได้ว่าคุณเป็นลูกค้าคนสำคัญได้ดีแค่ไหนคะ
#Attribute12
${CheckAttribute_12}    พนักงานมีการแจ้งรายการซ่อมก่อนดำเนินการหรือไม่
#Attribute13
${CheckAttribute_13}    ท่านเข้าใจการแจ้งรายการซ่อมก่อนดำเนินการในระดับใด
#Attribute15
${CheckAttribute_14}    ทางร้านมีการประเมินค่าซ่อมหรือค่าใช้จ่ายอื่นๆก่อนการซ่อมหรือไม่
#Attribute15
${CheckAttribute_15}    ท่านเข้าใจการประเมินค่าซ่อมหรือค่าใช้จ่ายๆอื่นก่อนการซ่อมในระดับใด
#Attribute16
${CheckAttribute_16}    สิ่งอำนวยความสะดวก และความสะอาดในบริเวณที่พักลูกค้าอยู่ในระดับใดคะ
#Attribute17
${CheckAttribute_17}    ทางร้านมีการแจ้งกำหนดเวลาซ่อมเสร็จหรือไม่คะ
#Attribute18
${CheckAttribute_18}    ทางร้านมีการชี้แจงรายละเอียดค่าซ่อมและค่าอะไหล่หลังการเข้ารับบริการหรือไม่คะ
#Attribute19
${CheckAttribute_19}    ทางร้านมีการแจ้งนัดหมายให้เข้ารับบริการในครั้งต่อไปหรือไม่คะ
#Attribute20
${CheckAttribute_20}    ทางร้านมีการติดต่อสอบถามคุณภาพงานซ่อมผ่านทางโทรศัพท์ ไลน์ SMS หรือช่องทางอื่นๆ หลังเข้ารับบริการหรือไม่คะ
#Media
${CheckQMedia}    ไม่ทราบว่าการที่คุณเข้ามาซื้อรถจักรยานยนต์ฮอนด้า คุณเห็นสื่อจากช่องทางใดบ้างคะ
${CheckMChoice1_TH}    name=Answer_30_0_0_0
${CheckMChoice2_TH}    name=Answer_30_0_0_1
${CheckMChoice3_TH}    name=Answer_30_0_0_2
${CheckMChoice4_TH}    name=Answer_30_0_0_3
${CheckMChoice5_TH}    name=Answer_30_0_0_4
${CheckMChoice6_TH}    name=Answer_30_0_0_5
${CheckMChoice7_TH}    name=Answer_30_0_0_6
${CheckMChoice8_TH}    name=Answer_30_0_0_7
${CheckMChoice9_TH}    name=Answer_30_0_0_8
${CheckMChoice10_TH}    name=Answer_30_0_0_9
${CheckMChoice11_TH}    name=Answer_30_0_0_10
${CheckMChoice12_TH}    name=Answer_30_0_0_11
${CheckMChoice13_TH}    name=Answer_30_0_0_12
#button
${btn_start}      xpath=//span[text()='เริ่มต้น']
${btn_next}       xpath=//span[text()='ถัดไป']
${btn_TH}         ถัดไป
${Btn_IconNext}    //*[@class='icon fl-fl-chevron-right']
#Score
${Score0}         xpath=//span[text()='0']
${Score1}         xpath=//span[text()='1']
${Score2}         xpath=//span[text()='2']
${Score3}         xpath=//span[text()='3']
${Score4}         xpath=//span[text()='4']
${Score5}         xpath=//span[text()='5']
${Score6}         xpath=//span[text()='6']
${Score7}         xpath=//span[text()='7']
${Score8}         xpath=//span[text()='8']
${Score9}         xpath=//span[text()='9']
${Score10}        xpath=//span[text()='10']
