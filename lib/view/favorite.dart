import 'package:adopted_pet/widget/cardPet.dart';
import 'package:adopted_pet/widget/infoContainer.dart';
import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Favorites'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 183, 74),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Infocontainer(text: 'Cats', borderColor: Colors.blueAccent),
                Infocontainer(text: 'Dogs', borderColor: Colors.blueAccent),
                Infocontainer(text: 'Birds', borderColor: Colors.blueAccent),
                Infocontainer(text: 'Fishes', borderColor: Colors.blueAccent),
                Infocontainer(text: 'More..', borderColor: Colors.blueAccent),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(child: PetContainer()),
                  SizedBox(width: 10),
                  Expanded(child: PetContainer()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
