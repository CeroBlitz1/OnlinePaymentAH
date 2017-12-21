<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="viewtransactions.aspx.cs" Inherits="OnlinePaymentMode.viewtransactions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



     <div class="container">
        <h1>Total Transactions
        </h1>
        <div class="col-md-2">
        </div>
        <div class="col-md-6">

            <asp:GridView ID="GridView1" HeaderStyle-BackColor="#cc6699" BackColor="#ffffff" CssClass="table table-striped table-bordered table-hover" runat="server"></asp:GridView>


           
        </div>
    </div>
</asp:Content>
