<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="startc.aspx.cs" Inherits="E_Learning.startc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body 
        {
            background: #1FA2FF;
            background: -webkit-linear-gradient(to right, #A6FFCB, #12D8FA, #1FA2FF);
            background: linear-gradient(to right, #A6FFCB, #12D8FA, #1FA2FF);
        }
        .main
        {
        }
        .head
         {
            font-size:50px;
            padding:0 530px;
            color:darkslategrey;
             text-shadow:6px;
        }
        h1{
            font-family:'Times New Roman', Times, serif;
            font-weight:600;
        }
        .con{
            display:grid;
            grid-template-columns:1fr 1fr 1fr;
            grid-gap:initial;
        }
        .c1{
            height:200px;

            width:350px;
            background-color:darkcyan;
            text-align:center;
            border-radius:10px 0;
            
        }

        .c2{
            height:200px;
            width:350px;
            text-align:center;
            background-color:dodgerblue;
            border-radius:10px 0;
        }
        .c3 
        {
            height: 200px;
            width: 350px;
            background-color: darkslateblue;
             border-radius:10px 0;
            text-align:center;
        }
        .c4{
            height:200px;
            width:350px;
           text-align:center;
            background-color:chartreuse;
             border-radius:10px 0;
        }

        .btn{
            font-weight:100;
            color:white;
            border-radius:7px;
            background-color:darkslategrays;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main">
        <h1 class="head">COURSES</h1><br />
        <div class="con">
            <div class="c1">
                <h1 >HTML</h1>
                <br />
                <asp:Button ID="c1btn" runat="server" Text="Start" CssClass="btn" />
            </div>
             <div class="c2">
                <h1>CSS</h1>
                   <asp:Button ID="c2btn" runat="server" Text="Start"   CssClass="btn"/>
            </div>
             <div class="c3">
                <h1>JS</h1>
                   <asp:Button ID="c3btn" runat="server" Text="Start" CssClass="btn" />
            </div>
             <div class="c4">
                <h1>JAVA</h1>
                   <asp:Button ID="c4btn" runat="server" Text="Start" CssClass="btn" />
            </div>
        </div>
    </div>
</asp:Content>
