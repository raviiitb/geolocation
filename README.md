# README

This README would normally document whatever steps are necessary to get the
application up and running.

This small application returns the geo-location of the given address in Germany.
On the home page, there is a text field where user can enter the address to get the geo-location.
We have used a third party API service to get the geo-location. We are making a REST call to the Google Maps services.
For the invalid and non existent address, the application will return a JSON reponse { "message":null }

Guideline Questions
How do you handle configuration values? What if those values change?
I have put the configuration values in the config/environments/ . If those values get changed we, caa simply update our config file without breaking the application

What happens if we encounter an error with the third-party API integration? Will it
also break our application, or are they handled accordingly?
If third-party API throws an error, it will not break the application. All the cases are handled accordingly.

I have already isolated the configuration of the third party API. So, it's quite easy to switch to some other third party API service. Only thing we need to change is the call_api metho to adapt accoriding to the new API service. And also we need to change abit in the search method according to the response strusture of the new service. 

