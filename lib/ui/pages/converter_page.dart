import 'package:flutter/material.dart';
import '../../utils/constants.dart';
import '../widgets/key_pad.dart';

class ConverterPage extends StatefulWidget {
  const ConverterPage({Key? key}) : super(key: key);

  @override
  State<ConverterPage> createState() => _ConverterPageState();
}

class _ConverterPageState extends State<ConverterPage> {
  int currency1 = 1;
  int currency2 = 0;
  String dropdownValue1 = currencies[1];
  String dropdownValue2 = currencies[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Currency converter'),
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Spacer(),
                Expanded(
                    child: DropdownButton<String>(
                  key: const Key('DropdownButton1'),
                  value: dropdownValue1,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  isExpanded: true,
                  underline: Container(
                    height: 2,
                  ),
                  onChanged: (String? value) {
                    // This is called when the user selects an item.
                    setState(() {
                      dropdownValue1 = value!;
                      currency1 = currencies.indexOf(dropdownValue1);
                    });
                  },
                  items:
                      currencies.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      key: const Key('DropdownMenuItem1'),
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                )),
                const Spacer(),
                Expanded(
                    child: DropdownButton<String>(
                  key: const Key('DropdownButton2'),
                  value: dropdownValue2,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  isExpanded: true,
                  underline: Container(
                    height: 2,
                  ),
                  onChanged: (String? value) {
                    // This is called when the user selects an item.
                    setState(() {
                      dropdownValue2 = value!;
                      currency2 = currencies.indexOf(dropdownValue2);
                    });
                  },
                  items:
                      currencies.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      key: const Key('DropdownMenuItem2'),
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                )),
                const Spacer(),
              ],
            ),
          ),
          Expanded(
              child: KeyPad(
            textCurrency1: dropdownValue1,
            textCurrency2: dropdownValue2,
            rate: rates[currency1][currency2],
          ))
        ]));
  }
}
