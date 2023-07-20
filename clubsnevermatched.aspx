<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="clubsnevermatched.aspx.cs" Inherits="Milestone3._1.clubsnevermatched" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 18px;
            left: 460px;
            text-align:center;
            font-size:50px;
            z-index: 1;
            width: 597px;
            height: 61px;
        }
        .auto-style2 {
            width: 820px;
            height: 269px;
            position: absolute;
            top: 96px;
            left: 332px;
            z-index: 1;
            margin-right: 8px;
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Clubs Never Matched"></asp:Label>
        <asp:GridView ID="clubsgridview" runat="server" CssClass="auto-style2">
        </asp:GridView>
    </form>
</body>
</html>
