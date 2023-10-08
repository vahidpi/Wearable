import Toybox.Lang;
import Toybox.WatchUi;

class gymMateDelegate extends WatchUi.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onMenu() as Boolean {
        WatchUi.pushView(new Rez.Menus.MainMenu(), new gymMateMenuDelegate(), WatchUi.SLIDE_UP);
        return true;
    }

}