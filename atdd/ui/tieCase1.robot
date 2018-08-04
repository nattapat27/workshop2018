*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${URL}    http://localhost:8080/game/view.jsp
${BROWSER}    chrome
*** Test Cases ***
ผู้เล่นสองคนเสมอกัน
    เปิดหน้าเว็บ
    วางที่ช่อง 2 2
    วางที่ช่อง 1 3
    วางที่ช่อง 2 3
    วางที่ช่อง 2 1
    วางที่ช่อง 1 1
    วางที่ช่อง 1 2
    วางที่ช่อง 3 1
    วางที่ช่อง 3 3
    วางที่ช่อง 3 2
    แสดงคะแนนเสมอเพิ่มไป 1
    ปิดหน้าเว็บ
*** Keywords ***
เปิดหน้าเว็บ
    Open Browser    ${URL}    ${BROWSER}
วางที่ช่อง 2 2
    Click Element    id=R2_C2
    Wait Until Element Contains    id=R2_C2    X
วางที่ช่อง 1 3
    Click Element    id=R1_C3
    Wait Until Element Contains    id=R1_C3    O
วางที่ช่อง 2 3
    Click Element    id=R2_C3
    Wait Until Element Contains    id=R2_C3    X
วางที่ช่อง 2 1
    Click Element    id=R2_C1
    Wait Until Element Contains    id=R2_C1    O
วางที่ช่อง 1 1
    Click Element    id=R1_C1
    Wait Until Element Contains    id=R1_C1    X
วางที่ช่อง 1 2
    Click Element    id=R1_C2
    Wait Until Element Contains    id=R1_C2    O
วางที่ช่อง 3 1
    Click Element    id=R3_C1
    Wait Until Element Contains    id=R3_C1    X
วางที่ช่อง 3 3
    Click Element    id=R3_C3
    Wait Until Element Contains    id=R3_C3    O
วางที่ช่อง 3 2
    Click Element    id=R3_C2
    Wait Until Element Contains    id=R3_C2    X
แสดงคะแนนเสมอเพิ่มไป 1
    Wait Until Element Contains    id=tieScore    1
ปิดหน้าเว็บ
    Close Browser