// ignore_for_file: must_be_immutable, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:model/PayPage.dart';

import 'model.dart';

class SelectedCategoryPage extends StatelessWidget {
  Port? selectedCategory;

  SelectedCategoryPage({
    this.selectedCategory,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // No appbar provided to the Scaffold, only a body with a
      // CustomScrollView.
      body: CustomScrollView(
        slivers: [
          // Add the app bar to the CustomScrollView.
          SliverAppBar(
            backgroundColor: Colors.black,

            // Provide a standard title.
            // title: Text(this.selectedCategory!.name.toString()),
            // Allows the user to reveal the app bar if they begin scrolling
            // back up the list of items.
            floating: true,
            pinned: true,
            // Display a placeholder widget to visualize the shrinking size.
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/' + this.selectedCategory!.imgName!.toString() + '.jpg',
                fit: BoxFit.cover,
                width: double.maxFinite,
              ),
            ),
            // Make the initial height of the SliverAppBar larger than normal.
            expandedHeight: 300,
          ),

          SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),

          SliverToBoxAdapter(
            child: SizedBox(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 24, right: 24, top: 0, bottom: 10),
                child: Row(children: [
                  GestureDetector(
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(12, 12),
                          textStyle: GoogleFonts.poppins(
                            fontSize: 15,
                          ),
                          primary: Colors.white,
                          onPrimary: Colors.black),
                      icon: Icon(Icons.lock),
                      label: Text('Instagram'),
                      onPressed: () => Navigator.push(context,
                          MaterialPageRoute(builder: ((context) {
                        return PayPage();
                      }))),
                    ),
                  )
                ]),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 24, right: 24, top: 0, bottom: 10),
                child: Row(children: [
                  Text(
                    'Gallery ',
                    style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        color: Colors.white),
                  ),
                ]),
              ),
            ),
          ),

          // Next, create a SliverList
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),

            // Use a delegate to build items as they're scrolled on screen.
            delegate: SliverChildBuilderDelegate(
              // The builder function returns a ListTile with a title that
              // displays the index of the current item.
              (context, index) => Container(
                // height: 150,
                child: Column(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/' +
                          this
                              .selectedCategory!
                              .subCategories![index]
                              .imgName! +
                          '.jpg',
                      fit: BoxFit.cover,
                      width: 180,
                      height: 185,
                    ),
                  ),
                  // Text(this
                  //     .selectedCategory!
                  //     .subCategories![index]
                  //     .name
                  //     .toString(),
                  //     style: GoogleFonts.poppins(
                  // textStyle: Theme.of(context).textTheme.headline4,
                  // fontSize: 10,
                  // fontWeight: FontWeight.w600,
                  // fontStyle: FontStyle.normal,
                  // color: Colors.white),)
                ]),
              ),
              // Builds 1000 ListTiles
              childCount: this.selectedCategory!.subCategories!.length,
            ),
          ),
        ],
      ),
    );
  }
}





// // ignore_for_file: must_be_immutable

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// import 'category.dart';

// class SelectedCategoryPage extends StatelessWidget {
//   Category? selectedCategory;

//   SelectedCategoryPage({this.selectedCategory});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//       // floatingActionButton: FloatingActionButton.extended(
//       //   onPressed: () {},

//       //   label: Text(
//       //     'Unlock \$2',
//       //     style: GoogleFonts.poppins(
//       //         textStyle: Theme.of(context).textTheme.headline4,
//       //         fontSize: 22,
//       //         fontWeight: FontWeight.w600,
//       //         fontStyle: FontStyle.normal,
//       //         color: Colors.black),
//       //   ),
//       //   // elevation: 0,
//       //   backgroundColor: Colors.white,
//       // ),
//       appBar: AppBar(
//         foregroundColor: Colors.white,
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       body: SafeArea(
//           child: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Container(
//           child: Column(
//             mainAxisSize: MainAxisSize.max,
//             children: [
//               Container(
//                 height: 360,
//                 width: double.infinity,
//                 child: Image.asset(
//                   'assets/' +
//                       this.selectedCategory!.imgName!.toString() +
//                       '.jpg',
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               SizedBox(
//                 child: Padding(
//                   padding: const EdgeInsets.only(
//                       left: 24, right: 24, top: 20, bottom: 10),
//                   child: Column(children: [
//                     Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'OnlyFans : 🔒',
//                           style: GoogleFonts.poppins(
//                               textStyle: Theme.of(context).textTheme.headline4,
//                               fontSize: 15,
//                               fontWeight: FontWeight.w300,
//                               fontStyle: FontStyle.normal,
//                               color: Colors.white),
//                         ),
//                       ],
//                     ),
//                   ]),
//                 ),
//               ),
//               SizedBox(
//                 child: Padding(
//                   padding: const EdgeInsets.only(
//                       left: 24, right: 24, top: 4, bottom: 10),
//                   child: Column(children: [
//                     Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Instagram : 🔒',
//                           style: GoogleFonts.poppins(
//                               textStyle: Theme.of(context).textTheme.headline4,
//                               fontSize: 15,
//                               fontWeight: FontWeight.w300,
//                               fontStyle: FontStyle.normal,
//                               color: Colors.white),
//                         ),
//                       ],
//                     ),
//                   ]),
//                 ),
//               ),
//               SizedBox(
//                 child: Padding(
//                   padding: const EdgeInsets.only(
//                       left: 24, right: 24, top: 4, bottom: 10),
//                   child: Column(children: [
//                     Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Model Name: 🔒',
//                           style: GoogleFonts.poppins(
//                               textStyle: Theme.of(context).textTheme.headline4,
//                               fontSize: 15,
//                               fontWeight: FontWeight.w300,
//                               fontStyle: FontStyle.normal,
//                               color: Colors.white),
//                         ),
//                       ],
//                     ),
//                   ]),
//                 ),
//               ),
//               SizedBox(
//                 child: Padding(
//                   padding: const EdgeInsets.only(
//                       left: 24, right: 24, top: 4, bottom: 10),
//                   child: Column(children: [
//                     Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Countrys : 🔒',
//                           style: GoogleFonts.poppins(
//                               textStyle: Theme.of(context).textTheme.headline4,
//                               fontSize: 15,
//                               fontWeight: FontWeight.w300,
//                               fontStyle: FontStyle.normal,
//                               color: Colors.white),
//                         ),
//                       ],
//                     ),
//                   ]),
//                 ),
//               ),
             
//               // CustomScrollView(
//               //   slivers: [
//               //     SliverGrid.count(crossAxisCount: 3),
//               //     // children: [],
//               //     SliverList(delegate: SliverChildBuilderDelegate(
                    
//               //       ((context, index) => Container(

                     
                     
//               //       ))
                    
//               //       ))
//               //   ],
//               // )

//             ],
//           ),
//         ),
//       )),
//     );
//   }
// }
