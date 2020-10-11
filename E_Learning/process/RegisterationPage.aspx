<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterationPage.aspx.cs" Inherits="E_Learning.RegisterationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="../assets/css/user/Registeration_Style.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/38e816db70.js" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container register-form">
            <div class="form">
                <div class="note">
                    <h2>User Registration</h2>
                </div>

                <div class="form-content">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:TextBox ID="fnametxt" runat="server" CssClass="form-control" placeholder="First Name *"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:TextBox ID="lnametxt" runat="server" CssClass="form-control" placeholder="Last Name *"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:TextBox ID="passtxt" runat="server" CssClass="form-control" placeholder="Your Password *"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:TextBox ID="cpasstxt" runat="server" CssClass="form-control" placeholder="Confirm Password *"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:TextBox ID="emailtxt" runat="server" CssClass="form-control" placeholder="Confirm Email"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:TextBox ID="phonetxt" runat="server" TextMode="Number" CssClass="form-control" placeholder="Phone Number"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:DropDownList CssClass="form-control" runat="server" ID="typeddl">
                                    <asp:ListItem Text="Student" Value="S"></asp:ListItem>
                                    <asp:ListItem Text="Organisation" Value="O"></asp:ListItem>
                                    <asp:ListItem Text="Faculty" Value="F"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            </div>
                        <div class="col-md-6">
                            <asp:TextBox runat="server" ID="dobtxt" TextMode="Date" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <asp:RadioButton ID="malerb" Text="Male" runat="server" GroupName="gender" CssClass="radio radio-inline" />
                                <asp:RadioButton ID="femalerb" Text="Female" runat="server" GroupName="gender" CssClass="radio  radio-inline" />
                                <asp:RadioButton ID="otherrb" Text="Other" runat="server" GroupName="gender" CssClass="radio radio-inline" />
                            </div>
                        </div>
                    </div>
                    <%-- <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user"></i></span>
                            <input id="email" type="text" class="form-control" name="email" placeholder="Email">
                        </div>--%>
                    <br />
                    <asp:Button ID="registerbtn" runat="server" Text="Register User" OnClick="registerUser" CssClass="btnSubmit"></asp:Button></>
            </div>
        </div>
        </div>
    </form>
</body>
</html>
