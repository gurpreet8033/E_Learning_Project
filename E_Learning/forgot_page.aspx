<%@ Page Language="C#" %>

<!DOCTYPE html>
<script runat="server">

</script>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <title></title>    
</head>
<body>
    <form id="form1" runat="server"> 
        <div>
            <p>Username</p><asp:TextBox ID="fusertxt" runat="server" ></asp:TextBox>

            <p>E-mail</p><asp:TextBox ID="femailtxt" runat="server"></asp:TextBox>

            <asp:Button ID="checkbtn" runat="server" OnClick="checkbtn_Click"  />
        </div>
    </form>
</body>
</html>
