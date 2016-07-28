<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2_PageMethods.aspx.cs" Inherits="MsdnWebCast_WebSerivce1._2_PageMethods" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true"></asp:ScriptManager>
    </div>
        <script type="text/javascript">
            function getCurrentTime() {
                PageMethods.GetCurrentDatetime(onsuccessed);
            }
            function onsuccessed(result) {
                alert(result);
            }
        </script>
        <input type="button" name="getCurrentTime1" value="get Current Time " onclick="getCurrentTime()" />
    </form>
</body>
</html>
