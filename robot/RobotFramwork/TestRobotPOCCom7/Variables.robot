*** Settings ***
Library           Selenium2Library

*** Variables ***
#Browser
${Browser}        firefox
#
${Link_BananaStore_1}    https://s2.bizcuitvoc.com/?mode=generate&deployment_id=91e15d62-d983-4bc6-ba0a-d4ba022c7580&redirect_url=http%3A%2F%2Fs.bizcuitvoc.com%2FCOM7%5FFullLoop%5FAdhoc%5FPOC%2F&station=1&Location_Meta3=bnn-001&Date_Time_Meta1=_now_&dist_method=QR
${Link_BananaStore_2}    https://s2.bizcuitvoc.com/?mode=generate&deployment_id=91e15d62-d983-4bc6-ba0a-d4ba022c7580&redirect_url=http%3A%2F%2Fs.bizcuitvoc.com%2FCOM7%5FFullLoop%5FAdhoc%5FPOC%2F&station=2&Location_Meta3=bnn-001&Date_Time_Meta1=_now_&dist_method=QR
${Link_BananaStore_3}    https://s2.bizcuitvoc.com/?mode=generate&deployment_id=91e15d62-d983-4bc6-ba0a-d4ba022c7580&redirect_url=http%3A%2F%2Fs.bizcuitvoc.com%2FCOM7%5FFullLoop%5FAdhoc%5FPOC%2F&station=2&Location_Meta3=bnn-002&Date_Time_Meta1=_now_&dist_method=QR
${Link_BananaStore_4}    https://s2.bizcuitvoc.com/?mode=generate&deployment_id=91e15d62-d983-4bc6-ba0a-d4ba022c7580&redirect_url=http%3A%2F%2Fs.bizcuitvoc.com%2FCOM7%5FFullLoop%5FAdhoc%5FPOC%2F&station=3&Location_Meta3=bnn-002&Date_Time_Meta1=_now_&dist_method=QR
${Link_BananaStore_5}    https://s2.bizcuitvoc.com/?mode=generate&deployment_id=91e15d62-d983-4bc6-ba0a-d4ba022c7580&redirect_url=http%3A%2F%2Fs.bizcuitvoc.com%2FCOM7%5FFullLoop%5FAdhoc%5FPOC%2F&station=1&Location_Meta3=bnn-003&Date_Time_Meta1=_now_&dist_method=QR
#
${Link_BananaMobile_1}    https://s2.bizcuitvoc.com/?mode=generate&deployment_id=91e15d62-d983-4bc6-ba0a-d4ba022c7580&redirect_url=http%3A%2F%2Fs.bizcuitvoc.com%2FCOM7%5FFullLoop%5FAdhoc%5FPOC%2F&station=1&Location_Meta3=bnm-001&Date_Time_Meta1=_now_&dist_method=QR
${Link_BananaMobile_2}    https://s2.bizcuitvoc.com/?mode=generate&deployment_id=91e15d62-d983-4bc6-ba0a-d4ba022c7580&redirect_url=http%3A%2F%2Fs.bizcuitvoc.com%2FCOM7%5FFullLoop%5FAdhoc%5FPOC%2F&station=2&Location_Meta3=bnm-001&Date_Time_Meta1=_now_&dist_method=QR
${Link_BananaMobile_3}    https://s2.bizcuitvoc.com/?mode=generate&deployment_id=91e15d62-d983-4bc6-ba0a-d4ba022c7580&redirect_url=http%3A%2F%2Fs.bizcuitvoc.com%2FCOM7%5FFullLoop%5FAdhoc%5FPOC%2F&station=1&Location_Meta3=bnm-002&Date_Time_Meta1=_now_&dist_method=QR
${Link_BananaMobile_4}    https://s2.bizcuitvoc.com/?mode=generate&deployment_id=91e15d62-d983-4bc6-ba0a-d4ba022c7580&redirect_url=http%3A%2F%2Fs.bizcuitvoc.com%2FCOM7%5FFullLoop%5FAdhoc%5FPOC%2F&station=2&Location_Meta3=bnm-002&Date_Time_Meta1=_now_&dist_method=QR
${Link_BananaMobile_5}    https://s2.bizcuitvoc.com/?mode=generate&deployment_id=91e15d62-d983-4bc6-ba0a-d4ba022c7580&redirect_url=http%3A%2F%2Fs.bizcuitvoc.com%2FCOM7%5FFullLoop%5FAdhoc%5FPOC%2F&station=3&Location_Meta3=bnm-002&Date_Time_Meta1=_now_&dist_method=QR
#
${Link_iCare_1}    https://s2.bizcuitvoc.com/?mode=generate&deployment_id=91e15d62-d983-4bc6-ba0a-d4ba022c7580&redirect_url=http%3A%2F%2Fs.bizcuitvoc.com%2FCOM7%5FFullLoop%5FAdhoc%5FPOC%2F&station=1&Location_Meta3=icare-001&Date_Time_Meta1=_now_&dist_method=QR
${Link_iCare_2}    https://s2.bizcuitvoc.com/?mode=generate&deployment_id=91e15d62-d983-4bc6-ba0a-d4ba022c7580&redirect_url=http%3A%2F%2Fs.bizcuitvoc.com%2FCOM7%5FFullLoop%5FAdhoc%5FPOC%2F&station=2&Location_Meta3=icare-001&Date_Time_Meta1=_now_&dist_method=QR
${Link_iCare_3}    https://s2.bizcuitvoc.com/?mode=generate&deployment_id=91e15d62-d983-4bc6-ba0a-d4ba022c7580&redirect_url=http%3A%2F%2Fs.bizcuitvoc.com%2FCOM7%5FFullLoop%5FAdhoc%5FPOC%2F&station=1&Location_Meta3=icare-002&Date_Time_Meta1=_now_&dist_method=QR
#
${Link_Studio7_1}    https://s2.bizcuitvoc.com/?mode=generate&deployment_id=91e15d62-d983-4bc6-ba0a-d4ba022c7580&redirect_url=http%3A%2F%2Fs.bizcuitvoc.com%2FCOM7%5FFullLoop%5FAdhoc%5FPOC%2F&station=1&Location_Meta3=studio7-001&Date_Time_Meta1=_now_&dist_method=QR
${Link_Studio7_2}    https://s2.bizcuitvoc.com/?mode=generate&deployment_id=91e15d62-d983-4bc6-ba0a-d4ba022c7580&redirect_url=http%3A%2F%2Fs.bizcuitvoc.com%2FCOM7%5FFullLoop%5FAdhoc%5FPOC%2F&station=3&Location_Meta3=studio7-001&Date_Time_Meta1=_now_&dist_method=QR
${Link_Studio7_3}    https://s2.bizcuitvoc.com/?mode=generate&deployment_id=91e15d62-d983-4bc6-ba0a-d4ba022c7580&redirect_url=http%3A%2F%2Fs.bizcuitvoc.com%2FCOM7%5FFullLoop%5FAdhoc%5FPOC%2F&station=4&Location_Meta3=studio7-001&Date_Time_Meta1=_now_&dist_method=QR
${Link_Studio7_4}    https://s2.bizcuitvoc.com/?mode=generate&deployment_id=91e15d62-d983-4bc6-ba0a-d4ba022c7580&redirect_url=http%3A%2F%2Fs.bizcuitvoc.com%2FCOM7%5FFullLoop%5FAdhoc%5FPOC%2F&station=1&Location_Meta3=studio7-002&Date_Time_Meta1=_now_&dist_method=QR
${Link_Studio7_5}    https://s2.bizcuitvoc.com/?mode=generate&deployment_id=91e15d62-d983-4bc6-ba0a-d4ba022c7580&redirect_url=http%3A%2F%2Fs.bizcuitvoc.com%2FCOM7%5FFullLoop%5FAdhoc%5FPOC%2F&station=2&Location_Meta3=studio7-002&Date_Time_Meta1=_now_&dist_method=QR
#
${Link_UStore_1}    https://s2.bizcuitvoc.com/?mode=generate&deployment_id=91e15d62-d983-4bc6-ba0a-d4ba022c7580&redirect_url=http%3A%2F%2Fs.bizcuitvoc.com%2FCOM7%5FFullLoop%5FAdhoc%5FPOC%2F&station=1&Location_Meta3=ustore-001&Date_Time_Meta1=_now_&dist_method=QR
${Link_UStore_2}    https://s2.bizcuitvoc.com/?mode=generate&deployment_id=91e15d62-d983-4bc6-ba0a-d4ba022c7580&redirect_url=http%3A%2F%2Fs.bizcuitvoc.com%2FCOM7%5FFullLoop%5FAdhoc%5FPOC%2F&station=2&Location_Meta3=ustore-001&Date_Time_Meta1=_now_&dist_method=QR
${Link_UStore_3}    https://s2.bizcuitvoc.com/?mode=generate&deployment_id=91e15d62-d983-4bc6-ba0a-d4ba022c7580&redirect_url=http%3A%2F%2Fs.bizcuitvoc.com%2FCOM7%5FFullLoop%5FAdhoc%5FPOC%2F&station=1&Location_Meta3=ustore-001&Date_Time_Meta1=_now_&dist_method=QR
${Link_UStore_4}    https://s2.bizcuitvoc.com/?mode=generate&deployment_id=91e15d62-d983-4bc6-ba0a-d4ba022c7580&redirect_url=http%3A%2F%2Fs.bizcuitvoc.com%2FCOM7%5FFullLoop%5FAdhoc%5FPOC%2F&station=1&Location_Meta3=ustore-002&Date_Time_Meta1=_now_&dist_method=QR
${Link_UStore_5}    https://s2.bizcuitvoc.com/?mode=generate&deployment_id=91e15d62-d983-4bc6-ba0a-d4ba022c7580&redirect_url=http%3A%2F%2Fs.bizcuitvoc.com%2FCOM7%5FFullLoop%5FAdhoc%5FPOC%2F&station=2&Location_Meta3=ustore-002&Date_Time_Meta1=_now_&dist_method=QR
#Intro Main Survey
${Check_introMainTH1}    สวัสคีค่ะ ยินดีต้อนรับสู่ ระบบช่วยเหลือภายในร้าน กรุณากด "เริ่มใช้งาน" เพื่อเข้าสู่ระบบค่ะ
#Question 1
${Check_Q1_TH}    คุณต้องการความช่วยเหลือเรื่องใดคะ
#Choice Q1
${CheckChoiceQ1_1}    //label[@name='Answer_1_0_0_0']
${CheckChoiceQ1_2}    //label[@name='Answer_1_0_0_1']
${CheckChoiceQ1_3}    //label[@name='Answer_1_0_0_2']
${CheckChoiceQ1_4}    //label[@name='Answer_1_0_0_3']
${CheckChoiceQ1_5}    //label[@name='Answer_1_0_0_4']
#WaitingStaff
${CheckWaitingStaff}    ระบบนี้ จะแจ้งเตือนไปยังพนักงาน
${CheckWaitingStaff_1}    กรุณายืนรอที่จุดสแกน QR code สักครู่ พนักงานจะรีบเข้าไปให้บริการภายในเวลาไม่เกิน 2 นาทีนะคะ
${CheckWaitingStaff_2}    ระหว่างที่รอพนักงาน เราขอสอบถามรายละเอียดเพิ่มเติม
${CheckWaitingStaff_3}    กรุณากด "ถัดไป"
#Question 2 if Q1 = 1
${Check_Q2_TH}    คำตอบใดต่อไปนี้บ้างคะที่ทำให้คุณเลือกใช้บริการเรียกพนักงานกับ QR Code นี้ (ตอบได้หลายข้อ)
#Choice Q2
${CheckChoiceQ2_1}    //label[@name='Answer_3_0_0_0']
${CheckChoiceQ2_2}    //label[@name='Answer_3_0_0_1']
${CheckChoiceQ2_3}    //label[@name='Answer_3_0_0_2']
${CheckChoiceQ2_4}    //label[@name='Answer_3_0_0_3']
${CheckChoiceQ2_5}    //label[@name='Answer_3_0_0_4']
${CheckChoiceQ2_6}    //label[@name='Answer_3_0_0_5']
${CheckChoiceQ2_7}    //label[@name='Answer_3_0_0_6']
#Question 3 if Q1 = 2
${Check_Q3_TH}    คุณต้องการให้พนักงานสาธิตสินค้าใดคะ
#Choice Q3
${CheckChoiceQ3_1}    //label[@name='Answer_4_0_0_0']
${CheckChoiceQ3_2}    //label[@name='Answer_4_0_0_1']
${CheckChoiceQ3_3}    //label[@name='Answer_4_0_0_2']
${CheckChoiceQ3_4}    //label[@name='Answer_4_0_0_3']
${CheckChoiceQ3_5}    //label[@name='Answer_4_0_0_4']
${CheckChoiceQ3_6}    //label[@name='Answer_4_0_0_5']
${CheckChoiceQ3_7}    //label[@name='Answer_4_0_0_6']
${CheckChoiceQ3_8}    //label[@name='Answer_4_0_0_7']
${CheckChoiceQ3_9}    //label[@name='Answer_4_0_0_8']
#Question 4 if Q1 = 3
${Check_Q4_TH}    วันนี้ คุณมองหาสินค้ากลุ่มใดคะ (ตอบได้หลายข้อ)
#Choice Q4
${CheckChoiceQ4_1}    //label[@name='Answer_5_0_0_0']
${CheckChoiceQ4_2}    //label[@name='Answer_5_0_0_1']
${CheckChoiceQ4_3}    //label[@name='Answer_5_0_0_2']
${CheckChoiceQ4_4}    //label[@name='Answer_5_0_0_3']
${CheckChoiceQ4_5}    //label[@name='Answer_5_0_0_4']
${CheckChoiceQ4_6}    //label[@name='Answer_5_0_0_5']
${CheckChoiceQ4_7}    //label[@name='Answer_5_0_0_6']
${CheckChoiceQ4_8}    //label[@name='Answer_5_0_0_7']
${CheckChoiceQ4_9}    //label[@name='Answer_5_0_0_8']
#Question 5 if Q1 = 4
${Check_Q5_TH}    เรารู้สึกเสียใจในความไม่พอใจที่เราได้ก่อขึ้นในครั้งนี้ เราขอรบกวนให้ช่วยเล่าให้เราฟังด้วยค่ะว่าเกิดความผิดพลาดใดขึ้น เพื่อเราจะได้แก้ไขและพัฒนาต่อไป
#Question 6
${Check_Q6_TH_BananaStore}    คุณมีข้อเสนอแนะเพิ่มเติมที่อยากให้    BaNANA Store นำไปพัฒนาหรือปรับปรุงในเรื่องต่างๆบ้างหรือไม่คะ
${Check_Q6_TH_BananaMobile}    คุณมีข้อเสนอแนะเพิ่มเติมที่อยากให้    BaNANA Mobile นำไปพัฒนาหรือปรับปรุงในเรื่องต่างๆบ้างหรือไม่คะ
${Check_Q6_TH_Studio7}    คุณมีข้อเสนอแนะเพิ่มเติมที่อยากให้    Studio7 นำไปพัฒนาหรือปรับปรุงในเรื่องต่างๆบ้างหรือไม่คะ
${Check_Q6_TH_UStore}    คุณมีข้อเสนอแนะเพิ่มเติมที่อยากให้    U-Store นำไปพัฒนาหรือปรับปรุงในเรื่องต่างๆบ้างหรือไม่คะ
${Check_Q6_TH_iCare}    คุณมีข้อเสนอแนะเพิ่มเติมที่อยากให้    iCare นำไปพัฒนาหรือปรับปรุงในเรื่องต่างๆบ้างหรือไม่คะ
#Question 7
${Check_Q7_TH}    ไม่ทราบว่าขณะนี้ พนักงานเข้ามาให้บริการคุณ ตามที่ต้องการแล้วหรือไม่คะ
${Opt_in_Q7_have}    มี
${Opt_in_Q7_Nothave}    ไม่มี
${Optin_Q7_have}    name=Answer_7_0_1_0
${Optin_Q7_Nothave}    name=Answer_7_0_1_1
#Ending
${Ending_BananaStore}    BaNANA Store ขอขอบคุณที่สละเวลาในการให้ความเห็นกับเราในครั้งนี้ เราจะนำไปปรับปรุงและพัฒนาคุณภาพผลิตภัณฑ์และการให้บริการต่อไป
${Ending_BananaMobile}    BaNANA Mobile ขอขอบคุณที่สละเวลาในการให้ความเห็นกับเราในครั้งนี้ เราจะนำไปปรับปรุงและพัฒนาคุณภาพผลิตภัณฑ์และการให้บริการต่อไป
${Ending_Studio7}    Studio7 ขอขอบคุณที่สละเวลาในการให้ความเห็นกับเราในครั้งนี้ เราจะนำไปปรับปรุงและพัฒนาคุณภาพผลิตภัณฑ์และการให้บริการต่อไป
${Ending_UStore}    U-Store ขอขอบคุณที่สละเวลาในการให้ความเห็นกับเราในครั้งนี้ เราจะนำไปปรับปรุงและพัฒนาคุณภาพผลิตภัณฑ์และการให้บริการต่อไป
${Ending_iCare}    iCare ขอขอบคุณที่สละเวลาในการให้ความเห็นกับเราในครั้งนี้ เราจะนำไปปรับปรุงและพัฒนาคุณภาพผลิตภัณฑ์และการให้บริการต่อไป
${btn_startTH}    //div[@id='greeting-page']//div[@class='inpage-navigation']/span[1]
${Next_footer}    //body//span[@class='btn next']/i
