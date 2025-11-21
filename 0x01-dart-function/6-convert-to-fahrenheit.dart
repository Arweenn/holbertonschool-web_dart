/// Converts a list of temperatures from Celsius to Fahrenheit.
List<double> convertToF(List<double> temperaturesInC) {
  List<double> temperaturesInF = [];

  // Iterate through each temperature in Celsius
  for (double tempC in temperaturesInC) {
    double tempF = (tempC * 9 / 5) + 32;
  
    // Round to 2 decimal places
    double rounded = double.parse(tempF.toStringAsFixed(2));
    temperaturesInF.add(rounded);
  }
  return temperaturesInF;
}
