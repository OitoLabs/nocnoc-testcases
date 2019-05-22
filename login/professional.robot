*** Setting ***
Library    Selenium2Library

*** Test Cases ***
Login professional
    Open nocnoc by firefox
*** Keywords ***
Open nocnoc by firefox
    Open Browser    https://qa.nocnoc-internal.com/professional/en  firefox
    Wait Until Page Contains    Sign Up Now!   10
    Click Element       //a[contains(text(),'Sign In')]
    Wait Until Page Contains    Forgot password   10
    Input Text  //input[@name='loginemail']     amarkotasky@gmail.com
    Input Text  //input[@name='loginpassword']  Amar123@
    Capture Page Screenshot
    Click Button    Sign in
    Capture Page Screenshot
    Wait Until Page Contains    Basic Details   20
    Capture Page Screenshot
    Close Browser
