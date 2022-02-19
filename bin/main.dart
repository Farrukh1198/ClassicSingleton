import '../lib/driverData.dart';

void main(List<String> arguments) {
  Map<String, dynamic> data = {
    'id': 1,
    'name': 'Farrukh',
    'vehicle': 'MB G63',
    'tariff': 'premium'
  };
  var singleton1 = DriverData.getInstance();
  print('Data of singleton:\n${singleton1.getData()}');
  print('---'*25);
  singleton1.writeData(data);
  print('New data has been writen to singleton1');
  print('---'*25);
  var singleton2 = DriverData.getInstance();
  print('New data of singleton:\n${singleton2.getData()}');
  print('---'*25);
  print('Are singleton1 and singleton2 identical?: ${identical(singleton1, singleton2)}');
  print('---'*25);
  print('Singleton1:\n$singleton1\nSingleton2:\n$singleton2');
  print('---'*25);
  print('Data of Singleton1:\n${singleton1.getData()}\nData of Singleton2:\n${singleton2.getData()}');
  print('---'*25);
  print('Hash code of Singleton1:\n${singleton1.hashCode}\nHash code of Singleton2:\n${singleton2.hashCode}');
  
}