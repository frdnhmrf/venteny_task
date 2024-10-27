import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dimens.dart';

ThemeData appTheme(BuildContext context) => ThemeData(
      fontFamily: GoogleFonts.inter().fontFamily,
      useMaterial3: true,
      primaryColor: Colors.orange,
      textTheme: TextTheme(
        displayLarge: Theme.of(context).textTheme.displayLarge?.copyWith(
              fontFamily: GoogleFonts.poppins().fontFamily,
              fontSize: Dimens.displayLarge,
              color: Colors.black,
              fontWeight: FontWeight.w400,
              letterSpacing: Dimens.letterSpacing,
            ),
        displayMedium: Theme.of(context).textTheme.displayMedium?.copyWith(
              fontFamily: GoogleFonts.poppins().fontFamily,
              fontSize: Dimens.displayMedium,
              color: Colors.black,
              fontWeight: FontWeight.w400,
              letterSpacing: Dimens.letterSpacing,
            ),
        displaySmall: Theme.of(context).textTheme.displaySmall?.copyWith(
              fontFamily: GoogleFonts.poppins().fontFamily,
              fontSize: Dimens.displaySmall,
              color: Colors.black,
              fontWeight: FontWeight.w400,
              letterSpacing: Dimens.letterSpacing,
            ),
        headlineLarge: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontFamily: GoogleFonts.poppins().fontFamily,
              fontSize: Dimens.headLineLarge,
              color: Colors.black,
              fontWeight: FontWeight.w400,
              letterSpacing: Dimens.letterSpacing,
            ),
        headlineMedium: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontFamily: GoogleFonts.poppins().fontFamily,
              fontSize: Dimens.headlineMedium,
              color: Colors.black,
              fontWeight: FontWeight.w400,
              letterSpacing: Dimens.letterSpacing,
            ),
        headlineSmall: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontFamily: GoogleFonts.poppins().fontFamily,
              fontSize: Dimens.headlineSmall,
              color: Colors.black,
              fontWeight: FontWeight.w400,
              letterSpacing: Dimens.letterSpacing,
            ),
        titleLarge: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontFamily: GoogleFonts.poppins().fontFamily,
              fontSize: Dimens.titleLarge,
              color: Colors.black,
              fontWeight: FontWeight.w400,
              letterSpacing: Dimens.letterSpacing,
            ),
        titleMedium: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontFamily: GoogleFonts.poppins().fontFamily,
              fontSize: Dimens.titleMedium,
              fontWeight: FontWeight.w400,
              color: Colors.black,
              letterSpacing: Dimens.letterSpacing,
            ),
        titleSmall: Theme.of(context).textTheme.titleSmall?.copyWith(
              fontFamily: GoogleFonts.poppins().fontFamily,
              fontSize: Dimens.titleSmall,
              fontWeight: FontWeight.w400,
              color: Colors.black,
              letterSpacing: Dimens.letterSpacing,
            ),
        bodyLarge: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontFamily: GoogleFonts.poppins().fontFamily,
              fontSize: Dimens.bodyLarge,
              fontWeight: FontWeight.w400,
              color: Colors.black,
              letterSpacing: Dimens.letterSpacing,
            ),
        bodyMedium: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontFamily: GoogleFonts.poppins().fontFamily,
              fontSize: Dimens.bodyMedium,
              fontWeight: FontWeight.w400,
              color: Colors.black,
              letterSpacing: Dimens.letterSpacing,
            ),
        bodySmall: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontFamily: GoogleFonts.poppins().fontFamily,
              fontSize: Dimens.bodySmall,
              fontWeight: FontWeight.w400,
              color: Colors.black,
              letterSpacing: Dimens.letterSpacing,
            ),
        labelLarge: Theme.of(context).textTheme.labelLarge?.copyWith(
              fontFamily: GoogleFonts.poppins().fontFamily,
              fontSize: Dimens.labelLarge,
              fontWeight: FontWeight.w400,
              color: Colors.black,
              letterSpacing: Dimens.letterSpacing,
            ),
        labelSmall: Theme.of(context).textTheme.labelSmall?.copyWith(
              fontFamily: GoogleFonts.poppins().fontFamily,
              fontSize: Dimens.labelSmall,
              fontWeight: FontWeight.w400,
              color: Colors.black,
              letterSpacing: Dimens.letterSpacing,
            ),
      ),
      iconTheme: const IconThemeData(
        size: Dimens.iconSm,
        color: Colors.orange,
      ),
    );

class TextStyles {
  TextStyles._();

  /// Regular
  static TextStyle? displayLg(BuildContext context) =>
      Theme.of(context).textTheme.displayLarge;

  static TextStyle? displayMd(BuildContext context) =>
      Theme.of(context).textTheme.displayMedium;

  static TextStyle? displaySm(BuildContext context) =>
      Theme.of(context).textTheme.displaySmall;

  static TextStyle? headLineLg(BuildContext context) =>
      Theme.of(context).textTheme.headlineSmall;

  static TextStyle? headLineMd(BuildContext context) =>
      Theme.of(context).textTheme.headlineSmall;

  static TextStyle? headLineSm(BuildContext context) =>
      Theme.of(context).textTheme.headlineSmall;

  static TextStyle? titleLg(BuildContext context) =>
      Theme.of(context).textTheme.titleLarge;

  static TextStyle? titleMd(BuildContext context) =>
      Theme.of(context).textTheme.titleMedium;

  static TextStyle? titleSm(BuildContext context) =>
      Theme.of(context).textTheme.titleSmall;

  static TextStyle? bodyLg(BuildContext context) =>
      Theme.of(context).textTheme.bodyLarge;

  static TextStyle? bodyMd(BuildContext context) =>
      Theme.of(context).textTheme.bodyMedium;

  static TextStyle? bodySm(BuildContext context) =>
      Theme.of(context).textTheme.bodySmall;

  static TextStyle? labelSm(BuildContext context) =>
      Theme.of(context).textTheme.labelSmall;

  /// medium
  static TextStyle? displayLgMedium(BuildContext context) =>
      displayLg(context)?.copyWith(fontWeight: FontWeight.w500);

  static TextStyle? displayMdMedium(BuildContext context) =>
      displayMd(context)?.copyWith(fontWeight: FontWeight.w500);

  static TextStyle? displaySmMedium(BuildContext context) =>
      displaySm(context)?.copyWith(fontWeight: FontWeight.w500);

  static TextStyle? headLineLgMedium(BuildContext context) =>
      headLineLg(context)?.copyWith(fontWeight: FontWeight.w500);

  static TextStyle? headLineMdMedium(BuildContext context) =>
      headLineMd(context)?.copyWith(fontWeight: FontWeight.w500);

  static TextStyle? headLineSmMedium(BuildContext context) =>
      headLineSm(context)?.copyWith(fontWeight: FontWeight.w500);

  static TextStyle? titleLgMedium(BuildContext context) =>
      titleLg(context)?.copyWith(fontWeight: FontWeight.w500);

  static TextStyle? titleMdMedium(BuildContext context) =>
      titleMd(context)?.copyWith(fontWeight: FontWeight.w500);

  static TextStyle? titleSmMedium(BuildContext context) =>
      titleSm(context)?.copyWith(fontWeight: FontWeight.w500);

  static TextStyle? bodyLgMedium(BuildContext context) =>
      bodyLg(context)?.copyWith(fontWeight: FontWeight.w500);

  static TextStyle? bodyMdMedium(BuildContext context) =>
      bodyMd(context)?.copyWith(fontWeight: FontWeight.w500);

  static TextStyle? bodySmMedium(BuildContext context) =>
      bodySm(context)?.copyWith(fontWeight: FontWeight.w500);

  /// semi bold
  static TextStyle? displayLgSemiBold(BuildContext context) =>
      displayLg(context)?.copyWith(fontWeight: FontWeight.w600);

  static TextStyle? displayMdSemiBold(BuildContext context) =>
      displayMd(context)?.copyWith(fontWeight: FontWeight.w600);

  static TextStyle? displaySmSemiBold(BuildContext context) =>
      displaySm(context)?.copyWith(fontWeight: FontWeight.w600);

  static TextStyle? headLineLgSemiBold(BuildContext context) =>
      headLineLg(context)?.copyWith(fontWeight: FontWeight.w600);

  static TextStyle? headLineMdSemiBold(BuildContext context) =>
      headLineMd(context)?.copyWith(fontWeight: FontWeight.w600);

  static TextStyle? headLineSmSemiBold(BuildContext context) =>
      headLineSm(context)?.copyWith(fontWeight: FontWeight.w600);

  static TextStyle? titleLgSemiBold(BuildContext context) =>
      titleLg(context)?.copyWith(fontWeight: FontWeight.w600);

  static TextStyle? titleMdSemiBold(BuildContext context) =>
      titleMd(context)?.copyWith(fontWeight: FontWeight.w600);

  static TextStyle? titleSmSemiBold(BuildContext context) =>
      titleSm(context)?.copyWith(fontWeight: FontWeight.w600);

  static TextStyle? bodyLgSemiBold(BuildContext context) =>
      bodyLg(context)?.copyWith(fontWeight: FontWeight.w600);

  static TextStyle? bodyMdSemiBold(BuildContext context) =>
      bodyMd(context)?.copyWith(fontWeight: FontWeight.w600);

  static TextStyle? bodySmSemiBold(BuildContext context) =>
      bodySm(context)?.copyWith(fontWeight: FontWeight.w600);

  /// bold
  static TextStyle? displayLgBold(BuildContext context) =>
      displayLg(context)?.copyWith(fontWeight: FontWeight.w700);

  static TextStyle? displayMdBold(BuildContext context) =>
      displayMd(context)?.copyWith(fontWeight: FontWeight.w700);

  static TextStyle? displaySmBold(BuildContext context) =>
      displaySm(context)?.copyWith(fontWeight: FontWeight.w700);

  static TextStyle? headLineLgBold(BuildContext context) =>
      headLineLg(context)?.copyWith(fontWeight: FontWeight.w700);

  static TextStyle? headLineMdBold(BuildContext context) =>
      headLineMd(context)?.copyWith(fontWeight: FontWeight.w700);

  static TextStyle? headLineSmBold(BuildContext context) =>
      headLineSm(context)?.copyWith(fontWeight: FontWeight.w700);

  static TextStyle? titleLgBold(BuildContext context) =>
      titleLg(context)?.copyWith(fontWeight: FontWeight.w700);

  static TextStyle? titleMdBold(BuildContext context) =>
      titleMd(context)?.copyWith(fontWeight: FontWeight.w700);

  static TextStyle? titleSmBold(BuildContext context) =>
      titleSm(context)?.copyWith(fontWeight: FontWeight.w700);

  static TextStyle? bodyLgBold(BuildContext context) =>
      bodyLg(context)?.copyWith(fontWeight: FontWeight.w700);

  static TextStyle? bodyMdBold(BuildContext context) =>
      bodyMd(context)?.copyWith(fontWeight: FontWeight.w700);

  static TextStyle? bodySmBold(BuildContext context) =>
      bodySm(context)?.copyWith(fontWeight: FontWeight.w700);

  static TextStyle? labelSmBold(BuildContext context) =>
      labelSm(context)?.copyWith(fontWeight: FontWeight.w700);

  /// extra bold
  static TextStyle? displayLgExtraBold(BuildContext context) =>
      displayLg(context)?.copyWith(fontWeight: FontWeight.w800);

  static TextStyle? displayMdExtraBold(BuildContext context) =>
      displayMd(context)?.copyWith(fontWeight: FontWeight.w800);

  static TextStyle? displaySmExtraBold(BuildContext context) =>
      displaySm(context)?.copyWith(fontWeight: FontWeight.w800);

  static TextStyle? headLineLgExtraBold(BuildContext context) =>
      headLineLg(context)?.copyWith(fontWeight: FontWeight.w800);

  static TextStyle? headLineMdExtraBold(BuildContext context) =>
      headLineMd(context)?.copyWith(fontWeight: FontWeight.w800);

  static TextStyle? headLineSmExtraBold(BuildContext context) =>
      headLineSm(context)?.copyWith(fontWeight: FontWeight.w800);

  static TextStyle? titleLgExtraBold(BuildContext context) =>
      titleLg(context)?.copyWith(fontWeight: FontWeight.w800);

  static TextStyle? titleMdExtraBold(BuildContext context) =>
      titleMd(context)?.copyWith(fontWeight: FontWeight.w800);

  static TextStyle? titleSmExtraBold(BuildContext context) =>
      titleSm(context)?.copyWith(fontWeight: FontWeight.w800);

  static TextStyle? bodyLgExtraBold(BuildContext context) =>
      bodyLg(context)?.copyWith(fontWeight: FontWeight.w800);

  static TextStyle? bodyMdExtraBold(BuildContext context) =>
      bodyMd(context)?.copyWith(fontWeight: FontWeight.w800);

  static TextStyle? bodySmExtraBold(BuildContext context) =>
      bodySm(context)?.copyWith(fontWeight: FontWeight.w800);

  static TextStyle? labelSmExtraBold(BuildContext context) =>
      labelSm(context)?.copyWith(fontWeight: FontWeight.w700);
}

class AppPadding {
  AppPadding._();
}

class BoxDecorations {
  BoxDecorations._();

  static BoxDecoration get circle => BoxDecoration(
        borderRadius: BorderRadius.circular(Dimens.circleCornerRadius),
      );
}
