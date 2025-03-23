import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          title: const Text("AppBar", style: TextStyle(color: Colors.white, fontSize: 35),),
          backgroundColor: Colors.black,
          actions: [
            IconButton(
              icon: const Icon(Icons.add,size: 45, color: Colors.white),
              onPressed: (){
                 print("Buscar presionado");
              }, 
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            buildFoodCard(context), // 🔹 Llamamos al método aquí
            buildFoodCard(context),
            buildFoodCard(context),
            buildFoodCard(context),
            buildFoodCard(context),
            buildFoodCard(context),      
          ]
        ),
      ),
    );
  }

 Widget buildFoodCard(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.95,
        height: MediaQuery.of(context).size.height * 0.11,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: CircleAvatar(
                radius: 40,
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/pizza.jpg',
                    width: 80,  // Doble del radio
                    height: 80, // Doble del radio
                    fit: BoxFit.cover, // Ajusta la imagen al círculo sin deformarla
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.73,
              height: MediaQuery.of(context).size.height * 0.099,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                    child: Text("Pizza", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Gamma", style: TextStyle(fontSize: 15)),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                    child: Text("The best pizza in this city", style: TextStyle(fontSize: 15)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}