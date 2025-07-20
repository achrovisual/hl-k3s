# CHANGELOG

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.4.2] - 2025-07-20

### Added

-   Initial implementation of the `CHANGELOG.md` file.

## [0.4.1] - 2025-07-17

### Fixed

-   Corrected Helm subchart environment variable injection path.
-   Fixed the guard so it only renders when at least one variable is emitted.

## [0.4.0] - 2025-07-11

### Added

-   Implemented dynamic environment variable injection into containers.
-   Added support for wrapping environment variables in a block.