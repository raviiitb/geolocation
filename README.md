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

## Design

## Guideline Questions

*How do you handle configuration values? What if those values change?*

**I have put the configuration values in the config/environments/ . If those values get changed we, can simply update our config file without breaking the application.**

*What happens if we encounter an error with the third-party API integration? Will it
also break our application, or are they handled accordingly?*

**If third-party API throws an error, it will not break the application. All the cases are handled accordingly.**

*Extra*

**I have already isolated the configuration of the third party API. So, it's quite easy to switch to some other third party API service. Only thing we need to change is the call_api method to adapt accoriding to the new API service. And also we need to change a bit in the search method according to the response strusture of the new service.**

