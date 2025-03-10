import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(60);

  @override
  CustomAppBarState createState() => CustomAppBarState();
}

class CustomAppBarState extends State<CustomAppBar> {
  String _hoveredItem = "";
  bool _isMenuOpen = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    bool isDesktop = screenWidth > 1000;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFF5C5664),
            Color(0xFF5C5664),
          ],
        ),
      ),
      child: isDesktop
          ? AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        child: Text(
                          "PÉREZ YEREGUI & ASOCIADOS",
                          style: GoogleFonts.montserrat(
                            fontSize: screenWidth > 1000 ? 16 : 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 1.2,
                          ),
                        ),
                        onTap: () => context.go("/"),
                      ),
                      GestureDetector(
                        child: Text(
                          "SEGUROS - REASEGUROS",
                          style: GoogleFonts.montserrat(
                            fontSize: 12,
                            color: Colors.white70,
                            letterSpacing: 1.0,
                          ),
                        ),
                        onTap: () => context.go("/"),
                      ),
                    ],
                  ),
                  SizedBox(width: 30),
                  IconButton(
                    icon:
                        FaIcon(FontAwesomeIcons.facebook, color: Colors.white),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.twitter, color: Colors.white),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon:
                        FaIcon(FontAwesomeIcons.instagram, color: Colors.white),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon:
                        FaIcon(FontAwesomeIcons.linkedin, color: Colors.white),
                    onPressed: () {},
                  ),
                ],
              ),
              centerTitle: false,
              actions: isDesktop ? _buildNavBarItems() : [_buildMobileMenu()],
            )
          : AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    child: Text(
                      "PÉREZ YEREGUI & ASOCIADOS",
                      style: GoogleFonts.montserrat(
                        fontSize: screenWidth > 1000 ? 16 : 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1.2,
                      ),
                    ),
                    onTap: () => context.go("/"),
                  ),
                  GestureDetector(
                    child: Text(
                      "SEGUROS - REASEGUROS",
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        color: Colors.white70,
                        letterSpacing: 1.0,
                      ),
                    ),
                    onTap: () => context.go("/"),
                  ),
                ],
              ),
              centerTitle: false,
              actions: isDesktop ? _buildNavBarItems() : [_buildMobileMenu()],
            ),
    );
  }

  /// **Menú de escritorio**
  List<Widget> _buildNavBarItems() {
    List<String> items = ["Inicio", "Quienes Somos", "Servicios", "Contacto"];
    return items.map((item) {
      return InkWell(
        onTap: () => _navigateTo(item),
        onHover: (isHovered) {
          setState(() {
            _hoveredItem = isHovered ? item : "";
          });
        },
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                item,
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: _hoveredItem == item ? Colors.amber : Colors.white,
                ),
              ),
              SizedBox(height: 4),
              AnimatedContainer(
                duration: Duration(milliseconds: 200),
                height: 2,
                width: _hoveredItem == item ? item.length * 6.5 : 0,
                color: Colors.amber,
              ),
            ],
          ),
        ),
      );
    }).toList();
  }

  /// **Menú móvil con botón desplegable**
  Widget _buildMobileMenu() {
    return PopupMenuButton<String>(
      offset: Offset(0, 50), // Desplaza el menú 50px hacia abajo
      onOpened: () {
        setState(() => _isMenuOpen = true);
      },
      onCanceled: () {
        setState(() => _isMenuOpen = false);
      },
      onSelected: (item) => _navigateTo(item),
      icon: AnimatedRotation(
        duration: Duration(milliseconds: 300),
        turns: _isMenuOpen ? 0.5 : 0.0, // 0.5 = 180° de rotación
        child: Icon(Icons.keyboard_arrow_down, color: Colors.white, size: 28),
      ),
      color: Color(0xFF5C5664),
      itemBuilder: (context) => [
        _buildPopupMenuItem("Inicio"),
        _buildPopupMenuItem("Quienes Somos"),
        _buildPopupMenuItem("Servicios"),
        _buildPopupMenuItem("Contacto"),
      ],
    );
  }

  /// **Elemento de menú en el desplegable**
  PopupMenuItem<String> _buildPopupMenuItem(String item) {
    return PopupMenuItem(
      value: item,
      child: Text(
        item,
        style: GoogleFonts.montserrat(fontSize: 14, color: Colors.white),
      ),
    );
  }

  /// **Navegación según la opción seleccionada**
  void _navigateTo(String item) {
    switch (item) {
      case "Inicio":
        context.go("/");
        break;
      case "Quienes Somos":
        context.go("/quienes-somos");
        break;
      case "Servicios":
        context.go("/servicios");
        break;
      case "Contacto":
        context.go("/contacto");
        break;
    }
  }
}
