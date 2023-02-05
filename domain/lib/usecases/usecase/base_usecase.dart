abstract class BaseUsecase<RETURNS,ARGS>{
  RETURNS invoke(ARGS args);
}