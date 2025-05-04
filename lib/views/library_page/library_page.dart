import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sala/core/controllers/library_controller.dart';
import 'package:sala/views/library_page/components/library_item.dart';

/// La page Library
class LibraryPage extends StatelessWidget {
  LibraryPage({super.key});

  final LibraryController controller = Get.put(LibraryController());

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return GetBuilder<LibraryController>(
      builder: (_) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Library',
                  style: TextStyle(
                    color: cs.onSurface,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: GridView.builder(
                    itemCount: controller.items(cs.primary).length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                      childAspectRatio: 1.3,
                    ),
                    itemBuilder: (context, i) {
                      final item = controller.items(cs.primary)[i];
                      return _LibraryCard(item: item, colorScheme: cs);
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

/// Widget pour chaque tuile
class _LibraryCard extends StatelessWidget {
  final LibraryItem item;
  final ColorScheme colorScheme;

  const _LibraryCard({
    required this.item,
    required this.colorScheme,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: colorScheme.surface,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: item.onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              item.icon,
              const SizedBox(height: 12),
              Text(
                item.title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: colorScheme.onSurface,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
