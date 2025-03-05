import 'package:flutter/material.dart';

class SeguroResponsabilidadCivil extends StatelessWidget {
  const SeguroResponsabilidadCivil({super.key});

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
            'assets/images/civil.png', // Ruta de la imagen en assets
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
                "Responsabilidad Civil Profesional",
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
                  '''¿A qué se le llama Seguro de Responsabilidad Civil Profesional?

Es muy importante conocer los alcances y responsabilidades que implica la actividad profesional. Y qué tipo de seguro la ampara.
Cuando hablamos de responsabilidad civil, nos referimos a la obligación que una persona tiene de reparar un daño causado a otra, a través del pago de un resarcimiento o indemnización.

A través de este tipo de cobertura, pueden hacer frente a los daños materiales o personales que hayan causado a sus clientes, mediante el ejercicio de su profesión. Ya sea de forma involuntaria o por acción u omisión.

Este producto permite que los profesionales puedan asegurar su patrimonio frente a reclamos de terceros que deriven del desempeño de su actividad profesional.  La amplia gama de coberturas incluye a:

•	Contadores
•	Abogados
•	Profesionales de la Salud (Médicos, Odontólogos, Bioquímicos, Farmacéuticos, Psicólogos, Kinesiólogos, Técnicos y Auxiliares de Medicina, entre otros)
•	Productores de Seguros
•	Administradores de Consorcios
•	Arquitectos
•	Ingenieros
•	Locadores de Inmuebles
•	Sujetos del GNC
La asistencia, entre otros beneficios, incluye Asesoramiento, Asistencia Legal y Defensa en Juicio.





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
            'assets/images/civil.png', // Ruta de la imagen en assets
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
                "Responsabilidad Civil Profesional",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5C5664), // Color del título
                ),
              ),
              SizedBox(height: 20), // Espacio entre el título y el texto
              // Texto descriptivo
              Text(
                '''¿A qué se le llama Seguro de Responsabilidad Civil Profesional?

Es muy importante conocer los alcances y responsabilidades que implica la actividad profesional. Y qué tipo de seguro la ampara.
Cuando hablamos de responsabilidad civil, nos referimos a la obligación que una persona tiene de reparar un daño causado a otra, a través del pago de un resarcimiento o indemnización.

A través de este tipo de cobertura, pueden hacer frente a los daños materiales o personales que hayan causado a sus clientes, mediante el ejercicio de su profesión. Ya sea de forma involuntaria o por acción u omisión.

Este producto permite que los profesionales puedan asegurar su patrimonio frente a reclamos de terceros que deriven del desempeño de su actividad profesional.  La amplia gama de coberturas incluye a:

•	Contadores
•	Abogados
•	Profesionales de la Salud (Médicos, Odontólogos, Bioquímicos, Farmacéuticos, Psicólogos, Kinesiólogos, Técnicos y Auxiliares de Medicina, entre otros)
•	Productores de Seguros
•	Administradores de Consorcios
•	Arquitectos
•	Ingenieros
•	Locadores de Inmuebles
•	Sujetos del GNC
La asistencia, entre otros beneficios, incluye Asesoramiento, Asistencia Legal y Defensa en Juicio.



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
