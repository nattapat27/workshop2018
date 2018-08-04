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
        <link href="https://fonts.googleapis.com/css?family=Kanit" rel="stylesheet">
    </head>
    <body style="background-image: linear-gradient(120deg, #fdfbfb 0%, #ebedee 100%);">
        <h1 align="center" id="A" style="font-family: 'Kanit', sans-serif;color: #373737;">Tic-Tac-Toe</h1>
        <table border="3px solid " style="width: 500px; border-color: #373737" align="center">
            <tr style="height: 130px">
                <td id="R1_C1" onclick="showPicture('R1_C1')"></td>
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
            color: white;
            font-family: 'Kanit', sans-serif;
            color: #373737;
        }
        table{
            border-collapse: collapse;
            table-layout: fixed;
            color: #373737;
        }
        #symbol{
            text-align: center;
            font-size: 50px;
        }

    </style>
    <script>
        turn = 0;
        function showPicture(name) {
            if(document.getElementById(name).innerHTML!="O" && document.getElementById(name).innerHTML!="X"){
                turn++;
                if(turn%2==0){
                document.getElementById(name).innerHTML = "<h1 id='symbol'>O</h1>"
                }else{
                    document.getElementById(name).innerHTML = "<h1 id='symbol'>X</h1>"
                }
            }
        }  
    </script>
    
    
</html>
