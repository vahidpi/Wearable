import Toybox.Application;
import Toybox.Lang;
import Toybox.WatchUi;

class Test3App extends Application.AppBase {
    private var _view;

    function initialize() {
        AppBase.initialize();
    }

    // onStart() is called on application start up
    function onStart(state as Dictionary?) as Void {
    }

    // onStop() is called when your application is exiting
    function onStop(state as Dictionary?) as Void {
    }

    // Return the initial view of your application here
    function getInitialView() as Array<Views or InputDelegates>? {
        _view = new Test3View();
        return [ _view, new Test3Delegate() ] as Array<Views or InputDelegates>;
    }

    function getView() as Test3View{
        return _view;
    }

}

function getApp() as Test3App {
    return Application.getApp() as Test3App;
}

function getView() as Test3View {
    return Application.getApp().getView();
}