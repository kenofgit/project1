*** Settings ***
Library           Selenium2Library
###############################################################
***Keyword***
InputValueforCal
	[Arguments]		${InputSearchforCal}
	Input Text    	lst-ib   	${InputSearchforCal}
	Press Key     	lst-ib 		\\13
Show Case
	[Arguments]		${showcasecalculate}
	Element Should Contain	cwles	${showcasecalculate}
#Assert Result
#	[Arguments]    	${expected result}
 #   Element Text Should Be	q2-text	${expected result}
#############################################################
*** Variables ***
${InputSearchforCal}       (2+2)^3

#############################################################
*** Test Cases ***
TC1_MOT > Verify MOT10 _ CustId320 > success
#Open Web browser 
	Open Browser    	https://test.tmbfeedback.com/b/w/survey?feed_id=U8sX9jdlYAnqSfDAv5TMqtkkCrrp-fYb  Chrome
#Show Calculator
    	Wait Until Page Contains Element	main-content
#Check Question MOT
		Element Text Should Be	q2-text	ขอบคุณ คุณสมชายที่สนใจแสดงความคิดเห็นต่อการได้รับการชี้แจงหรือแก้ไขปัญหาจากการร้องเรียน เกี่ยวกับผลิตภัณฑ์และบริการของ TMB ในครั้งนี้

คุณเห็นด้วยมากน้อยแค่ไหนว่าบริการในเรื่องดังกล่าวจาก TMB ตอบโจทย์ความต้องการของคุณ 
0 คือ ไม่เห็นด้วยอย่างมาก และ 10 คือ เห็นด้วยอย่างมาก *
