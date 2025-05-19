import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/utils/responsive_utils.dart';
import 'package:flutter_practice/widget/course_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'data/course_data.dart';

class CoursesListView extends StatefulWidget {
  const CoursesListView({super.key});

  @override
  State<CoursesListView> createState() => _CoursesListViewState();
}

class _CoursesListViewState extends State<CoursesListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          ResponsiveUtils.isWeb()
              ? null
              : AppBar(
                title: Text(
                  'Available Courses',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                centerTitle: true,
                backgroundColor: Colors.greenAccent,
              ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: ResponsiveUtils.getGridCrossAxisCount(context),
            // mainAxisExtent: ResponsiveUtils.getCardHeight(context),
            childAspectRatio: ResponsiveUtils.getGridAspectRatio(context),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: coursesList.length,
          itemBuilder: (context, index) {
            final course = coursesList[index];
            return Expanded(
              child: CourseCard(
                imageUrl: course.imageUrl,
                batchLabel: course.batchLabel,
                daysLeftLabel: course.daysLeftLabel,
                title: course.title,
                promoBadgeText: course.promoBadgeText,
                priceText: course.priceText,
                originalPriceText: course.originalPriceText,
                discountText: course.discountText,
                onTap: () {
                  // Handle course tap
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Selected course: ${course.title}'),
                      duration: const Duration(seconds: 1),
                      backgroundColor: Colors.greenAccent,
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
