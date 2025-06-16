## [0.3.0] - January 21, 2025

- **Major dependency updates across all platforms:**
  - **Android**: Updated Gradle Plugin from 8.3.1 to 8.7.2 (latest stable)
  - **Android**: Updated Kotlin from 2.0.21 to 2.1.0 (latest version)
  - **Android**: Updated CompileSDK from 34 to 35 (latest Android API)
  - **Android**: Fixed MinSDK conflict by removing duplicate definition (now consistently 21)
  - **Android**: Updated Mockito testing framework from 5.0.0 to 5.14.2
  - **Dart**: Replaced deprecated `pedantic` with modern `lints` package (5.0.0)
  - **Dart**: Updated build_runner from 2.1.7 to 2.4.13 for code generation
  - **Dart**: Updated mockito from 5.0.17 to 5.4.4 for testing
  - **Web**: Updated lints from 4.0.0 to 5.0.0 (latest linting package)
- **Configuration improvements:**
  - Updated analysis_options.yaml to use modern lints/recommended.yaml
  - Configured linter rules for generated code and test files
  - Excluded auto-generated mock files from static analysis
- **Quality assurance:**
  - All tests passing (9/9 test cases)
  - Zero static analysis issues
  - Dependencies resolved successfully across all platforms

## [0.2.0] - June 9, 2025

- Fixes iOS plugin class naming mismatch that caused build failures.
- Renamed Swift class from `FlutterKeyboardVisibilityTempForkPlugin` to `FlutterKeyboardVisibilityAllenlinliPlugin` to match pubspec.yaml configuration.
- Updated iOS podspec configuration and file naming for consistency.
- Upgraded Android Kotlin version to 1.9.22 to support JVM target 21.
- Fixed web plugin class name alignment in pubspec.yaml.
- Comprehensive cross-platform testing and verification completed.

## [0.1.7] - June 2, 2025

- Upgrades dependencies to the latest compatible versions.
- Merges improvements from the `feat/upgrade_dependencies` branch.

## [0.1.6] - February 20, 2025

- Fixes WASM compilation issue when using [`flutter_keyboard_visibility`](https://pub.dev/packages/flutter_keyboard_visibility) with this package by removing the deprecated class `FlutterKeyboardVisibilityPluginWeb` which is not expected to be used by clients.

## [0.1.5] - December 2, 2024

- Updates the threshold for detecting the keyboard state from 85% to 82% of the visible screen height. This improves accuracy in determining whether the keyboard is visible [#5](https://github.com/EchoEllet/flutter_keyboard_visibility_temp_fork/pull/5/).

## [0.1.4] - November 24, 2024

- Supports Swift package manager.
- Migrates the iOS plugin from Objective-C to Swift.
- Updates the minimum supported iOS from `8.0` to `9.0`.

## [0.1.3] - November 7, 2024

- Promoted 0.1.3-alpha to stable.

## [0.1.3-alpha] - November 6, 2024

- Adds iOS notification observer for the floating keyboard (see [PR #2](https://github.com/EchoEllet/flutter_keyboard_visibility_temp_fork/pull/2)).
- Adds iOS notification observer for the floating keyboard (see [PR #2](https://github.com/EchoEllet/flutter_keyboard_visibility_temp_fork/pull/2)).
- Adds keyboard debounce check (see [PR #2](https://github.com/EchoEllet/flutter_keyboard_visibility_temp_fork/pull/2)).

## [0.1.2-alpha] - November 5, 2024

- Fixes plugin class name collisions with [flutter_keyboard_visibility](https://pub.dev/packages/flutter_keyboard_visibility) for Web, Android, and iOS. Which updates the platform plugin name to `FlutterKeyboardVisibilityTempForkPlugin`. The desktop platforms don't have issues.
- Updates the [web](https://pub.dev/packages/web) dependency constraints to `>=0.5.1 <2.0.0`.

## [0.1.1] - September 27, 2024

- Updates `README.md` to reflect the changes.

## [0.1.0] - September 27, 2024

- Initial release for the temporary fork of [flutter_keyboard_visibility](https://pub.dev/packages/flutter_keyboard_visibility).
