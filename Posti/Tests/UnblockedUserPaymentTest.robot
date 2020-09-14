*** Settings ***
Documentation    Blocked Users should NOT make payment
Resource    ../Resources/CommonWeb.robot
Resource    ../Resources/POM/LoginPage.robot
Resource    ../Resources/POM/InvoicesPage.robot

Test Setup      Begin Web Test
Test Teardown    End Web Test

*** Variables ***


*** Test Cases ***
Unblocked users should be able to make payment
    [Documentation]     TC002
    [Tags]      Smoke
    Login with valid Credentials
    Go to InvoicesPage
    UnblockedUsersMakePayment


