*** Settings ***
Library  SeleniumLibrary
Test Setup  Visit Shopee Website
Test Teardown  Close Browser

*** Variables ***
${HOMEPAGE}  https://www.youtube.com/
${BROWSER}  chrome
${URL_VIDEO}  https://www.youtube.com/watch?v=5GGnWsHmpd8

*** Keywords ***
Visit Shopee Website
  Open Browser  ${HOMEPAGE}  ${BROWSER}

Search video by song name
  Input Text  name:search_query  โกโกวา

Click Search Button
  Click Button  id:search-icon-legacy

Click on first video
  Click Element  xpath://*[@id="contents"]/ytd-video-renderer[1]

Verify url and text
  Location Should Be  ${URL_VIDEO}
  Wait Until Page Contains  ชุดโกโกวา - Tongtang Family TV [Official MV]
*** Test Cases ***

Search youtube
  Set Selenium Speed  1s
  Search video by song name
  Click Search Button
  Click on first video
  Verify url and text
