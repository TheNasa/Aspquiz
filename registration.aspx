<%@ Page Title="" Language="C#" MasterPageFile="~/LoginPage.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

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
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <table align="center" class="style1">
    <tr>
        <td class="auto-style1" colspan="2">
            <strong style="color: #000000; text-align: right"><span class="style6"> 
                Registration</span></strong></td>
    </tr>
    <tr>
        <td class="style4">
                Name:</td>
        <td class="style5">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Key-In your Name" ControlToValidate="txtName"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtName" runat="server" Width="179px"></asp:TextBox>
        </td>
    </tr>
          <tr>
        <td class="style4">
                UserName:</td>
        <td class="style5">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtUsername" ErrorMessage="Please Key-In your UserName"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtUsername" runat="server" Width="179px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style4">
                Password:</td>
        <td class="style5">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtUsername" ErrorMessage="Please Key-In Your Password"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtPassword" runat="server" Width="179px" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
           <tr>
        <td class="style4">
                Email:</td>
        <td class="style5">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please Key-In Your Email"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtEmail" runat="server" Width="179px" ></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style4">
                &nbsp;</td>
        <td class="style5">
            <asp:Literal ID="ltrMessage" runat="server"></asp:Literal>
        </td>
    </tr>
    <tr>
        <td class="style2">
                &nbsp;</td>
        <td class="style5" style="text-align: center">
            <asp:Button ID="btnRegister" runat="server" Text="Register" BackColor="#3E8F14" ForeColor="White" OnClick="btnRegister_Click"  />
        </td>
    </tr>
</table>
</asp:Content>

