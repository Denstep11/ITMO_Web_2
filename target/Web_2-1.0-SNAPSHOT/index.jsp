<%@ page import="model.TableDate" %>
<%@ page import="java.util.List" %>
<%@ page import="view.TableValue" %><%--
  Created by IntelliJ IDEA.
  User: denvv
  Date: 16.10.2022
  Time: 19:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="style.css">
    <script type="text/javascript" src="js/jquery-3.6.1.min.js"></script>
    <title>Лабораторная №2</title>
</head>
<body>
<table width="1000" cellspacing="4" class="main">
    <tr>
        <td  colspan="2" id="shapka"><h3 class="shapka">Баранов Денис Владимирович P32091</h3></td>
    </tr>
    <tr>
        <td align="center" class="coordin">
            <canvas id="example" width="300" height="300"></canvas>
        </td>
        <td class="shapka">
            <form method="GET" name="coor_form" class="forma">
                <h4 class="form">Введите координаты X:</h4>
                <input type="radio" name="coor_x" value="-5" class="coor_x">-5
                <input type="radio" name="coor_x" value="-4" class="coor_x">-4
                <input type="radio" name="coor_x" value="-3" class="coor_x">-3
                <input type="radio" name="coor_x" value="-2" class="coor_x">-2
                <input type="radio" name="coor_x" value="-1" class="coor_x">-1
                <input type="radio" name="coor_x" value="0" class="coor_x">0
                <input type="radio" name="coor_x" value="1" class="coor_x">1
                <input type="radio" name="coor_x" value="2" class="coor_x">2
                <input type="radio" name="coor_x" value="3" class="coor_x">3
                <p class="error" id="error_x"></p>
                <h4 class="form">Введите координаты Y:</h4>
                <input type="text" maxlength="5" name="coor_y" placeholder="[-3..3]" class="coor_y">
                <p class="error" id="error_y"></p>
                <h4 class="form">Введите R:</h4>
                <input type="radio" name="value_R" value="1" class="value_r">1
                <input type="radio" name="value_R" value="1.5" class="value_r">1.5
                <input type="radio" name="value_R" value="2" class="value_r">2
                <input type="radio" name="value_R" value="2.5" class="value_r">2.5
                <input type="radio" name="value_R" value="3" class="value_r">3
                <p class="error" id="error_r"></p>
                <br><br>
                <input type="submit" value="Отправить" name="send" id="button">
            </form>
        </td>
    </tr>
    <tr>
        <td colspan="2" class="shapka">
            <table cellspacing="3" class="result">
                <tr>
                    <th>Значение X</th>
                    <th>Значение Y</th>
                    <th>Значение R</th>
                    <th>Время начала</th>
                    <th>Время выполнения</th>
                    <th>Результат</th>
                </tr>
                <%
                    out.println(TableDate.tableValue.getTabel());
                %>
            </table>
        </td>
    </tr>
</table>
<script type="text/javascript" src="js/valid.js"></script>
<script type="text/javascript" src="js/canvas.js"></script>
</body>
</html>
