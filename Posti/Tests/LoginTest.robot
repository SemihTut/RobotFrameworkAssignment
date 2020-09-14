*** Settings ***
Documentation    Blocked Users should NOT make payment
Resource    ../Resources/CommonWeb.robot
Resource    ../Resources/CommonWeb.robot
Resource    ../Resources/POM/LoginPage.robot

Test Setup      Begin Web Test
Test Teardown    End Web Test

*** Variables ***


*** Test Cases ***
Login With Valid Credentials
    [Documentation]     TC003
    [Tags]      Smoke
    Login with valid credentials

