import 'package:data/datasource/dummy/weather/remote/weather_ds_impl.dart';
import 'package:data/repo_impl/dummy/weather/remote/weather_repo_impl.dart';
import 'package:domain/model/weather_model.dart';
import 'package:data/datasource/dummy/weather/remote/weather_ds.dart';
import 'package:domain/repository/weather/remote/weather_repo.dart';
import 'package:domain/usecases/weather/remote/weather_remote_usecase.dart';
void main(){
  print("This is flutter weather app cli interface");
  print('Fetching current weather');
  WeatherDs weatherDs = WeatherDsImpl();
  WeatherRepo weatherRepo = WeatherRepoImpl(weatherDs);
  WeatherRemoteUsecase weatherRemoteUsecase = WeatherRemoteUsecase(weatherRepo);
  WeatherModel currentWeather = weatherRemoteUsecase.invoke(WeatherRemoteUsecaseArgs());
  print("current weather is : ${currentWeather.temp}${currentWeather.unit.unit_short} ${currentWeather.unit.unit}");
}