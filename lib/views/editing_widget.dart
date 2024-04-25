import 'package:festival_poster_app/utils/global_data.dart';
import 'package:festival_poster_app/utils/post_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:share_extend/share_extend.dart';

Widget getContentWidget(String category, Function() setStateCallback) {
  switch (category) {
    case 'Others':
      return buildOtherOptionsWidget(setStateCallback);
    case 'Background Image':
      return buildBackgroundImageWidget(setStateCallback);
    case 'Fonts':
      return buildFontWidget(setStateCallback);
    case 'Font Size':
      return buildFontSizeWidget(setStateCallback);
    default:
      return Container();
  }
}

Widget buildOtherOptionsWidget(Function() setStateCallback) {
  return Column(
    children: [
      Container(
          width: double.infinity,
          // height: 60,
          color: Colors.white,
          child: TextButton.icon(
            onPressed: () {
              selectedImage = null;
              selectedStyle = GoogleFonts.poppins();
              selectedFontSize = 16;
              setStateCallback();
            },
            style: TextButton.styleFrom(
                maximumSize: const Size(double.infinity, 48),
                backgroundColor: Colors.white,
                alignment: Alignment.centerLeft,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                shadowColor: Colors.grey.shade50,
                elevation: 2),
            icon: const Icon(
              Icons.refresh,
              color: Colors.black87,
            ),
            label: Text(
              'Reset to Original',
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
          )),
      Container(
        width: double.infinity,
        // height: 60,
        color: Colors.white,
        child: TextButton.icon(
          onPressed: () async {
            ImageGallerySaver.saveFile(
              (await getFiles()).path,
              isReturnPathOfIOS: true,
            );
            // ).then(
            //         (value) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            //       content: Text(
            //         'Saved to gallery!!',
            //         style: GoogleFonts.roboto(
            //           textStyle: const TextStyle(
            //             fontWeight: FontWeight.w500,
            //             color: Colors.white,
            //             fontSize: 16,
            //           ),
            //         ),
            //       ),
            //     )));
          },
          style: TextButton.styleFrom(
              maximumSize: const Size(double.infinity, 48),
              backgroundColor: Colors.white,
              alignment: Alignment.centerLeft,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              shadowColor: Colors.grey.shade50,
              elevation: 2),
          icon: const Icon(
            Icons.save_alt_outlined,
            color: Colors.black87,
          ),
          label: Text(
            'Save to Gallery',
            style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
      Container(
        width: double.infinity,
        // height: 60,
        color: Colors.white,
        child: TextButton.icon(
          onPressed: () async {
            ShareExtend.share((await getFiles()).path, 'image');
          },
          style: TextButton.styleFrom(
              maximumSize: const Size(double.infinity, 48),
              backgroundColor: Colors.white,
              alignment: Alignment.centerLeft,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              shadowColor: Colors.grey.shade50,
              elevation: 2),
          icon: const Icon(
            Icons.share_sharp,
            color: Colors.black87,
          ),
          label: Text(
            'Share',
            style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}

Widget buildBackgroundImageWidget(setStateCallback) {
  return GridView.count(
    crossAxisCount: 2,
    children: List.generate(postObj.length, (index) {
      String image = postObj[index].imageUrl;
      return InkWell(
        onTap: () {
          selectedImage = image;
          setStateCallback();
        },
        child: Container(
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
    }),
  );
}

Widget buildFontWidget(Function() setStateCallback) {
  return ListView(
    children: fontStyles.map((font) {
      return InkWell(
        onTap: () {
          selectedStyle = font;
          setStateCallback();
        },
        child: ListTile(
          title: Text(
            'Example Text',
            style: font.copyWith(
              color: Colors.black87,
              fontWeight: FontWeight.w800,
              fontSize: 20,
            ),
          ),
        ),
      );
    }).toList(),
  );
}

Widget buildFontSizeWidget(Function() setStateCallback) {
  return ListView(
    children: fontSize.map((size) {
      return InkWell(
        onTap: () {
          selectedFontSize = size;
          setStateCallback();
        },
        child: ListTile(
          title: Text(
            'Example Size ${size.toInt()}',
            style: TextStyle(
              fontSize: size,
              color: Colors.black87,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      );
    }).toList(),
  );
}
