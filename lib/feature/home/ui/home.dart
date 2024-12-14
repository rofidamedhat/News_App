import 'package:flutter/material.dart';
import 'package:news_app/core/helpers/spacing.dart';
import 'package:news_app/feature/home/ui/widgets/home_top_bar.dart';
import 'package:news_app/feature/home/ui/widgets/large_show_news_list_view.dart';
import 'package:news_app/feature/home/ui/widgets/category_list_view.dart';
import 'package:news_app/feature/home/ui/widgets/vertical_show_news_list_view.dart';
import 'package:news_app/feature/home/ui/widgets/welcome_text.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              verticalSpace(15),
              const WelcomeText(),
              verticalSpace(15),
              const LargeShowNewsListView(),
              verticalSpace(15),
              const CategoryListView(),
              verticalSpace(15),
              const VerticalShowNewsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
