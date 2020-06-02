<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 02/06/2020
  Time: 14:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Simple calculator</title>
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body>
    <h1>Simple Calculator</h1>
    <form action="/calculator" method="post">
      <fieldset>
        <legend>Calculator</legend>
        <table>
          <tr>
            <td>First Number:</td>
            <td><input type="number" name="firstNum" placeholder="Enter a number"></td>
          </tr>
          <tr>
            <td>Operator</td>
            <td>
              <select name="toantu" >
                <option value=+>Cộng</option>
                <option value="-">Trừ</option>
                <option value="*">Nhân</option>
                <option value="/">Chia</option>
              </select>
            </td>
          </tr>
          <tr>
            <td>Second Number</td>
            <td><input type="number" name="secondNum" placeholder="Enter a number"></td>
          </tr>
          <tr>
            <td colspan="2" style="text-align:center">
              <button type="submit">Calculate</button>

            </td>
          </tr>
        </table>
      </fieldset>
    </form>
  </body>
</html>
