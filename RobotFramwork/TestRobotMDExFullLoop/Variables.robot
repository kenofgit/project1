*** Settings ***
Library           Selenium2Library

*** Variables ***
#Browser
${Browser}        firefox
${locator_language}    //select[@id='g_language']
${language_TH}    ภาษาไทย
${language_EN}    English
${language_CN}    Chinese
#Link_BookCon_CN
${Link_BookCon_CN1}    https://s1-atv-staging.bizcuitvoc.com/CzNkBoz4Y
${Link_BookCon_CN2}    https://s1-atv-staging.bizcuitvoc.com/-L0S7vFfP
${Link_BookCon_CN3}    https://s1-atv-staging.bizcuitvoc.com/RQrZdPXGZ
${Link_BookCon_CN4}    https://s1-atv-staging.bizcuitvoc.com/NkhZRgZB9
#Link_BookCon_EN
${Link_BookCon_EN1}    https://s1-atv-staging.bizcuitvoc.com/s0FoYcE5x
${Link_BookCon_EN2}    https://s1-atv-staging.bizcuitvoc.com/5N2yEpld6
${Link_BookCon_EN3}    https://s1-atv-staging.bizcuitvoc.com/lG_xjE_af
${Link_BookCon_EN4}    https://s1-atv-staging.bizcuitvoc.com/NsKR90doO
#Link_BookCon_TH
${Link_BookCon_TH1}    https://s1-atv-staging.bizcuitvoc.com/U3hleOmQY
${Link_BookCon_TH2}    https://s1-atv-staging.bizcuitvoc.com/Pt-NzOTWU
${Link_BookCon_TH3}    https://s1-atv-staging.bizcuitvoc.com/AKPGu-5DL
${Link_BookCon_TH4}    https://s1-atv-staging.bizcuitvoc.com/qQ1nIJnQGg
#Link_Defect_CN
${Link_Defect_CN1}    https://s1-atv-staging.bizcuitvoc.com/M-gmmVsUY
${Link_Defect_CN2}    https://s1-atv-staging.bizcuitvoc.com/I97OVrstG
${Link_Defect_CN3}    https://s1-atv-staging.bizcuitvoc.com/7XXIZWR_p
${Link_Defect_CN4}    https://s1-atv-staging.bizcuitvoc.com/i6pDpJfB6
#Link_Defect_EN
${Link_Defect_EN1}    https://s1-atv-staging.bizcuitvoc.com/tfpnZRHk-
${Link_Defect_EN2}    https://s1-atv-staging.bizcuitvoc.com/PhMPaS6FE
${Link_Defect_EN3}    https://s1-atv-staging.bizcuitvoc.com/a40X1lkdF
${Link_Defect_EN4}    https://s1-atv-staging.bizcuitvoc.com/OKVUqBiZO
#Link_Defect_TH
${Link_Defect_TH1}    https://s1-atv-staging.bizcuitvoc.com/zttaXKrEG
${Link_Defect_TH2}    https://s1-atv-staging.bizcuitvoc.com/hDNA9Zgdi
${Link_Defect_TH3}    https://s1-atv-staging.bizcuitvoc.com/1IUNe_pnz
${Link_Defect_TH4}    https://s1-atv-staging.bizcuitvoc.com/_LdgbiEnp
#Link_Downpay_CN
${Link_Downpay_CN1}    https://s1-atv-staging.bizcuitvoc.com/4EWwj9EpF
${Link_Downpay_CN2}    https://s1-atv-staging.bizcuitvoc.com/4a34DJDzm
${Link_Downpay_CN3}    https://s1-atv-staging.bizcuitvoc.com/6UtrYiO4v
${Link_Downpay_CN4}    https://s1-atv-staging.bizcuitvoc.com/obxVY0UG1
#Link_Downpay_EN
${Link_Downpay_EN1}    https://s1-atv-staging.bizcuitvoc.com/oONd4gRi4
${Link_Downpay_EN2}    https://s1-atv-staging.bizcuitvoc.com/DUl0UFlCf
${Link_Downpay_EN3}    https://s1-atv-staging.bizcuitvoc.com/Jot3UmA_E
${Link_Downpay_EN4}    https://s1-atv-staging.bizcuitvoc.com/VNiqQdiUii
#Link_Downpay_TH
${Link_Downpay_TH1}    https://s1-atv-staging.bizcuitvoc.com/QO9UJ8_L1
${Link_Downpay_TH2}    https://s1-atv-staging.bizcuitvoc.com/19cVvc0pML
${Link_Downpay_TH3}    https://s1-atv-staging.bizcuitvoc.com/WXdu3vEZZ
${Link_Downpay_TH4}    https://s1-atv-staging.bizcuitvoc.com/zTL8EGtF0
#Link_Inspect_CN
${Link_Inspect_CN1}    https://s1-atv-staging.bizcuitvoc.com/jxWESaiqV
${Link_Inspect_CN2}    https://s1-atv-staging.bizcuitvoc.com/w9i50cye_
${Link_Inspect_CN3}    https://s1-atv-staging.bizcuitvoc.com/4ZgFzxEyq
${Link_Inspect_CN4}    https://s1-atv-staging.bizcuitvoc.com/JqnsSnNXg
#Link_Inspect_EN
${Link_Inspect_EN1}    https://s1-atv-staging.bizcuitvoc.com/aNI6WhFyD
${Link_Inspect_EN2}    https://s1-atv-staging.bizcuitvoc.com/_fGix2afp
${Link_Inspect_EN3}    https://s1-atv-staging.bizcuitvoc.com/xsv-LjVvp
${Link_Inspect_EN4}    https://s1-atv-staging.bizcuitvoc.com/MBFk8C6Og
#Link_Inspect_TH
${Link_Inspect_TH1}    https://s1-atv-staging.bizcuitvoc.com/V9NJENpPn
${Link_Inspect_TH2}    https://s1-atv-staging.bizcuitvoc.com/gd9hEBxpz
${Link_Inspect_TH3}    https://s1-atv-staging.bizcuitvoc.com/HTUwYQTVg
${Link_Inspect_TH4}    https://s1-atv-staging.bizcuitvoc.com/rkvYlZ7AK
#Link_MDP_CN
${Link_MDP_CN1}    https://s1-atv-staging.bizcuitvoc.com/80iOGbwKD
${Link_MDP_CN2}    https://s1-atv-staging.bizcuitvoc.com/Su7loitsQ
${Link_MDP_CN3}    https://s1-atv-staging.bizcuitvoc.com/xYxi5jGpt4
${Link_MDP_CN4}    https://s1-atv-staging.bizcuitvoc.com/hFOzjrkaR
#Link_MDP_EN
${Link_MDP_EN1}    https://s1-atv-staging.bizcuitvoc.com/iytGdwsZQG
${Link_MDP_EN2}    https://s1-atv-staging.bizcuitvoc.com/2zTOnX9zY
${Link_MDP_EN3}    https://s1-atv-staging.bizcuitvoc.com/okz2oQeKV
${Link_MDP_EN4}    https://s1-atv-staging.bizcuitvoc.com/Wc0uxekQL
#Link_MDP_TH
${Link_MDP_TH1}    https://s1-atv-staging.bizcuitvoc.com/uGmqWW1ZB
${Link_MDP_TH2}    https://s1-atv-staging.bizcuitvoc.com/8_5qhaT28
${Link_MDP_TH3}    https://s1-atv-staging.bizcuitvoc.com/tftj1HP1E
${Link_MDP_TH4}    https://s1-atv-staging.bizcuitvoc.com/OP8M5InyG
#Link_ResaleLeasing_CN
${Link_ResaleLeasing_CN1}    https://s1-atv-staging.bizcuitvoc.com/TJvUGNSL7
${Link_ResaleLeasing_CN2}    https://s1-atv-staging.bizcuitvoc.com/ZnnBMLPHA
${Link_ResaleLeasing_CN3}    https://s1-atv-staging.bizcuitvoc.com/pnUhgQAfg
${Link_ResaleLeasing_CN4}    https://s1-atv-staging.bizcuitvoc.com/dGCNXnoQf
#Link_ResaleLeasing_EN
${Link_ResaleLeasing_EN1}    https://s1-atv-staging.bizcuitvoc.com/rvTn6ahZZ
${Link_ResaleLeasing_EN2}    https://s1-atv-staging.bizcuitvoc.com/BliOqku9O
${Link_ResaleLeasing_EN3}    https://s1-atv-staging.bizcuitvoc.com/xo_biQbp0
${Link_ResaleLeasing_EN4}    https://s1-atv-staging.bizcuitvoc.com/TRdSnPBlF
#Link_ResaleLeasing_TH
${Link_ResaleLeasing_TH1}    https://s1-atv-staging.bizcuitvoc.com/r2oiPoI_W
${Link_ResaleLeasing_TH2}    https://s1-atv-staging.bizcuitvoc.com/V5H6s0O1V
${Link_ResaleLeasing_TH3}    https://s1-atv-staging.bizcuitvoc.com/6S4-yOcO3
${Link_ResaleLeasing_TH4}    https://s1-atv-staging.bizcuitvoc.com/IUuT0OE9K
#Link_Tranfer_CN
${Link_Tranfer_CN1}    https://s1-atv-staging.bizcuitvoc.com/CBD1U4QVL
${Link_Tranfer_CN2}    https://s1-atv-staging.bizcuitvoc.com/zLVmZt8IEd
${Link_Tranfer_CN3}    https://s1-atv-staging.bizcuitvoc.com/JOduVCFv2
${Link_Tranfer_CN4}    https://s1-atv-staging.bizcuitvoc.com/QL2b6pwxO
#Link_Tranfer_EN
${Link_Tranfer_EN1}    https://s1-atv-staging.bizcuitvoc.com/Jycj-nhQq
${Link_Tranfer_EN2}    https://s1-atv-staging.bizcuitvoc.com/HAXGEA-1h
${Link_Tranfer_EN3}    https://s1-atv-staging.bizcuitvoc.com/7vovQKr_k
${Link_Tranfer_EN4}    https://s1-atv-staging.bizcuitvoc.com/EbphudB4y
#Link_Tranfer_TH
${Link_Tranfer_TH1}    https://s1-atv-staging.bizcuitvoc.com/kGMTTH0m6
${Link_Tranfer_TH2}    https://s1-atv-staging.bizcuitvoc.com/Ja6sMwKJL
${Link_Tranfer_TH3}    https://s1-atv-staging.bizcuitvoc.com/aFcqhdt3n
${Link_Tranfer_TH4}    https://s1-atv-staging.bizcuitvoc.com/o2wV02HQl
#Link_walkin_CN
${Link_Walkin_CN1}    https://s1-atv-staging.bizcuitvoc.com/6NKYYQm6f
${Link_Walkin_CN2}    https://s1-atv-staging.bizcuitvoc.com/25muPCwEA
${Link_Walkin_CN3}    https://s1-atv-staging.bizcuitvoc.com/nqia-vqn2
${Link_Walkin_CN4}    https://s1-atv-staging.bizcuitvoc.com/QU9N--3o5
#Link_walkin_EN
${Link_Walkin_EN1}    https://s1-atv-staging.bizcuitvoc.com/edVOtUFzV
${Link_Walkin_EN2}    https://s1-atv-staging.bizcuitvoc.com/0dYMF0HZk
${Link_Walkin_EN3}    https://s1-atv-staging.bizcuitvoc.com/RfegVryWp
${Link_Walkin_EN4}    https://s1-atv-staging.bizcuitvoc.com/Y-PXLA4y5
#Link_walkin_TH
${Link_Walkin_TH1}    https://s1-atv-staging.bizcuitvoc.com/Z8phj4WFG
${Link_Walkin_TH2}    https://s1-atv-staging.bizcuitvoc.com/WRSZiPPun
${Link_Walkin_TH3}    https://s1-atv-staging.bizcuitvoc.com/qDl610s7z
${Link_Walkin_TH4}    https://s1-atv-staging.bizcuitvoc.com/liihpOiBQQ
#Intro Main Survey
${Check_introMainTH1}    ขอขอบคุณ คุณ
${Check_introMainTH2}    ที่ไว้วางใจให้ Major Development ได้ดูแลคุณ    กรุณาแสดงความคิดเห็นต่อประสบการณ์ที่คุณมีต่อ Major Development เมื่อวันที่
${Check_introMainTH3}    เพื่อนำข้อมูลไปใช้พัฒนาการให้บริการให้ดียิ่งขึ้น
${Check_introMainTH4}    ซึ่งคุณมีสิทธิ์ลุ้นรับบัตรกำนัลสตาร์บัคส์ มูลค่า 500 บาท เพียงตอบคำถามครบทุกข้อ
${Check_introMainEN1}    Thank you, Khun
${Check_introMainEN2}    for trusting in Major Development. Please share your feedback based on your recent experience on
${Check_introMainEN3}    for continuous improvment of our services.
${Check_introMainEN4}    Major Development will be offering every participant a chance to win Starbucks gift card value of 500 Baht when you completed the survey.
${Check_introMainCN1}    感谢尊敬的
${Check_introMainCN2}    客户感谢您对Major Development 的信任。 请帮我们评估对
${Check_introMainCN3}    服务的满意度， 让我们可以进一步改善服务。
${Check_introMainCN4}    只需回答所有问题，您将参与抽奖价值500泰铢的星巴克礼品卡。
#CSAT
${Check_QNCSAT_TH}    จากการใช้บริการในคร้้งนี้ โดยรวมแล้วคุณพึงพอใจมากน้อยแค่ไหนคะ
${Check_QNCSAT_EN}    How satisfied are you with overall experience at Major Development?
${Check_QNCSAT_CN}    总的来说您对这次的服务有多满意？请打分
#OA_CSAT_Positive
${Check_OACSATPos_TH}    เราดีใจที่คุณประทับใจประสบการณ์การให้บริการของเราในครั้งนี้ คุณพอจะบอกได้ไหมว่าอะไรที่ทำให้คุณพึงพอใจ เพื่อที่เราจะได้พัฒนาการบริการให้ดียิ่งขึ้น
${Check_OACSATPos_EN}    We are happy to know that you are happy with our service experience, could you tell us what makes you satisfied this time?
${Check_OACSATPos_CN}    我们很高兴您对这次的服务感到满意。 您可以对我们提出的服务有那一方面是让您感到满意的吗?为了使我们能更好地改进我们的服务。
#OA_CSAT_Negative
${Check_OACSATNeg_TH}    เราเสียใจและขออภัยคุณเป็นอย่างยิ่ง กับประสบการณ์ที่ไม่ประทับใจในครั้งนี้ คุณพอจะเล่าเหตุการณ์ที่เกิดขึ้นให้เราทราบโดยละเอียด เพื่อที่เราจะได้แก้ไขอย่างเร่งด่วน
${Check_OACSATNeg_EN}    We are sorry to hear that you did not have a delightful service experience. Could you tell us what made you dissatisfied?
${Check_OACSATNeg_CN}    我们对您的不满意表示真心的抱歉。 凭借此时未能给您留下深刻印象的体验， 您可以告诉我们事件的详细信息， 这样我们会紧急解决。
#Opt-in Contact
${Check_Optin_TH}    Major Development อาจติดต่อกลับเพื่อสอบถามข้อมูลเพิ่มเติม เพื่อพัฒนาผลิตภัณฑ์และบริการให้ดียิ่งขึ้น คุณยินดีให้เราติดต่อกลับหรือไม่คะ
${Check_Optin_EN}    In order to serve you better, would you allow us to contact you back for further information?
${Check_Optin_CN}    我们可能会与您联系以获取更多信息 开发更好的产品和服务 你愿意让我们联系吗？
#Attribute1
${Check_Attri1_TH}    พนักงานขายให้บริการด้วยความเต็มใจ ยิ้มแย้มแจ่มใส และกระตือรือร้น
${Check_Attri1_EN}    Salesperson took care of you with willingness, smiling, and enthusiastic.
${Check_Attri1_CN}    销售人员是否微笑以及乐意提供服务
#Attribute2
${Check_Attri2_TH}    พนักงานขายให้ข้อมูลเพื่อประกอบการตัดสินใจได้ถูกต้อง ครบถ้วน และตอบข้อสงสัยได้ชัดเจน
${Check_Attri2_EN}    Salesperson correctly gave information for making decision and clearly answered any enquiries.
${Check_Attri2_CN}    在您下决定时销售人员是否提供给您正确并且完整的信息
#Attribute4
${Check_Attri4_TH}    พนักงานขายดูแลเอาใจใส่เป็นอย่างดีตลอดระยะเวลาที่อยู่ใน Sales Gallery
${Check_Attri4_EN}    Salesperson were attentive the entire time while you were in the sales gallery.
${Check_Attri4_CN}    我们的人员在参观期间服务是否周全。
#Attribute40
${Check_Attri40_TH}    ความสะอาดและความเรียบร้อยของห้องตัวอย่าง
${Check_Attri40_EN}    Cleanliness and neatness of mock up room in sales gallery.
${Check_Attri40_CN}    销售楼盘模型是否干净整齐
#Attribute5
${Check_Attri5_TH}    เอกสารใบจองถูกต้อง ครบถ้วนหรือไม่
${Check_Attri5_EN}    The reservation document was correct and complete.
${Check_Attri5_CN}    订房单是否完整正确
#Attribute6
${Check_Attri6_TH}    เอกสารสัญญาถูกต้อง ครบถ้วนหรือไม่
${Check_Attri6_EN}    The contract was correct and complete.
${Check_Attri6_CN}    合同文件是否完整正确
#Attribute7
${Check_Attri7_TH}    พนักงานขายมีการประสานงานและอำนวยความสะดวกในการนัดลูกค้ามาทำสัญญา
${Check_Attri7_EN}    Salesperson's co-ordination and faciliation in contract signing appointment.
${Check_Attri7_CN}    销售人员是否有提前预约以及给予您方便的签约时间
#Attribute8
${Check_Attri8_TH}    การทำสัญญาตรงตามเวลาที่ได้แจ้งไว้หรือไม่
${Check_Attri8_EN}    The contract had been signed on the appointed time.
${Check_Attri8_CN}    签订合同时间是否准确方便
#Attribute9
${Check_Attri9_TH}    ในขั้นตอนการจองและทำสัญญา พนักงานมีการดูแลเอาใจใส่เป็นอย่างดีตลอด
${Check_Attri9_EN}    Regarding reservation and contract signing process, staff were very attentive and taken good care of you for the entire time.
${Check_Attri9_CN}    签订合同的期间我们的员工是否有照顾到您周全
#Attribute10
${Check_Attri10_TH}    ช่องทางการชำระเงินที่เปิดให้บริการในปัจจุบัน สะดวกหรือไม่
${Check_Attri10_EN}    Is the current payment channel convenient for you?
${Check_Attri10_CN}    目前的支付渠道是否方便？
#Attribute11
${Check_Attri11_TH}    การออกใบเสร็จรับเงินรวดเร็วหรือไม่
${Check_Attri11_EN}    Was the process of issuing receipt fast?
${Check_Attri11_CN}    收据是否快速？
#Attribute41
${Check_Attri41_TH}    คุณได้รับใบเสร็จผ่านอีเมล์เป็นประจำทุกเดือนหรือไม่
${Check_Attri41_EN}    Do you regularly get the E-receipt via email every month?
${Check_Attri41_CN}    您每个月是否有收到电子收据
#Attribute13
${Check_Attri13_TH}    ยอดการผ่อนชำระและข้อมูลต่างๆบนใบเสร็จถูกต้องหรือไม่
${Check_Attri13_EN}    Was the due amount and other information stated in the document correct?
${Check_Attri13_CN}    每个月的贷款收据信息数据是否正确？
#Attribute14
${Check_Attri14_TH}    ความพร้อมของห้องชุดตรงตามที่ระบุในสัญญา
${Check_Attri14_EN}    The readiness of unit met the specifications as stated in the contract.
${Check_Attri14_CN}    合同中规定的公寓单元的可用性
#Attribute15
${Check_Attri15_TH}    การแก้ไข Defect ก่อนโอนครบถ้วนและรวดเร็ว
${Check_Attri15_EN}    All defects had been fixed quickly and completely.
${Check_Attri15_CN}    过户前房子修正缺陷工作完成完整且快速。
#Attribute16
${Check_Attri16_TH}    ความรอบรู้และความเชี่ยวชาญในการบริการที่นำเสนอของเจ้าหน้าที่แผนกก่อสร้าง
${Check_Attri16_EN}    Construction staff was knowledgeable and had expertise in providing services.
${Check_Attri16_CN}    建筑部门员工有清楚提供的服务知识和专业知识
#Attribute17
${Check_Attri17_TH}    ความเอาใจใส่ของเจ้าหน้าที่แผนกก่อสร้าง
${Check_Attri17_EN}    Construction staff was attentive.
${Check_Attri17_CN}    建设部门工作人员服务质量怎么样？
#Attribute18
${Check_Attri18_TH}    การประสานงานในการนัดลูกค้ามาตรวจรับห้อง
${Check_Attri18_EN}    Staff was well coordinated for making inspection appointment for you.
${Check_Attri18_CN}    过户前销售人员有约您检查房间
#Attribute19
${Check_Attri19_TH}    เอกสารในการโอนมีความพร้อมและถูกต้อง
${Check_Attri19_EN}    The document for transferring ownership was ready and correct.
${Check_Attri19_CN}    过户文件是否准备就绪准确无误？
#Attribute20
${Check_Attri20_TH}    ของแถมครบถ้วนตามที่ระบุไว้ในวันตรวจรับ
${Check_Attri20_EN}    On inspection date, you received all the promotional items as stated in the contract.
${Check_Attri20_CN}    过户之日指定的赠送物品是否完整无误
#Attribute21
${Check_Attri21_TH}    มารยาทและการให้บริการของพนักงานโอน
${Check_Attri21_EN}    Ownership transfer staff's manner and services.
${Check_Attri21_CN}    过户时工作人员是否提供建议或相关信息
#Attribute22
${Check_Attri22_TH}    การให้คำแนะนำหรือข้อมูลที่มีประโยชน์ของเจ้าหน้าที่ฝ่ายโอน
${Check_Attri22_EN}    Ownership transfer staff provided useful recommendations or information.
${Check_Attri22_CN}    过户时工作人员提供有益的建议和相关信息
#Attribute23
${Check_Attri23_TH}    ช่องทางในการแจ้งซ่อมมีความสะดวกหรือไม่
${Check_Attri23_EN}    Is the current channel for repair request convenient for you?
${Check_Attri23_CN}    修理通知的通道是否便捷？
#Attribute24
${Check_Attri24_TH}    ความรวดเร็วในการนัดหมายลูกค้าเพื่อเข้าซ่อม
${Check_Attri24_EN}    Quickly make appointment with customers for maintence request.
${Check_Attri24_CN}    进行维修预约是否快速
#Attribute25
${Check_Attri25_TH}    การบริการและความสุภาพของพนักงานซ่อม
${Check_Attri25_EN}    Engineer's services and politeness.
${Check_Attri25_CN}    维修人员的服务和礼貌
#Attribute26
${Check_Attri26_TH}    ความเอาใจใส่ และความกระตือรือร้นของพนักงานซ่อม
${Check_Attri26_EN}    Engineer's attentiveness and enthusiasm.
${Check_Attri26_CN}    维修人员的关注和热情
#Attribute27
${Check_Attri27_TH}    คุณภาพของงานภายหลังงานซ่อม
${Check_Attri27_EN}    The repair quality.
${Check_Attri27_CN}    维修工作的工作质量
#Attribute28
${Check_Attri28_TH}    คุณพักอาศัยอยู่เป็นประจำ (มากกว่า 4 วัน/สัปดาห์) หรือไม่
${Check_Attri28_EN}    Do you usually live here? (more than 4 days/week)
${Check_Attri28_CN}    您是否经常居住（超过4天/周）？
#Attribute42
${Check_Attri42_TH1}    บริการด้วยความเต็มใจ ยิ้มแย้มแจ่มใส กระตือรือร้นของ
${Check_Attri42_TH2}    พนักงานนิติบุคคล
${Check_Attri42_EN}    Willingness to service, be smile and enthusiastic of juristic person
${Check_Attri42_CN}    管理人员有礼貌、微笑以及乐意为您提供服务
#Attribute43
${Check_Attri43_TH1}    บริการด้วยความเต็มใจ ยิ้มแย้มแจ่มใส กระตือรือร้นของ
${Check_Attri43_TH2}    เจ้าหน้าที่รักษาความปลอดภัย
${Check_Attri43_EN}    Willingness to service, be smile and enthusiastic of security guard
${Check_Attri43_CN}    保安人员有礼貌、微笑以及乐意为您提供服务
#Attribute44
${Check_Attri44_TH1}    บริการด้วยความเต็มใจ ยิ้มแย้มแจ่มใส กระตือรือร้นของ
${Check_Attri44_TH2}    แม่บ้าน
${Check_Attri44_EN}    Willingness to service, be smile and enthusiastic of housekeeper
${Check_Attri44_CN}    清洁人员有礼貌、微笑以及乐意为您提供服务
#Attribute45
${Check_Attri45_TH1}    การแต่งกาย กิริยามารยาท และความสามารถในการให้บริการของ
${Check_Attri45_TH2}    เจ้าหน้าที่นิติบุคคล
${Check_Attri45_EN}    Uniform, manner and competency of juristic person
${Check_Attri45_CN}    管理人员穿着干净、有礼貌以及能帮助到您
#Attribute46
${Check_Attri46_TH}    การจัดการขยะ และการดูแลความสะอาดเรียบร้อยภายในโครงการ
${Check_Attri46_EN}    Garbage management and cleanliness of the project.
${Check_Attri46_CN}    小区内的废物管理和清洁
#Attribute47
${Check_Attri47_TH}    การดูแลการซ่อมบำรุงพื้นที่ส่วนกลางและอุปกรณ์สันทนาการให้อยู่ในสภาพสมบูรณ์พร้อมใช้งาน
${Check_Attri47_EN}    The public facilities and equipment for recreation maintenance.
${Check_Attri47_CN}    小区内的公共设备、设施维修保养
#Attribute48
${Check_Attri48_TH}    การได้รับข้อมูลข่าวสาร ข้อมูลโครงการ และการบริการที่ถูกต้องรวดเร็ว
${Check_Attri48_EN}    General and project information updates and service promptness.
${Check_Attri48_CN}    小区内的信息及时更新并且正确
#Attribute49
${Check_Attri49_TH}    มาตรฐานความปลอดภัยโดยรวมของโครงการ
${Check_Attri49_EN}    Overall security standard of the project.
${Check_Attri49_CN}    小区内的安全管理
#QAsuggestion_mdp
${Check_OA_SugMDP_TH}    ท่านมีข้อเสนอแนะหรือต้องการทราบข้อมูลด้านอื่นๆเพิ่มเติม โปรดระบุ
${Check_OA_SugMDP_EN}    Any suggestion or information needed, please specify?
${Check_OA_SugMDP_CN}    您对小区的建议以及意见
#Attribute50
${Check_Attri50_TH}    คุณได้ใช้บริการใดกับเราในครั้งนี้?
${Check_Attri50_EN}    Which type of service have you been used with us?
${Check_Attri50_CN}    您有参与我们这次的活动 ?
#Attribute51
${Check_Attri51_TH}    พนักงานมีความรวดเร็วในการติดต่อกลับลูกค้า
${Check_Attri51_EN}    Promptness of staff to contact customer.
${Check_Attri51_CN}    工作人员有及时快速联系到您
#Attribute52
${Check_Attri52_TH}    พนักงานให้ข้อมูล รายละเอียด ได้อย่างชัดเจนและครบถ้วน
${Check_Attri52_EN}    Staff clearly and completely gave you all information.
${Check_Attri52_CN}    工作人员有给您提供准确及全面的信息内容
#Attribute53
${Check_Attri53_TH}    พนักงานให้บริการด้วยความสุภาพ และเป็นมืออาชีพ
${Check_Attri53_EN}    Staff's politeness and professionalism.
${Check_Attri53_CN}    工作人员有礼貌并且专业
#Attribute54
${Check_Attri54_TH}    พนักงานให้คำแนะนำ หรือตอบข้อซักถามได้เป็นอย่างดี
${Check_Attri54_EN}    Staff gave you an advice or well answered your enquiries.
${Check_Attri54_CN}    工作人员给予建议并且能为回答您提问问题
#Attribute55
${Check_Attri55_TH}    พนักงานให้คำแนะนำ หรือตอบข้อซักถามซึ่งเป็นประโยชน์กับลูกค้าได้เป็นอย่างดี
${Check_Attri55_EN}    Staff gave you an useful advice or well answered your enquiries.
${Check_Attri55_CN}    工作人员给予建议 并且回答有助与您的问题
#Attribute56
${Check_Attri56_TH}    พนักงานได้มีการนัดหมายดูโครงการกับลูกค้าหรือไม่
${Check_Attri56_EN}    Did staff make you appointment to visit the project?
${Check_Attri56_CN}    工作人员是否约您参观楼座 ?
#Intro to profile
${Check_Intro_Profile_TH}    เพื่อสิทธิประโยชน์สูงสุดของท่านในอนาคต กรุณากรอกข้อมูลของท่านให้ครบถ้วน
${Check_Intro_Profile_EN}    Please provide your information for future special privileges provided.
${Check_Intro_Profile_CN}    为了您的利益，请您填写您的信息。
#Profile1_dm1
${Check_Profile1_TH}    รายได้ส่วนบุคคลต่อเดือน
${Check_Profile1_EN}    Monthly Personal Income
${Check_Profile1_CN}    您每月的收入
#Profile2_dm2
${Check_Profile2_TH}    อาชีพ
${Check_Profile2_EN}    Occupation
${Check_Profile2_CN}    您的职业
#Profile3_dm3
${Check_Profile3_TH}    ท่านสนใจโครงการนี้เพราะสาเหตุใด (ตอบได้หลายข้อ)
${Check_Profile3_EN}    What are the reasons that you're interested in this project?
${Check_Profile3_CN}    为什么您对我们的项目感兴趣？（多选题）
#Adhoc_ah1
${Check_Adhoc_TH}    กิจกรรมยามว่างที่ท่านชื่นชอบ (ตอบได้หลายข้อ)
${Check_Adhoc_EN}    Your favorite hobbies/interests
${Check_Adhoc_CN}    您喜欢的休闲活动（多选题）
#Media
${Check_Media_TH}    ท่านทราบโครงการนี้จากสื่อใด (ตอบได้หลายข้อ)
${Check_Media_EN}    From which channel(s) that you heard about this project?
${Check_Media_CN}    您是从哪里得知我们的项目？
#Page6_TH
${CheckRewardTH}    เงื่อนไขกิจกรรมชิงโชค
${CheckRewardTH_1}    1. ผู้เข้าร่วมกิจกรรมต้องตอบแบบสอบถามด้วยข้อมูลที่ถูกต้องและต้องตอบแบบสอบถามให้ครบถ้วน
${CheckRewardTH_2}    2. ประกาศรายชื่อผู้โชคดีทุกวันที่ 10 ของเดือน โดยบริษัทจะจัดส่ง SMS แจ้งไปยังผู้โชคดีทางหมายเลขโทรศัพท์มือถือตามที่ระบุไว้
${CheckRewardTH_3}    3. หากผู้โชคดีไม่ได้ติดต่อรับรางวัลภายในระยะเวลา 30 วัน หลังจากได้รับ SMS ให้ถือว่าผู้โชคดียินยอมที่จะสละสิทธิ์ไม่ขอรับรางวัลใดๆทั้งสิ้น
${CheckRewardTH_4}    4. ผู้โชคดีมีสิทธิ์ได้รับรางวัล จำกัด 1 สิทธิ์/คน/รอบ
${CheckRewardTH_5}    5. ผู้ได้รับรางวัลจะต้องทำตามกติกาครบถ้วนเท่านั้น ผู้ที่ไม่ทำตามกฏและกติกา ทางบริษัทฯจะถือเป็นโมฆะ และปฏิเสธการให้รางวัลโดยไม่ต้องแจ้งให้ทราบล่วงหน้า
${CheckRewardTH_6}    6. รางวัลไม่สามารถเปลี่ยนเป็นเงินสดและไม่สามารถโอนสิทธิ์ให้กับผู้อื่นได้
${CheckRewardTH_7}    7. บริษัทฯ ขอสงวนสิทธิในการเปลี่ยนแปลงของรางวัล หรือเงื่อนไขการชิงโชค โดยไม่ต้องแจ้งให้ทราบล่วงหน้า และการตัดสินของคณะกรรมการถือเป็นเด็ดขาด และสิ้นสุด
${CheckRewardTH_8}    8. บริษัทฯ มีสิทธิ์ในการปฏิเสธ ยกเลิก หรือหยุดกิจกรรม ดังกล่าวได้โดยชอบธรรมและไม่จำเป็นต้องแจ้งให้ทราบ
${CheckRewardTH_9}    9. สอบถามรายละเอียดเพิ่มเติม 02-1161111
${CheckQuestionReward_TH}    ข้าพเจ้าได้อ่านและยอมรับเงื่อนไขการชิงโชคครั้งนี้
${Opt_in_rewardYes_TH}    ยอมรับ
${Opt_in_rewardNo_TH}    ไม่ยอมรับ
#Page6_EN
${CheckRewardEN}    Condition for participation:
${CheckRewardEN_1}    1. Participants must answer the survey with correct information and must complete the survey.
${CheckRewardEN_2}    2. Major Development will announce the winner every 10th of month and will inform the winners through mobile phone number that is provided in the survey.
${CheckRewardEN_3}    3. If the lucky winner does not contact to receive the prize within 30 days after receiving the SMS, Major Development will consider that the winner forfeit the right to claim the prize.
${CheckRewardEN_4}    4. Limit 1 prize per person per round.
${CheckRewardEN_5}    5. The winner of lucky draw must comply to the terms and conditions. The company holds the right to refuse payment in case of non compliance without prior notice.
${CheckRewardEN_6}    6. The prizes cannot be exchanged for cash, or transferred to other person.
${CheckRewardEN_7}    7. The company holds the right to make substitute lucky draw prize or condition of the lucky draw without prior notice. The lucky draw results from the commitee is treated as definited and final.
${CheckRewardEN_8}    8. The company reserves right to cancel or stop the activity without notification in advance.
${CheckRewardEN_9}    9. For more information, please contact 02-1161111.
${CheckQuestionReward_EN}    I agree to the Terms and Conditions.
${Opt_in_rewardYes_EN}    Yes
${Opt_in_rewardNo_EN}    No
#Page6_CN
${CheckRewardCN}    抽奖条件
${CheckRewardCN_1}    1.参与者必须使用正确的信息回答调查问卷，并且必须完成问卷问题。
${CheckRewardCN_2}    2.每月10日将公布得奖名字。公司将通过手机号码向幸运获奖者发送短信通知。
${CheckRewardCN_3}    3.如果幸运者在收到短信后30天内未联系回来，则幸运获奖者同意放弃不接受任何奖品的权利。
${CheckRewardCN_4}    4.幸运获奖者有资格获得1个特权/人/查询。
${CheckRewardCN_5}    5.获奖者必须完全遵守规则，不遵守规则的人该公司将被视为无效，并且在没有事先通知的情况下拒绝提供奖品。
${CheckRewardCN_6}    6.奖品不能兑换现金，也不能转让给他人。
${CheckRewardCN_7}    7.公司保留更改奖品的权利或幸运抽奖条件恕不另行通知，公司的决定将是最终决定
${CheckRewardCN_8}    8.公司有权拒绝，取消或停止活动。可以证明是合理的，不需要另行通知。
${CheckRewardCN_9}    9.如需了解更多信息，请联系02-1161111
${CheckQuestionReward_CN}    我接受这次抽奖活动的条件
${Opt_in_rewardYes_CN}    愿意
${Opt_in_rewardNo_CN}    不愿意
#Page7_opt_in_tel
${Opt_in_tel_TH1}    กรุณากรอกเบอร์โทรที่สามารถติดต่อได้หากคุณได้รับรางวัลค่ะ
${Opt_in_tel_TH2}    (ขอสงวนสิทธิ์ ผู้มีสิทธิ์ลุ้นรางวัลเฉพาะ คนที่กรอกแบบสอบถามครบถ้วนเท่านั้น)
${Opt_in_tel_EN1}    Please provide your telephone number (Thai registered no. only) in order to contact you in case you won the prize.
${Opt_in_tel_EN2}    (We will only award to customer who answer the survey completely.)
${Opt_in_tel_CN1}    请填写您的联系电话（泰国号码）如您得奖我们将联系您（奖品仅授予填写正确联系方式以及全部信息的客户）
#Ending
${QN_Ending_TH}    ขอขอบคุณท่านที่กรุณาสละเวลาในการแสดงความคิดเห็นครั้งนี้
${QN_Ending_EN}    Thank you for your valuable time for sharing your feedback.
${QN_Ending_CN}    谢谢您给出您珍贵的意见。
#Ending Conditional Fail
${QN_EndingConFail_TH}    ขอบคุณที่สนใจร่วมแสดงความคิดเห็น เนื่องจากคุณมีคุณสมบัติไม่ตรงตามที่เราต้องการ ต้องขออภัยมา ณ ที่นี้ด้วยค่ะ
#Expire Survey
${SurveyExpire_TH1}    ขออภัยค่ะ ลิงค์สำหรับแสดงความคิดเห็นของคุณไม่สามารถเข้าได้ เนื่องจากลิงค์หมดอายุ
${SurveyExpire_TH2}    ขอบคุณคุณลูกค้าที่สนใจเข้าร่วมค่ะ
${SurveyExpire_EN1}    We’re sorry, your survey link has already expired.
${SurveyExpire_EN2}    Thank you for your interest in providing us a feedback.
${SurveyExpire_CN1}    抱歉这个评论链接无法访问，因为链接已过期，感谢您的支持参与。
#Survey_Status=2
${SurveyStatus2_TH1}    ขออภัยค่ะ ท่านได้มีการทำแบบสอบถามนี้ไปแล้ว
${SurveyStatus2_TH2}    ตอนนี้ท่านสามารถปิดหน้าต่างนี้ได้ค่ะ
${SurveyStatus2_CN1}    对不起，您已经完成了此查询，现在可以关闭此窗口。
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
#button
${btn_startTH}    //span[@class="btn start"][text()='เริ่มต้น']
${btn_startEN}    //span[@class="btn start"][text()='Start']
${btn_startCN}    //span[@class="btn start"][text()='开始']
${btn_nextTH}     xpath=//span[text()='ถัดไป']
${btn_nextEN}     xpath=//*[@class="btn next"]
${btn_nextCN}     xpath=//span[text()='下一页']
${end_btn}        xpath=//*[@class="btn"]
${Next_footer}    xpath=//*[@class="icon fl-fl-chevron-right"]
${Back_footer}    xpath=//*[@class="icon fl-fl-chevron-left"]
#ChoiceProfile1
${ChoiceP1_1}     //label[@name='Answer_1_0_0_0']
${ChoiceP1_2}     //label[@name='Answer_1_0_0_1']
${ChoiceP1_3}     //label[@name='Answer_1_0_0_2']
${ChoiceP1_4}     //label[@name='Answer_1_0_0_3']
${ChoiceP1_5}     //label[@name='Answer_1_0_0_4']
${ChoiceP1_6}     //label[@name='Answer_1_0_0_5']
${ChoiceP1_7}     //label[@name='Answer_1_0_0_6']
${ChoiceP1_8}     //label[@name='Answer_1_0_0_7']
${ChoiceP1_9}     //label[@name='Answer_1_0_0_8']
#ChoiceProfile2
${ChoiceP2_1}     //label[@name='Answer_2_0_0_0']
${ChoiceP2_2}     //label[@name='Answer_2_0_0_1']
${ChoiceP2_3}     //label[@name='Answer_2_0_0_2']
${ChoiceP2_4}     //label[@name='Answer_2_0_0_3']
${ChoiceP2_5}     //label[@name='Answer_2_0_0_4']
${ChoiceP2_6}     //label[@name='Answer_2_0_0_5']
${ChoiceP2_7}     //label[@name='Answer_2_0_0_6']
${ChoiceP2_8}     //label[@name='Answer_2_0_0_7']
${ChoiceP2_9}     //label[@name='Answer_2_0_0_8']
${ChoiceP2_10}    //label[@name='Answer_2_0_0_9']
${ChoiceP2_11}    //label[@name='Answer_2_0_0_10']
#ChoiceProfile3
${ChoiceP3_1}     //label[@name='Answer_3_0_0_0']
${ChoiceP3_2}     //label[@name='Answer_3_0_0_1']
${ChoiceP3_3}     //label[@name='Answer_3_0_0_2']
${ChoiceP3_4}     //label[@name='Answer_3_0_0_3']
${ChoiceP3_5}     //label[@name='Answer_3_0_0_4']
${ChoiceP3_6}     //label[@name='Answer_3_0_0_5']
${ChoiceP3_7}     //label[@name='Answer_3_0_0_6']
${ChoiceP3_8}     //label[@name='Answer_3_0_0_7']
#ChoiceAdhoc1
${ChoiceA4_1}     //label[@name='Answer_4_0_0_0']
${ChoiceA4_2}     //label[@name='Answer_4_0_0_1']
${ChoiceA4_3}     //label[@name='Answer_4_0_0_2']
${ChoiceA4_4}     //label[@name='Answer_4_0_0_3']
${ChoiceA4_5}     //label[@name='Answer_4_0_0_4']
${ChoiceA4_6}     //label[@name='Answer_4_0_0_5']
${ChoiceA4_7}     //label[@name='Answer_4_0_0_6']
${ChoiceA4_8}     //label[@name='Answer_4_0_0_7']
${ChoiceA4_9}     //label[@name='Answer_4_0_0_8']
${ChoiceA4_10}    //label[@name='Answer_4_0_0_9']
${ChoiceA4_11}    //label[@name='Answer_4_0_0_10']
${ChoiceA4_12}    //label[@name='Answer_4_0_0_11']
${ChoiceA4_13}    //label[@name='Answer_4_0_0_12']
${ChoiceA4_14}    //label[@name='Answer_4_0_0_13']
#ChoiceMedia
${ChoiceM_1}      //label[@name='Answer_5_0_0_0']
${ChoiceM_2}      //label[@name='Answer_5_0_0_1']
${ChoiceM_3}      //label[@name='Answer_5_0_0_2']
${ChoiceM_4}      //label[@name='Answer_5_0_0_3']
${ChoiceM_5}      //label[@name='Answer_5_0_0_4']
${ChoiceM_6}      //label[@name='Answer_5_0_0_5']
${ChoiceM_7}      //label[@name='Answer_5_0_0_6']
${ChoiceM_8}      //label[@name='Answer_5_0_0_7']
${ChoiceM_9}      //label[@name='Answer_5_0_0_8']
${ChoiceM_10}     //label[@name='Answer_5_0_0_9']
${ChoiceM_11}     //label[@name='Answer_5_0_0_10']
${ChoiceM_12}     //label[@name='Answer_5_0_0_11']
${ChoiceM_13}     //label[@name='Answer_5_0_0_12']
${ChoiceM_14}     //label[@name='Answer_5_0_0_13']
${ChoiceM_15}     //label[@name='Answer_5_0_0_14']
