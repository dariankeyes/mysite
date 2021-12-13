import 'package:dariankeyes/screen/about.dart';
import 'package:dariankeyes/screen/projects_screen.dart';
import 'package:dariankeyes/screen/sample.dart';
import 'package:dariankeyes/screen/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _extendedSideBar = false;
  int _selectedArrow = 1;
  List<Widget> _sideBarArrow = [
    Icon(FontAwesomeIcons.angleLeft,),
    Icon(FontAwesomeIcons.angleRight),
  ];

  int _selectedIndex = 0;

  List<Widget> widgets = [
    ProjectsScreen(),
    AboutScreen(),

    SampleScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //send email
        },
        backgroundColor: secondaryColor,
        foregroundColor: primaryColor,
        child: Icon(FontAwesomeIcons.envelope),
      ),
      body: Row(
        children: [
          NavigationRail(
            groupAlignment: 0,
            backgroundColor: secondaryColor,
            extended: _extendedSideBar,
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            trailing: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: IconButton(
                    iconSize: 30,
                    color: primaryColor,
                    onPressed: () {
                      if (_extendedSideBar) {
                        setState(() {
                          _extendedSideBar = false;
                          _selectedArrow = 1;
                        });
                      } else {
                        setState(() {
                          _extendedSideBar = true;
                          _selectedArrow = 0;

                        });
                      }
                    },
                    icon: _sideBarArrow[_selectedArrow],
                  ),
                ),
              ],
            ),
            selectedLabelTextStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            selectedIconTheme: const IconThemeData(
              color: Colors.white,
            ),
            unselectedIconTheme: IconThemeData(
              color: primaryColor,
            ),
            unselectedLabelTextStyle: TextStyle(
              fontSize: 18,
              color: primaryColor,
            ),
            // leading: const Padding(
            //   padding: EdgeInsets.only(left: 20, top: 5),
            //   child: Text(
            //       'Darian Keyes',
            //       style: TextStyle(
            //         fontSize: 26,
            //         color: Color(0xFF1E1A02),
            //         fontWeight: FontWeight.bold
            //       )
            //   ),
            // ),
            destinations: const <NavigationRailDestination>[
              NavigationRailDestination(
                icon: Icon(FontAwesomeIcons.user),
                label: Text('About'),
              ),
              NavigationRailDestination(
                icon: Icon(FontAwesomeIcons.hardHat),
                label: Text('Projects'),
              ),
              NavigationRailDestination(
                icon: Icon(FontAwesomeIcons.vial),
                label: Text('Sample'),
              ),
              ],
          ),
          Expanded(
            flex: 1,
            child: widgets[_selectedIndex],
          ),
        ],
      ),
    );
  }
}
