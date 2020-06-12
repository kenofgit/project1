*** Settings ***
Library           Selenium2Library
Resource          Variables.robot
Resource          Keywords.robot

*** Test Cases ***
TC1-Test Survey AdHoc_UStore_Q1=1
    Open Browser    http://13.251.180.238/com7-noti    ${Browser}
    Sleep    2s
    Select From List By Value    id=myBranchNoSelect    ustore-001
    Click button    id=join
    Sleep    2s
    #Open Browser
    Open Browser    ${Link_UStore_1}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}
    Capture Page Screenshot    D:/COM_7/UStore/TC1/1_Intro.png
    Click Element    ${btn_startTH}
    #Q1
    Q1    ${Check_Q1_TH}
    Capture Page Screenshot    D:/COM_7/UStore/TC1/2_Q1.png
    Click Element    ${CheckChoiceQ1_1}
    Sleep    2s
    #WaitingStaff
    #WaitingStaff    ${CheckWaitingStaff}    ${CheckWaitingStaff_1}    ${CheckWaitingStaff_2}    ${CheckWaitingStaff_3}
    Capture Page Screenshot    D:/COM_7/UStore/TC1/3_WaitingStaff.png
    Click Element    //div[@name='page3']//span[@class='btn next']
    Sleep    2s
    #Q2
    Q2    ${Check_Q2_TH}
    Click Element    ${CheckChoiceQ2_3}
    Click Element    ${CheckChoiceQ2_5}
    Capture Page Screenshot    D:/COM_7/UStore/TC1/4_Q2.png
    Click Element    ${Next_footer}
    Sleep    2s
    #Q6
    Q6_UStore    ${Check_Q6_TH_UStore}
    Input Text    name=q6    อยากให้มีส่วนลดสำหรับการศึกษามากกว่านี้
    Capture Page Screenshot    D:/COM_7/UStore/TC1/5_Q6.png
    Sleep    2s
    Click Element    ${Next_footer}
    #Q7
    Q7    ${Check_Q7_TH}
    Click Element    name=Answer_7_0_1_1
    Capture Page Screenshot    D:/COM_7/UStore/TC1/6_Q7.png
    Sleep    2s
    #Ending
    Ending_UStore    ${Ending_UStore}
    Capture Page Screenshot    D:/COM_7/UStore/TC1/7_EndingPage.png
    Close Browser

TC2-Test Survey AdHoc_UStore_Q1=2
    Open Browser    http://13.251.180.238/com7-noti    ${Browser}
    Sleep    2s
    Select From List By Value    id=myBranchNoSelect    ustore-001
    Click button    id=join
    Sleep    2s
    #Open Browser
    Open Browser    ${Link_UStore_2}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}
    Capture Page Screenshot    D:/COM_7/UStore/TC2/1_Intro.png
    Click Element    ${btn_startTH}
    #Q1
    Q1    ${Check_Q1_TH}
    Capture Page Screenshot    D:/COM_7/UStore/TC2/2_Q1.png
    Click Element    ${CheckChoiceQ1_2}
    Sleep    2s
    #WaitingStaff
    #WaitingStaff    ${CheckWaitingStaff}    ${CheckWaitingStaff_1}    ${CheckWaitingStaff_2}    ${CheckWaitingStaff_3}
    Capture Page Screenshot    D:/COM_7/UStore/TC2/3_WaitingStaff.png
    Click Element    //div[@name='page3']//span[@class='btn next']
    Sleep    2s
    #Q3
    Q3    ${Check_Q3_TH}
    Capture Page Screenshot    D:/COM_7/UStore/TC2/4_Q3.png
    Click Element    ${CheckChoiceQ3_4}
    Sleep    2s
    #Q6
    Q6_UStore    ${Check_Q6_TH_UStore}
    Input Text    name=q6    เพิ่งเริ่มใช้งาน อยากให้มีการสาธิตการใช้งานอย่างละเอียด ควรมีสาธิตให้กับลูกค้าที่ต้องการโดยควรสอบถามว่าต้องการหรือไม่
    Capture Page Screenshot    D:/COM_7/UStore/TC2/5_Q6.png
    Sleep    2s
    Click Element    ${Next_footer}
    #Q7
    Q7    ${Check_Q7_TH}
    Capture Page Screenshot    D:/COM_7/UStore/TC1/6_Q7.png
    Click Element    name=Answer_7_0_1_1
    Sleep    2s
    #Ending
    Ending_UStore    ${Ending_UStore}
    Capture Page Screenshot    D:/COM_7/UStore/TC1/7_EndingPage.png
    Close Browser

TC3-Test Survey AdHoc_UStore_Q1=3
    Open Browser    http://13.251.180.238/com7-noti    ${Browser}
    Sleep    2s
    Select From List By Value    id=myBranchNoSelect    ustore-001
    Click button    id=join
    Sleep    2s
    #Open Browser
    Open Browser    ${Link_UStore_3}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}
    Capture Page Screenshot    D:/COM_7/UStore/TC3/1_Intro.png
    Click Element    ${btn_startTH}
    #Q1
    Q1    ${Check_Q1_TH}
    Capture Page Screenshot    D:/COM_7/UStore/TC3/2_Q1.png
    Click Element    ${CheckChoiceQ1_3}
    Sleep    2s
    #WaitingStaff
    #WaitingStaff    ${CheckWaitingStaff}    ${CheckWaitingStaff_1}    ${CheckWaitingStaff_2}    ${CheckWaitingStaff_3}
    Capture Page Screenshot    D:/COM_7/UStore/TC3/3_WaitingStaff.png
    Click Element    //div[@name='page3']//span[@class='btn next']
    Sleep    2s
    #Q4
    Q4    ${Check_Q4_TH}
    Click Element    ${CheckChoiceQ4_5}
    Capture Page Screenshot    D:/COM_7/UStore/TC3/4_Q4.png
    Click Element    ${Next_footer}
    Sleep    2s
    #Q6
    Q6_UStore    ${Check_Q6_TH_UStore}
    Input Text    name=q6    อยากให้จัดเรียงสินค้าให้เป็นหมวดหมู่มากกว่านี้
    Capture Page Screenshot    D:/COM_7/UStore/TC3/5_Q6.png
    Sleep    2s
    Click Element    ${Next_footer}
    #Q7
    Q7    ${Check_Q7_TH}
    Capture Page Screenshot    D:/COM_7/UStore/TC3/6_Q7.png
    Click Element    name=Answer_7_0_1_0
    Sleep    2s
    #Ending
    Ending_UStore    ${Ending_UStore}
    Capture Page Screenshot    D:/COM_7/UStore/TC3/7_EndingPage.png
    Close Browser

TC4-Test Survey AdHoc_UStore_Q1=4
    Open Browser    http://13.251.180.238/com7-noti    ${Browser}
    Sleep    2s
    Select From List By Value    id=myBranchNoSelect    ustore-002
    Click button    id=join
    Sleep    2s
    #Open Browser
    Open Browser    ${Link_UStore_4}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}
    Capture Page Screenshot    D:/COM_7/UStore/TC4/1_Intro.png
    Click Element    ${btn_startTH}
    #Q1
    Q1    ${Check_Q1_TH}
    Capture Page Screenshot    D:/COM_7/UStore/TC4/2_Q1.png
    Click Element    ${CheckChoiceQ1_4}
    Sleep    2s
    #WaitingStaff
    #WaitingStaff    ${CheckWaitingStaff}    ${CheckWaitingStaff_1}    ${CheckWaitingStaff_2}    ${CheckWaitingStaff_3}
    Capture Page Screenshot    D:/COM_7/UStore/TC4/3_WaitingStaff.png
    Click Element    //div[@name='page3']//span[@class='btn next']
    Sleep    2s
    #Q5
    Q5    ${Check_Q5_TH}
    Input Text    name=q5    โทรมาสอบถามว่ามีสินค้าหรือไม่ แจ้งบอกว่ามี แต่พอมาถึงแจ้งบอกสินค้าหมดไปนานมากแล้ว
    Capture Page Screenshot    D:/COM_7/UStore/TC4/4_Q5.png
    Click Element    ${Next_footer}
    Sleep    2s
    #Q6
    Q6_UStore    ${Check_Q6_TH_UStore}
    Input Text    name=q6    พนักงานไม่มีการขอโทษไม่รู้สึกผิด และไม่สนใจอะไรเลย ควรอบรมพนักงานให้ดีกว่านี้
    Capture Page Screenshot    D:/COM_7/UStore/TC4/5_Q6.png
    Sleep    2s
    Click Element    ${Next_footer}
    #Q7
    Q7    ${Check_Q7_TH}
    Capture Page Screenshot    D:/COM_7/UStore/TC4/6_Q7.png
    Click Element    name=Answer_7_0_1_0
    Sleep    2s
    #Ending
    Ending_UStore    ${Ending_UStore}
    Capture Page Screenshot    D:/COM_7/UStore/TC4/7_EndingPage.png
    Close Browser

TC5-Test Survey AdHoc_UStore_Q1=5
    Open Browser    http://13.251.180.238/com7-noti    ${Browser}
    Sleep    2s
    Select From List By Value    id=myBranchNoSelect    ustore-002
    Click button    id=join
    Sleep    2s
    #Open Browser
    Open Browser    ${Link_UStore_5}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}
    Capture Page Screenshot    D:/COM_7/UStore/TC5/1_Intro.png
    Click Element    ${btn_startTH}
    #Q1
    Q1    ${Check_Q1_TH}
    Click Element    ${CheckChoiceQ1_5}
    Press Key    name=q1_5_oa    ขอรับใบเสร็จรับเงิน
    Click Element    //div[@name='page2']//span[@class='btn next']
    Capture Page Screenshot    D:/COM_7/UStore/TC5/2_Q1.png
    Sleep    2s
    #WaitingStaff
    #WaitingStaff    ${CheckWaitingStaff}    ${CheckWaitingStaff_1}    ${CheckWaitingStaff_2}    ${CheckWaitingStaff_3}
    Capture Page Screenshot    D:/COM_7/UStore/TC5/3_WaitingStaff.png
    Click Element    //div[@name='page3']//span[@class='btn next']
    Sleep    2s
    #Q6
    Q6_UStore    ${Check_Q6_TH_UStore}
    Input Text    name=q6    -
    Capture Page Screenshot    D:/COM_7/UStore/TC5/5_Q6.png
    Sleep    2s
    Click Element    ${Next_footer}
    #Q7
    Q7    ${Check_Q7_TH}
    Capture Page Screenshot    D:/COM_7/UStore/TC5/6_Q7.png
    Click Element    name=Answer_7_0_1_1
    Sleep    2s
    #Ending
    Ending_UStore    ${Ending_UStore}
    Capture Page Screenshot    D:/COM_7/UStore/TC5/7_EndingPage.png
    Close Browser
