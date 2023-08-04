<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
       <form action="transferMoney">
       <table border="1" align="center"  width="50%">
           
           <tr>
           <th>Destination Bank Name</th>
           <td><Input type=text></td>
           </tr>
           
           <tr>
                <th>Destination Bank Account Name</th>
                <td><input type=text></td>
           </tr>
           <tr>
           <th>Transfer Amount</th>
           <td><input type=text name="amount"></td>
           </tr>
           
           <tr>
           <td><input type=submit value=Transfer></td>
           <td><input type=reset  value=Cancel></td>
           </tr>
         </table>
       
         </form>

</body>
</html>