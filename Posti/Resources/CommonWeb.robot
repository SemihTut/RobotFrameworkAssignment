*** Settings ***
Library    SeleniumLibrary
Variables   ../Resources/POM/Locators.py
Resource    ../Resources/POM/LoginPage.robot

*** Variables ***


*** Keywords ***
Begin Web Test
    open browser    ${url}  ${browser}
    maximize browser window


End Web Test
    close all browsers

Begin Editing Contacts
    Login with valid credentials
