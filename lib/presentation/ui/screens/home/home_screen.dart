import 'package:ecommerce/presentation/ui/resources/app_colors.dart';
import 'package:ecommerce/presentation/ui/widget/w_brand_name.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../resources/app_icons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _getAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            _getSearchBox(),
          ],
        ),
      ),
    );
  }

  _getAppBar() => AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(AppIcons.menu),
              WBrandName(fontSize: 28),
              CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://avatars.mds.yandex.net/i?id=ebffcf4f7ae93c553bb1cb5aa118de6804e2b773-9106968-images-thumbs&n=13",
                ),
              ),
            ],
          ),
        ),
      );

  _getSearchBox() => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(45),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF848484),
              blurRadius: 4,
              spreadRadius: 1,
            ),
          ],
        ),
        child: TextField(
          controller: searchController,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: "Search \"Smartphone\"",
            hintStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.lightGray,
            ),
            prefixIcon: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20),
              child: SvgPicture.asset(AppIcons.search),
            ),
            suffixIcon: Container(
              padding: EdgeInsets.all(12),
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.primaryColor,
              ),
              child: SvgPicture.asset(AppIcons.scan),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(90),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(90),
              borderSide: BorderSide(color: Colors.transparent),
            ),
          ),
        ),
      );
}
