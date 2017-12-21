<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="AddPayee.aspx.cs" Inherits="OnlinePaymentMode.AddPayee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container">
        <h1>ADD PAYEE
        </h1>
        <div class="col-md-3">
        </div>
        <div class="col-md-6">
            <div class="margin">
                <div class="form-group">
                    <br />
                    <br />
                    <asp:TextBox ID="Name" class="form-control" runat="server" placeholder="Enter Payee Name" required></asp:TextBox><br />
                    <asp:TextBox ID="mobilenum" class="form-control" runat="server" placeholder="Enter Payee Mobile Number"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                        ControlToValidate="mobilenum" ErrorMessage="incorrect mobile number"
                        ValidationExpression="[0-9]{10}" ForeColor="Red"></asp:RegularExpressionValidator>
                    <asp:TextBox ID="eid" class="form-control" runat="server" placeholder="Enter Payee Email Id" required TextMode="Email"></asp:TextBox><br />
                    <asp:TextBox ID="address" TextMode="MultiLine" class="form-control" runat="server" placeholder="Enter  Payee Address" required></asp:TextBox><br />
                    <asp:TextBox ID="bankname" class="form-control" runat="server" placeholder="Enter Payee Bank  Name" required></asp:TextBox><br />
                    <asp:TextBox ID="AccNum" class="form-control" runat="server" placeholder="Enter Payee  Account Number" required></asp:TextBox><br />
                    <asp:TextBox ID="BankAddress" class="form-control" runat="server" placeholder="Enter Payee Bank Address" required></asp:TextBox><br />



                 
                    <center>
                    <asp:Button ID="btnreg" CssClass="btn btn-success" runat="server" Text="Add Payee" OnClick="btnreg_Click" />
                            <button type="reset" class="btn btn-danger">Reset</button>
                    </center>

                </div>
            </div>
        </div>


    </div>
</asp:Content>
