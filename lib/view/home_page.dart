import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:language_and_themes/provider/home_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      builder: (context, child) {
        return _scaffold(context);
      },
    );
  }

  Scaffold _scaffold(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("hi".tr())),
      body: Column(
        children: <Widget>[
          ListTile(
            onTap: () async {
              Provider.of<HomeProvider>(context, listen: false).changeLang();
              await context.setLocale(
                Locale(Provider.of<HomeProvider>(context, listen: false).langs[
                    Provider.of<HomeProvider>(context, listen: false)
                        .currentIndex]),
              );
            },
            leading: const Icon(Icons.language_outlined),
            title: Text(context.locale.languageCode.toString()),
          ),
          ElevatedButton(
            onPressed: () {
              AdaptiveTheme.of(context).setDark();
            },
            child: const Text("Change Theme"),
          ),

          //////////////////////////////////////////////////////////////////
          // CheckboxListTile(
          //   title: const Text("Uzb"),
          //   value: context.watch<HomeProvider>().lang == "uz" ? true : false,
          //   onChanged: (v) async {
          //     await context.setLocale(const Locale('uz'));
          //     Future.delayed(Duration.zero).then((value) {
          //       context.read<HomeProvider>().changeLang('uz');
          //     });
          //   },
          // ),
          // CheckboxListTile(
          //   title: const Text("Eng"),
          //   value: context.watch<HomeProvider>().lang == "en" ? true : false,
          //   onChanged: (v) async {
          //     await context.setLocale(const Locale('en'));
          //     Future.delayed(Duration.zero).then((value) {
          //       context.read<HomeProvider>().changeLang('en');
          //     });
          //   },
          // ),
          // CheckboxListTile(
          //   title: const Text("Rus"),
          //   value: context.watch<HomeProvider>().lang == "ru" ? true : false,
          //   onChanged: (v) async {
          //     await context.setLocale(const Locale('ru'));
          //     Future.delayed(Duration.zero).then((value) {
          //       context.read<HomeProvider>().changeLang('ru');
          //     });
          //   },
          // ),
          //////////////////////////////////////////////////////////////////
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text("buy".tr()),
      ),
    );
  }
}
