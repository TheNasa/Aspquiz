<%@ Page Title="Student Login" Language="C#" MasterPageFile="~/LoginPage.master" AutoEventWireup="true" CodeFile="Student.aspx.cs" Inherits="student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
        {
            width: 421px;
            height: 79px;
        }
        .style3
        {
            text-align: center;
            font-size: large;
            font-family: "Comic Sans MS";
            background-color: #99CC99;
        }
        .style6
        {
            background-color: #99CC99;
        }
        .style4
        {
            width: 148px;
            text-align: right;
            font-family: "Comic Sans MS";
            font-weight: bold;
            color: #000000;
            background-color: #FFFFCC;
        }
        .style5
        {
            background-color: #FFFFCC;
            color: #FF0000;
        }
        .style2
        {
            width: 148px;
            background-color: #FFFFCC;
        }
        .auto-style1 {
            width: 148px;
            text-align: right;
            font-family: "Comic Sans MS";
            font-weight: bold;
            color: #000000;
            background-color: #FFFFCC;
            height: 26px;
        }
        .auto-style2 {
            background-color: #FFFFCC;
            color: #FF0000;
            height: 26px;
        }
        .auto-style3 {
            width: 148px;
            text-align: right;
            font-family: "Comic Sans MS";
            font-weight: bold;
            color: #000000;
            background-color: #FFFFCC;
            height: 23px;
        }
        .auto-style4 {
            background-color: #FFFFCC;
            color: #FF0000;
            height: 23px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1">
    <tr>
        <td class="style3" colspan="2">
            <strong style="color: #000000; text-align: center"><span class="style6"> 
                Login</span></strong></td>
    </tr>
    <tr>
        <td class="auto-style1">
                Username:</td>
        <td class="auto-style2">
            <asp:TextBox ID="txtUsername" runat="server" Width="179px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style4">
                Password:</td>
        <td class="style5">
            <asp:TextBox ID="txtPassword" runat="server" Width="179px" TextMode="Password"></asp:TextBox>
        </td>
    </tr>

    <tr>
        <td class="auto-style3">
                </td>
        <td class="auto-style4">
            <asp:Literal ID="ltrMessage" runat="server"></asp:Literal>
        </td>
    </tr>
    <tr>
        
               
        <td class="style5" style="text-align: left">
        
            &nbsp;</td>
        
       <td class="style5" style="text-align: center">
            <asp:Button ID="btnLogin" runat="server" BackColor="#3E8F14" ForeColor="White" 
                    Text="Login" onclick="btnLogin_Click"  />
            &nbsp; &nbsp;
              <asp:Button ID="Button1" runat="server"  style="text-align: right" BackColor="#3E8F14" ForeColor="White" 
                    Text="Register" PostBackUrl="~/registration.aspx" />
          
            
           </td>
    </tr>
</table>
</asp:Content>

