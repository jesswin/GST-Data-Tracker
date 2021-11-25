import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:masters_gst/Models/gst_profile.dart';
import 'package:masters_gst/config.dart';

List<GstProfile> gstProfiles = [];

//fetching Profiles from Database.
//Data is added into the DB, to try a Demo of Application, here are some ID's

// -> GST06072001
// -> GST17042003
// -> GST01012000

// These are the dummy ID's (not from DB as they would be more complex)
//GST in front of every ID is just syntactic sugar added by Developer.

fetchGstData() async {
  try {
    var response = await http.get(Uri.parse(url));
    if (response.statusCode != 200) {
      throw Error();
    }
    var data = jsonDecode(response.body);
    for (var i = 0; i < data["gst_profiles"].length; i++) {
      gstProfiles.add(GstProfile(
          "GST${data["gst_profiles"][i]["GST_id"]}",
          data["gst_profiles"][i]["name"],
          data["gst_profiles"][i]["status"],
          data["gst_profiles"][i]["address"],
          data["gst_profiles"][i]["taxPayerType"],
          data["gst_profiles"][i]["buissnessType"],
          data["gst_profiles"][i]["date"]));
    }
  } catch (err) {
    print(err);
  }
}
