import 'package:flutter/material.dart';
import 'package:travelapp/largetext/largetxt.dart';
class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  var images={'New Delhi':'3.jpg',
    'Venice':'4.4.jpg',
    'New York City':'4.jpg',
    'Paris':'5.jpg',
    };

  var dp={
    '7 World Heritage \nTour of Kathmandu':'7day.jpg',
    'Annapurna - Poon \nHill Trek':'anna.jpg',
    'Annapurna Circuit \nTrek w/ Tilicho Lake':'tilicho.jpg',
    '8 Day Tour in \nNepal':'8day.jpg',
    'Everest Base Camp \nTrek':'everest.jpg',
  };
  var dplaces={
    "from \$175.00 per adult":"Car Tours",
    "from \$820.00 per adult ":"Multi-day Tours",
    "from \$1353.60 per group":"Adventure Tours",
    "from \$860.00 per adult ":"Bus Tours",
    "from \$1320.00 per adult ":"Adventure Tours",
  };

  int selectedindex1=8;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.menu,size: 30,color: Colors.black54,),
        toolbarHeight: 50.0,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 8.0,top: 8.0),
            width: 37,
            height: 37,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/profile.png'),
              ),
              borderRadius: BorderRadius.circular(16),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
            height: 1175,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Padding(
                  padding: const EdgeInsets.only(left: 20.0,top: 15.0,bottom: 15.0),
                  child: lgtxt(text: 'Search'),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search,color: Colors.black,),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.black), //<-- SEE HERE
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.black), //<-- SEE HERE
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      hintText: 'Where to?',
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    width: 500,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.teal[100],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 50.0,),
                        lgtxt(text:'See what\'s good \n        nearby.',
                            size:20),
                        SizedBox(height: 26.0,),

                        TextButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                                side: BorderSide(width: 2, color: Colors.black,),
                              ),
                            ),
                          ),
                          onPressed: () {  },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: txt(text: ' Turn on locations settings',size:15.0,color: Colors.black,),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),




                Padding(
                  padding: const EdgeInsets.only(top: 10.0,left: 18.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        lgtxt(text:'Top experiences on Trip Companion',size: 22.0,),
                      ]
                  ),
                ),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SizedBox(
                      height: 290,
                      width: double.maxFinite,
                      child: ListView.builder(
                        itemCount:5,
                        scrollDirection:Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 15.0),
                                width: 200,
                                height: 275,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/images/'+dp.values.elementAt(index)),

                                    )
                                ),
                              ),
                              Positioned(
                                top:20.0,
                                left:150.0,
                                child: GestureDetector(
                                  onTap:(){
                                    setState(() {
                                      selectedindex1=index;
                                    });},
                                  onDoubleTap:(){
                                    setState(() {
                                      selectedindex1=8;
                                    });},
                                  child: Container(
                                    padding: const EdgeInsets.all(2),
                                    height: 32,
                                    width: 32,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: selectedindex1==index?Color(0xFFFF6464):Colors.white,),
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                    child: selectedindex1==index?
                                    Icon(Icons.favorite,size: 20.0,
                                      color: Colors.red,):
                                    Icon(Icons.favorite_border_rounded,size: 20.0,
                                      color:Colors.black,),
                                  ),
                                ),
                              ),

                              Positioned(
                                top:210,
                                left:0.0,
                                child: Container(
                                  width: 200,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.grey,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        lgtxt(text:dp.keys.elementAt(index),color: Colors.white,size:20),
                                        SizedBox(height: 3.0,),
                                        Text(dplaces.values.elementAt(index),style: TextStyle(
                                          fontSize:12,
                                          color:Colors.white,
                                        ),),
                                        SizedBox(height: 3.0,),
                                        Text(dplaces.keys.elementAt(index),style: TextStyle(
                                          fontSize:12,
                                          color:Colors.white,
                                        ),),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 10.0,left: 18.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        lgtxt(text:'Destinations travelers love',size: 22.0,),
                      ]
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(top: 15.0,left: 15.0),
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 2.0,
                    mainAxisSpacing: 0.0,
                    shrinkWrap: true,
                    children: List.generate(4, (index) {
                      return Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 15.0),
                            width: 200,
                            height: 170,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/'+images.values.elementAt(index)),
                                )
                            ),
                          ),
                          Positioned(
                            top:135,
                            left: 10,
                            child: Row(
                              children: [
                                Icon(Icons.location_on_outlined,
                                  color:Colors.white,size: 20.0,),
                                SizedBox(width: 6.0,),
                                lgtxt(text:images.keys.elementAt(index),size:17,
                                  color:Colors.white,),
                              ],
                            ),
                          ),
                        ],
                      );
                    },),
                  ),
                ),

        ]
        ),
      ),
    )
    );
  }
  }
