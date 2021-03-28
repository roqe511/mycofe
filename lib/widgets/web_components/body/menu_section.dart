import 'package:flutter/material.dart';
import 'package:coffee/models/menu.dart';
import 'package:coffee/values/responsive_app.dart';
import 'package:coffee/values/string_app.dart';
import 'package:coffee/widgets/web_components/body/container/menu_container.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import 'container/section_container.dart';

class MenuSection extends StatelessWidget {
  AutoScrollController _scrollController;

  MenuSection(this._scrollController);

  ResponsiveApp responsiveApp;

  @override
  Widget build(BuildContext context) {
    responsiveApp = ResponsiveApp(context);

    return Column(
      children: [
        SectionContainer(
          title: sectionMenuTitleStr,
          subTitle: sectionMenuSubTitleStr,
        ),
        Padding(
          padding: responsiveApp.edgeInsetsApp.onlyExLargeTopEdgeInsets,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              menu.length,
              (index) => MenuContainer(
                index: index,
                onPress: () => scrollIndex(index + 1),
              ),
            ),
          ),
        )
      ],
    );
  }

  scrollIndex(index) {
    _scrollController.scrollToIndex(index);
  }
}
