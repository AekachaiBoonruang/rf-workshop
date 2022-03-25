*** Settings ***
Library  SeleniumLibrary
Test Setup  Visit Shopee Website
Test Teardown  Close Browser

*** Variables ***
${HOMEPAGE}  https://www.youtube.com/
${BROWSER}  chrome

*** Keywords ***
Visit Shopee Website
  Open Browser  ${HOMEPAGE}  ${BROWSER}

Search video by song name
  Input Text  name:search_query  โกโกวา

Click Search Button
  Click Button  id:search-icon-legacy

Click on first video
  Click Element  xpath://*[@id="contents"]/ytd-video-renderer[1]

*** Test Cases ***

Search youtube
  Sleep  2s
  Search video by song name
  Sleep  2s
  Click Search Button
  Sleep  2s
  Click on first video
  Sleep  10s
