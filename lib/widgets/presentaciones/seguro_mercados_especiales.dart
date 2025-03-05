import 'package:flutter/material.dart';

class SeguroMercadosEspeciales extends StatelessWidget {
  const SeguroMercadosEspeciales({super.key});

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
            'assets/images/mercados-especiales.png', // Ruta de la imagen en assets
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
                "Seguros de Mercado Específico",
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
                  '''Seguros para Colegios
                  
•	Seguro de Continuidad o Beca Escolar
Asegura la continuidad del alumno ante el fallecimiento o incapacidad permanente del padre responsable del pago del arancel mensual y matricula. Cubre la escolaridad completa de los hijos hasta la finalización de sus estudios secundarios
•	Seguros de Responsabilidad Civil para Directores y Representales Legales
Ampara a directores y representales legales ante eventual reclamo de terceros respecto a su responsabilidad por acción u omisión en el desempeño de sus tareas
•	Accidentes Personales Escolares						
Los establecimientos educativos tienen un producto especial para proteger a los alumnos que concurren regularmente a clase.
Esta póliza brinda respaldo a la institución ante los accidentes que puedan sufrir los alumnos nominados dentro del establecimiento y sus dependencias, como también fuera del edificio. Ya sea en una salida pedagógica o recreativa y siempre que sean organizadas por la institución bajo supervisión de su personal docente.  De forma adicional se brinda cobertura para el trayecto in itinere.
La cobertura contempla:
•	Muerte accidental.
•	Invalidez total y/o parcial permanente.
•	Reintegro de gastos médicos en caso de accidente

Seguro para Embarcaciones de Placer

La cobertura para embarcaciones puede incluir:

•	 Daños totales y parciales por naufragio, varamiento, incendio, rayo y/o explosión y choque con otras embarcaciones, buques y/o aeromóvil, boyas, muelles, en gral. cualquier objeto fijo o flotante.
•	Robo total de la embarcación (casco/motor).
•	Robo parcial de los elementos fijos al casco declarados en póliza.
•	Robo del motor fuera de borda abulonado al casco.
•	Robo del bote auxiliar fuera de borda encadenado y/o guardado bajo llave en el interior de la embarcación principal y declarado en póliza.
•	Daños por temporal.
•	Responsabilidad Civil a Personas Transportadas o No, a Cosas de terceros no transportadas y por Incendio, hasta el valor de la embarcación.
•	Salvamento, gastos de salvamento, sue y labour.
•	Rotura de palo a consecuencia de un riesgo cubierto.
•	Incendio en guardería
•	Huelga, vandalismo y hechos maliciosos
•	Transporte en tráiler en la República Argentina y/o R.O. del Uruguay y/o Brasil hasta Florianópolis
Seguro para jet ski
Seguro de Mascotas
Contempla el robo, gastos veterinarios en caso de accidente, sacrificio, ubicación de restos, gastos de búsqueda en caso de extravío, gastos de guardería cuando el propietario no puede atenderla y responsabilidad civil en caso de que agreda a un tercero. 
Seguro Food Trucks
	Apunta a los camiones que realizan venta de comestibles, una modalidad que está en boga actualmente. Se unificaron varias coberturas para englobar en una misma póliza todas las necesidades de esta actividad: un seguro automotor, acorde a los topes que pide la Superintendencia de Seguros, y una póliza normal de comercio, que protege el contenido, robo y responsabilidad civil por las tareas que se realizan dentro del vehículo.
	Seguro de Riesgos Agropecuarios


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
            'assets/images/mercados-especiales.png', // Ruta de la imagen en assets
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
                "Seguros de Mercado Específico",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5C5664), // Color del título
                ),
              ),
              SizedBox(height: 20), // Espacio entre el título y el texto
              // Texto descriptivo
              Text(
                '''Seguros para Colegios
                  
•	Seguro de Continuidad o Beca Escolar
Asegura la continuidad del alumno ante el fallecimiento o incapacidad permanente del padre responsable del pago del arancel mensual y matricula. Cubre la escolaridad completa de los hijos hasta la finalización de sus estudios secundarios
•	Seguros de Responsabilidad Civil para Directores y Representales Legales
Ampara a directores y representales legales ante eventual reclamo de terceros respecto a su responsabilidad por acción u omisión en el desempeño de sus tareas
•	Accidentes Personales Escolares						
Los establecimientos educativos tienen un producto especial para proteger a los alumnos que concurren regularmente a clase.
Esta póliza brinda respaldo a la institución ante los accidentes que puedan sufrir los alumnos nominados dentro del establecimiento y sus dependencias, como también fuera del edificio. Ya sea en una salida pedagógica o recreativa y siempre que sean organizadas por la institución bajo supervisión de su personal docente.  De forma adicional se brinda cobertura para el trayecto in itinere.
La cobertura contempla:
•	Muerte accidental.
•	Invalidez total y/o parcial permanente.
•	Reintegro de gastos médicos en caso de accidente

Seguro para Embarcaciones de Placer

La cobertura para embarcaciones puede incluir:

•	 Daños totales y parciales por naufragio, varamiento, incendio, rayo y/o explosión y choque con otras embarcaciones, buques y/o aeromóvil, boyas, muelles, en gral. cualquier objeto fijo o flotante.
•	Robo total de la embarcación (casco/motor).
•	Robo parcial de los elementos fijos al casco declarados en póliza.
•	Robo del motor fuera de borda abulonado al casco.
•	Robo del bote auxiliar fuera de borda encadenado y/o guardado bajo llave en el interior de la embarcación principal y declarado en póliza.
•	Daños por temporal.
•	Responsabilidad Civil a Personas Transportadas o No, a Cosas de terceros no transportadas y por Incendio, hasta el valor de la embarcación.
•	Salvamento, gastos de salvamento, sue y labour.
•	Rotura de palo a consecuencia de un riesgo cubierto.
•	Incendio en guardería
•	Huelga, vandalismo y hechos maliciosos
•	Transporte en tráiler en la República Argentina y/o R.O. del Uruguay y/o Brasil hasta Florianópolis
Seguro para jet ski
Seguro de Mascotas
Contempla el robo, gastos veterinarios en caso de accidente, sacrificio, ubicación de restos, gastos de búsqueda en caso de extravío, gastos de guardería cuando el propietario no puede atenderla y responsabilidad civil en caso de que agreda a un tercero. 
Seguro Food Trucks
	Apunta a los camiones que realizan venta de comestibles, una modalidad que está en boga actualmente. Se unificaron varias coberturas para englobar en una misma póliza todas las necesidades de esta actividad: un seguro automotor, acorde a los topes que pide la Superintendencia de Seguros, y una póliza normal de comercio, que protege el contenido, robo y responsabilidad civil por las tareas que se realizan dentro del vehículo.
	Seguro de Riesgos Agropecuarios


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
