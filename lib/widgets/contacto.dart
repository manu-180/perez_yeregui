import 'package:flutter/material.dart';

class Contacto extends StatelessWidget {
  const Contacto({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth < 800; // Verifica si es móvil

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: isMobile ? _buildMobileLayout() : _buildDesktopLayout(),
    );
  }

  /// **Diseño para pantallas grandes (Escritorio y Tablet)**
  Widget _buildDesktopLayout() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Sección Izquierda (Imagen y Email)
        Expanded(flex: 2, child: _buildImageAndEmail()),
        SizedBox(width: 40),
        // Sección Derecha (Formulario)
        Expanded(flex: 3, child: _buildContactForm()),
      ],
    );
  }

  /// **Diseño para pantallas pequeñas (Móvil)**
  Widget _buildMobileLayout() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildImageAndEmail(),
        SizedBox(height: 30),
        _buildContactForm(),
      ],
    );
  }

  /// **Imagen con Email debajo**
  Widget _buildImageAndEmail() {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            'assets/images/contacto.png',
            width: double.infinity,
            height: 250,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.email, color: Color(0xFF1B1D42), size: 24),
            SizedBox(width: 10),
            SelectableText(
              "seguros@perezyeregui.com.ar",
              style: TextStyle(fontSize: 18, color: Color(0xFF1B1D42)),
            ),
          ],
        ),
      ],
    );
  }

  /// **Formulario de Contacto**
  Widget _buildContactForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Contacto",
          style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1B1D42)),
        ),
        SizedBox(height: 10),
        Text(
          "Si desea contactarse con nosotros, por favor complete el siguiente formulario",
          style: TextStyle(fontSize: 16, color: Colors.black54),
        ),
        SizedBox(height: 20),
        _buildFormulario(),
      ],
    );
  }

  /// **Formulario con Campos**
  Widget _buildFormulario() {
    return Column(
      children: [
        _buildTextField("Tu nombre"),
        SizedBox(height: 15),
        _buildTextField("Tu celular"),
        SizedBox(height: 15),
        _buildTextField("Tu correo electrónico"),
        SizedBox(height: 15),
        _buildTextField("Asunto"),
        SizedBox(height: 15),
        _buildTextField("Tu mensaje (opcional)", isLarge: true),
        SizedBox(height: 20),
        _buildSubmitButton(),
      ],
    );
  }

  /// **Campos de Entrada**
  Widget _buildTextField(String labelText, {bool isLarge = false}) {
    return TextFormField(
      maxLines: isLarge ? 5 : 1,
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }

  /// **Botón de Enviar**
  Widget _buildSubmitButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF1B1D42),
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        child: Text(
          "ENVIAR",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
