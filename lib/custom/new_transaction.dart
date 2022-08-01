import 'package:flutter/material.dart';
import 'package:flutter_fintech/providers/transactions.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class NewTransaction extends StatelessWidget {
  final double opacity;
  final Function done;
  const NewTransaction({Key? key, required this.opacity, required this.done}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;

    return Expanded(
        child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          width: double.infinity,
          padding: const EdgeInsets.all(40),
          color: Colors.white.withOpacity(opacity),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextFormField(
                readOnly: false,
                initialValue: 'Breakfast with my wife.',
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
                decoration: const InputDecoration(
                  isDense: true,
                  labelText: 'Title',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(16),
                ),
              ),
              const SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(
                      child: TextFormField(
                        readOnly: false,
                          initialValue: "12",
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: const InputDecoration(
                          isDense: true,
                          icon: Icon(Icons.attach_money),
                          contentPadding: EdgeInsets.all(8),
                        ),
                      )
                  ),
                  const SizedBox(width: 20,),
                  Expanded(
                      child: TextFormField(
                        readOnly: true,
                        initialValue: "Food",
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: const InputDecoration(
                          isDense: true,
                          icon: Icon(Icons.fastfood),
                          contentPadding: EdgeInsets.all(8),
                        ),
                      )
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 15, right: 15, top: 7, bottom: 7),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1, color: primaryColor),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.today,
                          color: primaryColor,
                        ),
                        const SizedBox(width: 5.0),
                        Text(
                          DateFormat('MMMM dd yyyy').format(DateTime.now()),
                          style: TextStyle(
                            fontFamily: 'Ralwway',
                            color: primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      //Provider.of<Transactions>(context, listen: true).
                      done;
                    },
                    child: Container(
                      padding: const EdgeInsets.only(left: 15, right: 15, top: 7, bottom: 7),
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          SizedBox(width: 5.0),
                          Text(
                            "ADD",
                            style: TextStyle(
                              fontFamily: 'Ralwway',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
