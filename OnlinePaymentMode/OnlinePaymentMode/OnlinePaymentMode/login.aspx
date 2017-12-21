<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="OnlinePaymentMode.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <br />
            <br />
            <br />
            <h1>Login:</h1>
            <br />
            <div class="col-md-2"></div>
            <div class="col-md-4 ">
                <asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="Email Id" required runat="server"></asp:TextBox>
                <br />
                <asp:TextBox ID="TextBox2" CssClass="form-control" placeholder="Password" TextMode="Password" required runat="server"></asp:TextBox><br />
                <asp:Button ID="Button1" runat="server" Height="32px" Text="Login" Width="76px" OnClick="Button1_Click" /><br />
                <asp:Label ID="Label12" runat="server"></asp:Label>
            </div>


        </div>
    </div>
</asp:Content>
