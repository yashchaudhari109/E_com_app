import 'package:ecomapp/constant.dart';
import 'package:ecomapp/screens/homescreen.dart';
import 'package:ecomapp/screens/savedscreen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key, this.email}) : super(key: key);
  final email;
  static const id = 'main_screen';
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  var email;

  void initState() {
    super.initState();
    print('${widget.email}, Hi');
    setState(() {
      email = widget.email;
    });
  }

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SavedScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // print("object");
    // print(currentUser["email"]);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      // backgroundColor: kScaffoldColor,
      // appBar: AppBar(
      //   leadingWidth: width,
      //   leading: Center(
      //     child: Text(
      //       // "${KScreentitle[_selectedIndex]}",
      //       "yash",
      //       style: TextStyle(
      //           color: kPrimaryColor,
      //           fontWeight: FontWeight.bold,
      //           fontSize: 19),
      //     ),
      //   ),
      //   backgroundColor: kScaffoldColor,
      //   elevation: 0,
      // ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: kPrimaryColor,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark,
              color: kPrimaryColor,
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFF223D6B),
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
