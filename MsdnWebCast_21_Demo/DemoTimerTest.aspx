<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DemoTimerTest.aspx.cs" Inherits="MsdnWebCast_21_Demo.DemoTimerTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
            <Scripts>
                <asp:ScriptReference Path="~/DemoTimer.js" />
                <asp:ScriptReference Path="~/DemoTimerTest.js" />
            </Scripts>
        </asp:ScriptManager>

      
    </div>
        <div id="info"></div>
    </form>
</body>
</html>
