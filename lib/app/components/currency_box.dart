import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 1,
              child: SizedBox(
                height: 56,
                child: DropdownButton<DropdownMenuItem>(
                  iconEnabledColor: Colors.amber,
                  isExpanded: true,
                  underline: Container(
                    height: 1,
                    color: Colors.amber,
                  ),
                  items: const [
                    DropdownMenuItem(
                      child: Text('Real'),
                    ),
                    DropdownMenuItem(
                      child: Text('Dolar'),
                    ),
                  ],
                  onChanged: (value) {},
                ),
              )),
          const SizedBox(width: 10),
          const Expanded(
            flex: 2,
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
