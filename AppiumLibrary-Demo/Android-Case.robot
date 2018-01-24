*** Settings ***
Library           AppiumLibrary

*** Test Cases ***
case1-noid
    Open Application    http://localhost:4723/wd/hub    platformName=Android    platformVersion=4.2.2    deviceName=192.168.56.101:5555    app=${CURDIR}${/}app${/}ContactManager.apk    appPackage=com.example.android.contactmanager
    Click Element    accessibility_id=Add Contact
    ${source}    Get Source
    Log    ${source}
    Sleep    5s
    Input Text    xpath=//android.widget.TableRow[contains(@index,3)]/android.widget.EditText    Jacky Qi
    Input Text    xpath=//android.widget.TableRow[contains(@index,5)]/android.widget.EditText    13800138000
    Input Text    xpath=//android.widget.TableRow[contains(@index,7)]/android.widget.EditText    qitaos@gmail.com
    Click Element    accessibility_id=Save

case2-hasid
    Open Application    http://localhost:4723/wd/hub    platformName=Android    platformVersion=4.2.2    deviceName=192.168.56.101:5555    app=${CURDIR}${/}app${/}ContactManager.apk    appPackage=com.example.android.contactmanager
    Click Element    accessibility_id=Add Contact
    ${source}    Get Source
    Log    ${source}
    Sleep    5s
    Input Text    id=com.example.android.contactmanager:id/contactNameEditText    Jacky Qi
    Input Text    id=com.example.android.contactmanager:id/contactPhoneEditText    13800138000
    Input Text    id=com.example.android.contactmanager:id/contactEmailEditText    qitaos@gmail.com
    Click Element    accessibility_id=Save

case3-loginDemo_Ateacher
    Open Application    http://localhost:4723/wd/hub    platformName=Android    platformVersion=5.1.1    deviceName=192.168.56.101:5555    app=${CURDIR}${/}app${/}LGTeacher.apk    appPackage=com.lg.newbackend
    ${source}    Get Source
    Log    ${source}
    Sleep    5s
    Click Element    xpath=//*[@resource-id="com.lg.newbackend:id/showfeatures_signIn"]
    Input Text    xpath=//*[@resource-id="com.lg.newbackend:id/signIn_email"]    local@qqq.com
    Input Text    xpath=//*[@resource-id="com.lg.newbackend:id/signIn_password"]    12345678abc
    Click Element    xpath=//*[@resource-id="com.lg.newbackend:id/signin"]
    Comment    Input Text    xpath=//android.widget.TableRow[contains(@index,7)]/android.widget.EditText    qitaos@gmail.com
    Comment    Click Element    accessibility_id=Save
