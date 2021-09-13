class Dish {
  Dish({required this.id, required this.path, this.isSelected = false});
  final int id;
  final String path;
  bool isSelected;

  void toggle() {
    isSelected = !isSelected;
  }
}

List<Dish> menu = [
  Dish(id: 1, path: "images/meals/Curry_Rice.png"),
  Dish(id: 3, path: "images/meals/Dal_Rice.png"),
  Dish(id: 4, path: "images/meals/Dal_Roti.png"),
  Dish(id: 5, path: "images/meals/Sabji_Dal_Rice.png"),
  Dish(id: 6, path: "images/meals/Sabji_Dal_Roti_Rice.png"),
  Dish(id: 7, path: "images/meals/Sabji_Dal_Roti.png"),
  Dish(id: 2, path: "images/meals/Curry_Roti_Rice.png"),
  Dish(id: 8, path: "images/meals/Sabji_Roti.png"),
];
List<Dish> addOn = [
  Dish(id: 9, path: "images/add-on/Salad.png"),
  Dish(id: 10, path: "images/add-on/Soup.png"),
];

// const List<Map<int, dynamic>> dish = <Map<int, dynamic>>[
//   <int, dynamic>{1: "images/meals/Sabji_Roti.png"},
//   <int, dynamic>{2: "images/meals/Dal_Roti.png"},
//   <int, dynamic>{3: "images/meals/Curry_Rice.png"},
//   <int, dynamic>{4: "images/meals/Dal_Rice.png"},
//   <int, dynamic>{5: "images/meals/Sabji_Dal_Rice.png"},
//   <int, dynamic>{6: "images/meals/Sabji_Dal_Roti_Rice.png"},
//   <int, dynamic>{8: "images/meals/Curry_Roti_Rice.png"},
//   <int, dynamic>{7: "iimages/meals/Sabji_Dal_Roti.png"},
// ];
// const List<Map<int, dynamic>> addOn = <Map<int, dynamic>>[
//   <int, dynamic>{9: "images/add-on/Salad.png"},
//   <int, dynamic>{10: "images/add-on/Soup.png"},
// ];
