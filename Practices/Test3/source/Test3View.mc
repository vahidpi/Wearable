import Toybox.Graphics;
import Toybox.WatchUi;

class Test3View extends WatchUi.View {
    private var _typeTitleElement;
    private var _currentTimerElement;
    private var _cylclesLeftElement;

    function initialize() {
        View.initialize();
    }

    // Load your resources here
    function onLayout(dc as Dc) as Void {
        setLayout(Rez.Layouts.MainLayout(dc));

        _typeTitleElement = findDrawableById("type_title");
        _currentTimerElement = findDrawableById("current_timer");
        _cylclesLeftElement = findDrawableById("cylcles_left");

        //setWaterTypeValue((DataManager.getCyclesCount() - 1) % 2 == 0 ? WaterType.Hot : WaterType.Cold);
        setTimerValue(DataManager.getCycleDuration());
        updateCyclesValue(DataManager.getCyclesCount());
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() as Void {
    }

    // Update the view
    function onUpdate(dc as Dc) as Void {
        // Call the parent onUpdate function to redraw the layout
        View.onUpdate(dc);
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() as Void {
    }

    function updateCyclesValue(cycles) as Void {
        var multipleSign = cycles == 1 ? "" : "s";
        var formattedValue = cycles.toString() + " cycle" + multipleSign + " left";

        _cylclesLeftElement.setText(formattedValue);

        WatchUi.requestUpdate();
    }

    function setTimerValue(value) as Void {
        var minutes = value/60;
        
        var seconds = value%60;
        var secondsFormatted = seconds > 9 ? seconds.toString() : "0" + seconds.toString();
        var formattedValue = minutes.toString() + ":" + secondsFormatted;
        _currentTimerElement.setText(formattedValue);
        WatchUi.requestUpdate();
    }   

    function setWaterTypeValue(waterType as WaterType) as Void {
        var label=" ", color=" ";
        switch(waterType) {
            case WaterType.Hot:
                label = "HOT";
                color = Graphics.COLOR_DK_RED;
                break;
            case WaterType.Cold:
                label = "COLD";
                color = Graphics.COLOR_BLUE;
                break;
        }
        _typeTitleElement.setText(label);
        _typeTitleElement.setColor(color);
        WatchUi.requestUpdate();   
    }
}
