Form.DelayedObserver = Class.create(Form.Observer, {
    initialize: function($super, element, frequency, callback) {
        $super(element, frequency, callback);
        this.invocationPending = false;
    },
    
    // Overrides Abstract.TimedObserver.execute
    execute: function() {
        var value = this.getValue();
        if (Object.isString(this.lastValue) && Object.isString(value) ?
                this.lastValue != value : String(this.lastValue) != String(value)) {
            this.lastValue = value;
            this.invocationPending = true;
        } else if(this.invocationPending) {
            this.invocationPending = false;
            this.callback(this.element, value);
            this.lastValue = value;
        }
    }
});