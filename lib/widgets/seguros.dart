import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class SegurosWidget extends StatefulWidget {
  const SegurosWidget({super.key});

  @override
  SegurosWidgetState createState() => SegurosWidgetState();
}

class SegurosWidgetState extends State<SegurosWidget> {
  // Cambia el tipo de 'icon' a IconData
  final List<Map<String, dynamic>> seguros = [
    {
      'icon': FontAwesomeIcons.car,
      'title': 'AUTO',
      'subtitle': 'Disfrutá tu auto',
    },
    {
      'icon': FontAwesomeIcons.home,
      'title': 'HOGAR',
      'subtitle': 'Disfrutá tu casa',
    },
    {
      'icon': FontAwesomeIcons.bicycle,
      'title': 'MOVILIDAD',
      'subtitle': 'Movete tranquilo',
    },
    {
      'icon': FontAwesomeIcons.motorcycle,
      'title': 'MOTO',
      'subtitle': 'Disfrutá el camino',
    },
    {
      'icon': FontAwesomeIcons.heart,
      'title': 'VIDA',
      'subtitle': 'Viví en paz',
    },
    {
      'icon': FontAwesomeIcons.briefcase,
      'title': 'VIDA LABORAL',
      'subtitle': 'Trabajá seguro',
    },
    {
      'icon': FontAwesomeIcons.store,
      'title': 'PYME',
      'subtitle': 'Tu negocio seguro',
    },
    {
      'icon': FontAwesomeIcons.userShield,
      'title': 'ACCIDENTES PERSONALES',
      'subtitle': 'Viví sin preocuparte',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Conocé nuestros seguros",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize:
                  screenWidth > 1000 ? screenWidth * 0.03 : screenWidth * 0.07,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1B1D42),
            ),
          ),
          SizedBox(
              height: screenWidth *
                  0.02), // Espacio relativo al ancho de la pantalla
          // Usamos un LayoutBuilder para manejar el diseño responsivo
          LayoutBuilder(
            builder: (context, constraints) {
              int crossAxisCount = screenWidth > 1000
                  ? 4
                  : 2; // 4 columnas si > 1000, 2 columnas si <= 1000

              return GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: screenWidth * 0.02,
                  mainAxisSpacing: screenWidth * 0.02,
                  childAspectRatio: 1.5,
                ),
                itemCount: seguros.length,
                itemBuilder: (context, index) {
                  final seguro = seguros[index];
                  return SeguroItem(
                    icon: seguro['icon'] as IconData,
                    title: seguro['title'] as String,
                    subtitle: seguro['subtitle'] as String,
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

class SeguroItem extends StatefulWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const SeguroItem({
    required this.icon,
    required this.title,
    required this.subtitle,
    super.key,
  });

  @override
  _SeguroItemState createState() => _SeguroItemState();
}

class _SeguroItemState extends State<SeguroItem> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: Card(
        elevation: _isHovered ? 5 : 2,
        child: Padding(
          padding: EdgeInsets.only(top: size.width * 0.01),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(
                widget.icon,
                size: size.width > 1000
                    ? size.width * 0.03
                    : size.width *
                        0.07, // Tamaño relativo al ancho de la pantalla
                color: _isHovered ? Color(0xFFD1AD7C) : Colors.black,
              ),
              SizedBox(height: size.width * 0.01),
              Text(
                widget.title,
                style: TextStyle(
                  fontSize: size.width > 1000
                      ? size.width * 0.012
                      : size.width *
                          0.02, // Tamaño relativo al ancho de la pantalla
                  fontWeight: FontWeight.bold,
                  color: _isHovered ? Color(0xFFD1AD7C) : Colors.black,
                ),
              ),
              SizedBox(height: size.width * 0.005),
              Text(
                widget.subtitle,
                style: TextStyle(
                  fontSize: size.width > 1000
                      ? size.width * 0.011
                      : size.width *
                          0.019, // Tamaño relativo al ancho de la pantalla
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                  height: size.width *
                      0.01), // Espacio relativo al ancho de la pantalla
              SizedBox(
                width: size.width > 1000 ? size.width * 0.1 : size.width * 0.2,
                height:
                    size.width > 1000 ? size.width * 0.02 : size.width * 0.05,
                child: OutlinedButton(
                  onPressed: () => context.go("/contacto"),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: _isHovered ? Color(0xFFD1AD7C) : Colors.black,
                    ),
                    backgroundColor:
                        _isHovered ? Color(0xFFD1AD7C) : Colors.transparent,
                    minimumSize:
                        Size.zero, // Elimina el tamaño mínimo predeterminado
                    padding: EdgeInsets.zero, // Elimina el padding interno
                    tapTargetSize: MaterialTapTargetSize
                        .shrinkWrap, // Reduce el área de toque
                    alignment: Alignment.center, // Alinea el texto al centro
                  ),
                  child: Text(
                    "Conocé más",
                    style: TextStyle(
                      color: _isHovered ? Colors.white : Colors.black,
                      fontSize: size.width > 1000
                          ? size.width * 0.008
                          : size.width * 0.018,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
