import 'package:flutter/material.dart';

class AdCard extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String location;
  final VoidCallback onClick;
  const AdCard({super.key, required this.imgUrl, required this.title, required this.location, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        margin: const EdgeInsets.all(10),
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(image: NetworkImage(imgUrl), fit: BoxFit.cover,),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black.withOpacity(0.3),
              ),
            ),
            Positioned(bottom: 10, left: 10, right: 10, child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold,),),
                const SizedBox(height: 5,),
                Text(location, style: const TextStyle(color: Colors.white70, fontSize: 16),),
              ],
            ),),
          ],
        ),
      ),
    );
  }
}
