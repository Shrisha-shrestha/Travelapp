import 'package:flutter/material.dart';
import 'package:travelapp/largetext/largetxt.dart';
import 'search.dart';
import 'plan.dart';
import 'review.dart';

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {

  List pages=[Explore(),Search(),Plan(),Review()];
  int selectedindex=0;
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       body: pages[selectedindex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){setState(() {
            selectedindex=index;
          });},
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.shifting,
          currentIndex: selectedindex,
          elevation: 0,
          selectedItemColor: Colors.black54,
          unselectedItemColor: Colors.grey.withOpacity(0.7),
          showUnselectedLabels: false,
          showSelectedLabels: true,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label:'Discover'),
            BottomNavigationBarItem(icon: Icon(Icons.search),label:'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_border_rounded),label:'Plan'),
            BottomNavigationBarItem(icon: Icon(Icons.edit),label:'Review'),
          ],
        ),
      ),
    );
  }
}
class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> with TickerProviderStateMixin
{
var expimages={
  "balloning.png":"Balloning","hiking.png":"Hiking",
  "kayaking.png":"Kayaking","snorkling.png":"Snorkling"
};
var dp={
  'Everest Base Camp \nTrek':'everest.jpg',
  '7 World Heritage \nTour of Kathmandu':'7day.jpg',
  'Annapurna Circuit \nTrek w/ Tilicho Lake':'tilicho.jpg',
  'Annapurna - Poon \nHill Trek':'anna.jpg',
  '8 Day Tour in \nNepal':'8day.jpg',
};
var dplaces={
  "from \$1320.00 per adult ":"Adventure Tours",
  "from \$175.00 per adult":"Car Tours",
  "from \$1353.60 per group":"Adventure Tours",
  "from \$820.00 per adult ":"Multi-day Tours",
  "from \$860.00 per adult ":"Bus Tours",
};
var dp2={
  'Boudhanath Stupa':'boudha.jpg',
  'Swayambhunath \nTemple':'swayam.jpg',
  'Pashupatinath \nTemple':'pashu.jpg',
  'Chandagiri Hills':'chanda.jpg',
  'Kopan Monastery':'kopan.jpg',
};
var  dplaces2={
  "from \$10.00 per adult":"Religious Sites",
  "from \$19.00 per adult":"Religious Sites",
  "from \$20.85 per adult":"Religious Sites",
  "from \$40.54 per adult ":"Mountains",
  "from \$74.67 per adult ":"Religious Sites",
};
var dp3={
  'Day Trips':'7day.jpg',
  'Bus Tours':'hike.jpg',
  'Sacred and \nReligious Sites':'boudha.jpg',
  'Culltural Tours':'swayam.jpg',
  'Hiking Tours':'anna.jpg',
};
int selectedindex1=8,selectedindex2=8;
  @override
  Widget build(BuildContext context) {
    TabController _tabcontrol = TabController(length: 2, vsync: this);
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
      body: ListView.builder(
        itemCount: 1,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return  SizedBox(
            height: 1380,
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,top: 15.0,bottom: 15.0),
                  child: lgtxt(text: 'Discover'),
                ),
                Container(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: TabBar(
                      controller: _tabcontrol,
                      labelPadding: EdgeInsets.only(left: 20,right:20),
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      isScrollable: true,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicator: CircleTabIndicator(color: Color(0xFF5d69b3) ,radius:4),
                      tabs: [
                        Tab(text: 'Recommended',),
                        Tab(text: 'Popular',),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0,top: 10.0,right: 15.0,bottom: 20.0),
                  child: Container(
                    height: 290,
                    width: double.maxFinite,
                    child: TabBarView(
                      controller: _tabcontrol,
                      children: [
                        ListView.builder(
                          itemCount:5,
                          scrollDirection:Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 15.0),
                                  width: 200,
                                  height: 300,
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
                                  top:200,
                                  left: 10,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      lgtxt(text:dp.keys.elementAt(index),color: Colors.white,size:20),
                                      SizedBox(height: 3.0,),
                                      Text(dplaces.values.elementAt(index),style: TextStyle(
                                        fontSize:12,
                                        color:Colors.white,
                                      ),),

                                      // Row(
                                      //   children: [
                                      //     Icon(Icons.location_on_outlined,color:Colors.white,size: 12.0,),
                                      //     txt(text: dplaces.values.elementAt(index),size:12,
                                      //       color:Colors.white,),
                                      //   ],
                                      // ),
                                      SizedBox(height: 3.0,),
                                      Text(dplaces.keys.elementAt(index),style: TextStyle(
                                        fontSize:12,
                                        color:Colors.white,
                                      ),),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                        ListView.builder(
                          itemCount:5,
                          scrollDirection:Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 15.0),
                                  width: 200,
                                  height: 300,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage('assets/images/'+dp2.values.elementAt(index)),

                                      )
                                  ),
                                ),
                                Positioned(
                                  top:20.0,
                                  left:150.0,
                                  child: GestureDetector(
                                    onTap:(){
                                      setState(() {
                                        selectedindex2=index;
                                      });},
                                    onDoubleTap:(){
                                      setState(() {
                                        selectedindex2=8;
                                      });},
                                    child: Container(
                                      padding: const EdgeInsets.all(2),
                                      height: 32,
                                      width: 32,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: selectedindex2==index?Color(0xFFFF6464):Colors.white,),
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                      child: selectedindex2==index?
                                      Icon(Icons.favorite,size: 20.0,
                                        color: Colors.red,):
                                      Icon(Icons.favorite_border_rounded,size: 20.0,
                                        color:Colors.black,),
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top:200,
                                  left: 10,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      lgtxt(text:dp2.keys.elementAt(index),color: Colors.white,size:20),
                                      SizedBox(height: 3.0,),
                                      Text(dplaces2.values.elementAt(index),style: TextStyle(
                                        fontSize:12,
                                        color:Colors.white,
                                      ),),

                                      SizedBox(height: 3.0,),
                                      Text(dplaces2.keys.elementAt(index),style: TextStyle(
                                        fontSize:12,
                                        color:Colors.white,
                                      ),),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                       // here

                      ],
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 26.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      lgtxt(text: 'Explore more',size: 20.0,),
                      lgtxt(text: 'See all',color: Color(0xFF878593),size: 14.0,)
                    ],
                  ),
                ),

                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 15.0),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (_,index){
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0,right: 10.0,left: 10.0,bottom: 5.0),
                                child: Container(
                                  width: 75,
                                  height: 75,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:Colors.grey,
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/explore/"+ expimages.keys.elementAt(index),),
                                      fit:BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: txt(text: expimages.values.elementAt(index),size: 12.0,),
                              )
                            ],
                          );
                        }),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Stack(
                    children: [
                      Container(
                        width: 500,
                        height: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/visit.jpg'),

                            )
                        ),
                      ),

                      Positioned(
                        top:180,
                        left: 40,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            lgtxt(text:'Nepal in the off-season',color: Colors.white,
                                size:25),
                            SizedBox(height: 3.0,),
                            Text('Smaller crowds, better prices, tons of fun',style: TextStyle(
                              fontSize:12,
                              color:Colors.white,
                            ),),
                            SizedBox(height: 9.0,),
                            TextButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                backgroundColor:  MaterialStateProperty.all(Colors.white),
                              ),
                              onPressed: () {  },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: txt(text: ' Go there',size:15.0,color: Colors.black,),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 10.0,left: 18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      lgtxt(text:'Things to do in kathmandu',size: 22.0,),
                      SizedBox(height: 5.0,),
                      txt(text: 'Book these experiences for a close-up look at Kathmandu',),

                    ]
                  ),
                ),

                Container(
                  padding: EdgeInsets.all(15.0),
                  height: 200,
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
                            height: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/'+dp3.values.elementAt(index)),
                                )
                            ),
                          ),

                          Positioned(
                            top:120,
                            left: 10,
                            child: Row(
                                  children: [
                                    Icon(Icons.location_on_outlined,
                                      color:Colors.white,size: 20.0,),
                                    SizedBox(width: 6.0,),
                                    lgtxt(text:dp3.keys.elementAt(index),size:17,
                                      color:Colors.white,),
                                  ],
                                ),
                          ),
                        ],
                      );
                    },
                  ),

                ),


                Padding(
                  padding: const EdgeInsets.only(left: 15.0,right: 15.0,top: 8.0),
                  child: Row(
                    children: [
                      Container(
                        width: 260,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),topLeft: Radius.circular(20)),
                       color: Colors.red[50],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 50.0,),
                            lgtxt(text:'See something you love? \nClick the heart to save it',
                                size:20),
                            SizedBox(height: 30.0,),
                            TextButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                backgroundColor:  MaterialStateProperty.all(Colors.white),
                              ),
                              onPressed: () {  },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: txt(text: ' Get Started',size:15.0,color: Colors.black,),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 120,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.red[50],
                            borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/visit2.jpg'),

                            )
                        ),
                      ),


                    ],
                  ),
                ),



              ],
            ),
          );
        },
      )
    );
  }
}

class CircleTabIndicator extends Decoration{
   Color color;
  double radius;
  CircleTabIndicator({required this.color,required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
   return _CirclePainter(color:color,radius:radius);
  }
}
class _CirclePainter extends BoxPainter{
  final Color color;
  double radius;
  _CirclePainter({required this.color,required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
   Paint _paint = Paint();
   _paint.color=color;
   _paint.isAntiAlias=true;
   final Offset circleOffset=Offset(configuration.size!.width/2,configuration.size!.height-radius);
    canvas.drawCircle(offset+circleOffset, radius, _paint);
  }

}







