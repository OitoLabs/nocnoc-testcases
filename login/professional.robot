*** Setting ***
Library    Selenium2Library

*** Test Cases ***
Login professional
    Open nocnoc by firefox
*** Keywords ***
Open nocnoc by firefox
    Open Browser    https://qa.nocnoc-internal.com/professional/  firefox
    Click Element       //a[contains(text(),'Sign In')]
    Wait Until Page Contains    Forgot password   10
    Input Text  //input[@name='loginemail']     amarkotasky@gmail.com
    Input Text  //input[@name='loginpassword']  Amar123@
    Click Button    Sign In
    Wait Until Page Contains    Sign Out   10
    Capture Page Screenshot
    Close Browser
