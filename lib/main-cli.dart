import 'package:domain/model/weather_model.dart';
import 'package:domain/model/units.dart';
void main(){
  print("This is flutter weather app cli interface");
  print('Fetching current weather');
  int temp = 30;
  Weather current_weather = Weather(temp: temp,unit: Units.METRIC);
  print("current weather is : ${current_weather.temp}${current_weather.unit.unit_short}");
}