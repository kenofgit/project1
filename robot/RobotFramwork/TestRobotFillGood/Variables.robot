*** Settings ***
Library           Selenium2Library

*** Variables ***
#Browser
${Browser}        firefox
${Link_FillGood}    https://fillgoods.co/login
#
${Email_Login}    //input[@type='text']
${Password_Login}    //input[@type='password']
${Button_Login}    //button[@type='submit']
${Check_Q2_TH}    คำตอบใดต่อไปนี้บ้างคะที่ทำให้คุณเลือกใช้บริการเรียกพนักงานกับ QR Code นี้ (ตอบได้หลายข้อ)
#Ordermenu
${Order_Menu}     //button[@id='Orders']/div/span
${CreatedOrder_Menu}    //a[@id='Create']/div[.=' สร้างออเดอร์ ']
${IG_Contact}     //div[@id='app']/div[@class='application--wrap']/main//div[@class='fill-height']//main[@class='v-content']/div/div[1]/div/div/div[2]/div[1]/div/div[@class='container px-0 py-3']/div//img[@src='data:image/png;base64,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']
#Field Create Order
${Customer_Name}    //main[@class='v-content']/div/div[1]/div/div/div[2]/div[2]/div[1]/div[2]/div//input[@type='text']
${Address}        //*[@name='input-7-1']
${Telephone_No1}    //main[@class='v-content']/div/div[1]/div/div/div[2]/div[3]/div[2]/div[2]/div//input[@type='text']
${Address_Search}    //main[@class='v-content']/div/div[1]/div/div/div[2]/div[4]/div[1]/div//input[@role='combobox']
