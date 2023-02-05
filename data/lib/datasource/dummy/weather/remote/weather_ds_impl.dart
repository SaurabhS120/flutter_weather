import 'package:data/datasource/dummy/weather/remote/weather_ds.dart';
import 'package:data/entity/dummy/weather/remote/weather_entity.dart';

class WeatherDsImpl extends WeatherDs{
  WeatherEntity getWeather(){
    return WeatherEntity(temp:30, unit:'d');
  }
}