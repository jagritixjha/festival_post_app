import 'package:festival_poster_app/utils/modal.dart';
import 'package:festival_poster_app/utils/post_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/routes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isList = false;
  List<FestivalPost> l = [];
  String category = 'all';

  List<FestivalPost> updateCategoryList() {
    if (category != 'all') {
      l = postObj
          .where(
            (element) => element.category == category,
          )
          .toList();
    } else {
      l.addAll(postObj);
    }
    return l;
  }

  void updateCategory(String newCategory) {
    setState(() {
      category = newCategory;
      l = updateCategoryList();
    });
  }

  @override
  void initState() {
    categories.insert(0, 'all');
    l = updateCategoryList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) async {
        SystemNavigator.pop();
        return;
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'FestiveFrame',
            style: GoogleFonts.satisfy(
              textStyle: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          forceMaterialTransparency: true,
          actions: [
            IconButton(
              onPressed: () {
                isList = !isList;
                setState(() {});
              },
              icon: Icon(isList ? Icons.grid_view_outlined : Icons.menu),
            )
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: categories
                    .map(
                      (e) => GestureDetector(
                        onTap: () {
                          updateCategory(e);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border: category == e
                                  ? Border(
                                      bottom: BorderSide(
                                          color: Colors.pink.shade700))
                                  : null),
                          margin: const EdgeInsets.all(14),
                          child: Text(
                            e,
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: category == e
                                    ? Colors.pink.shade700
                                    : Colors.blueGrey.shade400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            Expanded(
              flex: 12,
              child: Scrollbar(
                thickness: 10,
                interactive: true,
                child: GridView.builder(
                  itemCount: l.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: isList == true ? 2 : 1,
                    mainAxisExtent: isList == true ? null : 190,
                    // childAspectRatio: 1,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {},
                      child: Stack(
                        children: [
                          Container(
                            margin: index % 2 == 0
                                ? const EdgeInsets.only(left: 12, right: 8)
                                : const EdgeInsets.only(right: 12, left: 8),
                            alignment: Alignment.center,
                            padding: isList == true
                                ? const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 10,
                                  )
                                : const EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 20,
                                  ),
                            decoration: BoxDecoration(
                              color: Colors.blueGrey.shade50,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(l[index].imageUrl),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.blueGrey.shade100.withOpacity(0.1),
                            margin: index % 2 == 0
                                ? const EdgeInsets.only(left: 12, right: 8)
                                : const EdgeInsets.only(right: 12, left: 8),
                            alignment: Alignment.center,
                            padding: isList == true
                                ? const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 10,
                                  )
                                : const EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 20,
                                  ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      l[index].quote,
                                      style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                          color: Colors.black87,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 0,
                                  child: Text(
                                    '-${l[index].festival}',
                                    style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 16.0),
                              child: IconButton.filledTonal(
                                style: IconButton.styleFrom(
                                  backgroundColor:
                                      Colors.grey.shade100.withOpacity(0.2),
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, Routes.navigateTo.detailsScreen,
                                      arguments: l[index]);
                                },
                                icon: const Icon(Icons.edit_outlined),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
