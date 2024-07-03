import 'package:firestore_data_store/utils/app_colors.dart';
import 'package:flutter/material.dart';

class Utils{
  void showSnackBar(context, String text){
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(text, style: const TextStyle(color: AppColors.white)),
          backgroundColor: AppColors.red,

      ));
  }
}