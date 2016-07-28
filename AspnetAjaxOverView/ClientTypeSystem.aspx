<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClientTypeSystem.aspx.cs" Inherits="AspnetAjaxOverView.ClientTypeSystem" %>

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
            Type.registerNamespace("AspnetAjaxOverview");

            AspnetAjaxOverview.Person = function(firstname,lastname) {
                this._firstname = firstname;
                this._lastname = lastname;
            }
            AspnetAjaxOverview.Person.prototype = {
                get_firstname: function() {
                    return this._firstname;
                },

                get_lastname:function(){
                    return this._lastname;
                },
                toString: function () {
                    return String.format("Hello I am {0} {1}",
                        this.get_firstname(),
                        this.get_lastname());
                }
            }
            AspnetAjaxOverview.Person.registerClass("AspnetAjaxOverview.Person");


            AspnetAjaxOverview.Employee = function (firstname, lastname, title) {
                AspnetAjaxOverview.Employee.initializeBase(this, [firstname, lastname]);
                this._title = title;

            }

            AspnetAjaxOverview.Employee.prototype = {
                get_title:function(){
                    return this._title;
                },
                toString: function () {
                    return AspnetAjaxOverview.Employee.callBaseMethod(this, "toString") + " My title is '" + this.get_title() + "'";
                }
            }
            AspnetAjaxOverview.Employee.registerClass("AspnetAjaxOverview.Employee", AspnetAjaxOverview.Person);

        </script>

        <input type="button" name="Gate" value="Gate" onclick="alert(new AspnetAjaxOverview.Employee('Bill','Gates','Chirman'));" />
        <input type="button" name="bob" value="Bob" onclick="alert(new AspnetAjaxOverview.Employee('bob','xieql','arch'));" />
    </div>
    </form>
</body>
</html>
