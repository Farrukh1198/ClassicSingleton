class DriverData {
  static DriverData? _instance;
  Map<String, dynamic>? _data;
  
  DriverData._internal() {}
  static getInstance() {
    if(_instance == null) {
      _instance = new DriverData._internal();
    }
    return _instance;
  }
  writeData(Map<String, dynamic> data) {
    _data = data;
  }
  getData() {
    return _data;
  }
}