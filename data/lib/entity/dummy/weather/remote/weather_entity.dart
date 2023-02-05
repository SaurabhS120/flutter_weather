import 'package:data/entity/base/remote_response_entity.dart';
import 'package:domain/model/units.dart';
import 'package:domain/model/weather_model.dart';

class WeatherEntity extends RemoteResponseEntity<WeatherModel>{
  final int temp;
  final String unit;

  WeatherEntity({required this.temp,required this.unit});

  @override
  WeatherModel toModel() {
    Units modelUnit = Units.METRIC;
    switch(unit){
      case 'd':
        modelUnit = Units.METRIC;
        break;
      case 'i':
        modelUnit = Units.IMPERIAL;
        break;
    }
    return WeatherModel(temp: temp, unit: modelUnit);
  }
}