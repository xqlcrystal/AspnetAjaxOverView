<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ScriptModeAndPath.aspx.cs" Inherits="MsdnWebCast_ScriptManager.ScriptModeAndPath" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server" ScriptMode="Debug">
            <Scripts>
                <asp:ScriptReference Path="~/SomeScript.js" />
                <asp:ScriptReference Name="Menu.js" Assembly="System.Web, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" />
            </Scripts>
            <Services>
                <asp:ServiceReference Path="~/SimpleAjaxService.asmx" />
            </Services>
        </asp:ScriptManager>
    </div>
    </form>
</body>
</html>
