import Toybox.Lang;
import Toybox.WatchUi;
import Toybox.System;

var position=3;

class SplashDelegate extends WatchUi.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onKey(key){
        if(key.getKey()==8 && position<5){
            position ++;
            WatchUi.requestUpdate();
        }

        if(key.getKey()==13 && position>1){
            position --;
            WatchUi.requestUpdate();
        }       
        return true;
    }
}