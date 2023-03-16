// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ru';

  static String m0(of) => "Расписание ${of}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "auditories": MessageLookupByLibrary.simpleMessage("Аудитории"),
        "changeGroup": MessageLookupByLibrary.simpleMessage("Изменить группу"),
        "clearCache": MessageLookupByLibrary.simpleMessage("Очистить кэш"),
        "confirmButton": MessageLookupByLibrary.simpleMessage("Подтвердить"),
        "dark": MessageLookupByLibrary.simpleMessage("Темная"),
        "empty": MessageLookupByLibrary.simpleMessage("Ничего не найдено"),
        "emptyLessons": MessageLookupByLibrary.simpleMessage(
            "Пар сегодня нет, можете расслабиться"),
        "home": MessageLookupByLibrary.simpleMessage("Дом"),
        "inviteScreenTitle":
            MessageLookupByLibrary.simpleMessage("Расписание РГЭУ (РИНХ)"),
        "light": MessageLookupByLibrary.simpleMessage("Светлая"),
        "noTeachers": MessageLookupByLibrary.simpleMessage(
            "Отсутствует список преподавателей"),
        "schedule": MessageLookupByLibrary.simpleMessage("Расписание"),
        "scheduleOf": m0,
        "settings": MessageLookupByLibrary.simpleMessage("Настройки"),
        "system": MessageLookupByLibrary.simpleMessage("Системная"),
        "teacher": MessageLookupByLibrary.simpleMessage("Препод"),
        "teachers": MessageLookupByLibrary.simpleMessage("Преподаватели"),
        "theme": MessageLookupByLibrary.simpleMessage("Тема"),
        "welcomeText": MessageLookupByLibrary.simpleMessage(
            "Добро пожаловать\nВведите ваш номер группы")
      };
}
