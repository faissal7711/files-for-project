import 'package:flutter/material.dart';
import 'package:meal_app/widgets/category_item.dart';
import '../dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image of SideMenu (Drawer)
          Image(
            width: double.infinity,
            height: double.infinity,
            image: AssetImage('assets/images/bg_for _app.jpg'),
            fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.15),
            child: GridView(
//              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.15),
              children: DUMMY_CATEGORIES
                  .map(
                    (categories) => CategoryItem(
                      categories.id,
                      categories.title,
                      categories.color,
                    ),
                  )
                  .toList(),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20.0,
                mainAxisSpacing: 20.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
