<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Stadium_menu.aspx.cs" Inherits="Milestone3._1.Stadium_menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 251px;
            left: 92px;
            z-index: 1;
            height: 81px;
            width: 316px;
        }
        .auto-style2 {
            position: absolute;
            top: 259px;
            left: 600px;
            z-index: 1;
            width: 295px;
            height: 81px;
        }
        .auto-style3 {
            width: 417px;
            height: 294px;
            position: absolute;
            top: 406px;
            left: 56px;
            z-index: 1;
        }
        .auto-style4 {
            width: 530px;
            height: 288px;
            position: absolute;
            top: 407px;
            left: 564px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 285px;
            left: 1380px;
            z-index: 1;
            height: 74px;
            width: 254px;
        }
        .auto-style6 {
            position: absolute;
            top: 281px;
            left: 1081px;
            z-index: 1;
            height: 79px;
            width: 248px;
        }
        .auto-style7 {
            position: absolute;
            top: 114px;
            left: 1070px;
            z-index: 1;
            width: 114px;
        }
        .auto-style8 {
            position: absolute;
            top: 167px;
            left: 1070px;
            z-index: 1;
            width: 142px;
        }
        .auto-style9 {
            position: absolute;
            top: 221px;
            left: 1071px;
            z-index: 1;
            width: 129px;
        }
        .auto-style10 {
            position: absolute;
            top: 116px;
            left: 1204px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 172px;
            left: 1204px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 224px;
            left: 1201px;
            z-index: 1;
        }
        .auto-style13 {
            position: absolute;
            top: 38px;
            left: 573px;
            font-size:40px;
            text-align:center;
            z-index: 1;
            width: 419px;
            height: 102px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style1" Text="View stadium information" onClick="stadium_information"/>
        <asp:Button ID="Button2" runat="server" CssClass="auto-style2" Text="View Requests" onClick="view_requests"/>
        <asp:GridView ID="stadium_view" runat="server" CssClass="auto-style3">
        </asp:GridView>
        <p>
      
        </p>
        <asp:GridView ID="requests_view" runat="server" CssClass="auto-style4">
        </asp:GridView>
        <p>
            <asp:Button ID="Button4" runat="server" CssClass="auto-style5" Text="Accept Request" onClick="accept_requests"/>
        </p>
        <asp:Button ID="Button5" runat="server" CssClass="auto-style6" Text="Reject Request" onClick="reject_requests"/>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style7" Text="Host Club"></asp:Label>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style8" Text="Guest Club"></asp:Label>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style9" Text="Start time"></asp:Label>
        <asp:TextBox ID="host" runat="server" CssClass="auto-style10"></asp:TextBox>
        <asp:TextBox ID="guest" runat="server" CssClass="auto-style11"></asp:TextBox>
        <asp:TextBox ID="start" runat="server" CssClass="auto-style12"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" CssClass="auto-style13" Text="Stadium Manager Menu"></asp:Label>
    </form>
</body>
</html>
