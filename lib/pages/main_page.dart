import 'package:flutter/material.dart';
import 'package:menotes/pages/home/index.dart';
import 'package:menotes/pages/profile/index.dart';
import 'package:menotes/routes/constants.dart';
import 'package:menotes/routes/routes.dart';
import 'package:menotes/services/assets.dart';

class Root extends StatefulWidget {
  @override
  _RootState createState() => _RootState();
}

class _RootState extends State<Root> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 100), () {
      Navigator.pushNamedAndRemoveUntil(
          context, welcomeRoute, (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color(0xFF29BDFB),
        backgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          brightness: Brightness.dark,
          color: Color(0xFF29BDFB),
        ),
        buttonColor: Color(0xFF29BDFB),
      ),
      onGenerateRoute: Router.generateRoute,
      title: 'MeNotes',
    );
  }
}

class MainNavigate extends StatefulWidget {
  @override
  _MainNavigateState createState() => _MainNavigateState();
}

class _MainNavigateState extends State<MainNavigate> {
  final PageStorageBucket bucket = PageStorageBucket();
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePage(
      key: PageStorageKey('home'),
    ),
    ProfilePage(
      key: PageStorageKey('profile'),
    )
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageStorage(
        bucket: bucket,
        child: _pages[_selectedIndex],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add Note',
        child: Image.asset(iconAddNote),
        elevation: 0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              _selectedIndex == 0 ? iconHomeActive : iconHomeInActive,
              scale: 2,
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 3),
              child: Text(
                'Home',
                style: Theme.of(context).textTheme.caption.copyWith(
                      color: _selectedIndex == 0
                          ? Theme.of(context).primaryColor
                          : Colors.grey[300],
                    ),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              _selectedIndex == 1 ? iconProfileActive : iconProfileInActive,
              scale: 2,
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 3),
              child: Text(
                'Profile',
                style: Theme.of(context).textTheme.caption.copyWith(
                      color: _selectedIndex == 1
                          ? Theme.of(context).primaryColor
                          : Colors.grey[300],
                    ),
              ),
            ),
          )
        ],
        backgroundColor: Color(0xFFFFFFFF),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 20,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        selectedItemColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
