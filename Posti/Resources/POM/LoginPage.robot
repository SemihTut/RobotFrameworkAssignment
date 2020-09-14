*** Settings ***
Library    SeleniumLibrary
Variables   ../Resources/POM/Locators.py
Resource    ../Resources/CommonWeb.robot


*** Variables ***


*** Keywords ***
Enter UserName
    [Arguments]    ${userName}
    input text    ${txt_loginUserName}  ${userName}

Enter Password
    [Arguments]    ${password}
    input text    ${txt_loginpassword}  ${password}

Click SignIn
    click button    ${btn_signin}

Verify Successfull Login
    title should be    Welcome to Posti App

Login with valid credentials
    Enter UserName      ${email}
    Enter Password      ${password}
    Click SignIn
    Verify Successfull Login