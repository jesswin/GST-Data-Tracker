import 'package:flutter/material.dart';

class FooterButton extends StatelessWidget {
  const FooterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width,
      height: 60,
      child: ElevatedButton(
        child: const Text("Get Return Filing Status"),
        onPressed: () {},
      ),
    );
  }
}
