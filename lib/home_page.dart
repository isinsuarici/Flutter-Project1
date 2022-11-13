import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: const Icon(
            Icons.account_circle, color: Colors.black, size: 40),
        leadingWidth: 70,
        //leading icin kaydırma
        backgroundColor: Colors.lime,

        flexibleSpace: FlexibleSpaceBar(
          title: RichText(
            textAlign: TextAlign.start,
            text: TextSpan(
                text: 'Welcome\n',
                style: GoogleFonts.wallpoet(
                  fontSize: 17,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Mehmet Ozcan',
                    style: GoogleFonts.wallpoet(
                        fontSize: 22,
                        color: Colors.black),
                  )
                ]
            ),

          ),
          titlePadding: EdgeInsets.only(left: 65, bottom: 10),
        ),

        actions: <Widget>[
          SizedBox(
            width: 95, height: 50,
            child: Row(
              children: const <Widget>[
                Icon(Icons.location_on_outlined, color: Colors.black,),
                Text('Eskişehir',
                    style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w400)),
              ],
            ),
          ),
        ],
      ),

      body: Column(
        children: <Widget>[
          Row(
            children: [
              _buildUpcomingConferences(context),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Row(
              children: [
                _buildFavorites(context),
              ],
            ),
          ),
        ],

      ),

      bottomNavigationBar: BottomNavigationBar(

        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        backgroundColor: Color(0xFF737373),
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Authors',
            icon: Icon(Icons.person, color: Colors.white, size: 40),
          ),

          BottomNavigationBarItem(
            label: 'Papers',
            icon: Icon(Icons.my_library_books, color: Colors.white, size: 40),
          ),

          BottomNavigationBarItem(
            label: 'Books',
            icon: Icon(Icons.collections_bookmark_rounded, color: Colors.white,
                size: 40),
          ),

          BottomNavigationBarItem(
            label: 'Search',
            icon: Icon(Icons.search, color: Colors.white, size: 40),
          ),

        ],
      ),
    );
  }

  Widget _buildUpcomingConferences(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(left:15.0,top:45.0) ,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
        Row(
          children: [
            Container( width: 300,
              child: Text(
                'Upcoming Conferences',
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),
              ),
            ),
            Text('View All>>',style: TextStyle(fontSize: 10,color: Colors.blueAccent,fontWeight: FontWeight.w500,decoration: TextDecoration.underline),),
          ],
        ),

          _buildCardRow(),
      ],
      ),

    );
  }

  Widget _buildFavorites(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(left:15.0,top:45.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Favorites',
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),
          ),
          _buildCard('cnf_3.png','New Perspectives in Science Education'),
        ],
      ),
        );
  }

  Widget _buildCard(String picName, String text) {
    return Container(
      padding: const EdgeInsets.only(left:20.0,top:0.0) ,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left:0.0,top:15.0) ,
            child: Image.asset('assets/$picName', scale: 1.6,),
          ),
          Container(
              width:150,
              child: Divider(height: 20,color: Colors.grey,)),
          Container(
            width:150,
            child: Text(
              text,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),),
          )
        ],
      ),
    );
  }
  Widget _buildCardRow(){
    return Row(
      children: <Widget>[
        _buildCard('cnf_1.png', 'Applying Education in a Complex World'),
        _buildCard('cnf_2.png', 'HERITAGES: Past and Present - Built and Social'),
      ],
    );
  }


}
