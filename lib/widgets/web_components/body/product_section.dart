import 'package:flutter/material.dart';
import 'package:coffee/models/section.dart';
// import 'package:coffee/widgets/components/product_listView.dart';

import 'container/section_container.dart';

class ProductSection extends StatelessWidget {
  Section section;

  ProductSection(this.section);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionContainer(
          title: section.title,
          subTitle: section.subtitle,
          color: section.color,
        ),
        // ProductListView(section.list)
      ],
    );
  }
}
