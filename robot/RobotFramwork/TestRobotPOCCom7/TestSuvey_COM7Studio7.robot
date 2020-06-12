*** Settings ***
Library           Selenium2Library
Resource          Variables.robot
Resource          Keywords.robot

*** Test Cases ***
TC1-Test Survey AdHoc_Studio7_Q1=1
    Open Browser    http://13.251.180.238/com7-noti    ${Browser}
    Sleep    2s
    Select From List By Value    id=myBranchNoSelect    studio7-001
    Click button    id=join
    Sleep    2s
    #Open Browser
    Open Browser    ${Link_Studio7_1}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}
    Capture Page Screenshot    D:/COM_7/Studio7/TC1/1_Intro.png
    Click Element    ${btn_startTH}
    #Q1
    Q1    ${Check_Q1_TH}
    Capture Page Screenshot    D:/COM_7/Studio7/TC1/2_Q1.png
    Click Element    ${CheckChoiceQ1_1}
    Sleep    2s
    #WaitingStaff
    #WaitingStaff    ${CheckWaitingStaff}    ${CheckWaitingStaff_1}    ${CheckWaitingStaff_2}    ${CheckWaitingStaff_3}
    Capture Page Screenshot    D:/COM_7/Studio7/TC1/3_WaitingStaff.png
    Click Element    //div[@name='page3']//span[@class='btn next']
    Sleep    2s
    #Q2
    Q2    ${Check_Q2_TH}
    Click Element    ${CheckChoiceQ2_6}
    Click Element    ${CheckChoiceQ2_2}
    Click Element    ${CheckChoiceQ2_7}
    Input Text    name=q2_7_oa    พนักงานบอกให้รอแล้วพนักงานคนนั้นก็หายไปเลย
    Capture Page Screenshot    D:/COM_7/Studio7/TC1/4_Q2.png
    Click Element    ${Next_footer}
    Sleep    2s
    #Q6
    Q6_Studio7    ${Check_Q6_TH_Studio7}
    Input Text    name=q6    ถ้าพนักงานไม่พอ และหากมีการเข้าคิวคงจะจัดการได้ดีกว่านี้
    Capture Page Screenshot    D:/COM_7/Studio7/TC1/5_Q6.png
    Sleep    2s
    Click Element    ${Next_footer}
    #Q7
    Q7    ${Check_Q7_TH}
    Click Element    name=Answer_7_0_1_0
    Capture Page Screenshot    D:/COM_7/Studio7/TC1/6_Q7.png
    Sleep    2s
    #Ending
    Ending_Studio7    ${Ending_Studio7}
    Capture Page Screenshot    D:/COM_7/Studio7/TC1/7_EndingPage.png
    Close Browser

TC2-Test Survey AdHoc_Studio7_Q1=2
    Open Browser    http://13.251.180.238/com7-noti    ${Browser}
    Sleep    2s
    Select From List By Value    id=myBranchNoSelect    studio7-001
    Click button    id=join
    #Open Browser
    Open Browser    ${Link_Studio7_2}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}
    Capture Page Screenshot    D:/COM_7/Studio7/TC2/1_Intro.png
    Click Element    ${btn_startTH}
    #Q1
    Q1    ${Check_Q1_TH}
    Capture Page Screenshot    D:/COM_7/Studio7/TC2/2_Q1.png
    Click Element    ${CheckChoiceQ1_2}
    Sleep    2s
    #WaitingStaff
    #WaitingStaff    ${CheckWaitingStaff}    ${CheckWaitingStaff_1}    ${CheckWaitingStaff_2}    ${CheckWaitingStaff_3}
    Capture Page Screenshot    D:/COM_7/Studio7/TC2/3_WaitingStaff.png
    Click Element    //div[@name='page3']//span[@class='btn next']
    Sleep    2s
    #Q3
    Q3    ${Check_Q3_TH}
    Capture Page Screenshot    D:/COM_7/Studio7/TC2/4_Q3.png
    Click Element    ${CheckChoiceQ3_6}
    Sleep    2s
    #Q6
    Q6_Studio7    ${Check_Q6_TH_Studio7}
    Input Text    name=q6    อยากให้มีการสาธิตสินค้าเมื่อลูกค้าซื้อเบื้องต้นในทุกครั้ง
    Capture Page Screenshot    D:/COM_7/Studio7/TC2/5_Q6.png
    Sleep    2s
    Click Element    ${Next_footer}
    #Q7
    Q7    ${Check_Q7_TH}
    Capture Page Screenshot    D:/COM_7/Studio7/TC1/6_Q7.png
    Click Element    name=Answer_7_0_1_0
    Sleep    2s
    #Ending
    Ending_Studio7    ${Ending_Studio7}
    Capture Page Screenshot    D:/COM_7/Studio7/TC1/7_EndingPage.png
    Close Browser

TC3-Test Survey AdHoc_Studio7_Q1=3
    Open Browser    http://13.251.180.238/com7-noti    ${Browser}
    Sleep    2s
    Select From List By Value    id=myBranchNoSelect    studio7-001
    Click button    id=join
    #Open Browser
    Open Browser    ${Link_Studio7_3}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}
    Capture Page Screenshot    D:/COM_7/Studio7/TC3/1_Intro.png
    Click Element    ${btn_startTH}
    #Q1
    Q1    ${Check_Q1_TH}
    Capture Page Screenshot    D:/COM_7/Studio7/TC3/2_Q1.png
    Click Element    ${CheckChoiceQ1_3}
    Sleep    2s
    #WaitingStaff
    #WaitingStaff    ${CheckWaitingStaff}    ${CheckWaitingStaff_1}    ${CheckWaitingStaff_2}    ${CheckWaitingStaff_3}
    Capture Page Screenshot    D:/COM_7/Studio7/TC3/3_WaitingStaff.png
    Click Element    //div[@name='page3']//span[@class='btn next']
    Sleep    2s
    #Q4
    Q4    ${Check_Q4_TH}
    Click Element    ${CheckChoiceQ4_5}
    Click Element    ${CheckChoiceQ4_6}
    Click Element    ${CheckChoiceQ4_9}
    Input Text    name=q4_9_oa    WirelessCharger
    Capture Page Screenshot    D:/COM_7/Studio7/TC3/4_Q4.png
    Click Element    ${Next_footer}
    Sleep    2s
    #Q6
    Q6_Studio7    ${Check_Q6_TH_Studio7}
    Capture Page Screenshot    D:/COM_7/Studio7/TC3/5_Q6.png
    Sleep    2s
    Click Element    ${Next_footer}
    #Q7
    Q7    ${Check_Q7_TH}
    Capture Page Screenshot    D:/COM_7/Studio7/TC3/6_Q7.png
    Click Element    name=Answer_7_0_1_1
    Sleep    2s
    #Ending
    Ending_Studio7    ${Ending_Studio7}
    Capture Page Screenshot    D:/COM_7/Studio7/TC3/7_EndingPage.png
    Close Browser

TC4-Test Survey AdHoc_Studio7_Q1=4
    Open Browser    http://13.251.180.238/com7-noti    ${Browser}
    Sleep    2s
    Select From List By Value    id=myBranchNoSelect    studio7-002
    Click button    id=join
    #Open Browser
    Open Browser    ${Link_Studio7_4}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}
    Capture Page Screenshot    D:/COM_7/Studio7/TC4/1_Intro.png
    Click Element    ${btn_startTH}
    #Q1
    Q1    ${Check_Q1_TH}
    Capture Page Screenshot    D:/COM_7/Studio7/TC4/2_Q1.png
    Click Element    ${CheckChoiceQ1_4}
    Sleep    2s
    #WaitingStaff
    #WaitingStaff    ${CheckWaitingStaff}    ${CheckWaitingStaff_1}    ${CheckWaitingStaff_2}    ${CheckWaitingStaff_3}
    Capture Page Screenshot    D:/COM_7/Studio7/TC4/3_WaitingStaff.png
    Click Element    //div[@name='page3']//span[@class='btn next']
    Sleep    2s
    #Q5
    Q5    ${Check_Q5_TH}
    Input Text    name=q5    เปิดกล่องมือถือมามีรอยเลอะ พนักงานพยายามเช็ดจนเป็นรอยจนแมวที่อื่น แต่รอยเลอะหาย
    Capture Page Screenshot    D:/COM_7/Studio7/TC4/4_Q5.png
    Click Element    ${Next_footer}
    Sleep    2s
    #Q6
    Q6_Studio7    ${Check_Q6_TH_Studio7}
    Input Text    name=q6    หากลูกค้าไม่พอใจสินค้า ควรเปลี่ยนเครื่องใหม่เพราะมีรอย ใช้มาตราฐานเดียวกับ Apple Store
    Capture Page Screenshot    D:/COM_7/Studio7/TC4/5_Q6.png
    Sleep    2s
    Click Element    ${Next_footer}
    #Q7
    Q7    ${Check_Q7_TH}
    Capture Page Screenshot    D:/COM_7/Studio7/TC4/6_Q7.png
    Click Element    name=Answer_7_0_1_1
    Sleep    2s
    #Ending
    Ending_Studio7    ${Ending_Studio7}
    Capture Page Screenshot    D:/COM_7/Studio7/TC4/7_EndingPage.png
    Close Browser

TC5-Test Survey AdHoc_Studio7_Q1=5
    Open Browser    http://13.251.180.238/com7-noti    ${Browser}
    Sleep    2s
    Select From List By Value    id=myBranchNoSelect    studio7-001
    Click button    id=join
    #Open Browser
    Open Browser    ${Link_Studio7_5}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}
    Capture Page Screenshot    D:/COM_7/Studio7/TC5/1_Intro.png
    Click Element    ${btn_startTH}
    #Q1
    Q1    ${Check_Q1_TH}
    Click Element    ${CheckChoiceQ1_5}
    Press Key    name=q1_5_oa    -
    Click Element    //div[@name='page2']//span[@class='btn next']
    Capture Page Screenshot    D:/COM_7/Studio7/TC5/2_Q1.png
    Sleep    2s
    #WaitingStaff
    #WaitingStaff    ${CheckWaitingStaff}    ${CheckWaitingStaff_1}    ${CheckWaitingStaff_2}    ${CheckWaitingStaff_3}
    Capture Page Screenshot    D:/COM_7/Studio7/TC5/3_WaitingStaff.png
    Click Element    //div[@name='page3']//span[@class='btn next']
    Sleep    2s
    #Q6
    Q6_Studio7    ${Check_Q6_TH_Studio7}
    Input Text    name=q6    ไม่มี
    Capture Page Screenshot    D:/COM_7/Studio7/TC5/5_Q6.png
    Sleep    2s
    Click Element    ${Next_footer}
    #Q7
    Q7    ${Check_Q7_TH}
    Capture Page Screenshot    D:/COM_7/Studio7/TC5/6_Q7.png
    Click Element    name=Answer_7_0_1_0
    Sleep    2s
    #Ending
    Ending_Studio7    ${Ending_Studio7}
    Capture Page Screenshot    D:/COM_7/Studio7/TC5/7_EndingPage.png
    Close Browser
