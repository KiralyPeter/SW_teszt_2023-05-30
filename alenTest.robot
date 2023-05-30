*** Settings ***


Library  SeleniumLibrary

*** Test Cases ***

Verify Open
    Open Browser  https://alienregistry.azurewebsites.net/    Chrome    options=add_experimental_option("detach", True)
    Maximize Browser Window
    Page Should Contain    Welcome

Register
    Click Element    xpath:/html/body/header/nav/div/div/ul[2]/li[1]/a
    Sleep    1s
    Page Should Contain    Register