<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="E_Learning.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login page</title>
     <link rel="stylesheet" type="text/css" href="CSS/Login_style.css" />
    <style type="text/css">
        .auto-style1 {
            margin-left: 60px;
            background-color: chartreuse;
            height: 161px;
            width: 50%;
            border-radius: 15px;
            margin-right: 159px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="main">
            <div class="inner">
            <h1>Login </h1>
            <table>
                <tr>
                    <td>
                         E-mail  
                    </td>
                    <td>
                        <asp:TextBox ID="emailtxt" CssClass="inputbox" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Password 
                    </td>


                    <td>
                        <asp:TextBox ID="passtxt" CssClass="inputbox" runat="server" TextMode="Password"></asp:TextBox>
                    </td> 
                </tr>
            </table>
                <a href="forgot_page.aspx">forgot password</a>
            <asp:Button ID="btn" runat="server" Text="Login" OnClick="Login" Width="67px"/> 
           
                </div>
        </div>
    </form>
</body>
</html>
