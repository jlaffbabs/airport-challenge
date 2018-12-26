Airport Challenge
=================

```
        ______
        _\____\___
=  = ==(____MA____)
          \_____\___________________,-~~~~~~~`-.._
          /     o o o o o o o o o o o o o o o o  |\_
          `~-.__       __..----..__                  )
                `---~~\___________/------------`````
                =  ===(_________)

```

Task
---------
We have a request from a client to write the software to control the flow of planes at an airport. The planes can land and take off provided that the weather is sunny. Occasionally it may be stormy, in which case no planes can land or take off.  Here are the user stories that we worked out in collaboration with the client:

```
As an air traffic controller
So I can get passengers to a destination
I want to instruct a plane to land at an airport

As an air traffic controller
So I can get passengers on the way to their destination
I want to instruct a plane to take off from an airport and confirm that it is no longer in the airport

As an air traffic controller
To ensure safety
I want to prevent takeoff when weather is stormy

As an air traffic controller
To ensure safety
I want to prevent landing when weather is stormy

As an air traffic controller
To ensure safety
I want to prevent landing when the airport is full

As the system designer
So that the software can be used for many different airports
I would like a default airport capacity that can be overridden as appropriate
```

Steps
-------

1. Clone the repo:
```shell
$ git clone git@github.com:emanuelegorga/airport-challenge.git
```

2. On your local machine get in the airport_challenge directory:
```shell
$ cd airport_challenge
```

3. To install all the gems first install the Bundle:
```shell
$ install Bundle
```

4. Install the gems:
```shell
$ bundle
```
5. Check that the tests are passing while in the root of the project:
```shell
$ rspec
```

---------

## My code: ##

* All tests passing
* High coverage -> 100% Test coverage
* The code is elegant: every class has a clear responsibility, methods are short.
