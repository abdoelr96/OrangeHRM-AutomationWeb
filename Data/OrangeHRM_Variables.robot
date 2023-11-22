*** Variables ***
#Open URL
${urlOrangeHRM}             https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browserType}              Chrome

#Account Admin
${username}                 Admin
${passwordAdmin}            admin123
${usernameInvalid}          Adminn
${passwordInvalid}          admin1234
${LETTERS}                  qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM
${hintEmployeeName}         A
${selectedEmployeeName}     //div[@role='listbox']//div[1]

#menu PIM
${employeeFirstName}        Abdul
${employeeLastName}         R