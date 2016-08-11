<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4_AjaxLocalization.aspx.cs" Inherits="MsdnWebCast_MultiCulture._4_AjaxLocalization" UICulture="auto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnableScriptLocalization="true">
            <Scripts>
                <asp:ScriptReference Path="~/Scripts/DemoResource.js"  ResourceUICultures="en-US"/>
            </Scripts>
        </asp:ScriptManager>

        <script type="text/javascript">
            document.write(Demo.Resx.TodayIs);
        </script>
    </div>
    </form>
</body>
</html>
