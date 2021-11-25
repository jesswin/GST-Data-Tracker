import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:masters_gst/Models/gst_profile.dart';
import 'package:masters_gst/Screens/gst_data_screen.dart';
import 'package:masters_gst/Services/fetch_gst_data.dart';
import 'package:masters_gst/Utilities/colors.dart';
import 'package:masters_gst/Widgets/header.dart';
import 'package:masters_gst/Widgets/search_tab.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);
  final textController = TextEditingController();
  GstProfile userProfile = GstProfile("id", "name", "status", "address",
      "taxPayerType", "buissnessType", "date");

  findProfile(id) {
    //finding the profile of a user from retrived Data else returning dummy data.
    userProfile = gstProfiles.firstWhere((profile) => profile.id == id,
        orElse: () => GstProfile("id", "name", "status", "address",
            "taxPayerType", "buissnessType", "date"));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Header with Search Tab.
        const Header(SearchTab()),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            controller: textController,
            decoration: const InputDecoration(
                fillColor: Colors.black12,
                filled: true,
                hintText: "Ex: GST0123",
                helperText: "GST Number"),
          ),
        ),

        //Search Button
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.all(20.0),
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(primaryColor)),
            onPressed: () {
              //fetching the profile and navigating to Profile Page
              findProfile(textController.text);

              //Cupertino Page to go back by sliding the Screen
              Navigator.of(context).push(CupertinoPageRoute(
                  builder: (context) => GSTScreen(userProfile)));
            },
            child: const Text("Search"),
          ),
        )
      ],
    );
  }
}
