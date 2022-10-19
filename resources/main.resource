*** Settings ***
Documentation       Arquivo principal do projeto

Library             Browser
Resource            pages/login.resource
Resource            pages/dash.resource


*** Keywords ***
Do Login
    [Arguments]    ${email}    ${password}
    Go To Login Page
    Submit Credentials    ${email}    ${password}
    User Logged In

Start Test
    New Browser    headless=False    

Finish Test
    #Thinking Time
    Sleep    0.5
    Take Screenshot