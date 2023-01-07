import 'package:flutter/material.dart';
import 'package:fooddelivery/Food.dart';
import 'theme.dart';
import 'Food.dart';

var counter = 0;
void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.purple[800],
    ),
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        actions: [IconButton(onPressed: (){}, icon: Icon(
          Icons.menu,
        )
        ),Spacer(),Center(child: Text("What Do You Want To Eat?", style: TextStyle(fontSize: 30),)),Spacer(), IconButton(onPressed: (){}, icon: Icon(
          Icons.notification_add
        ))
        ],
      ),
      body: Container(
        child: Column(
          children: [
            mbody(),
            Container(height: 600,child: ListView.builder(scrollDirection: Axis.horizontal,itemBuilder: (BuildContext context, int index){
              return Container(child: cardInfo());
            }),),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_rounded),
            label: '',
          ),
        ],)
    ),
  ));
}

class mbody extends StatelessWidget {
  const mbody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(children:
          [Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){}, child: Text("All"),style: ElevatedButton.styleFrom(backgroundColor: Colors.red[900]),
        ),
          ), Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){}, child: Text("Desert"),style: ElevatedButton.styleFrom(backgroundColor: Colors.red[900]),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){}, child: Text("Pizza"),style: ElevatedButton.styleFrom(backgroundColor: Colors.red[900]),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){}, child: Text("Pasta",style: TextStyle(color: Colors.red),),style: ElevatedButton.styleFrom(side: BorderSide(color: Colors.red),backgroundColor: Colors.white),),
          )
        ],
        ),
          Row(
            children: [Text("Popular",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),Spacer(), Text("See All ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red[900]),)],
          ),
        ],
      ),
    );
  }
}
List getFood(){
  return [Food("spaghetti1.jpeg", "Spagehetti & Meatballs", 5.49,3.5,"20 minutes"),
    Food("spaghetti2.jpeg","Spagehetti & Bassel", 7.49, 4.5, "15 minutes"),
    Food("spaghetti4.jpeg","Spagehetti & Garlic Bread", 10.12, 4.8, "45 minutes")];
}

class cardInfo extends StatelessWidget {
  //const cardInfo({Key? key}) : super(key: key);
  List tr = getFood();
  @override
  Widget build(BuildContext context) {
    print(tr[0].image);
    return Container(
      child: Row(
        children: [
          Card(
            child: Column(
              children: [

                GestureDetector(
                  onTap: (){
                    counter = 0;
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const foodView()));
                  },
                  child: Container(
                  height: 470,width: 500,
                    child: Container(child:
                    Image(image:
                    AssetImage("images/spaghetti1.jpeg"),
                      fit: BoxFit.fill,
                    )
                    )
              ),
                ),Container(
                child: Text("${tr[0].foodName}",style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold
                ),),
              ),Row(children: [
                Icon(Icons.attach_money,color: Colors.red[900],),Text("${tr[0].cost}"),Container(margin: EdgeInsets.fromLTRB(0.0, 40.0, 10.0, 0.0)),
                Icon(Icons.star,color: Colors.amber,),Text("${tr[0].starNumber}"),Container(margin: EdgeInsets.fromLTRB(0.0, 40.0, 10.0, 0.0)),
                Icon(Icons.timelapse),Text("${tr[0].time}")
              ],
              )
              ],
            ),
          ), GestureDetector(
            onTap: (){
              counter = 1;
              Navigator.push(context, MaterialPageRoute(builder: (context) => const foodView()));
            },
            child: Card(
              child: Column(
                children: [Container(
                    height: 470,width: 500,
                    child: Container(child:
                    Image(image:
                    AssetImage("images/${tr[1].image}"),
                      fit: BoxFit.fill,
                    )
                    )
                ),Container(
                  child: Text("${tr[1].foodName}",style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold
                  ),),
                ),Row(children: [
                  Icon(Icons.attach_money,color: Colors.red[900],),Text("${tr[1].cost}"),Container(margin: EdgeInsets.fromLTRB(0.0, 40.0, 10.0, 0.0)),
                  Icon(Icons.star,color: Colors.amber,),Text("${tr[1].starNumber}"),Container(margin: EdgeInsets.fromLTRB(0.0, 40.0, 10.0, 0.0)),
                  Icon(Icons.timelapse),Text("${tr[1].time}")
                ],
                )
                ],
              ),
            ),
          ),GestureDetector(
            onTap: (){
              counter = 2;
              Navigator.push(context, MaterialPageRoute(builder: (context) => const foodView()));
            },
            child: Card(
              child: Column(
                children: [Container(
                    height: 470,width: 500,
                    child: Container(child:
                    Image(image:
                    AssetImage("images/${tr[2].image}"),
                      fit: BoxFit.fill,
                    )
                    )
                ),Container(
                  child: Text("${tr[2].foodName}",style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold
                  ),),
                ),Row(children: [
                  Icon(Icons.attach_money,color: Colors.red[900],),Text("${tr[2].cost}"),Container(margin: EdgeInsets.fromLTRB(0.0, 40.0, 10.0, 0.0)),
                  Icon(Icons.star,color: Colors.amber,),Text("${tr[2].starNumber}"),Container(margin: EdgeInsets.fromLTRB(0.0, 40.0, 10.0, 0.0)),
                  Icon(Icons.timelapse),Text("${tr[2].time}")
                ],
                )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class foodView extends StatefulWidget {
  const foodView({Key? key}) : super(key: key);

  @override
  State<foodView> createState() => _foodViewState();
}

class _foodViewState extends State<foodView> {
  var foods = getFood();
  var numberOfItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Center(child: Text("${foods[counter].foodName}")),
      ),
      body: Column(
        children: [
          Container(child: Image(image: AssetImage("images/${foods[counter].image}"),),),
          Container(child: Row(children: [Spacer(),Icon(Icons.star,color: Colors.amber,), Container(margin: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),child: Text("${foods[counter].starNumber}")),Spacer()]),),
          Container(width: 500,child: Text("Ingredients: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")),
          Container(
            margin: EdgeInsets.fromLTRB(220.0, 0.0, 0.0, 0.0),
            child: Row(children: [ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.red[900]),onPressed: (){setState(() {
              numberOfItem--;
            });}, child: Icon(Icons.remove)),Container(margin: EdgeInsets.all(10.0),child: Text("$numberOfItem")), ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.red[900]),onPressed: (){setState(() {
              numberOfItem++;
            });}, child: Icon(Icons.add))],),
          ),ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.red[900]),onPressed: (){Navigator.pop(context);}, child: Container(child: Text("Order")))
        ],
      ),
    );
  }
}


