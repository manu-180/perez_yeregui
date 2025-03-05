import 'package:flutter/material.dart';

class SeguroOtros extends StatelessWidget {
  const SeguroOtros({super.key});

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
            'assets/images/quienessomos.png', // Ruta de la imagen en assets
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
                "Seguros Técnicos",
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
                  '''Protegé tus equipos electrónicos, maquinarias, equipos médicos o trabajos de construcción y montaje.

Todo Riesgo Construcción y Montaje
Ampara los riesgos producto de la construcción propiamente dicha, entre los que se cuenta el incendio, rayo, explosión, caída de aviones, robo, etc. 
Durante el montaje se cubre: errores, impericia, descuido y actos malintencionados, caída de partes del objeto que se monta, robo, incendio, rayo, explosión, hundimiento de tierra o desprendimiento de tierra o de rocas, etc. Se pueden cubrir todo tipo de obras de construcción tales como edificios, hoteles, escuelas, hospitales, fábricas, plantas industriales, carreteras, entre otras, y de montajes como por ejemplo montajes de maquinarias, acueductos, calderas, compresores, ascensores, motores, grúas, etc., estos pueden ser montajes individuales y desmontajes.

Equipo de Contratistas / Agrícolas

Se cubre la maquinaria y equipos a partir del momento en que se encuentre efectuando su función específica incluyendo su eventual traslado desde o hacia el lugar de trabajo, depósito u obrador en el ámbito de la República Argentina, como consecuencia de

•	Incendio
•	Accidente
•	Robo
•	Hurto

Avería de Maquinarias

Se amparar todo tipo de maquinarias, específicamente aquellas en las cuales un daño y/o averías puede provocar perjuicios graves de índole financiera y/o económicas, fundamentalmente maquinarias e instalaciones fijas destinadas a la producción en serie, tales como: generadores de energía (calderas, turbinas, etc.), máquinas e instalaciones distribuidoras de energía eléctrica (transformadores, etc), máquinas de producción y equipos auxiliares (bombas, compresores, etc.).






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
            'assets/images/quienessomos.png', // Ruta de la imagen en assets
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
                "Seguros Técnicos",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5C5664), // Color del título
                ),
              ),
              SizedBox(height: 20), // Espacio entre el título y el texto
              // Texto descriptivo
              Text(
                '''Protegé tus equipos electrónicos, maquinarias, equipos médicos o trabajos de construcción y montaje.

Todo Riesgo Construcción y Montaje
Ampara los riesgos producto de la construcción propiamente dicha, entre los que se cuenta el incendio, rayo, explosión, caída de aviones, robo, etc. 
Durante el montaje se cubre: errores, impericia, descuido y actos malintencionados, caída de partes del objeto que se monta, robo, incendio, rayo, explosión, hundimiento de tierra o desprendimiento de tierra o de rocas, etc. Se pueden cubrir todo tipo de obras de construcción tales como edificios, hoteles, escuelas, hospitales, fábricas, plantas industriales, carreteras, entre otras, y de montajes como por ejemplo montajes de maquinarias, acueductos, calderas, compresores, ascensores, motores, grúas, etc., estos pueden ser montajes individuales y desmontajes.

Equipo de Contratistas / Agrícolas

Se cubre la maquinaria y equipos a partir del momento en que se encuentre efectuando su función específica incluyendo su eventual traslado desde o hacia el lugar de trabajo, depósito u obrador en el ámbito de la República Argentina, como consecuencia de

•	Incendio
•	Accidente
•	Robo
•	Hurto

Avería de Maquinarias

Se amparar todo tipo de maquinarias, específicamente aquellas en las cuales un daño y/o averías puede provocar perjuicios graves de índole financiera y/o económicas, fundamentalmente maquinarias e instalaciones fijas destinadas a la producción en serie, tales como: generadores de energía (calderas, turbinas, etc.), máquinas e instalaciones distribuidoras de energía eléctrica (transformadores, etc), máquinas de producción y equipos auxiliares (bombas, compresores, etc.).





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
