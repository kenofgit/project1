*** Settings ***
Library           Selenium2Library
Resource          Variables.robot
Resource          Keywords.robot

*** Test Cases ***
Testcase1_AddInfluencerList
    #Open Browser
    Open Browser    ${URL_Report}    firefox
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/Influencer/Result/Login.png
    #Input Username and Password
    Press Key    //div[@id='gatsby-focus-wrapper']//form/input[1]    ${Username}
    Press Key    //div[@id='gatsby-focus-wrapper']//form/input[2]    ${Password}
    Click Element    //button[contains(text(), 'LOG IN')]
    Capture Page Screenshot    D:/Influencer/Result/LoginSuccess.png
    Sleep    3s
    #Menu Influencer Management
    Click Element    ${InfluencerManage}
    Sleep    2s
    #Add New Influencer
    Click Element    ${AddNewInfluen}
    Sleep    5s
    #InputInformation
    Set Focus To Element    //*[@id="add-influencer"]/div/div    #popup InfluencerSetup
    Input Text    //div[@id='add-influencer']/div[@role='document']//form/div[1]/input    น้ำหนึ่ง    #กรอก Name
    Click Element    //div[@class='flatpickr-wrapper']/input[2]    #คลิก Date Of Birth
    Clear Element Text    //div[@role='document']/div//input[@type='number']    #ลบปี
    Press Key    //div[@role='document']/div//input[@type='number']    1991    #กรอกปี
    Set Focus To Element    //select[@class='flatpickr-monthDropdown-months']    #เเลือกเดือน
    Select From List by Value    //select[@class='flatpickr-monthDropdown-months']    3    #April
    Click Element    //div[@id='add-influencer']//form/div[2]/div[2]/div//div[@class='dayContainer']/span[11]    #วันที่10
    Select From List by Value    //div[@id='add-influencer']//div[3]/select    Female    #Choose Gender
    Select From List by Value    //div[@id='add-influencer']//div[4]/select    Thai    #Choose Nationality
    #Select From List by Value    //div[@id='add-influencer']//div[5]/select    Thai    #Choose Company
    #Select From List by Value    //div[@id='add-influencer']//div[6]/select    Artist    #Choose Influencer Type
    #Select From List by Value    //div[@id='add-influencer']//div[7]/select    mega    #Choose Influencer Tier
    #Select From List by Value    //div[@id='add-influencer']//div[8]/div[2]    food    #Choose Interests
    #Select From List by Value    //div[@id='add-influencer']//div[9]/div[2]/div/select    facebook    #Choose Channels
