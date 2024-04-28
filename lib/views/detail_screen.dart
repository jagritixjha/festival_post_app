import 'package:festival_poster_app/utils/global_data.dart';
import 'package:festival_poster_app/utils/modal.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_extend/share_extend.dart';

import 'editing_widget.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int tab = 0;
  double imageOpacity = 0.6;
  String selectedCategory = editingCategory[0];

  @override
  Widget build(BuildContext context) {
    FestivalPost post =
        ModalRoute.of(context)!.settings.arguments as FestivalPost;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
        title: Text(
          'Details',
          style: GoogleFonts.satisfy(
            textStyle: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        centerTitle: true,
        forceMaterialTransparency: true,
        actions: [
          IconButton(
            onPressed: () async {
              ShareExtend.share((await getFiles()).path, 'image');
            },
            icon: const Icon(Icons.share),
          ),
        ],
      ),
      body: Column(
        children: [
          /// post settings
          Expanded(
            flex: 1,
            child: RepaintBoundary(
              key: key,
              child: Container(
                height: double.infinity / 2,
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
                decoration: BoxDecoration(
                  // color: Colors.blueGrey.shade50,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(selectedImage ?? post.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SelectableText(
                            post.quote,
                            textAlign: TextAlign.center,
                            style: selectedStyle.copyWith(
                              fontSize: selectedFontSize,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "- ${post.festival}",
                            style: selectedStyle.copyWith(
                              fontSize: selectedFontSize,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "- ${post.festival}",
                        style: selectedStyle.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.indigo.shade800,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          /// editing settings
          Expanded(
            child: Container(
              height: double.infinity / 2,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Expanded(
                      child: ListView.builder(
                    itemCount: editingCategory.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedCategory = editingCategory[index];
                          });
                          tab = index;
                          // log(tab);
                          print(tab);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border: selectedCategory == editingCategory[index]
                                  ? Border(
                                      bottom: BorderSide(
                                        color: selectedTint!.withOpacity(1),
                                      ),
                                    )
                                  : null),
                          margin: const EdgeInsets.all(14),
                          child: Text(
                            editingCategory[index],
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                color:
                                    selectedCategory == editingCategory[index]
                                        ? selectedTint!
                                        : Colors.blueGrey.shade300,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  )),
                  Expanded(
                    flex: 6,
                    child: IndexedStack(
                      index: tab,
                      children: [
                        buildBackgroundImageWidget(() => setState(() {})),
                        buildFontWidget(() => setState(() {})),
                        buildFontSizeWidget(() => setState(() {})),
                        buildOtherOptionsWidget(() => setState(() {}), context),
                      ],
                    ),
                    // getContentWidget(selectedCategory, () {
                    //   setState(() {});
                    // }),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
