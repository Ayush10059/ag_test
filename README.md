# ag_test

A test project for Ambition Guru Tech Interview.

# Please ensure to run the following commands:

## Code generation for utilities (Routes,Model,Blocs)

flutter pub run build_runner watch --delete-conflicting-outputs

##  Generate localized strings

flutter pub global activate intl_utils (if not activated previously)
flutter pub global run intl_utils:generate


## Getting Started

This project is a starting point for a Flutter application that has the following task:
1. Blog fetching wiht RESTful api.
2. Search a json file using DFS and recursion.
3. Platform Channel to send platform specific message. 

## Localization

This project generates localized messages based on arb files found in
the `lib/localization/arb` directory.

