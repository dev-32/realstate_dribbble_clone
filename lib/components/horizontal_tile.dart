import 'package:flutter/material.dart';

class Horizontal_tile extends StatelessWidget {
  const Horizontal_tile({super.key, required this.name, required this.icon});
  final String name;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8)
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.purple.shade300,),
          const SizedBox(width: 5,),
          Text(name,style: TextStyle(fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}
