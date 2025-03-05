import 'package:flutter/material.dart';

class SeguroHogar extends StatelessWidget {
  const SeguroHogar({super.key});

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
            'assets/images/hogar.png', // Ruta de la imagen en assets
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
                "Seguro Combinado Familiar",
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
                  '''COBERTURAS PARA EL HOGAR 

•	Daños totales y parciales a la vivienda por incendio, explosión o derrumbe.
•	Daños de la naturaleza: por rayo, vientos huracanados, granizo, terremoto, caídas de árboles.
•	Gastos de limpieza y remoción de escombros; alojamiento y mudanza; guardamuebles.
•	Daños al contenido: por incendio, explosión, derrumbe, rayo, robo, hurto, daños eléctricos, daños por intento de robo.
•	Daños a la tecnología: por incendio, rayo, explosión, robo, hurto, daños eléctricos, accidente; inundación.
•	Daños a cristales, sanitarios, mesadas y granitos.
•	Pérdida de alimentos refrigerados.

 COBERTURAS FUERA DEL HOGAR 

•	Robo y todo riesgo para la tecnología que use fuera del hogar.
•	Reembolso de gastos para el remplazo de documentos por incendio o robo para todo el grupo familiar.
•	Robo e incendio para bienes trasladados a un domicilio temporario por vacaciones.
•	Bienes recientemente adquiridos: ¡asegurado ni bien salís de la tienda!

ADICIONALES

•	Daños por agua al edificio y al contenido producido por fallas en redes e instalaciones sanitarias de la vivienda.
•	Coberturas para el personal doméstico y para el personal eventual que pueda trabajar en el hogar.
•	Aficionados al golf: efectos personales, palos, responsabilidad civil.


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
            'assets/images/hogar.png', // Ruta de la imagen en assets
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
                "Seguro Combinado Familiar",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5C5664), // Color del título
                ),
              ),
              SizedBox(height: 20), // Espacio entre el título y el texto
              // Texto descriptivo
              Text(
                '''COBERTURAS PARA EL HOGAR 

•	Daños totales y parciales a la vivienda por incendio, explosión o derrumbe.
•	Daños de la naturaleza: por rayo, vientos huracanados, granizo, terremoto, caídas de árboles.
•	Gastos de limpieza y remoción de escombros; alojamiento y mudanza; guardamuebles.
•	Daños al contenido: por incendio, explosión, derrumbe, rayo, robo, hurto, daños eléctricos, daños por intento de robo.
•	Daños a la tecnología: por incendio, rayo, explosión, robo, hurto, daños eléctricos, accidente; inundación.
•	Daños a cristales, sanitarios, mesadas y granitos.
•	Pérdida de alimentos refrigerados.

 COBERTURAS FUERA DEL HOGAR 

•	Robo y todo riesgo para la tecnología que use fuera del hogar.
•	Reembolso de gastos para el remplazo de documentos por incendio o robo para todo el grupo familiar.
•	Robo e incendio para bienes trasladados a un domicilio temporario por vacaciones.
•	Bienes recientemente adquiridos: ¡asegurado ni bien salís de la tienda!

ADICIONALES

•	Daños por agua al edificio y al contenido producido por fallas en redes e instalaciones sanitarias de la vivienda.
•	Coberturas para el personal doméstico y para el personal eventual que pueda trabajar en el hogar.
•	Aficionados al golf: efectos personales, palos, responsabilidad civil.


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
