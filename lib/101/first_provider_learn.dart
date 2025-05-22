import 'package:flutter/material.dart';
import 'package:lesson_demos/providers/first_provider.dart';
import 'package:lesson_demos/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class FirstProviderLearn extends StatelessWidget {
  const FirstProviderLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(child: Text("Provider Teaching")),
            ListTile(
              leading: Icon(Icons.dark_mode),
              title:
                  context.watch<ThemeProvider>().theme == ThemeData.light()
                      ? Icon(Icons.arrow_back)
                      : Icon(Icons.arrow_forward),
              trailing: Icon(Icons.light_mode_rounded),
              onTap: context.read<ThemeProvider>().changeTheme,
            ),
          ],
        ),
      ),
      appBar: AppBar(title: const Text("First Provider Learn")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Counter : ${context.watch<FirstProvider>().counter}",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Row(
              children: [
                Expanded(child: SizedBox(width: double.infinity)),
                Column(
                  children: [
                    FloatingActionButton(
                      onPressed: () {
                        context.read<FirstProvider>().incrementCounter();
                      },
                      child: const Icon(Icons.upload),
                    ),
                    const SizedBox(height: 20),
                    FloatingActionButton(
                      onPressed: () {
                        context.read<FirstProvider>().decrementCounter();
                      },
                      child: const Icon(Icons.download),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
