<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="OnlinePaymentMode.Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>PAYMENT
        </h1>
        <div class="col-md-3">
        </div>
        <div class="col-md-6">
            <div class="margin">
                <div class="form-group">

                    <asp:TextBox ID="AccNum" class="form-control" runat="server" placeholder="Enter Payee  Account Number" required></asp:TextBox><br />
                    <asp:TextBox ID="bankname" class="form-control" runat="server" placeholder="Enter Payee Bank  Name" required></asp:TextBox><br />

                    <asp:TextBox ID="Name" class="form-control" runat="server" placeholder="Enter Payee Name" required></asp:TextBox><br />

                    <asp:TextBox ID="Payeeid" class="form-control" runat="server" placeholder="Enter Payee EmailId" required></asp:TextBox><br />

                    <asp:TextBox ID="Amount" class="form-control" runat="server" placeholder="Enter Amount" required></asp:TextBox><br />


                    <center>
                    <asp:Button ID="btnreg" CssClass="btn btn-success" runat="server" Text="COMPLETE TRANSATION" OnClick="btnreg_Click" />
                            <button type="reset" class="btn btn-danger">Reset</button>
                    </center>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
