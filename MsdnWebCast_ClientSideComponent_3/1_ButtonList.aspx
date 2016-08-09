<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="1_ButtonList.aspx.cs" Inherits="MsdnWebCast_ClientSideComponent_3._1_ButtonList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
            <Scripts>
                <asp:ScriptReference Path="~/ButtonList.js" />
            </Scripts>
        </asp:ScriptManager>
        <div id="buttonlist">
        </div>

        <script type="text/javascript">

            Sys.Application.add_init(function () {
                var datalist =
                    [
                        {
                            "text": "item1",
                            "context": "item 1 has clicked"
                        },
                          {
                              "text": "item2",
                              "context": "item 2 has clicked"
                          },
                            {
                                "text": "item3",
                                "context": "item 3 has clicked"
                            }
                    ];


                $create(
                    Demo.ButtonList,
                    {
                        "itemdatalist": datalist
                    },
                    {
                        "itemClick": itemclick
                    },
                    null,
                    $get("buttonlist")
                    );
            });

            function itemclick(sender,args) {
                alert(args.get_context());
            }
        </script>
    </form>
</body>
</html>
