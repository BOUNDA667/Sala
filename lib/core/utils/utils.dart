import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sala/core/controllers/my_controller.dart';

class Utils {
  static T getController<T extends MyController>(T Function() creator) {
    if (Get.isRegistered<T>()) {
      // Si l'instance est déjà enregistrée, on la récupère
      return Get.find<T>();
    } else {
      // Sinon, on crée une nouvelle instance avec le constructeur personnalisé
      return Get.put<T>(creator());
    }
  }

  // From String to TimeOfDay
  static TimeOfDay? timeOfDayFromJson(String? time) {
    if (time == null) return null;
    final parts = time.split(':');
    return TimeOfDay(
      hour: int.parse(parts[0]),
      minute: int.parse(parts[1]),
    );
  }

// From TimeOfDay to String
  static String? timeOfDayToJson(TimeOfDay? time) {
    if (time == null) return null;
    return '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
  }
}
