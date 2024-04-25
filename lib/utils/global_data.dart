import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_provider/path_provider.dart';

List<TextStyle> fontStyles = [
  GoogleFonts.roboto(),
  GoogleFonts.lato(),
  GoogleFonts.openSans(),
  GoogleFonts.montserrat(),
  GoogleFonts.nunito(),
  GoogleFonts.oswald(),
  GoogleFonts.sanchez(),
  GoogleFonts.poppins(),
];

List<String> editingCategory = [
  'Background Image',
  'Fonts',
  'Font Size',
  'Others',
];

List<double> fontSize = [12, 14, 16, 18, 20];

String? selectedImage;
Color? selectedTint = Colors.pink.shade800;
TextStyle selectedStyle = GoogleFonts.poppins();
double selectedFontSize = 16;

GlobalKey key = GlobalKey();
Future<File> getFiles() async {
  RenderRepaintBoundary boundary =
      key.currentContext!.findRenderObject() as RenderRepaintBoundary;
  ui.Image images = await boundary.toImage(
    pixelRatio: 15,
  );
  ByteData? bytes = await images.toByteData(
    format: ui.ImageByteFormat.png,
  );
  Uint8List unit8 = bytes!.buffer.asUint8List();
  Directory direc = await getTemporaryDirectory();
  File file = await File(
      '${direc.path}/QA-${DateTime.now().microsecondsSinceEpoch}.png');
  file.writeAsBytesSync((unit8));
  return file;
}
