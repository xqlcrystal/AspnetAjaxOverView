<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="1_Events.aspx.cs" Inherits="MsdnWebCast_OO2._1_Events" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <script type="text/javascript">
            Type.registerNamespace("MyNameSpace");

            MyNameSpace.Firer=function()
            {
                this._enents = null;
            }

            MyNameSpace.Firer.prototype = {
                _get_enents: function () {
                    if(!this._enents)
                    {
                        this._enents = new Sys.EventHandlerList();
                    }
                    return this._enents;
                },

                add_fire: function (handler) {
                    this._get_enents().addHandler("fire", handler);
                },
                remove_fire: function (handler) {
                    this._get_enents().removeHandler("fire", handler);
                },
                raiseFire: function (e) {
                    var handler=this._get_enents().getHandler("fire");
                    if (handler) {
                        handler(this,e);
                    }
                },

                fireAfter: function (seconds) {
                    setTimeout(
                        Function.createDelegate(this, this._timeoutcallback),
                        seconds * 1000);
                },
                _timeoutcallback: function () {
                    this.raiseFire(Sys.EventArgs.Empty);
                }
            }

            MyNameSpace.Firer.registerClass("MyNameSpace.Firer");

            function test() {
                var fire = new MyNameSpace.Firer();
                fire.add_fire(onFirehandler);
                fire.fireAfter(2);
            }

            function onFirehandler(sender, e) {
                alert("I am fired");
            }
        </script>

        <input type="button" name="events1" value="study envents" onclick="test();" />
    </div>
    </form>
</body>
</html>
