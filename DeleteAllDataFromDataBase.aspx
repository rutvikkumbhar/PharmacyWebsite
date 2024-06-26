<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteAllDataFromDataBase.aspx.cs" Inherits="PharmacyWebsite.DeleteAllDataFromDataBase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="btnDeleteAll" runat="server" Text="delete" OnClick="btnDeleteAll_Click" />
    </div>
        <div style="margin:15px 0;  font-size:16px; font-weight:700;">
            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
          </div>
    </form>
</body>
</html>
