import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:perezyeregui/widgets/custom_appbar.dart';
import 'package:perezyeregui/widgets/encabezado.dart';
import 'package:perezyeregui/widgets/footer.dart';
import 'package:perezyeregui/widgets/seguros.dart';
import 'package:perezyeregui/widgets/seguros_animated.dart';
import 'package:perezyeregui/widgets/seguros_loyout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Encabezado(),
              SizedBox(height: 100),
              SegurosWidget(),
              SizedBox(height: 150),
              Footer()
            ],
          ),
        ),
      ),
    );
  }
}
