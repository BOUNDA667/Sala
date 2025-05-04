import 'package:get/get.dart';
import 'package:sala/core/controllers/auth_controller.dart';
import 'package:sala/core/services/local_storage.dart';
import 'package:sala/core/services/locator.dart';

abstract class MyController extends GetxController {
  // // final box = GetStorage();
  // // var files = <PlatformFile>[].obs;
  // bool selectMultipleFile = false;
  // // FileType type = FileType.any;
  // Rx<Uint8List?> imageData = Rx<Uint8List?>(null);
  // RxString imageName = ''.obs;
  // Rx<Uint8List?> contractData = Rx<Uint8List?>(null);
  // RxString contractFileName = ''.obs;
  //
  final RxBool isLoading = RxBool(false);
  // final double maxImageSize = 9.7;
  // final int maxImages = 4;
  //
  // // final DataGridController dataGridController = DataGridController();
  //
  final LocalStorage storage = locator<LocalStorage>();
  //
  // // Initialisation de la liste réactive
  // RxList<bool> dataExpansionPanel = RxList<bool>();
  //
  late AuthController auth;
//
// @override
// void onInit() {
//   super.onInit();
//
//
// }
//
// void onThemeChanged() {}
//
// // AppStriKeys get appStrKeys => AppStriKeys();
//
// void saveData(String key, dynamic value) async {
//   await box.write(key, value);
// }
//
// T? readData<T>(String key) {
//   return box.read<T>(key);
// }
//
// void clearData() async {
//   await box.erase();
// }
//
// Future<void> pickImages({
//   bool multiple = false,
//   bool updateAfter = true,
//   bool priority = false,
//   int maxFiles = 4,
// }) async {
//   if (files.length >= maxFiles) return;
//
//   FilePickerResult? result = await FilePicker.platform.pickFiles(
//     allowMultiple: multiple,
//     type: FileType.custom,
//     allowedExtensions: ['jpg', 'png', 'jpeg'],
//   );
//
//   if (result != null && result.files.isNotEmpty) {
//     if (!multiple) {
//       files.clear();
//     }
//
//     // Évite de dépasser maxFiles
//     files.addAll(result.files.take(maxFiles - files.length));
//
//     if (priority && files.isNotEmpty) {
//       imageData.value = files.first.bytes;
//       imageName.value = files.first.name;
//     }
//
//     if (updateAfter) update();
//   }
// }
//
// Future<void> pickContractFile() async {
//   FilePickerResult? result = await FilePicker.platform.pickFiles(
//     allowMultiple: false,
//     type: FileType.custom,
//     allowedExtensions: ['jpg', 'png', 'jpeg', 'pdf'],
//   );
//
//   if (result != null && result.files.isNotEmpty) {
//     var files = result.files;
//
//     contractData.value = files.first.bytes;
//     contractFileName.value = files.first.name;
//
//     update();
//   }
// }
//
// void removeFile(PlatformFile file) {
//   files.remove(file);
//   if (files.isEmpty) {
//     imageData.value = null;
//     imageName.value = '';
//   }
//   update();
// }
//
// void removeAllFiles() {
//   files.clear();
//   imageData.value = null;
//   imageName.value = '';
//   contractData.value = null;
//   contractFileName.value = '';
//   update();
// }
//
// // check if has file with max size
// bool hasLargeFile(List<PlatformFile> files, {int maxSizeInMB = 10}) {
//   const int bytesInMB = 1024 * 1024; // 1 MB in bytes
//   final int maxSizeInBytes = maxSizeInMB * bytesInMB;
//
//   for (var file in files) {
//     log("File Size: ${file.size}");
//     if (file.size > maxSizeInBytes) {
//       return true;
//     }
//   }
//   return false;
// }
//
// Future<List<DateTime>?> selectDate(
//     DateRangePickerSelectionChangedArgs args) async {
//   // Si c'est une sélection unique, retourner la date dans une liste
//   if (args.value is DateTime) {
//     return [args.value];
//   }
//   // Si c'est une sélection multiple (plage de dates ou plusieurs dates)
//   else if (args.value is List<DateTime>) {
//     return args.value;
//   }
//   // Si le type de sélection n'est pas pris en charge
//   else {
//     log('Type de sélection non pris en charge : ${args.value.runtimeType}');
//     return null;
//   }
// }
//
// Future<TimeOfDay?> selectTime(BuildContext context) async {
//   final TimeOfDay? time = await showTimePicker(
//     context: context,
//     initialTime: TimeOfDay.now(),
//     initialEntryMode: TimePickerEntryMode.dial,
//   );
//   return time;
// }
//
// void showErrorsFromApi(Map<String, dynamic> data, {int statatusCode = 400}) {
//   try {
//     logger.logWarning("Message: ${data.toString()}");
//     if (statatusCode == 400) {
//       String errorMessage = "";
//       data.forEach((key, value) {
//         errorMessage += "${value[0]}\n";
//       });
//
//       // Affiche le message dans un toast si nécessaire
//       if (errorMessage.isNotEmpty) {
//         ToastHelper.showMessage(
//             message: errorMessage.toString().trim(),
//             width: 700,
//             type: MsgType.warning,
//             durationInSeconds: 5,
//             onTap: (GetSnackBar g) {
//               Get.back(closeOverlays: true);
//             });
//       } else {
//         logger.logWarning("Aucune erreur à afficher.");
//       }
//     } else if (statatusCode == 500 && kDebugMode) {
//       ToastHelper.showMessage(
//           message: "Erreur Serveur !",
//           type: MsgType.warning,
//           width: 400,
//           durationInSeconds: 5,
//           onTap: (GetSnackBar g) {
//             Get.back(closeOverlays: true);
//           });
//     }
//   } catch (e, stackTrace) {
//     // Gestion des erreurs inattendues
//     logger.logError("Erreur lors du traitement des erreurs de l'API: $e");
//     logger.logDebug(stackTrace.toString());
//   }
// }
//
// // Méthode pour basculer l'état d'un panneau
// void togglePanel(int index) {
//   dataExpansionPanel[index] = !dataExpansionPanel[index];
//   update(); // Notifie les listeners de l'état mis à jour
// }
//
// // Méthode d'initialisation de la taille de dataExpansionPanel avec des valeurs personnalisées
// void initializeExpansionPanels(List<bool> initialValues) {
//   dataExpansionPanel
//       .assignAll(initialValues); // Utilise la liste fournie pour initialiser
// }
}
