import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:sala/core/services/navigation_service.dart';
import 'package:sala/views/categories_page/categories_page.dart';
import 'package:sala/views/library_page/components/library_item.dart';

class LibraryController extends GetxController {
  List<LibraryItem> items(Color primaryColor) {
    return [
      LibraryItem(
        title: 'Modèles',
        icon: FaIcon(
          FontAwesomeIcons.clipboardList,
          size: 40,
          color: primaryColor,
        ),
        onTap: () {},
      ),
      LibraryItem(
        title: 'Pièces‑jointes',
        icon: FaIcon(
          FontAwesomeIcons.paperclip,
          size: 40,
          color: primaryColor,
        ),
        onTap: () {},
      ),
      LibraryItem(
        title: 'Archives',
        icon: FaIcon(
          FontAwesomeIcons.boxArchive,
          size: 40,
          color: primaryColor,
        ),
        onTap: () {},
      ),
      LibraryItem(
        title: 'Catégories',
        icon: FaIcon(
          FontAwesomeIcons.tags,
          size: 40,
          color: primaryColor,
        ),
        onTap: () {
          NavigationService().navigateTo(CategoriesPage());
        },
      ),
      LibraryItem(
        title: 'Projets',
        icon: FaIcon(
          FontAwesomeIcons.briefcase,
          size: 40,
          color: primaryColor,
        ),
        onTap: () {},
      ),
      LibraryItem(
        title: 'Notes rapides',
        icon: FaIcon(
          FontAwesomeIcons.solidNoteSticky,
          size: 40,
          color: primaryColor,
        ),
        onTap: () {},
      ),
      LibraryItem(
        title: 'Favoris',
        icon: FaIcon(
          FontAwesomeIcons.solidStar, // filled star
          size: 40,
          color: primaryColor,
        ),
        onTap: () {},
      ),
      LibraryItem(
        title: 'Profil',
        icon: FaIcon(
          FontAwesomeIcons.solidUser, // filled user
          size: 40,
          color: primaryColor,
        ),
        onTap: () {},
      ),
    ];
  }
}
