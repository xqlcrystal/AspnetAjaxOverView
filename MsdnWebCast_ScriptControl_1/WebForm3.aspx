<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="Demo.WebForm3" %>

<%@ Register Assembly="FocusExtender" Namespace="FocusExtender" TagPrefix="demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .NoHighLight
        {
            border: solid 1px gray;
            background-color : #EEEEEE;
        }
        
        .HighLight
        {
            border: solid 1px gray;
            background-color : Ivory;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:TextBox ID="textbox1" runat="server" />
         <demo:FocusExtender runat="server" TargetControlID="textbox1"
            HighlightCssClass="HighLight"
            NoHighlightCssClass="NoHighLight" />
    </div>
    </form>
</body>
</html>
