<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    
<div class="login-page">
    <div class="form">
    <form class="login-form">
       <h3>Convertidor de temperatura</h3>
      
       <input type=text id=temp placeholder="Digite valor a convertir">
        <br> 
      <input type="button" id=ctof value="Farenheit" style="background-color: #DEE1A6"> <input type="button"  id=ctof2 value="Celsius" style="background-color: #C8DEA9"><br/>
        <output></output>
      <p class="message">Billy Aizpurúa Pittí </p>
    </form>
  </div>

</div>
<script>
var temperatures = function(t) {
        var output, given, result, opposite;
        given = document.getElementById('temp').value;
        if (t === "C") {
            result = 1.8 * (+given) + 32;
            opposite = "F";
        } else {
            result = (given - 32) / 1.8;
            opposite = "C";
        }
        if (result % 1 !== 0) {
            console.log(result % 1);
            result = result.toFixed(2);
        }
        if (given || given === "0") {
            output = given + " \u00b0" + t + " es igual a " + result + " \u00b0" + opposite;
        } else {
            output = "error: number expected";
        }
        document.querySelector('output').innerHTML = output;
    }
document.getElementById('ctof').addEventListener('click', function(){temperatures('C');})
document.getElementById('ctof2').addEventListener('click', function(){temperatures('F');})
</script>
 
 

</asp:Content>
