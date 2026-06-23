import 'package:meditrack_design_system/design_system.dart';

import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

void main() {
  runApp(const MediTrackWidgetbook());
}

class MediTrackWidgetbook extends StatelessWidget {
  const MediTrackWidgetbook({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      directories: [
        WidgetbookCategory(
          name: 'Design System (MediTrack)',
          children: [
            WidgetbookFolder(
              name: 'Fundamentos',
              children: [
                WidgetbookComponent(
                  name: 'Colores Corporativos',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Paleta Principal',
                      builder: (context) => _buildColorPalette(),
                    ),
                  ],
                ),
                WidgetbookComponent(
                  name: 'Tipografía',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Estilos de Texto',
                      builder: (context) => _buildTypography(),
                    ),
                  ],
                ),
              ],
            ),
            WidgetbookFolder(
              name: 'Componentes',
              children: [
                WidgetbookComponent(
                  name: 'Botones',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Botón Primario',
                      builder: (context) => Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF11CAA0), // Tu Teal
                            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Guardar Medicamento', 
                            style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ],
    );
  }


  Widget _buildColorPalette() {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Brand Colors', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 24),
            _colorBox('Primary (Azul Corporativo)', const Color(0xFF005088)),
            _colorBox('Success / Accent (Teal)', const Color(0xFF11CAA0)),
            _colorBox('Background (Off-White)', const Color(0xFFF1F5F9)),
          ],
        ),
      ),
    );
  }

  Widget _colorBox(String name, Color color) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Container(
            width: 80, height: 80, 
            decoration: BoxDecoration(
              color: color, 
              borderRadius: BorderRadius.circular(16),
              boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.1), blurRadius: 10)],
            ),
          ),
          const SizedBox(width: 24),
          Text(name, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }

  Widget _buildTypography() {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Title Large', style: AppTypography.titleLarge.copyWith(color: const Color(0xFF005088))),
            const SizedBox(height: 24),
            Text('Title Medium', style: AppTypography.titleMedium),
            const SizedBox(height: 24),
            Text('Body Text Regular', style: AppTypography.body),
          ],
        ),
      ),
    );
  }
}