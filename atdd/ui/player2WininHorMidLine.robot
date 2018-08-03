*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${URL}    http://localhost:8080/gameXO/viewControl
${BROWSER}    chrome
*** Test Cases ***
ผู้เล่น 1 ชนะด้วยเอียงซ้าน
    เปิดหน้าเว็บ
    วางที่ช่อง 1 1
    วางที่ช่อง 2 1
    วางที่ช่อง 3 3
    วางที่ช่อง 2 2
    วางที่ช่อง 3 1
    วางที่ช่อง 2 3
    แสดงคะแนนผู้เล่น 2 เพิ่มไป 1
    ปิดหน้าเว็บ
*** Keywords ***
เปิดหน้าเว็บ
    Open Browser    ${URL}    ${BROWSER}
วางที่ช่อง 1 1
    Click Element    id=R1_C1
    Wait Until Element Contains    id=R1_C1    x
วางที่ช่อง 2 1
    Click Element    id=R2_C1
    Wait Until Element Contains    id=R2_C1    o
วางที่ช่อง 3 3
    Click Element    id=R3_C3
    Wait Until Element Contains    id=R3_C3    x
วางที่ช่อง 2 2
    Click Element    id=R2_C2
    Wait Until Element Contains    id=R2_C2    o
วางที่ช่อง 3 1
    Click Element    id=R3_C1
    Wait Until Element Contains    id=R3_C1    x
วางที่ช่อง 2 3
    Click Element    id=R2_C3
    Wait Until Element Contains    id=R2_C3    o
แสดงคะแนนผู้เล่น 2 เพิ่มไป 1
    Wait Until Element Contains    id=player2Score    1
ปิดหน้าเว็บ
    Close Browser