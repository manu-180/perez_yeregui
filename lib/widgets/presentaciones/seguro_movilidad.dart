import 'package:flutter/material.dart';

class SeguroMovilidad extends StatelessWidget {
  const SeguroMovilidad({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal:
              screenWidth > 1000 ? 40 : 20, // Padding horizontal dinámico
          vertical: 40,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFF5F5F5), // Fondo claro
              Color(0xFFE0E0E0), // Fondo un poco más oscuro
            ],
          ),
        ),
        child: screenWidth > 1000
            ? _buildDesktopLayout(context) // Diseño para pantallas grandes
            : _buildMobileLayout(context), // Diseño para pantallas pequeñas
      ),
    );
  }

  // Diseño para pantallas grandes (> 1000 px)
  Widget _buildDesktopLayout(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Imagen a la izquierda
        ClipRRect(
          borderRadius: BorderRadius.circular(20), // Bordes redondeados
          child: Image.asset(
            'assets/images/bici.png', // Ruta de la imagen en assets
            width: 500, // Ancho de la imagen
            height: 400, // Alto de la imagen
            fit: BoxFit.cover, // Ajuste de la imagen
          ),
        ),
        SizedBox(width: 40), // Espacio entre la imagen y el texto
        // Contenido a la derecha
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Título "Quienes Somos"
              Text(
                "Seguro Integral Ciclistas / Ecomovilidad",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5C5664), // Color del título
                ),
              ),
              SizedBox(height: 20), // Espacio entre el título y el texto
              // Texto descriptivo
              Padding(
                padding: EdgeInsets.only(right: size.width * 0.05),
                child: Text(
                  '''Si cuidás el planeta, nosotros te cuidamos a vos y a tu monopatín.
Ecomovilidad es moverse sin dañar el medio ambiente. Movete tranquilo con una cobertura integral, combinando seguros responsabilidad civil, robo, accidentes personales y salud.

COBERTURAS PRINCIPALES

•	Robo: en República Argentina. Posibilidad de cubrir por robo accesorios fijos de la bicicleta.
•	Accidentes Personales para el ciclista. Incluye muerte accidental, invalidez y asistencia médico farmacéutica.
•	Salud: cobertura indemnizatoria que complementa en forma independiente a cualquier otro tipo de prestación similar. En este caso es un seguro de fracturas como consecuencia inmediata de un accidente.
•	Responsabilidad Civil del Ciclista: cobertura por daños a terceros como consecuencia del uso de bicicletas. Ámbito de la cobertura: República Argentina. Sin franquicias.

Asegurar:
•	BICICLETAS ALTA-MEDIA GAMA 
•	BICICLETAS ELECTRICAS
•	MONOPATINES ELECTRICOS
•	MOTOS ELECTRICAS QUE NO PUEDEN PATENTARSE


''',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF5C5664), // Color del texto
                    height: 1.5, // Espaciado entre líneas
                  ),
                ),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ],
    );
  }

  // Diseño para pantallas pequeñas (<= 1000 px)
  Widget _buildMobileLayout(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Imagen arriba
        ClipRRect(
          borderRadius: BorderRadius.circular(20), // Bordes redondeados
          child: Image.asset(
            'assets/images/bici.png', // Ruta de la imagen en assets
            width: 300, // Ancho de la imagen
            height: 200, // Alto de la imagen
            fit: BoxFit.cover, // Ajuste de la imagen
          ),
        ),
        SizedBox(height: 40), // Espacio entre la imagen y el texto
        // Contenido debajo
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.05), // Padding horizontal
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Título "Quienes Somos"
              Text(
                "Seguro Integral Ciclistas / Ecomovilidad",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5C5664), // Color del título
                ),
              ),
              SizedBox(height: 20), // Espacio entre el título y el texto
              // Texto descriptivo
              Text(
                '''Si cuidás el planeta, nosotros te cuidamos a vos y a tu monopatín.
Ecomovilidad es moverse sin dañar el medio ambiente. Movete tranquilo con una cobertura integral, combinando seguros responsabilidad civil, robo, accidentes personales y salud.

COBERTURAS PRINCIPALES

•	Robo: en República Argentina. Posibilidad de cubrir por robo accesorios fijos de la bicicleta.
•	Accidentes Personales para el ciclista. Incluye muerte accidental, invalidez y asistencia médico farmacéutica.
•	Salud: cobertura indemnizatoria que complementa en forma independiente a cualquier otro tipo de prestación similar. En este caso es un seguro de fracturas como consecuencia inmediata de un accidente.
•	Responsabilidad Civil del Ciclista: cobertura por daños a terceros como consecuencia del uso de bicicletas. Ámbito de la cobertura: República Argentina. Sin franquicias.

Asegurar:
•	BICICLETAS ALTA-MEDIA GAMA 
•	BICICLETAS ELECTRICAS
•	MONOPATINES ELECTRICOS
•	MOTOS ELECTRICAS QUE NO PUEDEN PATENTARSE



''',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87, // Color del texto
                  height: 1.5, // Espaciado entre líneas
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
