*** Settings ***
Library           Selenium2Library
Resource          Variables.robot
Resource          Keywords.robot

*** Test Cases ***
TC1-Create Order success_Input information completed via Instagram contact_Canruntest
    #Open Browser
    Open Browser    https://fillgoods.co/login    ${Browser}
    Input Text    ${Email_Login}    smart.line.sincere@gmail.com
    Input Text    ${Password_Login}    31052020
    Click Element    ${Button_Login}
    Sleep    10s
    Click Element    ${Order_Menu}
    Sleep    2s
    Click Element    ${CreatedOrder_Menu}
    Sleep    10s
    Click Image    ${IG_Contact}
    Press keys    ${Customer_Name}    ณัฏฐศศิ
    Input Text    ${Address}    853 ซอยตากสิน 18
    Input Text    ${Address}    853 ซอยตากสิน 18
