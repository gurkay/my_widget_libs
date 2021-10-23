import 'dart:ffi';

import 'package:flutter/material.dart';
import '../models/model_component.dart';

mixin MixinList {
  ListView getMixinList(
      BuildContext context, List<ModelComponent> modelComponent) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(4.0),
      itemCount: modelComponent.length,
      itemBuilder: (BuildContext context, index) {
        return SafeArea(
          child: Card(
            margin: EdgeInsets.all(5.0),
            elevation: 5.0,
            child: GestureDetector(
              onTap: () {
                print(modelComponent[index].routeName);
              },
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15.0,
                      vertical: 15.0,
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          child: Image.asset(modelComponent[index].imagePath),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(modelComponent[index].title),
                            Text(modelComponent[index].description),
                          ],
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              print(modelComponent[index].routeName);
                            },
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: Icon(Icons.navigate_next),
                            ),
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
