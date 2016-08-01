///<reference name="MicrosoftAjax.js"/>

Type.registerNamespace("Demo");

Demo.SimpleConpent = function () {
    Demo.SimpleConpent.initializeBase(this);
}

Demo.SimpleConpent.prototype = {

    initialize: function () {
        Demo.SimpleConpent.callBaseMethod(this, "initialize");
        alert("I 've been initialized");
    },

    dispose: function () {
        alert("I 've been disposed");
        Demo.SimpleConpent.callBaseMethod(this, "dispose");
    },

    sayHi: function () {
        alert("I am your first component");
    }


}


Demo.SimpleConpent.registerClass("Demo.SimpleConpent", Sys.Component);