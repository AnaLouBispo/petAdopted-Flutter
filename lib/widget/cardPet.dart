import 'package:adopted_pet/view/favorite.dart';
import 'package:adopted_pet/view/pet_info.dart';
import 'package:flutter/material.dart';

class PetContainer extends StatelessWidget {
  const PetContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 255, 213, 98),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/images/cat.png',
          ),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
              bottom: 10,
              right: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 248, 141, 69)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PetInfo()),
                  );
                },
                child: Text(
                  'Amber',
                  style: TextStyle(color: Colors.white),
                ),
              )),
          Positioned(
              top: 10,
              left: 20,
              child: Row(
                children: [
                  Icon(
                    Icons.location_on,
                    size: 15,
                  ),
                  Text("Distance (5km)")
                ],
              )),
        ],
      ),
    );
  }
}
