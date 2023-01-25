*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Successful login in the ER App
    Comment    Successful login in the Web App as ER
    Open Browser    https://app.test.hourly.io/login    chrome
    Maximize Browser Window
    Input Text    name:phone-number-or-email    juan.gomez+mg@hourly.io
    Click Element    xpath://*[@id="root"]/div[1]/div[1]/div[2]/form/button
    Wait Until Element Contains    class:title    Enter code
    Input Text    xpath://*[@id="root"]/div[1]/div[1]/div[2]/form/div/input    2222
    Click Element    xpath://*[@id="root"]/div[1]/div[1]/div[2]/form/button[1]
    Set Browser Implicit Wait    5 Seconds
    Close Browser
Failed login in the ER app
    Comment    Failed login in the Web App as ER
    Open Browser    https://app.test.hourly.io/login    chrome
    Maximize Browser Window
    Input Text    name:phone-number-or-email    juan.gomez+mg@hourly.io
    Click Element    xpath://*[@id="root"]/div[1]/div[1]/div[2]/form/button
    Wait Until Element Contains    class:title    Enter code
    Input Text    xpath://*[@id="root"]/div[1]/div[1]/div[2]/form/div/input    2345
    Click Element    xpath://*[@id="root"]/div[1]/div[1]/div[2]/form/button[1]
    Wait Until Element Contains    class:error-message    Invalid code
    Close Browser
