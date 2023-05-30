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

Verify Login
    Click Element    xpath:/html/body/header/nav/div/div/ul[2]/li[2]/a
    sleep    1s
    Input Text    xpath://*[@id="Input_Email"]    ${email}
    Input Text    xpath://*[@id="Input_Password"]    ${password}
    Click Button    xpath://*[@id="login-submit"]
    Wait Until Element Is Visible    xpath:/html/body/header/nav/div/div/ul[2]/li[1]/a

Verify Input
    Click Element    xpath://*[@id="Aliens"]
    Sleep    1s
    # Wait Until Element Is Visible    xpath:/html/body/div/main/h1
    # Click Element    xpah:/html/body/div/main/p/a
    Click Element    xpath:/html/body/div/main/p/a
    # Az alábbi kell a fentihez...
    Sleep    1s
    Input Text    xpath://*[@id="Name"]    Ethereal
    Input Text    xpath://*[@id="Planet"]    Mars
    Input Text    xpath://*[@id="Population"]    25000    
    Input Text    xpath://*[@id="Attitude"]    Hostile

    Click Button    xpath:/html/body/div/main/div[1]/div/form/div[5]/input
    Sleep    1s
    Page Should Contain    Ethereal

Logout
    Click Button   xpath:/html/body/header/nav/div/div/ul[2]/li[2]/form/button