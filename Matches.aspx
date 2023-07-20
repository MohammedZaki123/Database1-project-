<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Matches.aspx.cs" Inherits="Milestone3._1.Matches" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 32px;
            left: 528px;
            z-index: 1;
            text-align:center;
            font-size:50px;
            width: 247px;
            width: 277px;
            height: 54px;
        }
        .auto-style2 {
            position: absolute;
            top: 57px;
            left: 93px;
            z-index: 1;
            text-align: center;
            font-size:30px;
            width: 245px;
            height: 46px;
            right: 1305px;
        }
        .auto-style3 {
            position: absolute;
            top: 133px;
            left: 56px;
            z-index: 1;
            width: 104px;
        }
        .auto-style4 {
            position: absolute;
            top: 203px;
            left: 57px;
            z-index: 1;
            width: 118px;
            right: 1290px;
        }
        .auto-style5 {
            position: absolute;
            top: 275px;
            left: 57px;
            z-index: 1;
            width: 90px;
        }
        .auto-style6 {
            position: absolute;
            top: 333px;
            left: 60px;
            z-index: 1;
            width: 95px;
        }
        .auto-style7 {
            position: absolute;
            top: 138px;
            left: 270px;
            z-index: 1;
            bottom: 239px;
        }
        .auto-style8 {
            position: absolute;
            top: 206px;
            left: 259px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 280px;
            left: 265px;
            z-index: 1;
        }
        .auto-style10 {
            position: absolute;
            top: 333px;
            left: 261px;
            z-index: 1;
            margin-bottom: 5px;
        }
        .auto-style12 {
            position: absolute;
            top: 251px;
            left: 526px;
            z-index: 1;
            width: 206px;
        }
        .auto-style13 {
            position: absolute;
            top: 167px;
            left: 533px;
            z-index: 1;
            width: 191px;
        }
        .auto-style14 {
            position: absolute;
            top: 165px;
            left: 938px;
            z-index: 1;
            width: 231px;
        }
        .auto-style15 {
            position: absolute;
            top: 245px;
            left: 924px;
            z-index: 1;
            width: 252px;
        }
        .auto-style16 {
            position: absolute;
            top: 323px;
            left: 925px;
            z-index: 1;
            width: 233px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Matches"></asp:Label>
        </div>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style2" Text="Add/Delete Match"></asp:Label>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style3" Text="host_club_name"></asp:Label>
        <asp:Label ID="Label4" runat="server" CssClass="auto-style4" Text="guest_club_name"></asp:Label>
        <asp:Label ID="Label5" runat="server" CssClass="auto-style5" Text="start_time"></asp:Label>
        <asp:Label ID="Label6" runat="server" CssClass="auto-style6" Text="end_time"></asp:Label>
        <asp:TextBox ID="host_name" runat="server" CssClass="auto-style7"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" CssClass="auto-style13" onClick="Deleting_Matches" Text="Delete Match" />
        <asp:TextBox ID="guest_name" runat="server" CssClass="auto-style8"></asp:TextBox>
        <asp:TextBox ID="start_time" runat="server" CssClass="auto-style9"></asp:TextBox>
        <p>
            <asp:TextBox ID="end_time" runat="server" CssClass="auto-style10"></asp:TextBox>
            <asp:Button ID="Button3" runat="server" CssClass="auto-style14" Text="View to Upcoming Matches" OnClick="upcoming_matches_page" />
        </p>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style12" onClick="Adding_Matches" Text="Add Match" />
        <asp:Button ID="Button4" runat="server" CssClass="auto-style15" onClick="old_matches_page" Text="Already Played Matches" />
        <asp:Button ID="Button5" runat="server" CssClass="auto-style16" Text="Clubs Never Matched" OnClick="clubs_never_matched" />
    </form>
</body>
</html>
