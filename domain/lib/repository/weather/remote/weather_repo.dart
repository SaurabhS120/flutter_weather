import 'package:domain/model/weather_model.dart';

abstract class WeatherRepo{
  WeatherModel getWeather();
}