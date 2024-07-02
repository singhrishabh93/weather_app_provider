import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app_provider/theme_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: ((context, themeProvider, child) => Scaffold(
        appBar: AppBar(
          leading:
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Switch(
                  activeColor: Colors.white,
                  inactiveThumbColor: Colors.white,
                  thumbColor: MaterialStateProperty.all(Colors.orange),
                  inactiveTrackColor: Colors.transparent,
                  thumbIcon: MaterialStatePropertyAll(
                    themeProvider.isSelected
                        ? const Icon(Icons.nights_stay)
                        : const Icon(Icons.sunny),
                  ),
                  value: themeProvider.isSelected,
                  onChanged: (value) {
                    themeProvider.toggleTheme();
                  }),
            )
          ],
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Column(
              children: [
                const Text(
                  "Paris",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 30,
                ),
                Icon(
                  themeProvider.isSelected
                      ? Icons.nights_stay
                      : Icons.sunny,
                  size: 250,
                  color: themeProvider.isSelected
                      ? Colors.grey.shade500
                      : Colors.orange,
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "20° C",
                  style: TextStyle(
                    fontSize: 36,
                  ),
                ),
                Text(
                  "Good Morning",
                  style: TextStyle(fontSize: 18, color: Colors.grey.shade500),
                ),
                Text(
                  "Noida",
                  style: TextStyle(fontSize: 18, color: Colors.grey.shade600),
                ),
                const SizedBox(
                  height: 30,
                ),
                const SizedBox(
                  width: 50,
                  child: Divider(
                    thickness: 3,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.wb_twighlight),
                        Text("Sunrise"),
                        Text("07:00 AM")
                      ],
                    ),
                  SizedBox(
                  height: 50,
                  child: VerticalDivider(
                    thickness: 1,
                    color: Colors.black,
                  )),
                    Column(
                      children: [
                        Icon(Icons.air),
                        Text("Wind"),
                        Text("4 m/s")
                      ],
                    ),
                    SizedBox(
                  height: 50,
                  child: VerticalDivider(
                    thickness: 1,
                    color: Colors.black,
                  )),
                    Column(
                      children: [
                        Icon(Icons.thermostat),
                        Text("Temperature"),
                        Text("23")
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
