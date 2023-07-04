import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyRideVM {

  DateTime selectedStartDate = DateTime.now();
  DateTime selectedEndDate = DateTime.now();
  TextEditingController startDate = TextEditingController();
  TextEditingController endDate = TextEditingController();
  TextEditingController emailDate = TextEditingController();

  Future<bool> selectStartDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(context: context, initialDate: selectedStartDate, firstDate: DateTime(2015, 8), lastDate: DateTime(2101));
    if (picked != null && picked != selectedStartDate) {
      selectedStartDate = picked;
      String formattedDate = DateFormat('EE, MMM d, yyyy').format(selectedStartDate);
       startDate.text = formattedDate.toString();
       return true;
    }else {
      return false;
    }
  }


  Future<bool> selectEndDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(context: context, initialDate: selectedEndDate, firstDate: DateTime(2015, 8), lastDate: DateTime(2101));
    if (picked != null && picked != selectedEndDate) {
      selectedEndDate = picked;
      String formattedDate = DateFormat('EE, MMM d, yyyy').format(selectedEndDate);
      endDate.text = formattedDate.toString();
       return true;
    }else {
      return false;
    }
  }
}