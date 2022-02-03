### API Consumption and Data Transformation

If you have had the blessed determination to get this far, I thank you.

##Please install gems:

```'HTTParty```
```'json'```
```'rspec'```

## Run the spec

This spec checks against test data and inspects the output of the api_call; to run this lil' test in the root folder run

```$ rspec```

## Run the method

In the root folder run

```$ ruby api_call.rb```

When the api is awake, this should take in given endpoints and transform the data into a new hash with only
```:amount, :description, :originUserName, :targetUserName, :likescCount```
