<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HoverButtonTest.aspx.cs" Inherits="MsdnWebCast_21_Demo.HoverButtonTest" %>

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
                <asp:ScriptReference Path="~/HoverButton.js" />
            </Scripts>
        </asp:ScriptManager>

        <script type="text/javascript">
            var app = Sys.Application;
            app.add_init(applicationInithandler);

            function applicationInithandler(sender, args) {
               
                
                $create(
                    Demo.HoverButton,
                   {
                       text: "A hover button control",
                       element: {
                           style: {
                               "font-weight": "bolder",
                               "border-width":"2px"
                           }
                       }
                   },
                    {
                        "click": start,
                        "hover": doSomethingOnHover,
                        "unhover": doSomethingOnUnhover

                    },
                    null,
                    $get("button1")
                    );

               
            }

            function start(sender,args) {
                alert("The start function handler ");
            }


            function doSomethingOnHover(sender,args) {
                var hovermessage="this is hover message";
                $get("HoverLabel").innerHTML = hovermessage;
            }

            function doSomethingOnUnhover(sender,args) {
                $get("HoverLabel").innerHTML = "";
            }
        </script>
        <button type="button" id="button1" />
        
    </div>
       <div id="HoverLabel"></div> 
    </form>
</body>
</html>
