# MasterFabric CLI

A command-line tool for creating Flutter projects with the **MasterFabric architecture** (MVVM + BLoC/Cubit) pre-configured.

Similar to `flutter create`, but generates a complete project scaffold with:

- MasterFabric base classes (`MasterViewCubit`, `BaseViewModelCubit`)
- Dependency injection (GetIt + Injectable)
- GoRouter navigation
- Pre-built views (Home, Profile, Settings)
- Theme system with dark mode support
- App configuration via `app_config.json`
- i18n setup (Slang)
- Android permissions (AndroidManifest.xml)
- iOS permissions (Info.plist)
- Cursor IDE rules, agents, skills, and MCP for AI-assisted development

## Installation

```bash
# From source (development)
dart pub global activate --source path tools/masterfabric_cli

# From pub.dev (when published)
dart pub global activate masterfabric_cli
```

## Usage

```bash
# Create a new project
masterfabric create my_app

# With organization
masterfabric create my_app --org com.mycompany

# With description
masterfabric create my_app --org com.mycompany -d "My awesome app"

# Print version
masterfabric --version

# Print help
masterfabric --help
masterfabric create --help
```

## What Gets Generated

```
my_app/
├── .cursor/                    # AI-assisted development (rules, agents, skills)
├── .cursor-plugin/             # Cursor plugin manifest
├── lib/
│   ├── main.dart               # App entry point with MasterApp.runBefore
│   ├── app/
│   │   ├── app.dart            # App widget with theme and MasterApp
│   │   ├── di/injection.dart   # GetIt + Injectable DI setup
│   │   └── routes.dart         # GoRouter configuration
│   ├── theme/
│   │   ├── app_theme.dart      # Theme constants
│   │   └── theme_builder.dart  # ThemeData builder
│   └── views/
│       ├── home/               # Home view with cubit + state
│       ├── profile/            # Profile view with cubit + state
│       └── settings/           # Settings view with theme cubit
├── assets/
│   ├── app_config.json         # App configuration
│   └── i18n/en.i18n.json       # English translations
├── android/                    # With permissions pre-configured
├── ios/                        # With Info.plist permissions
├── pubspec.yaml                # With masterfabric_core dependency
├── slang.yaml                  # i18n configuration
└── analysis_options.yaml       # Lint rules
```

## Architecture

Every generated view follows the MasterFabric pattern:

1. **State** - Extends `Equatable` with `copyWith()` and `props`
2. **Cubit** - Extends `BaseViewModelCubit<S>` with `@injectable`
3. **View** - Extends `MasterViewCubit<V, S>` with `initialContent()` and `viewContent()`

## Requirements

- Dart SDK ^3.9.2
- Flutter SDK installed and on PATH
- `masterfabric_core` package accessible (pub.dev or local path)
