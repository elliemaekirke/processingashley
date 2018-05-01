import com.temboo.core.*;

import com.temboo.Library.Yahoo.Weather.*;

// Create a session using your Temboo account application details
TembooSession session = new TembooSession("hacklab-saf", "myFirstApp", "WMQOekhN8sGWE2x8cHflVio7xXyGlykY");

void setup() {
  // Run the GetWeatherByAddress Choreo function
  runGetWeatherByAddressChoreo();
}

void runGetWeatherByAddressChoreo() {
  // Create the Choreo object using your Temboo session
  GetWeatherByAddress getWeatherByAddressChoreo = new GetWeatherByAddress(session);

  // Set inputs
  getWeatherByAddressChoreo.setAddress("62 Kepple Street");
  getWeatherByAddressChoreo.setDay("1");
  getWeatherByAddressChoreo.setUnits("c");

  // Run the Choreo and store the results
  GetWeatherByAddressResultSet getWeatherByAddressResults = getWeatherByAddressChoreo.run();
  
  // Print results
  println(getWeatherByAddressResults.getConditionCode());
  println(getWeatherByAddressResults.getConditionText());
  println(getWeatherByAddressResults.getForecastCode());
  println(getWeatherByAddressResults.getForecastText());
  println(getWeatherByAddressResults.getHigh());
  println(getWeatherByAddressResults.getHumidity());
  println(getWeatherByAddressResults.getLow());
  println(getWeatherByAddressResults.getPressure());
  println(getWeatherByAddressResults.getTemperature());
  println(getWeatherByAddressResults.getVisibility());
  println(getWeatherByAddressResults.getWOEID());
  println(getWeatherByAddressResults.getResponse());

}