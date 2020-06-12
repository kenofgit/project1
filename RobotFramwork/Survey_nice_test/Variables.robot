*** Settings ***
Library           Selenium2Library

*** Variables ***
#MOT Iquiry
${InputSurveylink_MOTInquiry_T3}    https://test.tmbfeedback.com/b/w/survey?feed_id=k0Q-ouNA0LpBA1eGv4TkSllIu1uL2VoG#g1
${InputSurveylink_MOTInquiry_T4}    https://test.tmbfeedback.com/b/w/survey?feed_id=RqVCbo0K44VxxswPX5hZciCtxCOKVCp1
#Inroduction
${CheckLabelIntro}    ที่สนใจแสดงความคิดเห็นต่อการให้บริการของ TMB เพื่อให้เราปรับปรุงคุณภาพการให้บริการให้ดียิ่งขึ้น
${CheckLabelIntro_T4}    ขอบคุณครับ คุณประสงค์ที่สนใจแสดงความคิดเห็นต่อการให้บริการของ TMB เพื่อให้เราปรับปรุงคุณภาพการให้บริการให้ดียิ่งขึ้น
${CheckLabelIntro_1}    ทั้งนี้ TMB ไม่มีนโยบายในการขอข้อมูลส่วนตัว เช่น ที่อยู่ หมายเลขบัตรประชาชน รวมถึงข้อมูลทางการเงินของลูกค้า เช่น หมายเลขบัญชีเงินฝาก หมายเลขบัตรเดบิต หมายเลขบัตรเครดิต
#Q1_MeetNeed
${CheckLabelQ1_MeetNeed}    สาขาชุมแพ ให้บริการในขั้นตอนการให้ข้อมูลสินเชื่อบ้าน ได้ตรงกับความต้องการของคุณในระดับใด
${CheckLabelChoiceQ1_MeetNeed}    โดย 10 คือ ให้บริการได้ตรงกับความต้องการมากที่สุด
#Q2_CES
${CheckLabelQ2_CES}    TMB ทำให้การให้ข้อมูลสินเชื่อบ้านเป็นเรื่องง่ายสำหรับคุณมากน้อยเพียงใด
${CheckLabelChoiceQ2_CES}    โดย 10 คือ เป็นเรื่องง่ายมาก
#Q3_NPS
${CheckLabelQ3_NPS}    จากประสบการณ์ของ TMB ในครั้งนี้ หากมีคนรู้จักกำลังสนใจจะใช้ผลิตภัณฑ์หรือบริการของ TMB คุณมีแนวโน้มที่จะแนะนำในระดับใด
${CheckLabelChoiceQ3_NPS}    โดย 10 คือ แนะนำอย่างแน่นอน
#NPS_Answer
${CheckLabelNPS0_6}    เพื่อให้เราพัฒนาคุณภาพการบริการให้ดีขึ้น กรุณาระบุเหตุผลที่ทำให้คุณไม่อยากแนะนำผลิตภัณฑ์และบริการของ TMB ให้คนรู้จักใช้
${CheckLabelNPS7_8}    มีเรื่องใดอีกหรือไม่ที่เราสามารถทำให้ดียิ่งขึ้น เพื่อที่คุณจะแนะนำคนรู้จักให้ใช้ TMB อย่างแน่นอน
${CheckLabelNPS9_10}    เรามีความยินดีเป็นอย่างยิ่งที่คุณรู้สึกประทับใจในบริการของธนาคาร
${CheckLabelNPS9_10_1}    ขอกำลังใจให้ชาว TMB ด้วยการระบุเหตุผลที่คุณให้คะแนนดังกล่าว
#Opt_in
${CheckLabelOpt_in}    หากธนาคารต้องการติดต่อกลับหาคุณเพื่อสอบถามข้อมูลเพิ่มเติม คุณจะอนุญาตให้เราติดต่อหรือไม่
${CheckbuttonOptin_Yes}    xpath=//span[text()='ยินยอม']
${CheckbuttonOptin_No}    xpath=//span[text()='ไม่ยินยอม']
#Button Next Prev and submit
${Checkbutton_Next}    xpath=//span[contains(text(),'ถัดไป')]
${Checkbutton_Prev}    xpath=//span[text()='ย้อนกลับ']
${Checkbutton_Submit}    xpath=//span[text()='เสร็จสิ้น']
${LabelProtocol}    xpath=//th[contains(text(),'Protocol')]
${DropdownProtocol}    name=txtProtocol
${ChangeEN}       //a[contains(text(),'EN')]
${ChangeTH}       //a[contains(text(),'TH')]
${LabelGender}    xpath=//a[@onclick="setIdAndSubmit('gender');"]
${DropdownGender}    name=txtGender
${LabeAge}        xpath=//th[contains(text(),'Age')]
${DropdownAge}    name=txtAge
#${LabeLifestage}    xpath=//th[contains(text(),'Lifestage Segment')]
#${DropdownLife}    name=txtSes1
${LabeValue}      xpath=//th[contains(text(),'Value Segment')]
${DropdownValue}    name=txtSes2
${BthReload}      xpath=//button[@type='submit']
${BthPrint}       xpath=//button[@type='button']
${IconQuestion}    xpath=//a[@href="JavaScript:newPopup('help.html');"]
#Menu Report
${LabelReports}    xpath=//th[contains(text(),'Reports')]
${LinkDashboard}    //a[contains(text(),'Dashboard')]
${LinkCallSum}    //a[contains(text(),'Call Summary')]
${LabelCSIScore}    xpath=//li[contains(text(),'CSI Score Summary')]
${LinkSumbyBranch}    xpath=//a[contains(text(),'-Summary Report by Branch')]
${LinkSumbyDistr}    xpath=//a[contains(text(),'-Summary Report by District/RH')]
${LabelEngagement}    xpath=//li[contains(text(),'Engagement Detail Score')]
${LinkEngaOverall}    //a[contains(text(),'-Engagement Score Overall')]
${LinkEngabyBranch}    //a[contains(text(),'-Engagement Score by Branch')]
${LinkEngabyDistr}    //a[contains(text(),'-Engagement Score by District/RH')]
${LabelImpress}    xpath=//li[contains(text(),'Impression Detail Score')]
${LinkImpressOveall}    //a[contains(text(),'-Impression Score Overall')]
${LinkImpressbyBranch}    //a[contains(text(),'-Impression Score by Branch')]
${LinkImpressbyDistr}    //a[contains(text(),'-Impression Score by District/RH')]
${LabelCustEff}    xpath=//li[contains(text(),'Customer Effort Detail Score')]
${LinkCustEffOveall}    //a[contains(text(),'-Customer Effort Score Overall')]
${LinkCustEffbyBranch}    //a[contains(text(),'-Customer Effort Score by Branch')]
${LinkCustEffbyDistr}    //a[contains(text(),'-Customer Effort Score by District/RH')]
${LabelDetailScoreAndWeight}    xpath=//li[contains(text(),'Detail Score and Weight')]
${LinkDetialbyBranch}    //a[contains(text(),'-Detail Score and Weight By Branch')]
${LinkDetialbyDistr}    //a[contains(text(),'-Detail Score and Weight By District/RH')]
${LabelMMImpr}    xpath=//li[contains(text(),'M/M Improvement')]
${LinkMMImprbyBranch}    //a[contains(text(),'-M/M Improvement By Branch')]
${LinkMMImprbyDistr}    //a[contains(text(),'-M/M Improvement By District')]
${LinkMMImprbyRH}    //a[contains(text(),'-M/M Improvement By RH')]
${LinkMMImprBank}    //a[contains(text(),'-M/M Improvement (Bank)')]
${LinkMeanandConsistency}    //a[contains(text(),'Mean and Consistency Score')]
${LinkCSIPerform}    //a[contains(text(),'CSI Performance Tracking')]
${LinkSalsePerform}    //a[contains(text(),'Sales Performance Tracking')]
${LinkSevicePerform}    //a[contains(text(),'Service Performance Tracking')]
${LinkSatisConsistency}    //a[contains(text(),'Satisfaction-Consistency Matrix')]
${LabelCustFeedbyAtt}    xpath=//li[contains(text(),'Customer Feedback by Attribute')]
${LinkQ3}         //a[contains(text(),'Q3')]
${LinkQ6}         //a[contains(text(),'Q6')]
${LinkO1Positive}    //a[contains(text(),'O1 Positive')]
${LinkO1Negative}    //a[contains(text(),'O1 Negative')]
${LinkO2Positive}    //a[contains(text(),'O2 Positive')]
${LinkO2Negative}    //a[contains(text(),'O2 Negative')]
${LinkCustFeedBranch}    xpath=//li[a[@href="index.jsp?report=openEndedAnswer1"]]
${LinkOverallCust}    xpath=//li[a[@href="index.jsp?report=openEndedAnswer2"]]
${LinkRespondeProfile}    xpath=//li[a[@href="index.jsp?report=demographic"]]
${LabelLoginReport}    xpath=//li[contains(text(),'Login Report')]
${LinkLoginReportBranch}    //a[contains(text(),'-Login Report By Branch')]
${LinkLoginReportDistr}    //a[contains(text(),'-Login Report By District')]
${LabelAccountSetting}    xpath=//th[contains(text(),'Account Setting')]
${LinkChgPassword}    xpath=//li[a[@href="index.jsp?report=changepassword"]]
#Dashboard
${listRH}         xpath=//option[normalize-space(text())='Please Select']
${listDistr}      xpath=//*[@class="step2"]
${listBranch}     xpath=//*[@class="step3"]
${BthSubmit}      name=filterSubmit
${LinkCallSumByMonth}    //a[contains(text(),'Call Summary By Month')]
${listType}       xpath=//select[@name="txtSurveyType"]
${listMonth}      //html/body/div/div[2]/div[2]/form/div/select[2]
${ExportExcel}    xpath=//div[contains(text(),'Protocol')]
${LinkDistributionbyBranch}    //a[contains(text(),'-Distribution Score by Branch')]
${LinkDistributionbyDistr}    //a[contains(text(),'-Distribution Score by District')]
${LinkDistributionbyRH}    //a[contains(text(),'-Distribution Score by RH')]
${LabelDistributionScore}    xpath=//li[contains(text(),'Distribution Score')]
${DropdownAttribute}    name=txtAttr
${LabelAttribute}    xpath=//th[contains(text(),'Attribute')]
