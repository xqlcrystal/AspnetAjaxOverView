<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="1_WebServiceFoundation.aspx.cs" Inherits="MsdnWebCast_WebSerivce1._1_WebServiceFoundation" %>

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
                <asp:ServiceReference Path="~/WebServiceFoundation.asmx" />
            </Services>
        </asp:ScriptManager>

        <script type="text/javascript">
            function getRandom(minvalue, maxvalue) {
                if (arguments.length!=2) {
                    MsdnWebCast_WebSerivce1.WebServiceFoundation.GetRandom(getrandomSuccessed);
                } else {
                    MsdnWebCast_WebSerivce1.WebServiceFoundation.GetRangeRandom(minvalue, maxvalue, getrandomSuccessed, null);
                }
                
            }

            function getrandomSuccessed(result) {
                alert(result);
            }
        </script>
       <input type="button" name="GetRangeRandom" value="Get Range Random" onclick="getRandom(50,100);" />
        <input type="button" name="GetRandom" value="Get Random" onclick="getRandom();" />
    </div>
    </form>
</body>
</html>
