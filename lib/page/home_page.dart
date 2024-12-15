import 'package:flutter/material.dart';
import 'package:fooddelivery/Widget/Filter_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
          children: [
            buildHeader(),
            const SizedBox(height: 10.0),
            buildSearch(),
            buildFilter(),
            buildFoodList(),
          ],
        ),
      ),
    );
  }

  Widget buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
              iconSize: 25.0,
              color: Colors.green,
            ),
            const CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://img.icons8.com/ios/50/user-female-circle.png"),
            )
          ],
        ),
        const SizedBox(height: 10),
        const Text(
          "Hello X,",
          style: TextStyle(fontSize: 16),
        ),
        const Text(
          "Food Devilery",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget buildSearch() {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: "Seaech Food",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              contentPadding: const EdgeInsets.all(8.0),
              suffixIcon: const Icon(Icons.search),
            ),
          ),
        ),
        const Card(
          margin: EdgeInsets.only(left: 12),
          color: Color.fromARGB(255, 26, 229, 8),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.filter_list),
          ),
        ),
      ],
    );
  }

  Widget buildFilter() {
    return Container(
      height: 32,
      margin: const EdgeInsets.only(top: 16),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          FilterButton(title: "Populate", isSelected: true),
          FilterButton(title: "New Item", isSelected: false),
          FilterButton(title: "hot Deal", isSelected: false),
          FilterButton(title: "Hot Ice", isSelected: false),
          FilterButton(title: "Icream Ice", isSelected: false),
          FilterButton(title: "Food", isSelected: false),
          FilterButton(title: "Meets", isSelected: false),
          FilterButton(title: "Pets", isSelected: false),
          FilterButton(title: "Kitchen", isSelected: false),
          FilterButton(title: "Apple", isSelected: false),
          FilterButton(title: "Banana", isSelected: false),
          FilterButton(title: "Combo Pack", isSelected: false),
          FilterButton(title: "Coffee", isSelected: false),
        ],
      ),
    );
  }

  Widget buildFoodList() {
    var margin = 20;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 160,
            color: Colors.amber,
          ),
          Container(
            width: 160,
            color: Colors.red,
          ),
          Container(
            width: 160,
            color: Colors.brown,
          ),
          Container(
            width: 160,
            color: Colors.greenAccent,
          ),
          Container(
            width: 160,
            color: Colors.blue,
          ),
          Container(
            width: 160,
            color: Colors.blueAccent,
          ),
        ],
      ),
    );
  }
}
