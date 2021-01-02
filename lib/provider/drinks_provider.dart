import 'package:flutter/material.dart';
import 'package:smtutorial/models/drink.dart';

class DrinksProvider extends ChangeNotifier {
  List<Drink> _drinks = [
    Drink("Water", false),
    Drink("Cuba Libre", false),
    Drink("Pina Colada", false),
    Drink("Havana Cola", false)
  ];

  void selectDrink(Drink drink, bool selected) {
    _drinks.firstWhere((element) => element.name == drink.name).selected =
        selected;
    notifyListeners();
  }

  List<Drink> get drinks => _drinks;

  List<Drink> get selectedDrinks =>
      drinks.where((element) => element.selected).toList();
}
