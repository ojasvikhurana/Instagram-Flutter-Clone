import 'package:flutter/material.dart';
import 'package:instagram_clone/chat.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  PageController _pageController;
  int _currentIndex=0;
  @override
  void initState() {
    super.initState();
    _pageController=PageController();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Instagram',
          style: TextStyle(
            color: Colors.black,
            fontFamily: "Billabong",
            fontSize: 35
          ),
        ),
        leading: Icon(
          Icons.camera_alt,
          color: Colors.black,
          size: 30,
        ),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.only(
              right:10,
            ),
            child: IconButton(
              onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Chat()));
              },
              icon: Icon(
                Icons.send,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          Center(child:Text('Home')),
          Center(child:Text('Search')),
          Center(child:Text('Add')),
          Center(child:Text('Favourite')),
          Center(child:Text('User')),
        ],
        onPageChanged: (index) {
          setState(() {
            _currentIndex=index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
        backgroundColor: Colors.white,
        iconSize: 30,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex=index;
          });
          _pageController.animateToPage(
            index, 
            duration: Duration(milliseconds: 500), 
            curve: Curves.easeIn
          );
        },
        items:[
          BottomNavigationBarItem(
            title: Text('data'),
            icon: Icon(
              Icons.home,
              color: Colors.black,
            )
          ),
          BottomNavigationBarItem(
            title: Text('data'),
            icon: Icon(
              Icons.search,
              color: Colors.black,
            )
          ),BottomNavigationBarItem(
            title: Text('data'),
            icon: Icon(
              Icons.add_box,
              color: Colors.black,
            )
          ),BottomNavigationBarItem(
            title: Text('data'),
            icon: Icon(
              Icons.favorite_border,
              color: Colors.black,
            )
          ),BottomNavigationBarItem(
            title: Text('data'),
            icon: Icon(
              Icons.person_outline,
              color: Colors.black,
            )
          )
        ] 
      ),
    );
  }
}