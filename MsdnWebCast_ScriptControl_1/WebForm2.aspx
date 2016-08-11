<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Demo.WebForm2" %>

<%@ Register Namespace="Demo" TagPrefix="demo"%>
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
        <demo:StyledTextBox runat="server" HighlightCss="HighLight" NoHighlightCss="NoHighLight" />
    </div>
    </form>
</body>
</html>
