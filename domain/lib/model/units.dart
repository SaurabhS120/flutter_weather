enum Units{
  METRIC(unit_short: '°C',unit:'Celsius'),IMPERIAL(unit_short: '°F',unit:'Fahrenheit');
  final String unit_short;
  final String unit;

  const Units({required this.unit_short, required this.unit});


}