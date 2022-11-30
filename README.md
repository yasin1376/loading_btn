<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

## Loading Btn

Create animated loading button using loading_btn package with lots of properties.

## Getting started

Loading Btn package helps you create beautiful loading animation in your buttons with customized
loader. Loading Btn is basically an ElevatedButton widget that means you can use the usual
parameters with a few extra functionalities.

## Demo

<img src='demo/loading_btn.gif' height='480px' />

## Usage

### Loading Button with CircularProgress widget

```dart
LoadingBtn(
    height: 50,
    borderRadius: 8,
    animate: true,
    color: Colors.green,
    width: MediaQuery.of(context).size.width * 0.45,
    loader: Container(
        padding: const EdgeInsets.all(10),
        width: 40,
        height: 40,
        child: const CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        ),
    ),
    child: const Text("Login"),
    onTap: (startLoading, stopLoading, btnState) async {
        if (btnState == ButtonState.idle) {
            startLoading();
            // call your network api
            await Future.delayed(const Duration(seconds: 5));
            stopLoading();
        }
    },
),
```

### Loading Button with custom Text

```dart
LoadingBtn(
    height: 50,
    borderRadius: 8,
    roundLoadingShape: false,
    color: Colors.blueAccent,
    width: MediaQuery.of(context).size.width * 0.45,
    minWidth: MediaQuery.of(context).size.width * 0.30,
    loader: const Text("Loading..."),
    child: const Text("Login"),
    onTap: (startLoading, stopLoading, btnState) async {
        if (btnState == ButtonState.idle) {
            startLoading();
            // call your network api
            await Future.delayed(const Duration(seconds: 5));
            stopLoading();
        }
    },
),
```
