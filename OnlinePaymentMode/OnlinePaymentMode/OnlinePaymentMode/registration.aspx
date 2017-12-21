<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="OnlinePaymentMode.registration" %>

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
                    <asp:TextBox ID="Name" class="form-control" runat="server" placeholder="Enter  Name" required></asp:TextBox><br />
                    <asp:TextBox ID="mobilenum" class="form-control" runat="server" placeholder="Enter Mobile Number"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                        ControlToValidate="mobilenum" ErrorMessage="incorrect mobile number"
                        ValidationExpression="[0-9]{10}" ForeColor="Red"></asp:RegularExpressionValidator>
                    <asp:TextBox ID="eid" class="form-control" runat="server" placeholder="Enter Email Id" required TextMode="Email"></asp:TextBox><br />
                    <asp:TextBox ID="address" TextMode="MultiLine" class="form-control" runat="server" placeholder="Enter  Your Address" required></asp:TextBox><br />
                    <asp:TextBox ID="bankname" class="form-control" runat="server" placeholder="Enter Bank  Name" required></asp:TextBox><br />
                    <asp:TextBox ID="AccNum" class="form-control" runat="server" placeholder="Enter  Account Number" required></asp:TextBox><br />
                    <asp:TextBox ID="BankAddress" class="form-control" runat="server" placeholder="Enter  Bank Address" required></asp:TextBox><br />



                    <asp:TextBox ID="pwd" class="form-control" runat="server" placeholder="Enter Password" required TextMode="Password"></asp:TextBox><br />
                    <asp:TextBox ID="cpwd" class="form-control" runat="server" placeholder="Conform Password" required TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password not matched" ControlToCompare="pwd" ControlToValidate="cpwd" ForeColor="Red"></asp:CompareValidator>
                    <center>
                    <asp:Button ID="btnreg" CssClass="btn btn-success" runat="server" Text="Register" OnClick="btnreg_Click"/>
                            <button type="reset" class="btn btn-danger">Reset</button>
                    </center>

                </div>
            </div>
        </div>


    </div>
</asp:Content>
