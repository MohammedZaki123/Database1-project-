<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="oldmatches.aspx.cs" Inherits="Milestone3._1.oldmatches" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 17px;
            left: 493px;
            text-align:center;
            font-size:60px;
            z-index: 1;
            width: 338px;
        }
        .auto-style2 {
            width: 733px;
            height: 341px;
            position: absolute;
            top: 110px;
            left: 318px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Old Matches"></asp:Label>
        <asp:GridView ID="oldmatchesGridView" runat="server" CssClass="auto-style2">
        </asp:GridView>
    </form>
</body>
</html>
