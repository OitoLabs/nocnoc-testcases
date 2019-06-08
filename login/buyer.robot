*** Setting ***
Library    Selenium2Library

*** Test Cases ***
Login nocnoc
    Open buyer by firefox
*** Keywords ***
Open buyer by firefox
    Open Browser    https://qa.nocnoc-internal.com/en  firefox
    Wait Until Page Contains    Special Deals   10
    Click Element       //a[contains(text(),'Sign In')]
    Wait Until Page Contains    Forgot Password   10
    Input Text  //input[@name='loginemail']     vikram.gorre@oitolabs.io
    Input Text  //input[@name='loginpassword']  bdSeller123!
    Click Button    Sign In
    Wait Until Page Contains    My Account   10
    Capture Page Screenshot
    Close Browser
