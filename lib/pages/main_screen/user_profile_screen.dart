import 'package:auto_route/auto_route.dart';
import 'package:demo/data/category_json.dart';
import 'package:demo/data/courses_json.dart';
import 'package:demo/data/user_profile.dart';
import 'package:demo/router/router.gr.dart';
import 'package:demo/theme/colors.dart';
import 'package:demo/theme/padding.dart';
import 'package:demo/widgets/clipper.dart';
import 'package:demo/widgets/custom_categories_button.dart';
import 'package:demo/widgets/custom_category_card.dart';
import 'package:demo/widgets/custom_course_card.dart';
import 'package:demo/widgets/custom_heading.dart';
import 'package:demo/widgets/custom_promotion_card.dart';
import 'package:demo/widgets/custom_search_field.dart';
import 'package:demo/widgets/custom_title.dart';
import 'package:flutter/material.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  Widget getBody() {
    var userName = UserProfile['full_name']!.split(' ');
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: const EdgeInsets.only(bottom: spacer),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              ClipPath(
                clipper: BottomClipper(),
                child: Container(
                    width: size.width,
                    height: 300.0,
                    decoration: BoxDecoration(
                      color: secondary,
                    )),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: appPadding, right: appPadding),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: spacer + 24),
                    //heading
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomHeading(
                          //TODO this is user name display
                          title: 'Hi, ${userName[0]}!',
                          subTitle: 'Let\'s start learning.',
                          color: textWhite,
                          /*      title: 'Hi, Tuan',*/
                        ),
                        GestureDetector(
                          onTap: () =>
                              context.router.navigate(UserDetailsScreenRoute()),
                          child: Container(
                              height: spacer,
                              width: spacer,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  //TODO User Profile display
                                  child: Image.asset(
                                    UserProfile['image'].toString(),
                                    fit: BoxFit.cover,
                                  ))),
                        ),
                      ],
                    ),
                    SizedBox(height: spacer),

                    //search
                    CustomSearchField(
                      hintField: 'Try "Web Design"',
                      backgroundColor: background,
                    ),
                    SizedBox(height: spacer - 30.0),

                    //categoy card
                    CustomCategoryCard(),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: spacer),

          //promotion card
          CustomPromotionCard(),
          SizedBox(height: spacer),

          //feature courses
          Padding(
            padding: const EdgeInsets.only(left: appPadding, right: appPadding),
            child: CustomTitle(
              title: 'Feature Course',
              arg: {
                'title': 'Feature Course!',
                'list': CoursesJson,
              },
            ),
          ),
          SizedBox(height: smallSpacer),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(
              left: appPadding,
              right: appPadding - 10.0,
            ),
            child: Wrap(
              children: List.generate(CoursesJson.length, (index) {
                var data = CoursesJson[index];

                return Padding(
                  padding: const EdgeInsets.only(right: 15.0, bottom: 20.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: CustomCourseCardExpand(
                      thumbNail: data['image'],
                      videoAmount: data['video'],
                      title: data['title'],
                      userProfile: data['user_profile'],
                      userName: data['user_name'],
                      price: data['price'],
                    ),
                  ),
                );
              }),
            ),
          ),
          SizedBox(height: spacer - 20.0),

          //categories
          Padding(
            padding: const EdgeInsets.only(left: appPadding, right: appPadding),
            child: CustomTitle(title: 'Categories'),
          ),
          SizedBox(height: smallSpacer),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(
              left: appPadding,
              right: appPadding - 10.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: List.generate(CategoryJson.length, (index) {
                    var data = AllCategories[index];
                    var getData = data['data'];
                    return Padding(
                      padding: const EdgeInsets.only(right: 10.0, bottom: 10.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: CustomCategoriesButton(
                            title: CategoryJson[index]['title']),
                      ),
                    );
                  }),
                ),
                Row(
                  children: List.generate(CategoryJson.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10.0, bottom: 10.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: CustomCategoriesButton(
                            title: CategoryJson2[index]['title']),
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
          SizedBox(height: spacer - 10.0),
          //feature category
          Padding(
            padding: const EdgeInsets.only(left: appPadding, right: appPadding),
            child: CustomTitle(title: 'Design Courses'),
          ),
          SizedBox(height: smallSpacer),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(
              left: appPadding,
              right: appPadding - 10.0,
            ),
            child: Wrap(
              children: List.generate(CoursesJson.length, (index) {
                var data = CoursesJson[index];

                return Padding(
                  padding: const EdgeInsets.only(right: 15.0, bottom: 20.0),
                  child: GestureDetector(
                    child: CustomCourseCardExpand(
                      thumbNail: data['image'],
                      videoAmount: data['video'],
                      title: data['title'],
                      userProfile: data['user_profile'],
                      userName: data['user_name'],
                      price: data['price'],
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
