<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="UpdatePayee.aspx.cs" Inherits="OnlinePaymentMode.UpdatePayee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>UPDATE PAYEE DETAILS
        </h1>
        <div class="col-md-3">
        </div>
        <div class="col-md-6">
            <div class="margin">
                <div class="form-group">
                    <br />
                    <br />
                    Payee EmailId: 
                    <asp:TextBox ID="eid" class="form-control" runat="server" placeholder="Enter Payee Email Id" required TextMode="Email" Enabled="false"></asp:TextBox><br />
                    Payee Name: 
                    <asp:TextBox ID="Name" class="form-control" runat="server" placeholder="Enter Payee Name" required></asp:TextBox><br />
                    Payee Mobile Number:
                    <asp:TextBox ID="mobilenum" class="form-control" runat="server" placeholder="Enter Payee Mobile Number"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                        ControlToValidate="mobilenum" ErrorMessage="incorrect mobile number"
                        ValidationExpression="[0-9]{10}" ForeColor="Red"></asp:RegularExpressionValidator><br />
                  
                   
                    Bank  Name: 
                    <asp:TextBox ID="bankname" class="form-control" runat="server" placeholder="Enter Payee Bank  Name" required></asp:TextBox><br />
                    Account Number: 
                    <asp:TextBox ID="AccNum" class="form-control" runat="server" placeholder="Enter Payee  Account Number" required></asp:TextBox><br />
                    Bank Address: 
                    <asp:TextBox ID="BankAddress" class="form-control" runat="server" placeholder="Enter Payee Bank Address" required></asp:TextBox><br />




                    <center>
                    <asp:Button ID="btnupdt" CssClass="btn btn-success" runat="server" Text="UPDATE" OnClick="btnupdt_Click"  />
                            <button type="reset" class="btn btn-danger">Reset</button>
                    </center>

                </div>
            </div>
        </div>


    </div>
</asp:Content>
