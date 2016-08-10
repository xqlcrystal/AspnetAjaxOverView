///<reference name="MicrosoftAjax.js"/>

Type.registerNamespace("Demo");

Demo.HoverButton = function (element) {
    Demo.HoverButton.initializeBase(this, [element]);

    this._clickDelegate = null;
    this._hoverDelegate = null;
    this._unhoverDelegate = null;
}

Demo.HoverButton.prototype = {
    get_text: function () {
        return this.get_element().innerHTML;
    },

    set_text: function (value) {
        this.get_element().innerHTML = value;
    },

    add_click: function (handler) {
        this.get_events().addHandler("click", handler);
    },

    remove_click: function(handler) {
        this.get_events().removeHandler("click", handler);
    },

    add_hover: function(handler) {
        this.get_events().addHandler("hover", handler);
    },

    remove_hover: function (handler) {
        this.get_events().removeHandler("hover", handler);
    },

    add_unhover: function(handler) {
        this.get_events().addHandler("unhover", handler);

    },

    remove_unhover: function(handler) {
        this.get_events().removeHandler("unhover", handler);
    },

    initialize: function () {
        var element=this.get_element();
        if (!element.tabindex) element.tabindex = 0;

        if (this._clickDelegate == null) {
            this._clickDelegate = Function.createDelegate(this, this._clickHandler);
            Sys.UI.DomEvent.addHandler(element, "click", this._clickDelegate);
        }

        if (this._hoverDelegate == null) {
            this._hoverDelegate = Function.createDelegate(this, this._hoverHandler);
            Sys.UI.DomEvent.addHandler(element, "mouseover", this._hoverDelegate);
            Sys.UI.DomEvent.addHandler(element, "foucs", this._hoverDelegate);
        }

        if (this._unhoverDelegate == null) {
            this._unhoverDelegate = Function.createDelegate(this, this._unhoverHandler);
            Sys.UI.DomEvent.addHandler(element, "mouseout", this._unhoverDelegate);
            Sys.UI.DomEvent.addHandler(element, "blur", this._unhoverDelegate);
        }

        Demo.HoverButton.callBaseMethod(this, "initialize");
    },

    _clickHandler: function(event) {
        var handler = this.get_events().getHandler("click");
        if (handler) {
            handler(this, Sys.EventArgs.Empty);
        }
    },

    _hoverHandler: function (event) {
        var handler = this.get_events().getHandler("hover");
        if (handler) {
            handler(this, Sys.EventArgs.Empty);
        }
    },

    _unhoverHandler: function (event) {
        var handler = this.get_events().getHandler("unhover");
        if (handler) {
            handler(this, Sys.EventArgs.Empty);
        }
    },

    dispose: function () {
        var element = this.get_element();
        if (this._clickDelegate) {
            Sys.UI.DomEvent.removeHandler(element, "click", this._clickDelegate);
            delete this._clickDelegate;
        }

        if (this._hoverDelegate) {
            Sys.UI.DomEvent.removeHandler(element, "foucs", this._hoverDelegate);
            Sys.UI.DomEvent.removeHandler(element, "mouseover", this._hoverDelegate);
            delete this._hoverDelegate;
        }

        if (this._unhoverDelegate) {
            Sys.UI.DomEvent.removeHandler(element, "blur", this._unhoverDelegate);
            Sys.UI.DomEvent.removeHandler(element, "mouseout", this._unhoverDelegate);
            delete this._unhoverDelegate;
        }

        Demo.HoverButton.callBaseMethod(this, "dispose");
    }
}


Demo.HoverButton.registerClass("Demo.HoverButton", Sys.UI.Control);