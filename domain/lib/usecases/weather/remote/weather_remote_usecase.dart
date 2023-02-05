import 'package:domain/model/weather_model.dart';
import 'package:domain/repository/weather/remote/weather_repo.dart';
import 'package:domain/usecases/usecase/base_usecase.dart';

class WeatherRemoteUsecase extends BaseUsecase<WeatherModel,WeatherRemoteUsecaseArgs>{

  final WeatherRepo _weatherRepo;
  WeatherRemoteUsecase(this._weatherRepo);

  @override
  WeatherModel invoke(args) {
    return _weatherRepo.getWeather();
  }

}
class WeatherRemoteUsecaseArgs{}