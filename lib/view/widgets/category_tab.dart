import 'package:flutter/material.dart';
import 'package:food_app_with_getx/data/model/category_model.dart';
import 'package:food_app_with_getx/view/widgets/category_item.dart';

class CategoryTab extends StatefulWidget {
  const CategoryTab({super.key});

  @override
  State<CategoryTab> createState() => _CategoryTabState();
}

class _CategoryTabState extends State<CategoryTab> {

  void _onCategorySelected(int selectedIndex) {
    setState(() {
      for (int i = 0; i < categoriesModel.length; i++) {
        categoriesModel[i]['isActive'] = (i==selectedIndex);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesModel.length,
        separatorBuilder: (_, __) {
          return const SizedBox(width: 5);
        },
        itemBuilder: (context, index) {
          return CategoryItem(
            onTap: () {
              _onCategorySelected(index);
            },
            isActive: categoriesModel[index]['isActive'],
            title: categoriesModel[index]['title'],
            image: categoriesModel[index]['image'],
          );
        },
      ),
    );
  }
}
