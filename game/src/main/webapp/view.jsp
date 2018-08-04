<%-- 
    Document   : view
    Created on : Aug 3, 2018, 3:00:59 PM
    Author     : saknarong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color: black">
        <h1 align="center" id="A">Tic-Tac-Toe</h1>
        <table border="1" style="width: 500px; border-color: white;" align="center">
            <tr style="height: 130px">
                <td id="R1_C1" onclick="showPicture('R1_C1')"> </td>
                <td id="R1_C2" onclick="showPicture('R1_C2')"></td>
                <td id="R1_C3" onclick="showPicture('R1_C3')"></td>
            </tr>
            <tr style="height: 130px">
                <td id="R2_C1" onclick="showPicture('R2_C1')"></td>
                <td id="R2_C2" onclick="showPicture('R2_C2')"></td>
                <td id="R2_C3" onclick="showPicture('R2_C3')"></td>
            </tr>
            <tr style="height: 130px">
                <td id="R3_C1" onclick="showPicture('R3_C1')"></td>
                <td id="R3_C2" onclick="showPicture('R3_C2')"></td>
                <td id="R3_C3" onclick="showPicture('R3_C3')"></td>
            </tr>
        </table>
        <div align="center" style="padding-top: 20px">
            <div style="display: inline-block; padding: 10px"><p>Player 1 (X) : ${player1Score}</p></div>
            <div style="display: inline-block; padding: 10px"><p>Tie : ${tieScore}</p></div>
            <div style="display: inline-block; padding: 10px"><p>Player 2 (O) : ${player2Score}</p></div>
        </div>
    </body>
    <style>
        h1,p,tr{
            color: white
        }
        table{
            border-collapse: collapse;
            table-layout: fixed;
        }

    </style>
    <script>
        function showPicture(name) {
            turn = ${turn};
            if(turn%2==0){
                document.getElementById(name).innerHTML = "O"
            }else{
                document.getElementById(name).innerHTML = "X"
            }
        }
    </script>
    
    
</html>
