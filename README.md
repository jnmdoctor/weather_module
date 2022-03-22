# weather_module

A flutter project that displays the weather for a given city and displays the top news headlines. This can be added as a module to a native Android or iOS mobile app.

## Using as a module

For instructions integrating Flutter modules to your existing applications,
see the [add-to-app documentation](https://flutter.dev/docs/development/add-to-app).

When using as a module, the name of the city should be passed to the app by pushing the route "homeWithCity" to the flutter view.

To pass the city name to the module, add a method handler for "getCityName" in the method channel. In that method, return a dictionary or map with "city_name" as the key and the city name as the value.

To dismiss the module, add a method handler for "dismiss" in the method channel. In that method, pop the flutter view or push another view in the native app.