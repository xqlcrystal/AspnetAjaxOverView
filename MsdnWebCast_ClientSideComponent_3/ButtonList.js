///<reference name="MicrosoftAjax.js"/>
Type.registerNamespace("Demo");

Demo.Button = function (element) {
    Demo.Button.initializeBase(this, [element]);
    this._context = null;
    this._onClickHandler = null;
}

Demo.Button.prototype = {

    initialize: function () {
        Demo.Button.callBaseMethod(this, "initialize");
        this._onClickHandler = Function.createDelegate(this, this._onclick);
        $addHandler(this.get_element(),"click",this._onClickHandler);
    },
    dispose: function () {
        this._onClickHandler = null;
        $clearHandlers(this.get_element());
        Demo.Button.callBaseMethod(this, "dispose");
    },

    _onclick: function (e) {
        var eventArgs = new Demo.ButtonClickEventArgs(this._context);
        this.raiseClick(eventArgs);
    },

    get_context:function() {
        return this._context;
    },

    set_context: function (value) {
        this._context = value;
    },

    raiseClick: function (args) {
        this.raiseBubbleEvent(this,args);
    }

}

Demo.Button.registerClass("Demo.Button", Sys.UI.Control);

Demo.ButtonClickEventArgs = function (context) {
    Demo.ButtonClickEventArgs.initializeBase(this);
    this._context = context;
}

Demo.ButtonClickEventArgs.prototype = {
    get_context: function () {
        return this._context;
    }
}

Demo.ButtonClickEventArgs.registerClass("Demo.ButtonClickEventArgs", Sys.EventArgs);

Demo.ButtonList = function (element) {
    Demo.ButtonList.initializeBase(this, [element]);
    this._itemdatalist = null;
}

Demo.ButtonList.prototype = {
    initialize: function () {
        Demo.ButtonList.callBaseMethod(this, "initialize");

        for (var i = 0; i < this._itemdatalist.length; i++) {
            this._createButton(this._itemdatalist[i]);
        }
    },

    _createButton: function (data) {
        var buttonelement = document.createElement("input");
        buttonelement.type = "button";
        buttonelement.value = data.text;
        this.get_element().appendChild(buttonelement);

        $create(Demo.Button,
            {
                "context": data.context,
                "parent":this
            },
            null,null,buttonelement
            );
    },

    get_itemdatalist: function () {
        return this._itemdatalist;
    },

    set_itemdatalist: function (value) {
        this._itemdatalist = value;
    },

    onBubbleEvent: function (source, e) {
        this.raiseItemClick(e);
        return true;
    },

    add_itemClick: function (handler) {
        this.get_events().addHandler("itemClick", handler);
    },

    remove_itemClick: function (handler) {
        this.get_events().removeHandler("itemClick", handler);
    },

    raiseItemClick: function (args) {
        var handler = this.get_events().getHandler("itemClick");
        if (handler)
            handler(this, args);
    }
}

Demo.ButtonList.registerClass("Demo.ButtonList", Sys.UI.Control);