import 'package:trip_app/models/activity_model.dart';
import 'package:trip_app/models/city_model.dart';
import 'package:trip_app/models/trip_model.dart';

List<City> cities = [
  City(
    name: 'Paris',
    image: 'assets/images/paris.jpeg',
    activities: [
      Activity(
        id: 'a1',
        name: 'Le Louvre',
        image: 'assets/images/activities/louvre.jpg',
        city: 'Paris',
        price: 22.00,
      ),
      Activity(
        id: 'a2',
        name: 'Tour eiffel',
        image: 'assets/images/activities/tour-eiffel.jpg',
        city: 'Paris',
        price: 29.40,
      ),
      Activity(
        id: 'a3',
        name: 'Château de Versailles',
        image: 'assets/images/activities/versailles.jpg',
        city: 'Paris',
        price: 21.00,
      ),
      Activity(
        id: 'a4',
        name: 'Le musée d\'Orsay',
        image: 'assets/images/activities/orsay.jpg',
        city: 'Paris',
        price: 16.00,
      ),
    ],
  ),
  City(
    name: 'Londres',
    image: 'assets/images/londres.jpeg',
    activities: [
      Activity(
        id: 'l1',
        name: 'Le musée d\'Orsay',
        image: 'assets/images/activities/orsay.jpg',
        city: 'Londres',
        price: 16.00,
      ),
      Activity(
        id: 'l2',
        name: 'Le musée d\'Orsay',
        image: 'assets/images/activities/orsay.jpg',
        city: 'Londres',
        price: 16.00,
      ),
      Activity(
        id: 'l3',
        name: 'Le musée d\'Orsay',
        image: 'assets/images/activities/orsay.jpg',
        city: 'Londres',
        price: 16.00,
      ),
      Activity(
        id: 'l4',
        name: 'Le musée d\'Orsay',
        image: 'assets/images/activities/orsay.jpg',
        city: 'Londres',
        price: 16.00,
      ),
    ],
  ),
  City(
    name: 'Berlin',
    image: 'assets/images/paris.jpeg',
    activities: [
      Activity(
        id: 'b1',
        name: 'Le musée d\'Orsay',
        image: 'assets/images/activities/orsay.jpg',
        city: 'Londres',
        price: 16.00,
      ),
      Activity(
        id: 'b2',
        name: 'Le musée d\'Orsay',
        image: 'assets/images/activities/orsay.jpg',
        city: 'Londres',
        price: 16.00,
      ),
      Activity(
        id: 'b3',
        name: 'Le musée d\'Orsay',
        image: 'assets/images/activities/orsay.jpg',
        city: 'Londres',
        price: 16.00,
      ),
      Activity(
        id: 'b4',
        name: 'Le musée d\'Orsay',
        image: 'assets/images/activities/orsay.jpg',
        city: 'Londres',
        price: 16.00,
      ),
    ],
  ),
  City(
    name: 'Barcelone',
    image: 'assets/images/londres.jpeg',
    activities: [
      Activity(
        id: 'esb1',
        name: 'Le musée d\'Orsay',
        image: 'assets/images/activities/orsay.jpg',
        city: 'Londres',
        price: 16.00,
      ),
      Activity(
        id: 'esb2',
        name: 'Le musée d\'Orsay',
        image: 'assets/images/activities/orsay.jpg',
        city: 'Londres',
        price: 16.00,
      ),
      Activity(
        id: 'esb3',
        name: 'Le musée d\'Orsay',
        image: 'assets/images/activities/orsay.jpg',
        city: 'Londres',
        price: 16.00,
      ),
      Activity(
        id: 'esb4',
        name: 'Le musée d\'Orsay',
        image: 'assets/images/activities/orsay.jpg',
        city: 'Londres',
        price: 16.00,
      ),
    ],
  ),
];

List<Trip> trips = [
  Trip(
      city: 'Londres',
      activities: [
        Activity(
          id: 'l1',
          name: 'Le musée d\'Orsay',
          image: 'assets/images/activities/orsay.jpg',
          city: 'Londres',
          price: 16.00,
        ),
        Activity(
          id: 'l2',
          name: 'Le musée d\'Orsay',
          image: 'assets/images/activities/orsay.jpg',
          city: 'Londres',
          price: 16.00,
        ),
        Activity(
          id: 'l3',
          name: 'Le musée d\'Orsay',
          image: 'assets/images/activities/orsay.jpg',
          city: 'Londres',
          price: 16.00,
        ),
        Activity(
          id: 'l4',
          name: 'Le musée d\'Orsay',
          image: 'assets/images/activities/orsay.jpg',
          city: 'Londres',
          price: 16.00,
        ),
      ],
      date: DateTime.now()),
  Trip(
      city: 'Paris',
      activities: [],
      date: DateTime.now().add(Duration(days: 3))),
  Trip(
      city: 'Berlin',
      activities: [],
      date: DateTime.now().subtract(Duration(days: 2))),
];
