import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/CountProvider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CountProvider>(context, listen: false);

    /*
    Note: for using context .watch and read, we need to comment counterProvider variable
     */
    print("rebuild");

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<CountProvider>(
              builder: (ctx, provider, child) => Text(
                //'${ctx.watch<CountProvider>().getCount}', // Watching for changes

                '${provider.getCount}',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //context.read<CountProvider>().incrementCounter();
          counterProvider.incrementCounter();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

/*
final counterProvider = Provider.of<CountProvider>(context, listen: false);
>> Use when you need the provider once (e.g., to call a method) and don’t want the widget to rebuild when data changes.

context.watch<CountProvider>()
>> Use when you want to listen for changes and automatically rebuild the entire widget where it's called.

context.read<CountProvider>()
>> Use when you want to access the provider without rebuilding, typically in event handlers (like button taps).

Consumer<CountProvider>
>> Use when you want to rebuild only a specific part of the widget tree when the provider changes — great for fine-grained rebuilds.

 */
