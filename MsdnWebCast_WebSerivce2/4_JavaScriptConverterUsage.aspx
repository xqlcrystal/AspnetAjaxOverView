<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4_JavaScriptConverterUsage.aspx.cs" Inherits="MsdnWebCast_WebSerivce2._4_JavaScriptConverterUsage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="sm1" runat="server">
            <Services>
                <asp:ServiceReference Path="~/DataTableService.asmx" />
            </Services>
        </asp:ScriptManager>
    <div>
        <script type="text/javascript">
            function getdatatable() {
                MsdnWebCast_WebSerivce2.DataTableService.GetDataTable(onsuccess,onfailed);
            }

            function onsuccess(result) {
                //alert(result);
                var sb = new Sys.StringBuilder("<table boder='1'>")
                sb.append("<tr><td>ID</td><td>Text</td></tr>");
                for (var i = 0; i < result.rows.length; i++) {
                    sb.append("<tr><td>");
                    sb.append(result.rows[i]["ID"]);
                    sb.append("</td><td>");
                    sb.append(result.rows[i]["Text"]);
                    sb.append("</td></tr>");
                }
                sb.append("</table>")
                $get("result").innerHTML = sb.toString();
            }

            function onfailed(error) {
                alert(error.get_message());
            }
        </script>
        <input type="button" name="datatable" value="show datatable" onclick="getdatatable();" />
    </div>
        <div id="result"></div>
    </form>
</body>
</html>
