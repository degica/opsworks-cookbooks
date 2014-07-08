dotenv Cookbook
===============

This cookbook writes out an .env file in your application root from values
set in your stack settings custom JSON

Opsworks Set-Up
---------------

* Add the following to your stacks custom JSON

	    {
        	"deploy": {
            	"my_app": {
                	"env": {
                    	"AWS_ACCESS_KEY_ID": "SOMEVALUE" 
                	}
            	}
        	}
    	}
    
* Associate **dotenv** custom recipe with the **deploy** event in your rails app's layer
