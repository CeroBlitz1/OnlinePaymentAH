<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="NewOnlineBillPayment.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
&nbsp; ID :
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="TestDatabse">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Student_Name" HeaderText="Student_Name" SortExpression="Student_Name" />
                <asp:BoundField DataField="Subject_Code" HeaderText="Subject_Code" SortExpression="Subject_Code" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="TestDatabse" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:TestDataBaseConnectionString %>" DeleteCommand="DELETE FROM [StudentTable] WHERE [ID] = @original_ID AND (([Student_Name] = @original_Student_Name) OR ([Student_Name] IS NULL AND @original_Student_Name IS NULL)) AND (([Subject_Code] = @original_Subject_Code) OR ([Subject_Code] IS NULL AND @original_Subject_Code IS NULL))" InsertCommand="INSERT INTO [StudentTable] ([ID], [Student_Name], [Subject_Code]) VALUES (@ID, @Student_Name, @Subject_Code)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [StudentTable]" UpdateCommand="UPDATE [StudentTable] SET [Student_Name] = @Student_Name, [Subject_Code] = @Subject_Code WHERE [ID] = @original_ID AND (([Student_Name] = @original_Student_Name) OR ([Student_Name] IS NULL AND @original_Student_Name IS NULL)) AND (([Subject_Code] = @original_Subject_Code) OR ([Subject_Code] IS NULL AND @original_Subject_Code IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ID" Type="String" />
                <asp:Parameter Name="original_Student_Name" Type="String" />
                <asp:Parameter Name="original_Subject_Code" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="String" />
                <asp:Parameter Name="Student_Name" Type="String" />
                <asp:Parameter Name="Subject_Code" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Student_Name" Type="String" />
                <asp:Parameter Name="Subject_Code" Type="String" />
                <asp:Parameter Name="original_ID" Type="String" />
                <asp:Parameter Name="original_Student_Name" Type="String" />
                <asp:Parameter Name="original_Subject_Code" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
