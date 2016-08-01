<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="1_SimpleLiftCycle.aspx.cs" Inherits="MsdnWebCast_21._1_SimpleLiftCycle" %>

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
                <asp:ScriptReference Path="~/SimpleComponent.js" />
            </Scripts>
        </asp:ScriptManager>

        <script type="text/javascript">
            function pageInit() {
                alert("Page is initialing.");

                $create(
                    Demo.SimpleConpent,
                    {"id":"simplecomponent1"},
                    {"disposing":ondisposing}
                    );
            }

            function pageLoad() {
                var simpleCoponent1 = $find("simplecomponent1");
                simpleCoponent1.sayHi();
            }

            function ondisposing() {
                alert("componet is being disposed.");
            }

            Sys.Application.add_init(pageInit);
        </script>
    </div>
    </form>
</body>
</html>
