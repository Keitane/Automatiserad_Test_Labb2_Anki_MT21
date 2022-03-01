*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}

Go To Web Page
    Maximize Browser Window
    Go To  ${URL}
    Wait Until Page Contains  Infotiv Car Rental

Verify Page Contains
    Click Element   //*[@id="title"]
    Wait Until Page Contains   When do you want to make your trip?

Go To Car List
    Click Element   //*[@id="continue"]
    Wait Until Page Contains   What would you like to drive?

Selecting Car Brand In List
    Click Element   //*[@id="ms-list-1"]/button
    Click Element   //*[@id="ms-list-1"]/div/ul/li[3]/label
    Click Element   //*[@id="carTable"]/tbody/tr[9]/td[2]
    Wait Until Page Contains  Tesla Roadster

End Web Test
    Close Browser
