import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../controllers/base_initial_data.dart';
import '../models/model_component.dart';

mixin MixinList {
  ListView getMixinList(
    BuildContext context,
    List<ModelComponent> modelComponent,
    List<int> numberClickList,
  ) {
    final _state = Provider.of<BaseInitialData>(context);
    return ListView.builder(
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.all(4.0),
      itemCount: modelComponent.length,
      itemBuilder: (BuildContext context, index) {
        return SafeArea(
          child: Card(
            margin: EdgeInsets.all(5.0),
            elevation: 5.0,
            child: GestureDetector(
              onTap: () {
                _state.setNumberClickList(index);
                print(modelComponent[index].routeName);
              },
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5.0,
                      vertical: 5.0,
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          child: Image.asset(modelComponent[index].imagePath),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              modelComponent[index].title,
                              style: GoogleFonts.roboto(
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              modelComponent[index].description,
                              style: GoogleFonts.roboto(
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Wrap(
                            children: [
                              Container(
                                alignment: Alignment.topRight,
                                child: CircleAvatar(
                                  radius: MediaQuery.of(context).size.height *
                                      0.010,
                                  child: Text(
                                    '${numberClickList[index]}',
                                    style: GoogleFonts.roboto(
                                      fontSize: 8,
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  _state.setNumberClickList(index);
                                  print(modelComponent[index].routeName);
                                  Navigator.pushNamed(
                                    context,
                                    modelComponent[index].routeName,
                                  );
                                },
                                child: Container(
                                  alignment: Alignment.bottomRight,
                                  child: const Icon(Icons.navigate_next),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
