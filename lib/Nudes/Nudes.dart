import 'package:flutter/material.dart';
import 'package:model/Nudes/selectedcategorypage.dart';
import 'categorycard.dart';

import 'model.dart';

class Nude extends StatefulWidget {
  const Nude({super.key});

  @override
  State<Nude> createState() => _NudesState();
}

class _NudesState extends State<Nude> {

    List<Nudes> names = Names.getMockedCategories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          // crossAxisSpacing: 1.0,
          // mainAxisSpacing: 1.0,
          // mainAxisExtent: 200,
          
          
          ),
            itemCount: names.length,
                  itemBuilder: (BuildContext ctx, int index) {
                    return CategoryCard(
                      category: names[index],
                      onCardClick: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SelectedCategoryPage(
                                      selectedCategory: names[index],
                                    )));
                      },
                    );
                  },
        
        )
    );
  }
}



