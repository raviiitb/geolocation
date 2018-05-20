# README

## App purpose
This small application returns the geo-location of the given address in Germany.
On the home page, there is a text field where user can enter the address to get the geo-location.
We have used a third party API service to get the geo-location. We are making a REST call to the Google Maps services.

## Implementation
I have created one controller *GeoController* and two actions *home* and *search*. *home* action is for home page and *search* action is to show the result. I have whitelisted the query params by strong parameters. I have used *HTTP* gem to make a REST call, *rspec* for unit testing and *webmock* to stub real request. On the home page there is a small form  whose submit button will trigger the search action with *address* as query parameters. All the important configurations are placed in the *config/environments*.

## Input
You need to input an address.

## Output
Output will be geolocation of the inputted address in JSON format.

`{"lat":53.5510846,"lng":9.9936819}`

If inputted address is invalid, then output will be 

`{"message":null}`

###### Note: This app considers Germany as primary country.
