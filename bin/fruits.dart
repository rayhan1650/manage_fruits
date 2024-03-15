import 'package:fruits/fruits.dart' as fruits;

void main() {
  List<Map<String,dynamic>> fruits=[
    {
      'Name':'Apple',
      'Color':'Red',
      'Price':2.5,
    },{
      'Name':'Banana',
      'Color':'Yellow',
      'Price':1.0,
    },{
      'Name':'Grapes',
      'Color':'Purple',
      'Price':3.0,
    }
  ];
  displayFruitDetails(fruits);
  applyPriceDiscount(fruits,10);
}

void displayFruitDetails(List<Map<String,dynamic>> fruits){
  print('original Fruit details before discount:');
  for(dynamic fruit in fruits){
  print(fruit);
  }
}

void applyPriceDiscount(List<Map<String,dynamic>> fruits, double discount){
  print('Fruit details after applying $discount% discount:');
  for(dynamic fruit in fruits){
    fruit['Price']-=(fruit['Price']*discount)/100;
  }

  for(dynamic fruit in fruits){
    print(fruit);
  }
}
