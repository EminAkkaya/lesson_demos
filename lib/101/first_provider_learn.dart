import 'package:flutter/material.dart';
import 'package:lesson_demos/providers/first_provider.dart';
import 'package:provider/provider.dart';

class FirstProviderLearn extends StatelessWidget {
  const FirstProviderLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Column(
                  children: [
                    FloatingActionButton(
                      onPressed: () {
                        context.read<FirstProvider>().changeThemeLight();
                      },
                      child: const Icon(Icons.wb_sunny_rounded),
                    ),
                    const SizedBox(height: 20),
                    FloatingActionButton(
                      onPressed: () {
                        context.read<FirstProvider>().changeThemeDark();
                      },
                      child: const Icon(Icons.mode_night_rounded),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
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
