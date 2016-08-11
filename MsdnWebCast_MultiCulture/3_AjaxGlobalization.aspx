<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="3_AjaxGlobalization.aspx.cs" Inherits="MsdnWebCast_MultiCulture._3_AjaxGlobalization" Culture="zh-cn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script type="text/javascript">
        function pageLoad() {
            showtime();
        }

        function showtime() {
            $get("info").innerHTML = new Date().localeFormat("D");
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnableScriptGlobalization="true"></asp:ScriptManager>
    <div id="info">
        </div>
    </form>
</body>
</html>
