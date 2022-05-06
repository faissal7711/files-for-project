import 'package:flutter/material.dart';
import 'package:meal_app/screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(BuildContext context,String text, IconData iconData, Function function) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      child: Card(
        shadowColor: Colors.tealAccent,
        child: ListTile(
          onTap: function,
          leading: Icon(
            iconData,
            size: 30.0,
          ),
          title: Text(
            text,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120.0,
            width: double.infinity,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(20.0),
            color: Theme.of(context).primaryColor,
            child: Text(
              'اتعلم معنا',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Theme.of(context).accentColor,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          buildListTile(
            context,
            'عام جديد',
            Icons.restaurant,
            () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed('/');
            },
          ),
          buildListTile(
            context,
            'بلادي',
            Icons.restaurant,
                () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed('/');
            },
          ),
          buildListTile(
            context,
            'المكتبة المدرسية',
            Icons.restaurant,
                () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed('/');
            },
          ),
          buildListTile(
            context,
            'القناطر الخيرية',
            Icons.restaurant,
                () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed('/');
            },
          ),
          buildListTile(
            context,
            'Filters',
            Icons.settings,
                () {
                  Navigator.pop(context);
              Navigator.of(context).pushNamed(FiltersScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
