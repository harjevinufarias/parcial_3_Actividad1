<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.Map" %>
<%@ page import="model.Automovil" %>

<!DOCTYPE html>
<html>
<head>
    <title>Listado de Automóviles</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f8;
            padding: 30px;
        }
        h2 {
            color: #333;
        }
        table {
            border-collapse: collapse;
            width: 60%;
            margin-bottom: 30px;
            background-color: #fff;
        }
        th, td {
            padding: 10px;
            border: 1px solid #ccc;
            text-align: left;
        }
        th {
            background-color: #2c7be5;
            color: white;
        }
        .map-title {
            margin-top: 40px;
            color: #2c7be5;
        }
    </style>
</head>
<body>

<h2>Aplicación Web – Estructuras Map</h2>

<h3 class="map-title">HashMap (sin orden)</h3>
<table>
    <tr>
        <th>Modelo</th>
    </tr>
<%
for (Automovil a :
((Map <String , Automovil >)request.getAttribute("hashMap")).values ()) {
%>
    <tr>
        <td><%= a.getModelo() %></td>
    </tr>
<%
}
%>
</table>

<h3 class="map-title">LinkedHashMap (orden de inserción)</h3>
<table>
    <tr>
        <th>Modelo</th>
    </tr>
<%
for (Automovil a :
((Map <String , Automovil >)request.getAttribute("linkedHashMap")).values ()) {
%>
    <tr>
        <td><%= a.getModelo() %></td>
    </tr>
<%
}
%>
</table>

<h3 class="map-title">TreeMap (orden alfabético)</h3>
<table>
    <tr>
        <th>Modelo</th>
    </tr>
<%
for (Automovil a :
((Map <String , Automovil >)request.getAttribute("treeMap")).values ()) {
%>
    <tr>
        <td><%= a.getModelo() %></td>
    </tr>
<%
}
%>
</table>

</body>
</html>
