<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpcomingMatches.aspx.cs" Inherits="Milestone3._1.UpcomingMatches" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 10px;
            text-align:center;
            left: 685px;
            font-size:40px;
            z-index: 1;
            width: 348px;
        }
        .auto-style2 {
            height: 333px;
            width: 955px;
            letter-spacing:normal;
            margin-left: 0px;
            margin-top: 27px;
        }
        .auto-style4 {
            width: 897px;
            height: 317px;
            position: absolute;
            top: 119px;
            left: 369px;
            z-index: 1;
        }
    </style>
    </head>
<body>
        <div>
        </div>
        
    <form id="form1" runat="server" class="auto-style2">
        <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Upcoming Matches"></asp:Label>
        
        <asp:GridView ID="UpcomingMatchesGridView" runat="server" CssClass="auto-style4">
        </asp:GridView>
        
    </form>
                
    </body>
</html>
