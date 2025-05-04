import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:sala/core/controllers/task_controller.dart';
import 'package:sala/core/models/todo_model.dart';
import 'package:sala/views/calendar_page/components/welcome_text.dart';
import 'package:sala/widgets/custom_calendar.dart';
import 'package:sala/widgets/task_widget.dart';

class CalendarPage extends StatelessWidget {
  CalendarPage({super.key});

  final TaskController controller = Get.put(TaskController());

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return GetBuilder<TaskController>(
      init: controller,
      builder: (_) {
        return SafeArea(
          child: Stack(
            children: [
              // Le contenu principal de la page
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  WelcomeText(colorScheme: cs),
                  const SizedBox(height: 16),
                  CustomCalendar(
                    selectedDay: controller.selectedDay.value,
                    focusedDay: controller.selectedDay.value,
                    onDaySelected: controller.setSelectedDay,
                  ),
                  const SizedBox(height: 24),
                  _buildToDoList(context, cs),
                ],
              ),

              // Le FAB flottant
              Positioned(
                right: 20,
                bottom: 20,
                child: FloatingActionButton(
                  onPressed: () {
                    _openAddTaskBottomSheet(context, cs);
                  },
                  backgroundColor: cs.primary,
                  child: FaIcon(FontAwesomeIcons.plus, color: cs.onPrimary),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildToDoList(BuildContext context, ColorScheme cs) {
    return Obx(() {
      if (controller.items.isEmpty) {
        return Expanded(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Icône responsive et stylisée
                  FaIcon(
                    FontAwesomeIcons.clipboardList,
                    size: MediaQuery.of(context).size.width *
                        0.6, // Adaptation à la largeur de l'écran
                    color: cs.primary.withValues(alpha: 0.05),
                  ),
                  // Icône inclinée avec une légère ombre
                  Transform.rotate(
                    angle: -0.1,
                    child: FaIcon(
                      FontAwesomeIcons.clipboardList,
                      size: MediaQuery.of(context).size.width * 0.6,
                      color: cs.primary.withValues(alpha: 0.1),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Titre de l'état vide
                      Text(
                        "All clear here",
                        style:
                            Theme.of(context).textTheme.headlineSmall?.copyWith(
                                  color: cs.onSurface.withValues(alpha: 0.8),
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                      const SizedBox(height: 12),
                      // Message d'invite
                      Text(
                        "Your to‑do list is looking peaceful.\n"
                        "Take it easy—tap the + button whenever you’re ready\n"
                        "to add a new task.",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                  color: cs.onSurface.withValues(alpha: 0.6),
                                  height: 1.4,
                                ) ??
                            TextStyle(
                              fontSize: 18,
                              color: cs.onSurface.withValues(alpha: 0.6),
                              height: 1.4,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      }

      return Expanded(
        child: ListView.builder(
          itemCount: controller.items.length,
          itemBuilder: (context, i) {
            final item = controller.items[i];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
              child: item,
            );
          },
        ),
      );

      // return Expanded(
      //   child: ListView.builder(
      //     itemCount: controller.todos.length,
      //     itemBuilder: (context, i) {
      //       final todo = controller.todos[i];
      //       return Padding(
      //         padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      //         child: Text(
      //           todo.title,
      //           style: Theme.of(context).textTheme.bodyMedium,
      //         ),
      //       );
      //     },
      //   ),
      // );
    });
  }

  List<TaskItem> items = [
    TaskItem(
      iconBackground: Colors.purple.shade200,
      iconData: Icons.translate,
      title: 'Learn English',
      subtitle: 'Start at 1:20 PM',
      isCompleted: true,
    ),
  ];

  void _openAddTaskBottomSheet(BuildContext context, ColorScheme cs) {
    showModalBottomSheet(
      context: context,
      isScrollControlled:
          true, // Permet au BottomSheet d'occuper toute la hauteur de l'écran
      backgroundColor: Colors.transparent, // Pour avoir un fond transparent
      builder: (context) {
        return Container(
          decoration: BoxDecoration(
            color: cs.surface,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Titre principal du BottomSheet
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Create a new task",
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                color: cs.onSurface,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: FaIcon(
                        FontAwesomeIcons.xmark,
                        size: 16,
                        color: cs.onSurface.withValues(alpha: 0.7),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                // Bloc 1: Title and description
                _buildInputSection(
                  context,
                  cs,
                  title: "Title and description",
                  icon: FontAwesomeIcons.textWidth,
                  children: [
                    TextField(
                      decoration: InputDecoration(labelText: 'Task title'),
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      decoration:
                          InputDecoration(labelText: 'Task description'),
                      minLines: 3,
                      maxLines: 3,
                    ),
                  ],
                ),

                const SizedBox(height: 16),

                // Bloc 2: Date and time
                _buildInputSection(
                  context,
                  cs,
                  title: "Date",
                  icon: FontAwesomeIcons.calendar,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FaIcon(FontAwesomeIcons.xmark,
                            size: 16,
                            color: cs.onSurface.withValues(alpha: 0.7)),
                        Text(
                          "Jan 30, 2023",
                          style:
                              Theme.of(context).textTheme.labelLarge?.copyWith(
                                    color: cs.onSurface,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Obx(
                      () => SwitchListTile.adaptive(
                        contentPadding: EdgeInsets.zero,
                        value: controller.addTime.value,
                        title: Text(
                          "Add Time",
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: cs.onSurface,
                                  ),
                        ),
                        onChanged: (val) => controller.addTime.toggle(),
                      ),
                    ),
                    Obx(
                      () => SwitchListTile.adaptive(
                        contentPadding: EdgeInsets.zero,
                        value: controller.repeatAfterCompletion.value,
                        title: Text(
                          "Repeat After Completion",
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: cs.onSurface,
                                  ),
                        ),
                        onChanged: (val) =>
                            controller.repeatAfterCompletion.toggle(),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 16),

                // Bloc 3: Priority
                _buildInputSection(
                  context,
                  cs,
                  title: "Priority",
                  icon: FontAwesomeIcons.flag,
                  children: Priority.values.map((priorityValue) {
                    return Obx(() {
                      final isSelected =
                          controller.priority.value == priorityValue;
                      return InkWell(
                        onTap: () => controller.priority.value = priorityValue,
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 8),
                          decoration: BoxDecoration(
                            color: cs.surface.withValues(alpha: 0.98),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                priorityValue.label,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                      color: isSelected
                                          ? cs.primary
                                          : cs.onSurface.withValues(alpha: 0.8),
                                      fontWeight: isSelected
                                          ? FontWeight.bold
                                          : FontWeight.normal,
                                    ),
                              ),
                              if (isSelected)
                                FaIcon(
                                  FontAwesomeIcons.check,
                                  size: 16,
                                  color: cs.primary,
                                ),
                            ],
                          ),
                        ),
                      );
                    });
                  }).toList(),
                ),

                const SizedBox(height: 24),

                // Bouton de sauvegarde
                ElevatedButton(
                  onPressed: () {
                    // Ajoute la logique pour enregistrer la tâche ici
                  },
                  child: Text("Save Task"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

// Fonction pour créer un bloc stylisé avec titre et contenu
  Widget _buildInputSection(
    BuildContext context,
    ColorScheme cs, {
    required String title,
    required List<Widget> children,
    IconData? icon,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            if (icon != null)
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: FaIcon(icon,
                    size: 16, color: cs.onSurface.withValues(alpha: 0.6)),
              ),
            Text(
              title,
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: cs.onSurface.withValues(alpha: 0.6),
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
          decoration: BoxDecoration(
            color: cs.surface.withValues(alpha: 0.95),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children,
          ),
        ),
      ],
    );
  }
}
