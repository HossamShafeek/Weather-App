import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/config/icons/icons_broken.dart';
import 'package:weather_app/config/routes/app_routes.dart';
import 'package:weather_app/core/utils/app_colors.dart';
import 'package:weather_app/core/utils/app_strings.dart';
import 'package:weather_app/core/utils/app_styles.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  final TextEditingController searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: TextField(
        controller: searchController,
        onEditingComplete: () {
          if (searchController.text.isNotEmpty) {
            Navigator.pushNamed(
              context,
              Routes.detailsView,
              arguments: ScreenArguments(cityName: searchController.text),
            );
            searchController.clear();
            FocusScope.of(context).unfocus();
          }else{
            FocusScope.of(context).unfocus();
          }
        },
        cursorColor: AppColors.black,
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
          hintMaxLines: 1,
          hintText: AppStrings.search,
          hintStyle: AppStyles.textStyle16.copyWith(
            color: AppColors.grey,
          ),
          suffixIconColor: AppColors.grey,
          fillColor: AppColors.grey50,
          filled: true,
          isDense: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.h),
            borderSide: BorderSide.none,
          ),
          suffixIcon: Container(
            margin: EdgeInsets.all(6.h),
            width: 15,
            height: 15,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(6.h),
            ),
            child: const Icon(IconBroken.Search),
          ),
        ),
      ),
    );
  }
}
