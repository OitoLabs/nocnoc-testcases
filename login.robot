*** Setting ***
Library    Selenium2Library

*** Test Cases ***
Login facebook
    Open facebook by Chrome
*** Keywords ***
Open facebook by Chrome
    Open Browser    https://qa.nocnoc-internal.com/en  firefox
    Wait Until Page Contains    Special Deals   10
    Click Element       //a[contains(text(),'Sign In')]
    Wait Until Page Contains    Forgot Password   10
    Input Text  //input[@name='loginemail']     amarkotasky@gmail.com
    Input Text  //input[@name='loginpassword']  Amar123@
    Click Button    Sign In
    Capture Page Screenshot
    Close Browser
