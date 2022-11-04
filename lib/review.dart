import 'package:flutter/material.dart';
import 'package:travelapp/largetext/largetxt.dart';
class Review extends StatelessWidget {
  const Review({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
    floatingActionButton: FloatingActionButton(
    onPressed: () {
    // Add your onPressed code here!
    },
    backgroundColor: Colors.black,
    child: const Icon(Icons.add),),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0,top: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            lgtxt(text: 'Review'),
            SizedBox(height: 10.0,),
            lgtxt(text: 'No reviews yet',size: 20.0,),
            SizedBox(height: 10.0,),
            txt(text: 'You have not written any review yet, get started!'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                    child: txt(text: '    Write a review    ',size:15.0,color: Colors.black,),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextButton(
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
                      child: txt(text: '    Upload a photo    ',size:15.0,color: Colors.black,),
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(right: 22.0,top:5.0),
              child: Stack(
                children: [
                  Container(
                    width: 500,
                    height: 260,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/anna.jpg'),

                        )
                    ),
                  ),

                  Positioned(
                    top:90,
                    left: 40,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        lgtxt(text:'We want you to \nwrite a review ',color: Colors.white,
                            size:25),
                        SizedBox(height: 3.0,),
                        Text('Because who else would we turn to for \ntravel advice?',style: TextStyle(
                          fontSize:17,
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
                            padding: const EdgeInsets.all(2.0),
                            child: txt(text: ' What to know',size:15.0,color: Colors.black,),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: lgtxt(text: 'Is Trip Companion missing a place?',size: 18.0,),
                  ),
                  txt(text: 'Tell us about it so we can improve what we show.'),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 18.0,left: 10.0),
              child: TextButton(
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
                  padding: const EdgeInsets.symmetric(horizontal: 100.0,vertical: 8.0),
                  child: txt(text: 'Add a missing place',size:15.0,color: Colors.black,),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}