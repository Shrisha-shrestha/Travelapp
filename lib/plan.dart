import 'package:flutter/material.dart';
import 'package:travelapp/largetext/largetxt.dart';

class Plan extends StatefulWidget {
  const Plan({Key? key}) : super(key: key);

  @override
  State<Plan> createState() => _PlanState();
}

class _PlanState extends State<Plan> with TickerProviderStateMixin {

  @override

  Widget build(BuildContext context) {
    TabController _tabcontrol = TabController(length: 3, vsync: this);
    return Scaffold(
      appBar: AppBar(
        title: Text('Travel Companion',style: TextStyle(
          color: Colors.black,fontSize: 20.0,letterSpacing: 2.0,
        ),),
        centerTitle: true,
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

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0,top: 15.0,bottom: 15.0),
            child: lgtxt(text: 'Plan'),
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
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(width: 3, color: Colors.black),
                ),
                tabs: [
                  Tab(text: 'Trips',),
                  Tab(text: 'Saves',),
                  Tab(text: 'Bookings',),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15.0,top: 10.0,right: 15.0,bottom: 20.0),
            child: Container(
              height: 500,
              width: double.maxFinite,
              child: TabBarView(
                controller: _tabcontrol,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ListView.builder(
                            itemCount: plan.length,
                            itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              color: Colors.green[50],
                              child: ListTile(
                                onTap: () {
                                },
                                title: txt(text: plan[index].title,color: Colors.black,size: 15.0,),
                                leading: CircleAvatar(
                                  backgroundColor: Colors.lightGreen,
                                  child: Icon(plan[index].icon,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          );
  }                        ),
                      ),

                      txt(text: 'Trip name',color: Colors.black,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape:
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),

                            primary: Colors.black,
                            minimumSize: const Size.fromHeight(50), // NEW
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Create a Trip',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),

                      Center(
                        child: GestureDetector(
                          onTap: (){},
                          child: Text('Log in to accss your Trips',style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),),
                        ),
                      ),
                      SizedBox(height: 120.0,)

                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: lgtxt(text: 'No saves yet',size: 15.0,),
                      ),
                      txt(text: 'Places you save will appear here.'),
                      Center(
                        child: GestureDetector(
                          onTap: (){},
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text('Log in to accss your Saves',style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0,left: 80.0),
                    child: GestureDetector(
                      onTap: (){},
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text('Log in to accss your Bookings',style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
