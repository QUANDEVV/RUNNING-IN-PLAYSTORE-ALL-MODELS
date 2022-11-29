import 'package:flutter/material.dart';
import 'categorycard.dart';
import 'selectedcategorypage.dart';
import 'model.dart';

class Ports extends StatefulWidget {


  const Ports({super.key, });
  


  @override
  State<Ports> createState() => _PortsState();
}

class _PortsState extends State<Ports> {
   List<Port> names = Names.getMockedCategories();
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


