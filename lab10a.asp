<%
' Retrieving query string value for background color
Dim bgColor
bgColor = Request.QueryString("color")

' Setting default color if no query string provided
If bgColor = "" Then
    bgColor = "#FFFFFF" ' Default white color
End If
%>

<!DOCTYPE html>
<html>
<head>
    <title>Background Color Page</title>
    <style>
        body {
            background-color: <%= bgColor %>;
        }
    </style>
</head>
<body>
    <h1>Welcome to the Color Page</h1>
    
    <p>
        Last visit: 
        <% 
        If Request.Cookies("lastVisit") = "" Then
            Response.Write("First time visit")
        Else
            Response.Write(Request.Cookies("lastVisit"))
        End If
        
        ' Set cookie for the current visit
        Response.Cookies("lastVisit") = Now()
        %>
    </p>
</body>
</html>
