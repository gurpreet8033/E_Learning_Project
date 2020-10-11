<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="E_Learning.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <title></title>    
</head>
<body>
    <form id="form1" runat="server"> 
        <div>
            <p>Username</p><asp:TextBox ID="fusertxt" runat="server" ></asp:TextBox>

            <p>E-mail</p><asp:TextBox ID="femailtxt" runat="server"></asp:TextBox>

            <asp:TextBox runat="server" ID="passtxt" Enabled="false"></asp:TextBox>

            <asp:Button ID="checkbtn" runat="server" OnClick="checkbtnClick"  Text="Authenticate"/>
        </div>
    </form>
</body>
</html>
