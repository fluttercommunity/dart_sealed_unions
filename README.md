# dart_sealed_unions

## ACKNOWLEDGEMENTS
This library is a port of [JavaSealedUnions](https://github.com/pakoito/JavaSealedUnions/blob/master/README.md) originally created by [Francisco](https://github.com/pakoito/) ([Paco](https://github.com/pakoito/)) [Estévez
](https://github.com/pakoito/).

`Dart` port by [George Medve](https://github.com/nodinosaur) with assistance from [Jan Knotek](https://github.com/JanKn).

This read me file will be elaborated in due course.

## DISTRIBUTION
Add this to your package's `pubspec.yaml` file:

## RATIONALE
Sealed classes are used for representing restricted class hierarchies, when a value can have one of the types from a limited set, but cannot have any other type. They are, in a sense, an extension of enum classes: the set of values for an enum type is also restricted, but each enum constant exists only as a single instance, whereas a subclass of a sealed class can have multiple instances which can contain state.
Sealed classes are available in Kotlin [Sealed Classes](https://kotlinlang.org/docs/reference/sealed-classes.html) and the idea being ported to Java (mentioned above). The lack of and the usefulness of these classes prompted us to create a `Dart` implemenation.

```yaml
dependencies:
  sealed_unions: "^1.1.0"
```
You can install packages from the command line:

with pub:
```bash
pub get
```

with Flutter:
```bash
flutter packages get
```


# License

Copyright (c) flutterconsortium 2018

The Apache Software License, Version 2.0

See LICENSE.md
