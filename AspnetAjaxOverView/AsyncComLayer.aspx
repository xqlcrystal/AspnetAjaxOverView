<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AsyncComLayer.aspx.cs" Inherits="AspnetAjaxOverView.AsyncComLayer" %>

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
            function showEmployee(firstname, lastname, title) {
                var request = new Sys.Net.WebRequest();
                request.set_url("GetEmployee.ashx");               
                request.set_httpVerb("POST");
                request.add_completed(onsuccess);

                var requestbody = String.format("firstname={0}&lastname={1}&title={2}", encodeURIComponent(firstname)
                    , encodeURIComponent(lastname), encodeURIComponent(title));
                request.set_body(requestbody);
                request.invoke();
            }

            function onsuccess(response) {
                if (response.get_responseAvailable()) {
                    var employee = response.get_object();
                    alert(String.format("{0},{1},{2}",employee.Firstname,employee.Lastname,employee.Title));
                }
            }
        </script>
        <input type="button" name="bill" value="show bill" onclick="showEmployee('bill', 'Gate', 'chireman');" />
    </div>
    </form>
</body>
</html>
