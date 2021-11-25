import 'package:flutter/material.dart';
import 'package:masters_gst/Models/gst_profile.dart';
import 'package:masters_gst/Utilities/colors.dart';
import 'package:masters_gst/Widgets/address_box.dart';
import 'package:masters_gst/Widgets/dates_box.dart';
import 'package:masters_gst/Widgets/footer_button.dart';

import 'package:masters_gst/Widgets/header.dart';
import 'package:flutter/cupertino.dart';
import 'package:masters_gst/Widgets/list_builder.dart';
import 'package:masters_gst/Widgets/profile_header.dart';
import 'package:masters_gst/Widgets/rect_box.dart';

class GSTScreen extends StatelessWidget {
  final GstProfile userProfile;
  const GSTScreen(this.userProfile, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GST Profile"),
        elevation: 0,
        backgroundColor: primaryColor,
      ),
      //Single Child Scroll View for Scrollable Page.
      body: SingleChildScrollView(
        child: Column(children: [
          //Header will all the Data.
          Header(ProfileHeader(
              userProfile.id, userProfile.name, userProfile.status)),

          //Address Box for Company's Address.
          AddressBox(userProfile.address),

          //Used Listview in horizontal direction because the 3 boxes were not fitting on screen.
          ListBuilder(userProfile.taxPayerType),

          //Box for Buissness Type.
          RectBox("Conditution of Buissness", userProfile.buissnessType),

          //Box for Dates.
          DatesBox(userProfile.date),

          //Button at Footer.
          const FooterButton()
        ]),
      ),
    );
  }
}
