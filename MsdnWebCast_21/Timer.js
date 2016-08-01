///<reference name="MicrosoftAjax.js"/>

Type.registerNamespace("Demo");

Demo.Timer = function () {
    Demo.Timer.initializeBase(this);
    this._interval = 1000;
    this._timer = null;
}

Demo.Timer.prototype = {
    get_interval: function () {
        return this._interval;
    },
    set_interval: function (value) {
        if (this._interval != value) {
            this._interval = value;
            this.raisePropertyChanged("interval");

            if (this._timer) {
                this.stop();
                this.start();
            }
        }
    },

    add_tick: function (handler) {
        this.get_events().addHandler("tick", handler);
    },
    remove_tick: function (handler) {
        this.get_events().removeHandler("tick", handler);
    },

    _timercallback: function () {

        var handler = this.get_events().getHandler("tick");
        if (handler) {
            handler(this,Sys.EventArgs.Empty);
        }

    },

    start: function () {
        if (this._interval > 0) {
            this._timer = window.setInterval(
                Function.createDelegate(this, this._timercallback),
                this._interval
                );
        }
    },

    stop: function () {
        if (this._timer) {
            window.clearInterval(this._interval);
            this._timer = null;
        }
    }


}

Demo.Timer.registerClass("Demo.Timer", Sys.Component);