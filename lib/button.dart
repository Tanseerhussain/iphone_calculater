import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPress;
  const  MyButton(
      {Key? key, 
      required this.title, 
      this.color = const Color(0xffa5a5a5), 
      required this.onPress,
      }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: InkWell(
          onTap: onPress,
          child: Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
            child: Center(
                child: Text(title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold
                    ))),
          ),
        ),
      ),
    );
  }
}
