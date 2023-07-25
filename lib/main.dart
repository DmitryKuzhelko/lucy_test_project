import 'package:api_error_parser_plus/api_error_parser_plus.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lucy_test_project/api_providers/currencies_api_provider.dart';
import 'package:lucy_test_project/cubit/currencies_cubit.dart';
import 'package:lucy_test_project/networking/environments.dart';
import 'package:lucy_test_project/networking/error_constants/api_errors.dart';
import 'package:lucy_test_project/networking/error_constants/error_strings.dart';
import 'package:lucy_test_project/networking/network_client.dart';
import 'package:lucy_test_project/repositories/currency_repository_impl.dart';
import 'package:lucy_test_project/router/app_router.dart';
import 'package:lucy_test_project/screens/settings/cubit/settings_cubit.dart';
import 'package:provider/provider.dart';

const String pathToTranslationFiles = "assets/translations";

const String englishLocaleCode = "en";
const String russianLocaleCode = "ru";

const Map<String, Locale> supportedLocales = {
  englishLocaleCode: Locale(englishLocaleCode, ""),
  russianLocaleCode: Locale(russianLocaleCode, ""),
};

void main() {
  runApp(
    EasyLocalization(
      supportedLocales: supportedLocales.values.toList(),
      fallbackLocale: supportedLocales[russianLocaleCode],
      startLocale: supportedLocales[russianLocaleCode],
      path: pathToTranslationFiles,
      saveLocale: true,
      useOnlyLangCode: true,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({
    super.key,
  }) : _appRouter = AppRouter();

  final AppRouter _appRouter;
  final NetworkClient _networkClient = NetworkClient(
    baseUrl: Environments.dev().baseUrl,
    dio: Dio(),
  );

  final _apiParser = ApiParser<String>(
    errorMessages: ApiErrors.commonErrors,
    defaultErrorMessage: ErrorStrings.SOMETHING_WENT_WRONG,
    fieldErrorMessages: ApiErrors.fieldErrors,
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: MultiBlocProvider(
        providers: [
          Provider<NetworkClient>(
            create: (_) => _networkClient,
          ),
          Provider<ApiParser<String>>(
            create: (_) => _apiParser,
          ),
          Provider<CurrenciesApiProvider>(
            create: (_) => CurrenciesApiProvider(
              networkClient: _networkClient,
            ),
          ),
          Provider<ApiParser<String>>(
            create: (_) => _apiParser,
          ),
        ],
        child: Builder(
          builder: (repositoryProviderContext) {
            return MultiRepositoryProvider(
              providers: [
                RepositoryProvider<CurrencyRepositoryImpl>(
                  create: (_) => CurrencyRepositoryImpl(
                    apiProvider:
                        repositoryProviderContext.read<CurrenciesApiProvider>(),
                    apiParser: _apiParser,
                  ),
                ),
              ],
              child: Builder(
                builder: (blocProviderContext) {
                  return MultiBlocProvider(
                    providers: [
                      BlocProvider<CurrenciesCubit>(
                        create: (_) => CurrenciesCubit(
                          repository: blocProviderContext
                              .read<CurrencyRepositoryImpl>(),
                        )..getCurrencies(),
                      ),
                      BlocProvider<SettingsCubit>(
                        create: (_) => SettingsCubit(),
                      ),
                    ],
                    child: Builder(
                      builder: (builderContext) {
                        return BlocBuilder<SettingsCubit, SettingsState>(
                          builder: (context, state) {
                            return MaterialApp.router(
                              routerConfig: _appRouter.config(),
                              title: 'Flutter Demo',
                              localizationsDelegates:
                                  context.localizationDelegates,
                              supportedLocales: supportedLocales.values,
                              theme: ThemeData(
                                primarySwatch: Colors.blue,
                              ),
                            );
                          },
                        );
                      },
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
