*** Settings ***
Library           Selenium2Library
Resource          Variables.robot
Resource          Keywords.robot

*** Test Cases ***
TC1-Test Survey AdHoc_BananaMobile_Q1=1
    #Open Browser    http://atv-customize-dev.bizcuitvoc.com/com7-noti    ${Browser}
    #Sleep    2s
    #Select From List By Value    id=myBranchNoSelect    bnm-001
    #Click button    id=join
    #Sleep    2s
    #Open Browser
    Open Browser    ${Link_BananaMobile_1}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}
    Capture Page Screenshot    D:/COM_7/BananaMobile/TC1/1_Intro.png
    Click Element    ${btn_startTH}
    #Q1
    Q1    ${Check_Q1_TH}
    Capture Page Screenshot    D:/COM_7/BananaMobile/TC1/2_Q1.png
    Click Element    ${CheckChoiceQ1_1}
    Sleep    2s
    #WaitingStaff
    #WaitingStaff    ${CheckWaitingStaff}    ${CheckWaitingStaff_1}    ${CheckWaitingStaff_2}    ${CheckWaitingStaff_3}
    Capture Page Screenshot    D:/COM_7/BananaMobile/TC1/3_WaitingStaff.png
    Click Element    //div[@name='page3']//span[@class='btn next']
    Sleep    2s
    #Q2
    Q2    ${Check_Q2_TH}
    Click Element    ${CheckChoiceQ2_2}
    Click Element    ${CheckChoiceQ2_5}
    Capture Page Screenshot    D:/COM_7/BananaMobile/TC1/4_Q2.png
    Click Element    ${Next_footer}
    Sleep    2s
    #Q6
    Q6_Banana Mobile    ${Check_Q6_TH_BananaMobile}
    Input Text    name=q6    ไม่มี
    Capture Page Screenshot    D:/COM_7/BananaMobile/TC1/5_Q6.png
    Sleep    2s
    Click Element    ${Next_footer}
    #Q7
    Q7    ${Check_Q7_TH}
    Click Element    name=Answer_7_0_1_1
    Capture Page Screenshot    D:/COM_7/BananaMobile/TC1/6_Q7.png
    Sleep    2s
    #Ending
    Ending_BananaMobile    ${Ending_BananaMobile}
    Capture Page Screenshot    D:/COM_7/BananaMobile/TC1/7_EndingPage.png
    Close Browser

TC2-Test Survey AdHoc_BananaMobile_Q1=2
    Open Browser    http://atv-customize-dev.bizcuitvoc.com/com7-noti    ${Browser}
    Sleep    2s
    Select From List By Value    id=myBranchNoSelect    bnm-001
    Click button    id=join
    Sleep    2s
    #Open Browser
    Open Browser    ${Link_BananaMobile_2}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}
    Capture Page Screenshot    D:/COM_7/BananaMobile/TC2/1_Intro.png
    Click Element    ${btn_startTH}
    #Q1
    Q1    ${Check_Q1_TH}
    Capture Page Screenshot    D:/COM_7/BananaMobile/TC2/2_Q1.png
    Click Element    ${CheckChoiceQ1_2}
    Sleep    2s
    #WaitingStaff
    #WaitingStaff    ${CheckWaitingStaff}    ${CheckWaitingStaff_1}    ${CheckWaitingStaff_2}    ${CheckWaitingStaff_3}
    Capture Page Screenshot    D:/COM_7/BananaMobile/TC2/3_WaitingStaff.png
    Click Element    //div[@name='page3']//span[@class='btn next']
    Sleep    2s
    #Q3
    Q3    ${Check_Q3_TH}
    Capture Page Screenshot    D:/COM_7/BananaMobile/TC2/4_Q3.png
    Click Element    ${CheckChoiceQ3_1}
    Sleep    2s
    #Q6
    Q6_Banana Mobile    ${Check_Q6_TH_BananaMobile}
    Input Text    name=q6    อยากให้มีการสาธิตสินค้าเมื่อลูกค้าซื้อเบื้องต้นในทุกครั้ง และมีการตรวจเช็คสินค้าร่วมกัน
    Capture Page Screenshot    D:/COM_7/BananaMobile/TC2/5_Q6.png
    Sleep    2s
    Click Element    ${Next_footer}
    #Q7
    Q7    ${Check_Q7_TH}
    Capture Page Screenshot    D:/COM_7/BananaMobile/TC1/6_Q7.png
    Click Element    name=Answer_7_0_1_0
    Sleep    2s
    #Ending
    Ending_BananaMobile    ${Ending_BananaMobile}
    Capture Page Screenshot    D:/COM_7/BananaMobile/TC1/7_EndingPage.png
    Close Browser

TC3-Test Survey AdHoc_BananaMobile_Q1=3
    Open Browser    http://atv-customize-dev.bizcuitvoc.com/com7-noti    ${Browser}
    Sleep    2s
    Select From List By Value    id=myBranchNoSelect    bnm-002
    Click button    id=join
    Sleep    2s
    #Open Browser
    Open Browser    ${Link_BananaMobile_3}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}
    Capture Page Screenshot    D:/COM_7/BananaMobile/TC3/1_Intro.png
    Click Element    ${btn_startTH}
    #Q1
    Q1    ${Check_Q1_TH}
    Capture Page Screenshot    D:/COM_7/BananaMobile/TC3/2_Q1.png
    Click Element    ${CheckChoiceQ1_3}
    Sleep    2s
    #WaitingStaff
    #WaitingStaff    ${CheckWaitingStaff}    ${CheckWaitingStaff_1}    ${CheckWaitingStaff_2}    ${CheckWaitingStaff_3}
    Capture Page Screenshot    D:/COM_7/BananaMobile/TC3/3_WaitingStaff.png
    Click Element    //div[@name='page3']//span[@class='btn next']
    Sleep    2s
    #Q4
    Q4    ${Check_Q4_TH}
    Click Element    ${CheckChoiceQ4_7}
    Capture Page Screenshot    D:/COM_7/BananaMobile/TC3/4_Q4.png
    Click Element    ${Next_footer}
    Sleep    2s
    #Q6
    Q6_Banana Mobile    ${Check_Q6_TH_BananaMobile}
    Capture Page Screenshot    D:/COM_7/BananaMobile/TC3/5_Q6.png
    Sleep    2s
    Click Element    ${Next_footer}
    #Q7
    Q7    ${Check_Q7_TH}
    Capture Page Screenshot    D:/COM_7/BananaMobile/TC3/6_Q7.png
    Click Element    name=Answer_7_0_1_0
    Sleep    2s
    #Ending
    Ending_BananaMobile    ${Ending_BananaMobile}
    Capture Page Screenshot    D:/COM_7/BananaMobile/TC3/7_EndingPage.png
    Close Browser

TC4-Test Survey AdHoc_BananaMobile_Q1=4
    Open Browser    http://atv-customize-dev.bizcuitvoc.com/com7-noti    ${Browser}
    Sleep    2s
    Select From List By Value    id=myBranchNoSelect    bnm-002
    Click button    id=join
    Sleep    2s
    #Open Browser
    Open Browser    ${Link_BananaMobile_4}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}
    Capture Page Screenshot    D:/COM_7/BananaMobile/TC4/1_Intro.png
    Click Element    ${btn_startTH}
    #Q1
    Q1    ${Check_Q1_TH}
    Capture Page Screenshot    D:/COM_7/BananaMobile/TC4/2_Q1.png
    Click Element    ${CheckChoiceQ1_4}
    Sleep    2s
    #WaitingStaff
    #WaitingStaff    ${CheckWaitingStaff}    ${CheckWaitingStaff_1}    ${CheckWaitingStaff_2}    ${CheckWaitingStaff_3}
    Capture Page Screenshot    D:/COM_7/BananaMobile/TC4/3_WaitingStaff.png
    Click Element    //div[@name='page3']//span[@class='btn next']
    Sleep    2s
    #Q5
    Q5    ${Check_Q5_TH}
    Input Text    name=q5    พนักงานติดฟิล์มไม่ดี แต่ไม่เปลี่ยนฟิล์มให้
    Capture Page Screenshot    D:/COM_7/BananaMobile/TC4/4_Q5.png
    Click Element    ${Next_footer}
    Sleep    2s
    #Q6
    Q6_Banana Mobile    ${Check_Q6_TH_BananaMobile}
    Input Text    name=q6    ควรอบรมพนักงานให้ดีกว่านี้ จริงๆ ราคาฟิล์มมันไม่กี่บาท แต่ขายหลายร้อย ควรจะบริการให้ดีกว่านี้
    Capture Page Screenshot    D:/COM_7/BananaMobile/TC4/5_Q6.png
    Sleep    2s
    Click Element    ${Next_footer}
    #Q7
    Q7    ${Check_Q7_TH}
    Capture Page Screenshot    D:/COM_7/BananaMobile/TC4/6_Q7.png
    Click Element    name=Answer_7_0_1_1
    Sleep    2s
    #Ending
    Ending_BananaMobile    ${Ending_BananaMobile}
    Capture Page Screenshot    D:/COM_7/BananaMobile/TC4/7_EndingPage.png
    Close Browser

TC5-Test Survey AdHoc_BananaMobile_Q1=5
    Open Browser    http://atv-customize-dev.bizcuitvoc.com/com7-noti    ${Browser}
    Sleep    2s
    Select From List By Value    id=myBranchNoSelect    bnm-002
    Click button    id=join
    Sleep    2s
    #Open Browser
    Open Browser    ${Link_BananaMobile_5}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}
    Capture Page Screenshot    D:/COM_7/BananaMobile/TC5/1_Intro.png
    Click Element    ${btn_startTH}
    #Q1
    Q1    ${Check_Q1_TH}
    Capture Page Screenshot    D:/COM_7/BananaMobile/TC5/2_Q1.png
    Click Element    ${CheckChoiceQ1_5}
    Press Key    name=q1_5_oa    สินค้าที่ซื้อมีรอบต้องการเปลี่ยนชิ้นใหม่
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    #WaitingStaff
    #WaitingStaff    ${CheckWaitingStaff}    ${CheckWaitingStaff_1}    ${CheckWaitingStaff_2}    ${CheckWaitingStaff_3}
    Capture Page Screenshot    D:/COM_7/BananaMobile/TC5/3_WaitingStaff.png
    Click Element    //div[@name='page3']//span[@class='btn next']
    Sleep    2s
    #Q6
    Q6_Banana Mobile    ${Check_Q6_TH_BananaMobile}
    Input Text    name=q6    อยากให้พนักงานยืนดูด้วยตอนตรวจรับสินค้า
    Capture Page Screenshot    D:/COM_7/BananaMobile/TC5/5_Q6.png
    Sleep    2s
    Click Element    ${Next_footer}
    #Q7
    Q7    ${Check_Q7_TH}
    Capture Page Screenshot    D:/COM_7/BananaMobile/TC5/6_Q7.png
    Click Element    name=Answer_7_0_1_0
    Sleep    2s
    #Ending
    Ending_BananaMobile    ${Ending_BananaMobile}
    Capture Page Screenshot    D:/COM_7/BananaMobile/TC5/7_EndingPage.png
    Close Browser
