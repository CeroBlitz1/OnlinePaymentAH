<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="PayeeDetails.aspx.cs" Inherits="OnlinePaymentMode.PayeeDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <h1>PAYEE DETAILS
        </h1>
        <div class="col-md-2">
        </div>
        <div class="col-md-6">
            <asp:GridView ID="GridView1" CssClass="table table-striped table-bordered table-hover" HeaderStyle-BackColor="#cc6699"
                runat="server" AutoGenerateColumns="False" BackColor="#ffffff" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderStyle-BackColor="#00cc99" HeaderStyle-BorderColor="#009900" HeaderStyle-Font-Bold="true" HeaderStyle-Height="50px" HeaderText="Name" ItemStyle-Width="150" />
                    <asp:BoundField DataField="MOBILENUMBER" HeaderStyle-BackColor="#00cc99" HeaderStyle-BorderColor="#009900" HeaderStyle-Font-Bold="true" HeaderStyle-Height="50px" HeaderText="MOBILE NUMBER" ItemStyle-Width="150" />
                    <asp:BoundField DataField="EMAILID" HeaderStyle-BackColor="#00cc99" HeaderStyle-BorderColor="#009900" HeaderStyle-Font-Bold="true" HeaderStyle-Height="50px" HeaderText="EMAILID" ItemStyle-Width="150" />
                    <asp:BoundField DataField="ACCOUNTNUMBER" HeaderStyle-BackColor="#00cc99" HeaderStyle-BorderColor="#009900" HeaderStyle-Font-Bold="true" HeaderStyle-Height="50px" HeaderText="ACCOUNT NUMBER" ItemStyle-Width="150" />
                    <asp:BoundField DataField="BANKNAME" HeaderStyle-BackColor="#00cc99" HeaderStyle-BorderColor="#009900" HeaderStyle-Font-Bold="true" HeaderStyle-Height="50px" HeaderText=" BANK NAME" ItemStyle-Width="150" />
                    <asp:BoundField DataField="BankAddress" HeaderStyle-BackColor="#00cc99" HeaderStyle-BorderColor="#009900" HeaderStyle-Font-Bold="true" HeaderStyle-Height="50px" HeaderText=" BANK ADDRESS" ItemStyle-Width="150" />
                  
                   
                    <asp:ButtonField Text="UPDATE " HeaderText="UPDATE DETAILS" CommandName="select" ItemStyle-Width="150" HeaderStyle-BackColor="#00cc99" HeaderStyle-BorderColor="#009900" HeaderStyle-Font-Bold="true" HeaderStyle-Height="50px" />

                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>
