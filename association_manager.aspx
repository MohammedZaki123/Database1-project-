<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="association_manager.aspx.cs" Inherits="Milestone3._1.association_manager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 15px;
            left: 506px;
            z-index: 1;
            text-align:center;
            width: 477px;
            font-size:50px;
        }
        .auto-style2 {
            position: absolute;
            top: 92px;
            font-size:25px;
            left: 61px;
            z-index: 1;
            width: 174px;
            right: 562px;
            height: 33px;
        }
        .auto-style3 {
            position: absolute;
            top: 150px;
            left: 61px;
            z-index: 1;
            width: 127px;
            font-size:25px;
        }
        .auto-style4 {
            position: absolute;
            top: 207px;
            left: 62px;
            z-index: 1;
            font-size:25px;
            width: 103px;
        }
        .auto-style6 {
            position: absolute;
            top: 96px;
            left: 178px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 157px;
            left: 179px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 211px;
            left: 178px;
            z-index: 1;
        }
        .auto-style10 {
            position: absolute;
            top: 150px;
            left: 541px;
            z-index: 1;
            width: 376px;
            margin-bottom: 0px;
            height: 62px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
            <div>
            </div>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Association Manager"></asp:Label>
            <asp:Label ID="Label2" runat="server" CssClass="auto-style2" Text="Name"></asp:Label>
            <asp:Label ID="Label4" runat="server" CssClass="auto-style4" Text="Password"></asp:Label>
            <asp:Label ID="Label3" runat="server" CssClass="auto-style3" Text="Username"></asp:Label>
            <asp:TextBox ID="association_name" runat="server" CssClass="auto-style6"></asp:TextBox>
            <asp:TextBox ID="Username" runat="server" CssClass="auto-style7"></asp:TextBox>
            <asp:TextBox ID="Password" runat="server" CssClass="auto-style8"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style10" Text="Add Association Manager" OnClick="add_association_manager" />
       
    </form>
</body>
</html>
