*** Settings ***
Documentation     This is a sample test suite using Robot Framework
Library           SeleniumLibrary
Suite Setup       Open Browser   http://automationexercise.com/login   chrome


*** Variables ***
${Email Address}         12345@gmail.com
${Password}              67890_54321



*** Keywords ***

Click Register Element
    Click Element       //*[@id="form"]/div/div/div[1]/div
    
Checked Checkbox
    Click Element       //*[@id="form"]/div/div/div[1]/div/form/input[2]
    Click Element       //*[@id="form"]/div/div/div[1]/div/form/input[3]

Click Register Button
    Click Button        //*[@id="form"]/div/div/div[1]/div/form/button


Input Email address
    [Arguments]    ${Email Address}
    Input Text    //*[@id="form"]/div/div/div[1]/div/form/input[2]    ${Email Address}

Input Password
    [Arguments]    ${Password}
    Input Text    //*[@id="form"]/div/div/div[1]/div/form/input[3]    ${Password}



*** Test Cases ***
Register with valid info
   [Documentation]    Test the login functionality with valid credentials
   Click Register Element
   
   Input Email Address                 ${Email Address}
   Input Password                       ${Password}
   
   Checked Checkbox 
   Click Register Button
   Page Should Contain Element          //*[@id="form"]/div/div/div[1]/div/h2