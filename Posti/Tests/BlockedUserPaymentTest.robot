*** Settings ***
Documentation    Blocked Users should NOT make payment
Resource    ../Resources/CommonWeb.robot
Resource    ../Resources/POM/LoginPage.robot
Resource    ../Resources/POM/InvoicesPage.robot

Test Setup      Begin Web Test
Test Teardown    End Web Test

*** Variables ***


*** Test Cases ***
Blocked Users Should NOT be able to Make Payment
    [Documentation]     TC001
    [Tags]      Smoke
    Login with valid Credentials
    Go to InvoicesPage
    BlockedUsersMakePayment



