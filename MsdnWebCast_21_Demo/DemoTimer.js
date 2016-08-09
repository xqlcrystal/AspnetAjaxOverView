///<reference name="MicrosoftAjax.js"/>

Type.registerNamespace("Demo");

Demo.Timer = function () {
    Demo.Timer.initializeBase(this);
    this._interval = 1000;
    this._enabled = false;
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

            if (!this.get_isUpdating() && (this._timer != null)) {
                this._restartTimer();
            }
        }
    },

    get_enabled: function () {
        return this._enabled;
    },

    set_enabled: function (value) {
        if (value != this.get_enabled()) {
            this._enabled = value;
            this.raisePropertyChanged("enabled");
            if (!this.get_isUpdating()) {
                if (value) {
                    this._startTimer();
                } else {
                    this._stopTimer();
                }
            }
        }
    },

    add_tick: function (handler) {
        this.get_events().addHandler("tick", handler);
    },

    remove_tick: function (handler) {
        this.get_events().removeHandler("tick", handler);
    },

    dispose: function () {
        this.set_enabled(false);
        this._stopTimer();
        Demo.Timer.callBaseMethod(this, "dispose");
    },

    updated:function(){
        Demo.Timer.callBaseMethod(this, "updated");
        if (this._enabled) {
            this._restartTimer();
        }
    },

    _timecallback:function(){
        var handler=this.get_events().getHandler("tick");
        if(handler){
            handler(this,Sys.EventArgs.Empty);
        }
    },

    _restartTimer(){
        this._stopTimer();
        this._startTimer();
    },
    _startTimer:function(){
        this._timer=window.setInterval(Function.createDelegate(this,this._timecallback),
            this._interval);
    },

    _stopTimer: function () {
        if (this._timer) {
            window.clearInterval(this._timer);
            this._timer = null;
        }
    }
}

Demo.Timer.registerClass("Demo.Timer", Sys.Component);