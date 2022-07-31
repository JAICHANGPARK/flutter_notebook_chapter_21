import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BankHomeWidget extends StatefulWidget {
  const BankHomeWidget({Key? key}) : super(key: key);

  @override
  State<BankHomeWidget> createState() => _BankHomeWidgetState();
}

class _BankHomeWidgetState extends State<BankHomeWidget> {
  int _tmpRadioValue = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 16),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                ),
                SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dreamwalker",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        Text(
                          "Switch account",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.grey,
                        ),
                      ],
                    )
                  ],
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.search,
                  ),
                  color: Colors.white,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 16),
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(4),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 20,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  "12 New notification",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 36,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 16),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Center(
                    child: Text(
                      "Accounts",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 16),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Center(
                    child: Text(
                      "Cards",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 16),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Center(
                    child: Text(
                      "Plans",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 16),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Center(
                    child: Text(
                      "Investment",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.15),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Total balance",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "\$20,453",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                              TextSpan(
                                text: ".99",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white.withOpacity(.3),
                      foregroundColor: Colors.white,
                      child: Icon(
                        Icons.more_vert,
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 16, bottom: 8),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: _tmpRadioValue == 0 ? Colors.blue : Colors.transparent,
                    ),
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.white.withOpacity(0.1),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                  child: Row(
                    children: [
                      Radio<int>(
                        value: 0,
                        groupValue: _tmpRadioValue,
                        onChanged: (i) {
                          setState(() {
                            _tmpRadioValue = i ?? 0;
                          });
                        },
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.grey,
                        child: Icon(Icons.credit_card),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Premium - ****8771",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Expires on 12/23",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 4, bottom: 8),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: _tmpRadioValue == 1 ? Colors.blue : Colors.transparent,
                    ),
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                  child: Row(
                    children: [
                      Radio<int>(
                        value: 1,
                        groupValue: _tmpRadioValue,
                        onChanged: (i) {
                          setState(() {
                            _tmpRadioValue = i ?? 1;
                          });
                        },
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.grey,
                        child: Icon(Icons.credit_card),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Premium - ****8771",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Expires on 12/23",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
