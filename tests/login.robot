*** Settings ***
Documentation    Login tests

Resource    ../resources/main.resource

Test Setup        Start Test
Test Teardown     Finish Test

*** Test Cases ***
Deve logar com sucesso
    Go To Login Page
    Submit Credentials          papito@gmail.com    vaibrasil
    User Logged In
        
Nao deve logar com sucesso
    Go To Login Page
    Submit Credentials          papito@gmail.com    1123
    Toast Message Should Be     Credenciais inválidas, tente novamente! 

    





    
