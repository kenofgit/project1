*** Settings ***
Library           Selenium2Library
Resource          Variables.robot
Resource          Keywords.robot

*** Test Cases ***
TC1- Create Order success_Input information completed via Instagram contact
    #Open Browser
    Click Element    id=ch_ig
    #Input data in Field
    Press Key    id=customername    ณัฏฐศศิ    เลิศเจริญชัยกุล
    Press Key    id=address    853 ซอยตากสิน 18
    Press Key    id=telephone    0646459299
    Press Key    id=telephone2    0935364263
    Press Key    id=provice    กรุงเทพมหานคร
    Press Key    id=district    ธนบุรี
    Press Key    id=subdistrice    บุคคโล
    Press Key    id=zipcode    10600
    #Add Item
    Click Element    id=additem
    #Select item success......
    Input Text    id=note    รบกวนโทรติดต่อกอนเข้าส่ง
    Click Element    id=save

TC2- Create Order unsuccess_Not input custname, address and Telephone via Instagram contact
    Click Element    id=ch_ig
    #Input data in Field
    Input Text    id=address_search    บุคคโล >> ธนบุรี >> กรุงเทพมหานคร >> 10600
    Element Should Contain    id=provice    กรุงเทพมหานคร
    Element Should Contain    id=district    ธนบุรี
    Element Should Contain    id=subdistrice    บุคคโล
    Element Should Contain    id=zipcode    10600
    #Add Item
    Click Element    id=additem
    #Select item success......
    Input Text    id=note    รบกวนโทรติดต่อกอนเข้าส่ง
    Click Element    id=save
    #Check Validation alert require field
    Element Should Contain    id=customername_error    ยังไม่ได้กรอกชื่อลูกค้า
    Element Should Contain    id=address    ยยังไม่ได้กรอกที่อยู่ลูกค้า
    Element Should Contain    id=telephone_error    ยังไม่ได้กรอกเบอร์โทรศัพท์
