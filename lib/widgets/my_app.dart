import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar( title: const Text('Apresentação'),backgroundColor: Colors.green,),
      // Suggested code may be subject to a license. Learn more: ~LicenseLog:1552388725.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:4198532729.
drawer: Drawer(
        backgroundColor: Colors.green,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text('Menu'),
            ),
            ListTile(
              title: const Text('Menu 1'),
              onTap: () {
                // Navigate to menu 1
              },
            ),
            ListTile(
              title: const Text('Menu 2'),
              onTap: () {
                // Navigate to menu 2
              },
            ),
          ],
        ),
      ),
      body: Column(
       children: [

        const Text('Olá Mundo'),
        Image.network("https://www.nr12semsegredos.com.br/wp-content/uploads/2016/08/saiba-como-otimizar-o-gerenciamento-de-tempo-em-projetos.jpeg",height: MediaQuery.of(context).size.height * 0.405,width: MediaQuery.of(context).size.width * 1,),
        const SizedBox(height: 20),
        const Row( mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(Icons.person),
            Text('Washington Saraiva Santana'),
          ],
        ),
         const SizedBox(height: 10),
        const Row( mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(Icons.work),
            Text('Flutter Developer'),
          ],
        ),
        const SizedBox(height: 10),
        const Row( mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(Icons.badge),
            Text('IFPI'),
          ],
        ),
        const SizedBox(height: 10),
        const Row( mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(Icons.cake),
            Text('33'),
          ],
        ),
        const SizedBox(height: 10),
        Image.asset('assets/images/app.webp',height: MediaQuery.of(context).size.height * 0.1,width: MediaQuery.of(context).size.width * 0.8,)

       ],
      
      ) ,
      bottomNavigationBar: BottomNavigationBar(
         items: const[BottomNavigationBarItem(icon: Icon(Icons.menu), label:'Menu 1'),BottomNavigationBarItem(icon: Icon(Icons.menu), label:'Menu 2'),BottomNavigationBarItem(icon: Icon(Icons.menu), label:'Menu 3')],
         ),
    );
  }
}