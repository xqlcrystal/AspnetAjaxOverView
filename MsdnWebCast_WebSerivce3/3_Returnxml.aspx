<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="3_Returnxml.aspx.cs" Inherits="MsdnWebCast_WebSerivce3._3_Returnxml" %>

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
            <Services>
                <asp:ServiceReference Path="~/ReturnXmlService.asmx" />
            </Services>
        </asp:ScriptManager>
        <script type="text/javascript">
            function getxml() {
                MsdnWebCast_WebSerivce3.ReturnXmlService.GetXmlDocument(onsuccess);
            }
            function onsuccess(result) {
                alert(result)
            }
        </script>
        <input type="button" name="xml" value="" onclick="getxml();" />
    </div>
    </form>
</body>
</html>
