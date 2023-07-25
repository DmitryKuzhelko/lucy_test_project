# lucy_test_project
# Обновить сгенерированные файлы:
flutter packages pub run build_runner build --delete-conflicting-outputs

# Для генерации ссылок на ресурсы нужно выполнить следующие команды(повторять после каждого обновления файла строк или добавления картинок):

## Сгенерировать ссылки на кастомные иконки:
1. Один раз: flutter pub global activate flutter_asset_generator
2. Нужно будет экспортировать переменную среды (см. подсказку в терминале)
3. Команда для генерации:
** fgen --name AppIcons --output lib/generated/app_icons.g.dart --no-preview
После выполнения будет сгенерирован файл(lib/generated/app_icons.g.dart) со ссылками на ресурсы 
из директории /assets/images

## Сгенерировать ссылки на строки:
1. Сперва flutter pub get
2. Затем можно выполнять команду:
dart run easy_localization:generate -S assets/translations -f keys -o app_strings.g.dart
После выполнения команды будет сгенерирован файл(lib/generated/app_strings.g.dart) со ссылками на ресурсы 
из директории /assets/translations