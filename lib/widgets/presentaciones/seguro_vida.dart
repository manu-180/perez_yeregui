import 'package:flutter/material.dart';

class SeguroVida extends StatelessWidget {
  const SeguroVida({super.key});

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
            'assets/images/vida.png', // Ruta de la imagen en assets
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
                "Seguro de Vida",
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
                  '''Brinda una protección para sus seres queridos ante una pérdida repentina del sustento familiar, como así también mitigar los efectos producidos ante una invalidez y/u otras enfermedades.

•	Individual y Colectivo 

Brinda una protección para sus seres queridos ante una pérdida repentina del sustento familiar, como así también mitigar los efectos producidos ante una invalidez y/u otras enfermedades.

•	Salud

Cobertura indemnizatoria / ayuda económica que puede emplearse para solventar el tratamiento de una enfermedad grave, lesión o intervención quirúrgica que se pudiera presentar.
Protección completa y adaptable a la necesidad de cada persona. Se puede elegir libremente una, varias o todas las coberturas gracias a la flexibilidad de este producto.

•	Diagnóstico por enfermedades.
•	Intervenciones Quirurgicas.
•	Trasplantes.
•	Renta diaria por Internación.
•	Renta mensual por Cuidados prolongados.

Además cuenta con el servicio prestacional para Urgencias y Emergencias médicas:

•	Atención medica telefónica las 24 hs.
•	Servicio de traslados.
•	Segunda opinión médica.
•	Asistencia a la tercera edad.
•	Asistencia por urgencias odontológicas.
•	Asistencia en viajes.
•	Descuento en farmacias de medicamentos recetados.
•	Seguro de Viajero – Asistencia en viaje
•	Seguro de Sepelio

Prestacional o por reintegro, ante el fallecimiento de un ser querido, los familiares reciben contención y acompañamiento para definir los detalles necesarios para el sepelio  respetando siempre a las personas, su dolor y su privacidad, con respeto y calidez humana.




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
            'assets/images/vida.png', // Ruta de la imagen en assets
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
                "Seguro de Vida",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5C5664), // Color del título
                ),
              ),
              SizedBox(height: 20), // Espacio entre el título y el texto
              // Texto descriptivo
              Text(
                '''Brinda una protección para sus seres queridos ante una pérdida repentina del sustento familiar, como así también mitigar los efectos producidos ante una invalidez y/u otras enfermedades.

•	Individual y Colectivo 

Brinda una protección para sus seres queridos ante una pérdida repentina del sustento familiar, como así también mitigar los efectos producidos ante una invalidez y/u otras enfermedades.

•	Salud

Cobertura indemnizatoria / ayuda económica que puede emplearse para solventar el tratamiento de una enfermedad grave, lesión o intervención quirúrgica que se pudiera presentar.
Protección completa y adaptable a la necesidad de cada persona. Se puede elegir libremente una, varias o todas las coberturas gracias a la flexibilidad de este producto.

•	Diagnóstico por enfermedades.
•	Intervenciones Quirurgicas.
•	Trasplantes.
•	Renta diaria por Internación.
•	Renta mensual por Cuidados prolongados.

Además cuenta con el servicio prestacional para Urgencias y Emergencias médicas:

•	Atención medica telefónica las 24 hs.
•	Servicio de traslados.
•	Segunda opinión médica.
•	Asistencia a la tercera edad.
•	Asistencia por urgencias odontológicas.
•	Asistencia en viajes.
•	Descuento en farmacias de medicamentos recetados.
•	Seguro de Viajero – Asistencia en viaje
•	Seguro de Sepelio

Prestacional o por reintegro, ante el fallecimiento de un ser querido, los familiares reciben contención y acompañamiento para definir los detalles necesarios para el sepelio  respetando siempre a las personas, su dolor y su privacidad, con respeto y calidez humana.




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
