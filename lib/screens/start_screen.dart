import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:water_counter_app/assets/interval_progress_bar.dart';

class StartScreen extends StatefulWidget {
 const StartScreen({Key? key}) : super(key: key);
  @override
  State<StartScreen> createState() => _StartScreenState();
}
class  _StartScreenState extends State <StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _totalMl(),
        _indicators(),
        _buttonReg(),
      ],
    ),
    backgroundColor: Colors.black, 
    );
  }
  Widget _totalMl(){
    
      return Column(
        children: [
          Text(
            '0 mL',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Text(
            'Faltan 2500 mL',
            style: Theme.of(context). textTheme.bodyMedium,
          )
        ],
      );
  }
  Widget _indicators () {
    return IntrinsicHeight(
      child:
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _percentage(),
            const SizedBox(
              width: 10,
            ),
            _smallDividier(),
            const SizedBox(
              width: 10,
            ),
            _hydration(),
          ],
        ),
    );
  }
Widget _percentage(){
            return Column(
              children:[
                SizedBox(
                  height: 60,
                  child: Stack(
                    alignment: Alignment.center,
                children: [
                 const SizedBox(
                  width: 45,
                  height: 45,
                   child: CircularProgressIndicator(
                    strokeWidth: 6,
                    value: 0.3,
                    color: Color.fromARGB(255, 62, 139, 236),
                    backgroundColor: Color.fromARGB(255, 17, 50, 74),
                ),
                 ),
                Text(
              '0 %',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
            Text(
              'Hoy',
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            )
          ],
        );
            
}
Widget _smallDividier(){
  return const VerticalDivider(
    color: Color.fromARGB(255, 51, 51, 51),
    thickness: 2,
    width: 20,
    indent: 10,
    endIndent: 0,
  );
}
Widget _hydration(){
  return Column(
    children: [

      const IntervalProgressBar(),
      //_intervalBar(),
      Text(
        'Hidratación',
        style: Theme.of(context).textTheme.bodySmall,
      ),
    ],
  );
}

 //Widget _intervalBar(){
  //return Text(
    //          '1.0',
    //          style: Theme.of(context).textTheme.headlineSmall,
    //        );

}
  Widget _buttonReg() {
      return Center(
          child: ElevatedButton(
            onPressed: () { },
            
            child: const Text('Registrar'),
            ), 
        );
  }

 