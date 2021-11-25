import 'package:flutter/material.dart';
import 'package:masters_gst/Utilities/colors.dart';
import 'package:masters_gst/Widgets/tile.dart';

class SearchTab extends StatefulWidget {
  const SearchTab({Key? key}) : super(key: key);

  @override
  SearchTabState createState() => SearchTabState();
}

class SearchTabState extends State<SearchTab> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 2);
  }

  final myTabs = const [
    Tab(text: 'Search GST number'),
    Tab(text: 'GST Return Status'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Tile("Search the type for", "GST Number Search Tool"),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.7),
              borderRadius: BorderRadius.circular(25),
            ),
            child: TabBar(
              controller: tabController,
              tabs: myTabs,
              labelColor: accentColor,
              unselectedLabelColor: textColor,
              indicator: BoxDecoration(
                color: textColor,
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
