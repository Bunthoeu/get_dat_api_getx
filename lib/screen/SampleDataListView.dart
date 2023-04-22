import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shimmer_effect_flutter_getx/controllers/SampleDataController.dart';

import '../res/strings.dart';

class SampleDataListView extends StatelessWidget {
  final SampleDataController sampleDataController =
      Get.put(SampleDataController());

  SampleDataListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(flutterShimmerEffectWithGetx),
      ),
      body: Obx(() {
        if (sampleDataController.isLoading.value) {
          return Container(
            width: double.infinity,
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                    child: Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  enabled: sampleDataController.isLoading.value,
                  child: ListView.builder(
                    itemBuilder: (_, __) => Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 150,
                            height: 100,
                            color: Colors.white,
                          ),
                          const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0)),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: double.infinity,
                                height: 8.0,
                                color: Colors.white,
                              ),
                              const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 2.0)),
                              Container(
                                width: double.infinity,
                                height: 8.0,
                                color: Colors.white,
                              ),
                              const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 2.0)),
                            ],
                          ))
                        ],
                      ),
                    ),
                    itemCount: 10,
                  ),
                )),
              ],
            ),
          );
        } else {
          return ListView.builder(
              itemCount: sampleDataController.sampleDataList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 150,
                          height: 100,
                          margin: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              sampleDataController
                                  .sampleDataList[index].thumbnailUrl,
                              width: 150,
                              height: 100,
                              fit: BoxFit.fill,
                              colorBlendMode: BlendMode.color,
                            ),
                          ),
                        ),
                        Flexible(
                            child: Container(
                          margin: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                sampleDataController
                                    .sampleDataList[index].title,
                                style: const TextStyle(fontSize: 18),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                              Text(
                                sampleDataController
                                    .sampleDataList[index].title,
                                style: const TextStyle(fontSize: 14),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ],
                          ),
                        ))
                      ],
                    ),
                    Container(
                      color: Colors.grey[200],
                      height: 2,
                    )
                  ],
                );
              });
        }
      }),
    );
  }
}
