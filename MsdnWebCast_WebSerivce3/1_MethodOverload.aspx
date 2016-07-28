<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="1_MethodOverload.aspx.cs" Inherits="MsdnWebCast_WebSerivce3._1_MethodOverload" %>

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
                <asp:ServiceReference Path="~/MethodOverloadedService.asmx" />
            </Services>
        </asp:ScriptManager>
        <input type="button" name="random" value="get random" onclick="getrandom();" />
         <input type="button" name="random" value="get random" onclick="getrandom(50,100);" />
        <script type="text/javascript">
            function getrandom(minvalue,maxvalue) {
                if (arguments.length != 2) {
                    MsdnWebCast_WebSerivce3.MethodOverloadedService.GetRandom(onsuccess);
                } else {
                    MsdnWebCast_WebSerivce3.MethodOverloadedService.GetRangeRandom(minvalue, maxvalue, onsuccess);
                }
            }

            function onsuccess(result) {
                alert(result);
            }
        </script>
    </div>
    </form>
</body>
</html>
