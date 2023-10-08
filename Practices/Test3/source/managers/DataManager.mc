import Toybox.Application;

class DataManager {
  static function getCyclesCount() {
    return Application.Properties.getValue("cyclesCount");
  }

//   static function setCyclesCount(count as Number) {
//     Application.Properties.setValue("cyclesCount", count);
//   }

  static function getCycleDuration() {
    return Application.Properties.getValue("cycleDuration");
  }

//   static function setCycleDuration(duration as Number) {
//     Application.Properties.setValue("cycleDuration", count);
//   }
}