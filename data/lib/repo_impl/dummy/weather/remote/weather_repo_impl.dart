import 'package:data/datasource/dummy/weather/remote/weather_ds.dart';
import 'package:domain/model/weather_model.dart';
import 'package:domain/repository/weather/remote/weather_repo.dart';

class WeatherRepoImpl extends WeatherRepo{

  final WeatherDs _weatherDs;
  WeatherRepoImpl(this._weatherDs);

  WeatherModel getWeather(){
    return _weatherDs.getWeather().toModel();
  }
}