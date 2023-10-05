import 'package:flutter/services.dart';

class DateFormatter extends TextInputFormatter {
  static const int maxDays = 31;
  static const int maxMonths = 12;
  static const int maxYear1 = 2;
  static const int minYear2 = 19;
  static const int maxYear2 = 20;

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String cText = newValue.text;
    int cLen = cText.length;

    if (cLen == 1) {
      int firstDigit = int.tryParse(cText) ?? 4;
      if (firstDigit > 3) {
        cText = '';
      }
    } else if (cLen == 2) {
      int dd = int.tryParse(cText.substring(0, 2)) ?? (maxDays + 1);
      if (dd == 0 || dd > maxDays) {
        cText = cText.substring(0, 1);
      } else {
        cText += '/';
      }
    } else if (cLen == 4) {
      int lastDigit = int.tryParse(cText.substring(3, 4)) ?? (maxYear1 + 1);
      if (lastDigit > maxYear1) {
        cText = cText.substring(0, 3);
      }
    } else if (cLen == 5) {
      int mm = int.tryParse(cText.substring(3, 5)) ?? (maxMonths + 1);
      if (mm == 0 || mm > maxMonths) {
        cText = cText.substring(0, 4);
      } else {
        cText += '/';
      }
    } else if (cLen == 3 || cLen == 6) {
      cText = cText.substring(0, cText.length - 1);
    } else if (cLen == 7) {
      int y1 = int.tryParse(cText.substring(6, 7)) ?? (maxYear1 + 1);
      if (y1 < 1 || y1 > maxYear1) {
        cText = cText.substring(0, 6);
      }
    } else if (cLen == 8) {
      int y2 = int.tryParse(cText.substring(6, 8)) ?? (minYear2 - 1);
      if (y2 < minYear2 || y2 > maxYear2) {
        cText = cText.substring(0, 7);
      }
    }

    int selectionIndex = cText.length;
    return TextEditingValue(
      text: cText,
      selection: TextSelection.collapsed(offset: selectionIndex),
    );
  }
}
