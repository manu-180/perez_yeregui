import 'package:flutter/material.dart';

class SeguroPyme extends StatelessWidget {
  const SeguroPyme({super.key});

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
            'assets/images/PyME.png', // Ruta de la imagen en assets
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
                "Seguros Empresas",
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
                  '''Integral de Comercio
Seguro para proteger los bienes de tu oficina, negocio o industria. Este seguro se adapta al tamaño de tu empresa y al sector y tipo de actividad, ya sea minorista, mayorista o de servicios.

•	Daños totales y parciales al local por incendio, explosión o derrumbe
•	Daños de la naturaleza: por rayo, vientos huracanados, granizo, terremoto.
•	Gastos por limpieza de contenidos y remoción de escombros; sueldos y jornales, alquileres, gastos fijos.
•	Daños a los carteles y marquesinas
•	Daños a las instalaciones y/o bienes de uso por incendio, explosión, derrumbe, rayo
•	Daños a la mercadería por incendio, robo, pérdida de frío.
•	Daños a cristales
•	Daños a la tecnología del comercio por incendio, rayo, explosión, robo, daños eléctricos, accidentes.

Integral de Consorcios
Seguro destinado a cubrir las partes comunes del edificio y es adaptable a las necesidades de cada uno.

•	Incendio Edificio
•	Incendio Contenido (con posibilidad de extensión a unidades funcionales)
•	Daños por agua e Inundación (con posibilidad de extensión a unidades funcionales)
•	Daños y Roturas de Cristales (incluidas las inscripciones que contengan)
•	Responsabilidad Civil Comprensiva
•	Responsabilidad Civil Rotura de Cañerías
•	Responsabilidad Civil Linderos
•	Responsabilidad Civil Ascensores y/ montacargas
•	Responsabilidad Civil Guarda de Vehículos
•	Robo y/o Hurto del Mobiliario del consorcio así como matafuegos, luces de emergencia y cámaras de seguridad, entre otros.
•	Daños por eventos de la naturaleza (Huracán, Vendaval, Ciclón y Tornado, Granizo y Terremoto)
•	Daños por tensión al contenido y al edificio


Seguro de Transporte de Mercaderias
Asegura tu carga de aquellas pérdidas que puedan sufrir durante el transporte terrestre, marítimo, y/o aéreo. Cobertura para viajes locales, importaciones o exportaciones. 			

Transporte Terrestre:
Pólizas por viaje o por periodo donde se cubren las pérdidas y averías de las mercancías transportadas a causa de choque, vuelco, desbarrancamiento o descarrilamiento del vehículo transportador, derrumbe, caída de árboles o postes, incendio, explosión, rayo, huracán, ciclón, tornado, inundación, aluvión y alud.

•	Robo.
•	Robo en carga y descarga.
•	Hurto, desaparición y falta de entrega.
•	Daños en operaciones de carga y descarga.
•	Paralización de máquina frigorífica.
•	Todo riesgo.
•	Eximición responsabilidad transportista.
•	Huelga y Vandalismo.
•	Transporte Maritimo
•	Pérdidas y/o daños de las mercaderías aseguradas, como consecuencia de choque, incendio o explosión, naufragio y/o varamiento del buque ( L.A.P).
•	Falta de entrega de bulto entero.
•	Todo riesgo.
•	Transporte Aéreo
•	Pérdidas y/o daños de las mercaderías aseguradas, como consecuencia de caída, colisión, falla del tren de aterrizaje, aterrizaje forzoso en un lugar no habilitado para ello del avión transportador, incendio, explosión o rayo.
•	Falta de entrega de bulto entero.
•	Todo riesgo.

Seguro de Caución
El seguro de Caución es una de las herramientas más eficaces para todas aquellas personas físicas o jurídicas que desarrollan actividades comerciales o profesionales y que por determinadas exigencias legales, reglamentarias o contractuales, necesitan garantizar el cumplimiento de sus obligaciones contraídas frente a terceros.

Tipos de Seguro de Caución: 

* OBRA PÚBLICA-PRIVADA * SERVICIO/SUMINISTROS PÚBLICO-PRIVADO * GARANTÍAS ADUANERAS
* ADMINISTRADORES DE SOCIEDADES * GARANTIA DE ALQUILERES






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
            'assets/images/PyME.png', // Ruta de la imagen en assets
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
                "Seguros Empresas",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5C5664), // Color del título
                ),
              ),
              SizedBox(height: 20), // Espacio entre el título y el texto
              // Texto descriptivo
              Text(
                '''Integral de Comercio
Seguro para proteger los bienes de tu oficina, negocio o industria. Este seguro se adapta al tamaño de tu empresa y al sector y tipo de actividad, ya sea minorista, mayorista o de servicios.

•	Daños totales y parciales al local por incendio, explosión o derrumbe
•	Daños de la naturaleza: por rayo, vientos huracanados, granizo, terremoto.
•	Gastos por limpieza de contenidos y remoción de escombros; sueldos y jornales, alquileres, gastos fijos.
•	Daños a los carteles y marquesinas
•	Daños a las instalaciones y/o bienes de uso por incendio, explosión, derrumbe, rayo
•	Daños a la mercadería por incendio, robo, pérdida de frío.
•	Daños a cristales
•	Daños a la tecnología del comercio por incendio, rayo, explosión, robo, daños eléctricos, accidentes.

Integral de Consorcios
Seguro destinado a cubrir las partes comunes del edificio y es adaptable a las necesidades de cada uno.

•	Incendio Edificio
•	Incendio Contenido (con posibilidad de extensión a unidades funcionales)
•	Daños por agua e Inundación (con posibilidad de extensión a unidades funcionales)
•	Daños y Roturas de Cristales (incluidas las inscripciones que contengan)
•	Responsabilidad Civil Comprensiva
•	Responsabilidad Civil Rotura de Cañerías
•	Responsabilidad Civil Linderos
•	Responsabilidad Civil Ascensores y/ montacargas
•	Responsabilidad Civil Guarda de Vehículos
•	Robo y/o Hurto del Mobiliario del consorcio así como matafuegos, luces de emergencia y cámaras de seguridad, entre otros.
•	Daños por eventos de la naturaleza (Huracán, Vendaval, Ciclón y Tornado, Granizo y Terremoto)
•	Daños por tensión al contenido y al edificio


Seguro de Transporte de Mercaderias
Asegura tu carga de aquellas pérdidas que puedan sufrir durante el transporte terrestre, marítimo, y/o aéreo. Cobertura para viajes locales, importaciones o exportaciones. 			

Transporte Terrestre:
Pólizas por viaje o por periodo donde se cubren las pérdidas y averías de las mercancías transportadas a causa de choque, vuelco, desbarrancamiento o descarrilamiento del vehículo transportador, derrumbe, caída de árboles o postes, incendio, explosión, rayo, huracán, ciclón, tornado, inundación, aluvión y alud.

•	Robo.
•	Robo en carga y descarga.
•	Hurto, desaparición y falta de entrega.
•	Daños en operaciones de carga y descarga.
•	Paralización de máquina frigorífica.
•	Todo riesgo.
•	Eximición responsabilidad transportista.
•	Huelga y Vandalismo.
•	Transporte Maritimo
•	Pérdidas y/o daños de las mercaderías aseguradas, como consecuencia de choque, incendio o explosión, naufragio y/o varamiento del buque ( L.A.P).
•	Falta de entrega de bulto entero.
•	Todo riesgo.
•	Transporte Aéreo
•	Pérdidas y/o daños de las mercaderías aseguradas, como consecuencia de caída, colisión, falla del tren de aterrizaje, aterrizaje forzoso en un lugar no habilitado para ello del avión transportador, incendio, explosión o rayo.
•	Falta de entrega de bulto entero.
•	Todo riesgo.

Seguro de Caución
El seguro de Caución es una de las herramientas más eficaces para todas aquellas personas físicas o jurídicas que desarrollan actividades comerciales o profesionales y que por determinadas exigencias legales, reglamentarias o contractuales, necesitan garantizar el cumplimiento de sus obligaciones contraídas frente a terceros.

Tipos de Seguro de Caución: 

* OBRA PÚBLICA-PRIVADA * SERVICIO/SUMINISTROS PÚBLICO-PRIVADO * GARANTÍAS ADUANERAS
* ADMINISTRADORES DE SOCIEDADES * GARANTIA DE ALQUILERES

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
