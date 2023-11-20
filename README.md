# OrangeHRM-AutomationWeb

**#Setup#**

Framework 	 : Robot framework

Need to Install	 : SeleniumLibrary

**#Project Structure#**

Folder Data include : 
common_xpath.py : contains path for the Login and Add User feature from OrangeHRM Web
OrangeHRM_Variables.robot : contains all variables used for the Login and Add User feature (Example : username, password, etc)

Folder Test_Cases	 : contains all test case for the Login and Add User feature

Folder Test_Suites 	 : contains test suite to run the test case/keyword that has been created on Folder Test_Cases


**#Run Automation#**

For run the Automation, please use command :

	robot {absolute-path}

	
Step to get {absolute-path} : 

~ Open the test suites project

~ Right click on the test suite name, then click Copy Path/Reference…
		
~ Click Absolute Path

~ Then paste to Terminal following the command

	Example : Robot /Users/Abdul/PycharmProjects/OrangeHRM-AutomationWeb/Test_Suites/OrangeHRM_suites.robot

