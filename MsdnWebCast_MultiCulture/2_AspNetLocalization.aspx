<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2_AspNetLocalization.aspx.cs" Inherits="MsdnWebCast_MultiCulture._2_AspNetLocalization" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Label runat="server" Text="<% $ Resources:GlobalResource,TodayIs %>"></asp:Label>
        <%=DateTime.Now.ToString("D") %>
        <br/>
        <asp:Label runat="server" ID="lblCurrent" meta:resourcekey="lblCurrent"></asp:Label>
        <%=DateTime.Now.ToString("D") %>
    </div>
    </form>
</body>
</html>
