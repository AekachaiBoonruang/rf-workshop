*** Settings ***
Library  SeleniumLibrary
Test Setup  Visit Youtube Website
Test Teardown  Close Browser

*** Variables ***
${HOMEPAGE}  https://www.youtube.com
${BROWSER}  chrome
${URL}  https://www.youtube.com/watch?v=5GGnWsHmpd8
*** Keywords ***
Visit Youtube Website
  Open Browser  ${HOMEPAGE}  ${BROWSER}
Search Video Name
  Input Text  name:search_query  ชุดโกโกวา - Tongtang Family TV [Official MV]
  Sleep  2s
  Click Element  id:search-icon-legacy
Click First Element
  Sleep  2s
  Click Element  xpath://*[@id="contents"]/ytd-video-renderer[1]
  Sleep  5s
Verify Frist Element
  Wait Until Page Contains  ชุดโกโกวา - Tongtang Family TV [Official MV]
  Location Should Be  ${URL}

*** Test Cases ***
Search google by name
  Search Video Name
  Click First Element
  Verify Frist Element

