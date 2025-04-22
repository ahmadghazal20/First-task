import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'cat_fact_controller.dart';

class CatFactPage extends StatelessWidget {
  final CatFactController controller = Get.put(CatFactController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F4F9),
      appBar: AppBar(
        title: Text('Cat Facts'),
        backgroundColor: Color(0xFFA980E3),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade900,
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Obx(() => Text(
                controller.fact.value,
                style: TextStyle(
                  fontSize: 18,
                  height: 1.5,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF333333),
                ),
                textAlign: TextAlign.center,
              )),
            ),
            SizedBox(height: 30),

            ElevatedButton(
              onPressed: controller.fetchCatFact,
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF1D0146),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 5,
              ),
              child: Text(
                'New Fact',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
