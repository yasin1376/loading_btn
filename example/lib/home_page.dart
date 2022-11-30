import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:loading_btn/loading_btn.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(20),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Loading Button with CircularProgress widget
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
            const SizedBox(height: 50),
            // Loading Button with custom Text
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
            const SizedBox(height: 50),
            // Loading Button with custom loading
            LoadingBtn(
              height: 50,
              borderRadius: 8,
              animate: true,
              color: Colors.deepOrange,
              width: MediaQuery.of(context).size.width * 0.45,
              loader: Container(
                padding: const EdgeInsets.all(10),
                child: const Center(
                  child: SpinKitDoubleBounce(
                    color: Colors.white,
                  ),
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
          ],
        ),
      ),
    );
  }
}
