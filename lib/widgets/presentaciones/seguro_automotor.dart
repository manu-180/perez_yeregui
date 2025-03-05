import 'package:flutter/material.dart';

class SeguroAutomotor extends StatelessWidget {
  const SeguroAutomotor({super.key});

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
            'assets/images/auto.png', // Ruta de la imagen en assets
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
                "Seguro Automotor",
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
                  '''Asegura tu auto con el respaldo de la compañía #1 y con nuestro asesoramiento Seguros Perez Yeregui & Asociados. Vas a recibir mejor asesoramiento y acompañamiento y en caso de siniestro, nos vamos a ocupar de todos los trámites. 

Solicitar cotización por WhatsApp al +54 911 6927-0009 o por mail a seguros@perezyeregui.com.ar

•	Cobertura Todo Riesgo con franquicia fija y % variable sobre suma asegurada
•	Responsabilidad Civil
•	Perdida total y parcial por Robo
•	Perdida total y parcial por Incendio
•	Destrucción total.
•	Daños parciales.
•	Rotura de Cristales, Cerraduras y Antena.
•	Granizo
•	Asistencia Penal
•	Bonificación por Buen Resultado
•	Servicio de Gestoría
•	Descuentos por Alarma y sistemas de rastreo
•	Reposición de O Km por robo total (según condiciones contractuales).
•	Robo Parcial, Indemnización de cubiertas sin desgaste, crique y llave de ruedas
•	Auto sustituto (por diez días ante robo total)
•	Asistencia Mecánica / Grúa
•	Cobertura Tercero Completo – C Full
•	Responsabilidad Civil.
•	Perdida total y parcial por Robo.
•	Perdida total y parcial por Incendio
•	Destrucción total por Accidente.
•	Rotura de Cristales, Cerraduras y Antena
•	Granizo
•	Asistencia Penal.
•	Bonificación por Buen Resultado.
•	Servicio de Gestoría.
•	Descuentos por alarma y sistemas de rastreo
•	Asistencia Mecánica Grúa*
•	Los autos clásicos también tienen su cobertura

Con el Seguro para Autos Clásicos podrás proteger esa joya mecánica que tanto cuidado merece. Ideal para coleccionistas, restauradores de autos históricos/antiguos o fanáticos de los Hot Rod
Opción ideada para proteger a rodados con más de 30 años de antigüedad y que conserven el 80% de sus partes originales en buen estado y funcionamiento.
Los alcances de la cobertura incluyen al uso específico o participación en eventos particulares, exposiciones o carreras de regularidad (no de velocidad). 
Seguro para Autos Clásicos incluye:

•	Robo total
•	Incendio total
•	Destrucción Total
•	Responsabilidad Civil hacia terceros transportados y no transportados y coberturas de casco -según normas de suscripción-.
•	Servicio de grúa

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
            'assets/images/auto.png', // Ruta de la imagen en assets
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
                "Seguro Automotor",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5C5664), // Color del título
                ),
              ),
              SizedBox(height: 20), // Espacio entre el título y el texto
              // Texto descriptivo
              Text(
                '''Asegura tu auto con el respaldo de la compañía #1 y con nuestro asesoramiento Seguros Perez Yeregui & Asociados. Vas a recibir mejor asesoramiento y acompañamiento y en caso de siniestro, nos vamos a ocupar de todos los trámites. 

Solicitar cotización por WhatsApp al +54 911 6927-0009 o por mail a seguros@perezyeregui.com.ar

•	Cobertura Todo Riesgo con franquicia fija y % variable sobre suma asegurada
•	Responsabilidad Civil
•	Perdida total y parcial por Robo
•	Perdida total y parcial por Incendio
•	Destrucción total.
•	Daños parciales.
•	Rotura de Cristales, Cerraduras y Antena.
•	Granizo
•	Asistencia Penal
•	Bonificación por Buen Resultado
•	Servicio de Gestoría
•	Descuentos por Alarma y sistemas de rastreo
•	Reposición de O Km por robo total (según condiciones contractuales).
•	Robo Parcial, Indemnización de cubiertas sin desgaste, crique y llave de ruedas
•	Auto sustituto (por diez días ante robo total)
•	Asistencia Mecánica / Grúa
•	Cobertura Tercero Completo – C Full
•	Responsabilidad Civil.
•	Perdida total y parcial por Robo.
•	Perdida total y parcial por Incendio
•	Destrucción total por Accidente.
•	Rotura de Cristales, Cerraduras y Antena
•	Granizo
•	Asistencia Penal.
•	Bonificación por Buen Resultado.
•	Servicio de Gestoría.
•	Descuentos por alarma y sistemas de rastreo
•	Asistencia Mecánica Grúa*
•	Los autos clásicos también tienen su cobertura

Con el Seguro para Autos Clásicos podrás proteger esa joya mecánica que tanto cuidado merece. Ideal para coleccionistas, restauradores de autos históricos/antiguos o fanáticos de los Hot Rod
Opción ideada para proteger a rodados con más de 30 años de antigüedad y que conserven el 80% de sus partes originales en buen estado y funcionamiento.
Los alcances de la cobertura incluyen al uso específico o participación en eventos particulares, exposiciones o carreras de regularidad (no de velocidad). 
Seguro para Autos Clásicos incluye:

•	Robo total
•	Incendio total
•	Destrucción Total
•	Responsabilidad Civil hacia terceros transportados y no transportados y coberturas de casco -según normas de suscripción-.
•	Servicio de grúa

''',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF5C5664), // Color del texto
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
