import 'package:flutter/material.dart';
import 'package:masters_gst/Widgets/small_box.dart';

class ListBuilder extends StatefulWidget {
  final String taxPayertype;
  const ListBuilder(this.taxPayertype, {Key? key}) : super(key: key);
  @override
  State<ListBuilder> createState() => _ListBuilderState();
}

class _ListBuilderState extends State<ListBuilder> {
  Map? listData;
  List? keysOfList;
  @override
  void initState() {
    super.initState();
    listData = {
      "State Jurisdiction": "Ward 74",
      "Center Jurisdiction": "Range - 139",
      "Tax Payer type": widget.taxPayertype
    };
    keysOfList = listData?.keys.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: listData?.length,
          itemBuilder: (context, index) =>
              SmallBox(keysOfList?[index], listData?[keysOfList?[index]]),
        ));
  }
}
