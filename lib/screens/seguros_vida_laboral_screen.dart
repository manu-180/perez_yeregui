import 'package:flutter/material.dart';
import 'package:perezyeregui/widgets/custom_appbar.dart';
import 'package:perezyeregui/widgets/footer.dart';
import 'package:perezyeregui/widgets/presentaciones/seguro_automotor.dart';
import 'package:perezyeregui/widgets/presentaciones/seguro_vida_laboral.dart';

class SegurosVidaLaboralScreen extends StatelessWidget {
  const SegurosVidaLaboralScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SeguroVidaLaboral(),
              Footer(),
            ],
          ),
        ));
  }
}
