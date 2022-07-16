import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1209_coffee_delivery_app/src/model/menu_item.dart';
import 'package:flutter_notebook_chapter_21/global_utils/global_text_util.dart';

class DrinkOrderPage extends StatefulWidget {
  final CoffeeMenuItem? menuItem;

  const DrinkOrderPage({Key? key, this.menuItem}) : super(key: key);

  @override
  State<DrinkOrderPage> createState() => _DrinkOrderPageState();
}

class _DrinkOrderPageState extends State<DrinkOrderPage> {
  int itemCount = 1;

  void incrementItem() {
    setState(() {
      itemCount++;
    });
  }

  void decrementItem() {
    itemCount--;
    itemCount = itemCount <= 1 ? 1 : itemCount;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SafeArea(
          child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            child: Column(
              children: [
                Container(
                  height: 120,
                  width: 84,
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: NetworkImage(
                        widget.menuItem?.img ?? "",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    "${widget.menuItem?.title ?? ""}",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Text(
                    loremIpsum.substring(0, 120),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 1.8,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 12),
                      height: 4,
                      width: 54,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Drink Size",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CircleAvatar(
                          radius: 48,
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.local_drink_outlined),
                              SizedBox(
                                height: 8,
                              ),
                              Text("Basic"),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: CircleAvatar(
                          radius: 48,
                          backgroundColor: Colors.red[100],
                          foregroundColor: Colors.black,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.local_drink_outlined),
                              SizedBox(
                                height: 8,
                              ),
                              Text("Middle"),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: CircleAvatar(
                          radius: 48,
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.local_drink_outlined),
                              SizedBox(
                                height: 8,
                              ),
                              Text("Large"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Toppings",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 48,
                    child: Container(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 8),
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                            decoration: BoxDecoration(
                              color: index == 0 ? Colors.red[100] : Colors.white,
                              borderRadius: BorderRadius.circular(32),
                            ),
                            child: Center(
                              child: Text(
                                "Almond",
                              ),
                            ),
                          );
                        },
                        itemCount: 5,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 72,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(24),
                  topLeft: Radius.circular(24),
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: decrementItem,
                    child: Container(
                      height: 54,
                      width: 54,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                        ),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "$itemCount",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: incrementItem,
                    child: Container(
                      height: 54,
                      width: 54,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                        ),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                      child: Container(
                    height: 48,
                    decoration: BoxDecoration(
                      color: Colors.red[100],
                      borderRadius: BorderRadius.circular(24),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Add to bag",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "\$${(itemCount * (widget?.menuItem?.price ?? 0.0)).toStringAsFixed(2)}",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                        )
                      ],
                    ),
                  ))
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
