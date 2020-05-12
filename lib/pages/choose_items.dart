import 'package:flutter/material.dart';
//import 'CheckList.dart';
import 'package:colored_tab_bar/colored_tab_bar.dart';

class ChooseItems extends StatefulWidget {
  ChooseItems({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ChooseItemsState createState() => _ChooseItemsState();
}

class _ChooseItemsState extends State<ChooseItems> {

  Map<String, bool> vegetables = {
    'Carrot': false,
    'leek': false,
    'Beets': false,
    'Beans, Green': false,
    'potatoes': false,
    'red onions': false,
    'salad leaves': false,
    'Asparagus': false,
    'Broccoli': false,
    'Cabbage, Green': false,
    'Cabbage, Red': false,
    'Cauliflower': false,
    'Celery': false,
    'Corn': false,
    'Cucumber': false,
    'Edamame, Soybeans': false,
    'Eggplant': false,
    'Ginger Root': false,
    'Lettuce, Leaf': false,
    'Lettuce, Iceberg': false,
    'Mushrooms': false,
    'Onions': false,
    'Peas, Green': false,
    'Pepper, Green': false,
    'Pepper, Sweet Red': false,
    'Pumpkin': false,
    'Radishes': false,
    'Spinach': false,
    'Sweet Potato': false,
    'Tomato*': false,



  };
  Map<String, bool> fruits = {
    'Apple': false,
    'Apricots': false,
    'Avocado': false,
    'Banana': false,
    'Blackberries': false,
    'Blackcurrant': false,
    'Blueberries': false,
    'Breadfruit': false,
    'Cantaloupe': false,
    'Cherries': false,
    'Date Fruit': false,
    'Durian': false,
    'Grapefruit': false,
    'Grapes': false,
    'Guava': false,
    'Jackfruit': false,
    'Kiwifruit': false,
    'Lemon': false,
    'Mandarin': false,
    'Mango': false,
    'Mangosteen': false,
    'Olives': false,
    'Orange': false,
    'Papaya': false,
    'Passion Fruit': false,
    'Peaches': false,
    'Pear': false,
    'Pineapple': false,
    'Pomegranate': false,
    'Prunes': false,
    'Raspberries': false,
    'Strawberries': false,
    'Tangerine': false,
    'Watermelon': false,
    'To add other items': false,


  };
  Map<String, bool> groceries = {
    'Pasta': false,
    'Rice': false,
    'Bread': false,
    'All-purpose flour': false,
    'Porridge oats': false,
    'Cornflakes': false,
    'Biscuits': false,
    'Chocolates': false,
    'Cooking oil': false,
    'Butter': false,
    'Milk': false,
    'Eggs': false,
    'Cheese': false,
    'Yogurt': false,
    'Salt': false,
    'Pepper': false,
    'Vinegar': false,
    'Sugar': false,
    'To add other items': false,


  };
  Map<String, bool> pharmacy = {
    'Vitamin C': false,
    'Strepsils': false,
    'To add other items': false,


  };
  var tmpArray = [];

  getCheckboxItems(){
    tmpArray=[];
    vegetables.forEach((key, value) {
      if(value == true)
      {
        tmpArray.add(key);
      }
    });
    fruits.forEach((key, value) {
      if(value == true)
      {
        tmpArray.add(key);
      }
    });
    groceries.forEach((key, value) {
      if(value == true)
      {
        tmpArray.add(key);
      }
    });
      pharmacy.forEach((key, value) {
        if(value == true)
        {
          tmpArray.add(key);
        }
    });
    //print(tmpArray);
    //print("gell");

    //return tmpArray;
    Navigator.pushNamed(context, '/share',arguments: tmpArray);


  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(length: 4,
          child: Scaffold(

      appBar: AppBar(
        bottom: TabBar(
            tabs:[
              Tab(text: 'Vegetables',
              ),
              Tab(text: "Fruits",
              ),
              Tab(text: "Grocery items",
              ),
              Tab(text: "Pharmacy",
              ),

            ] ),
        title: Text('My Shopping List'),
      ),
      body:TabBarView(children: [
        new ListView(
          children: vegetables.keys.map((String key) {
            return new CheckboxListTile(
              title: new Text(key),
              value: vegetables[key],
              onChanged: (bool value) {
                setState(() {
                  vegetables[key] = value;
                });
              },
            );
          }).toList(),
        ),
        new ListView(
          children: fruits.keys.map((String key) {
            return new CheckboxListTile(
              title: new Text(key),
              value: fruits[key],
              onChanged: (bool value) {
                setState(() {
                  fruits[key] = value;
                });
              },
            );
          }).toList(),
        ),
        new ListView(
          children: groceries.keys.map((String key) {
            return new CheckboxListTile(
              title: new Text(key),
              value: groceries[key],
              onChanged: (bool value) {
                setState(() {
                  groceries[key] = value;
                });
              },
            );
          }).toList(),

        ),
        new ListView(
          children: pharmacy.keys.map((String key) {
            return new CheckboxListTile(
              title: new Text(key),
              value: pharmacy[key],
              onChanged: (bool value) {
                setState(() {
                  pharmacy[key] = value;
                });
              },
            );
          }).toList(),

        ),
      ]),

    floatingActionButton: FlatButton.icon(onPressed:(){getCheckboxItems();}, label: Text('Done',style: TextStyle(color: Colors.white),), icon: Icon(Icons.done, color: Colors.white,), color: Colors.blue,),

    ),

    ),
    );
  }

}

