import 'package:trip_app/models/activity_model.dart';
import 'package:trip_app/models/city_model.dart';

List<Activity> activities = [
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
];

List<City> cities = [
    City(
      name: 'Paris',
      image: 'assets/images/paris.jpeg',
      
    ),
    City(
      name: 'Londres',
      image: 'assets/images/londres.jpeg',
    ),
    City(
      name: 'Berlin',
      image: 'assets/images/paris.jpeg',
    ),
    City(
      name: 'Barcelone',
      image: 'assets/images/londres.jpeg',
    ),
  ];
