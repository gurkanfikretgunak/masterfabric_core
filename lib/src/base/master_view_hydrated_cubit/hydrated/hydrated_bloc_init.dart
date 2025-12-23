import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

/// Bootstraps the global HydratedBloc storage backed by a platform-aware
/// directory. Await this once during app start-up—typically inside
/// `MasterApp.runBefore(hydrated: true)`—so every `HydratedCubit` that runs
/// under `MasterApp` can read and persist state from the initialized storage.
///
/// ```dart
/// Future<void> main() async {
///   WidgetsFlutterBinding.ensureInitialized();
///   final router = createMasterRouter();
///
///   await MasterApp.runBefore(
///     hydrated: true,
///     enableRemoteConfig: false,
///   );
///
///   runApp(MasterApp(router: router));
/// }
/// ```
Future<void> initializeHydratedBlocStorage() async {
  final storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorageDirectory.web
        : HydratedStorageDirectory((await getTemporaryDirectory()).path),
  );
  HydratedBloc.storage = storage;
}

