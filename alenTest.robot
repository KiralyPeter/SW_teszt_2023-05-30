*** Settings ***


Library  SeleniumLibrary

*** Variables ***
${email}    szoftteszt2025@gmail.com
${password}    Password-11

*** Test Cases ***

Open Home
    Open Browser  https://alienregistry.azurewebsites.net/    Chrome    options=add_experimental_option("detach", True)
    Maximize Browser Window
    Page Should Contain    Welcome

# Open Register Page
#     Click Element    xpath:/html/body/header/nav/div/div/ul[2]/li[1]/a
#     # Sleep    1s
#     # Page Should Contain    Register
#     Wait Until Element Is Visible    xpath:/html/body/div/main/h1    2s
#     Page Should Contain    Register
#     Capture Page Screenshot    Register.png

# Verify Registration
#     Input Text    xpath://*[@id="Input_Email"]    szoftteszt2025@gmail.com
#     Input Text    xpath://*[@id="Input_Password"]    Password-11
#     Input Text    xpath://*[@id="Input_ConfirmPassword"]    Password-11
#     Click Button    xpath://*[@id="registerSubmit"]
#     Click Element    xpath://*[@id="confirm-link"]

Verify Logn
    Click Element    xpath:/html/body/header/nav/div/div/ul[2]/li[2]/a
    sleep    1s
    Input Text    xpath://*[@id="Input_Email"]    ${email}
    Input Text    xpath://*[@id="Input_Password"]    ${password}
    Click Button    xpath://*[@id="login-submit"]
    Wait Until Element Is Visible    xpath:/html/body/header/nav/div/div/ul[2]/li[1]/a

    