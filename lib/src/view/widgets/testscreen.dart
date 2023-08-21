import 'package:flutter/material.dart';
import 'package:load_management/db/dbmodels.dart';
import 'package:load_management/src/model/farmer_add_model.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView.separated(
              itemBuilder: (context, index) {
                List<FarmerModel> farmerslist = farmersDb.values.toList();
                return ExpansionTile(
                  title: Text(
                    farmerslist[index].name!,
                  ),
                  subtitle: Text(
                    farmerslist[index].number!,
                    style: TextStyle(color: Colors.black),
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(
                    height: 10,
                  ),
              itemCount: farmersDb.values.length)),
    );
  }
}
