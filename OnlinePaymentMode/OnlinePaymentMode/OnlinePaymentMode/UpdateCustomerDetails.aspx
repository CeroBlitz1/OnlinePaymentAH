<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="UpdateCustomerDetails.aspx.cs" Inherits="OnlinePaymentMode.UpdateCustomerDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Registration
        </h1>
        <div class="col-md-3">
        </div>
        <div class="col-md-6">
            <div class="margin">
                <div class="form-group">
                    <br />
                    <br />
                    Email Id:
                    <asp:TextBox ID="eid" Enabled="false" class="form-control" runat="server" required TextMode="Email"></asp:TextBox><br />
                    <br />
                    Name:
                    <asp:TextBox ID="Name" class="form-control" runat="server" placeholder="Enter  Name" required></asp:TextBox><br />
                    Mobile Number:<asp:TextBox ID="mobilenum" class="form-control" runat="server" placeholder="Enter Mobile Number"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                        ControlToValidate="mobilenum" ErrorMessage="incorrect mobile number"
                        ValidationExpression="[0-9]{10}" ForeColor="Red"></asp:RegularExpressionValidator><br />

                    Address:
                    <asp:TextBox ID="address" TextMode="MultiLine" class="form-control" runat="server" placeholder="Enter  Your Address" required></asp:TextBox><br />
                    Bank  Name:
                    <asp:TextBox ID="bankname" class="form-control" runat="server" placeholder="Enter Bank  Name" required></asp:TextBox><br />
                    Account Number:<asp:TextBox ID="AccNum" class="form-control" runat="server" placeholder="Enter  Account Number" required></asp:TextBox><br />
                    Bank Address: 
                    <asp:TextBox ID="BankAddress" class="form-control" runat="server" placeholder="Enter  Bank Address" required></asp:TextBox><br />

                    Password:<asp:TextBox ID="pwd" class="form-control" runat="server" placeholder="Enter Password" required></asp:TextBox><br />

                    <center>
                    <asp:Button ID="btnupdate" CssClass="btn btn-success" runat="server" Text="Updat" OnClick="btnupdate_Click" />
                            <button type="reset" class="btn btn-danger">Reset</button>
                    </center>

                </div>
            </div>
        </div>


    </div>
</asp:Content>
