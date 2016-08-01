<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2_Timer.aspx.cs" Inherits="MsdnWebCast_21._2_Timer" %>

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
                <asp:ScriptReference Path="~/Timer.js" />
            </Scripts>
        </asp:ScriptManager>

        <div id="display"></div>

        <script type="text/javascript">
            Sys.Application.add_init(function () {
                $create(Demo.Timer,
                    { "id": "timer1" },
                    {
                        "tick": ontick,
                        "propertyChanged":onpropertyChanged
                    });
            });

            function onpropertyChanged(sender,args) {
                var property = args.get_propertyName();
                var value = sender["get_" + property].apply(sender);

                alert(property + " is changed to " + value);
            }

            window.counter = 0;

            function ontick() {
                $get("display").innerHTML = window.counter++;
            }

            function pageLoad() {
                $find("timer1").start();
            }

            function changeinterval() {
                
                var interval = parseInt($get("txtInterval").value);
                $find("timer1").set_interval(interval);
            }

        </script>

        <input type="text" name="txtInterval" value="1000" />
        <input type="button" name="btninterval" value="change interval" onclick="changeinterval();" />
    </div>
    </form>
</body>
</html>
