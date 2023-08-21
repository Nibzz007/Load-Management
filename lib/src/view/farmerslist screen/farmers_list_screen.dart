import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:load_management/core/app_color.dart';
import 'package:load_management/core/app_sizes.dart';
import 'package:load_management/core/app_style.dart';
import 'package:load_management/db/getcropsapi.dart';
import 'package:load_management/src/model/user_api_model/user_api_model.dart';
import 'package:load_management/src/view/farmerslist%20screen/add_new_farmer_screen.dart';
import 'package:load_management/src/view/farmerslist%20screen/farmer_crops_screen.dart';
import 'package:load_management/src/view/widgets/common_appbar_widget.dart';

class FarmersListScreen extends StatefulWidget {
  const FarmersListScreen({super.key});

  @override
  State<FarmersListScreen> createState() => _FarmersListScreenState();
}

class _FarmersListScreenState extends State<FarmersListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CommonAppbarWidget(text: 'Farmers list'),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kGreen,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => AddNewFarmerScreen(),
            ),
          );
        },
        child: const Icon(
          Icons.add,
          color: kWhite,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CupertinoSearchTextField(),
              kHeight20,
              FutureBuilder<List<String>>(
                future: getallfarmers(),
                // initialData: [],
                builder: (context, snapshot) =>
                    snapshot.connectionState == ConnectionState.waiting
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        :snapshot.data==null? const Center(
                            child: CircularProgressIndicator(),
                          ):ListView.separated(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return ListTile(
                                // onTap: () {
                                //   Navigator.of(context).push(
                                //     MaterialPageRoute(
                                //       builder: (context) =>
                                //           // const FarmerIrrigationRequirementScreen(),
                                //           const FarmerCropsScreen(),
                                //     ),
                                //   );
                                // },
                                splashColor: kGreen300,
                                title: Text(
                                  snapshot.data![index],
                                  style: listTileTextStyle,
                                ),
                                trailing: const Icon(Icons.arrow_forward_ios),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return const Divider(
                                thickness: 0.4,
                                indent: 4,
                                endIndent: 4,
                              );
                            },
                            itemCount: 15,
                          ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
