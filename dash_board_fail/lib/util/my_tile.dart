import 'package:flutter/material.dart';


class MyTile extends StatelessWidget {
  final int cont;
  const MyTile({Key?key, required this.cont}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Padding(

      padding: const EdgeInsets.all(8.0),

      child: Container(
        
        height: 78,
        decoration: BoxDecoration(
            image:DecorationImage(
              image: AssetImage('images/img${cont + 1}.jpg'),
              alignment:Alignment.centerLeft,
            ),
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,

        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
              ),
              child: const Icon(
                Icons.add_circle,
                color: Colors.black,
              ),
            ),
            Center(
              child: Column(
                children: [
                  if(cont == 0)...[
                    const Text(
                      'Audifonos sony', style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
                    ),
                  ] else if (cont == 1)...[
                    const Text('Audifonos redmi', style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
                    ),
                  ] else
                    if (cont == 2)...[
                      const Text('Audifonos samsung', style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
                      ),
                    ] else
                      if (cont == 3)...[
                        const Text('Audifonos asus', style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
                        ),
                      ] else
                        if (cont == 4)...[
                          const Text('Audifonos dell', style: TextStyle(
                              fontSize: 15, fontStyle: FontStyle.italic),
                          ),
                        ] else if (cont == 5)...[
                            const Text('Audifonos spy', style: TextStyle(fontSize: 15),
                            ),
                          ] else if (cont == 6)...[
                              const Text(
                                'Audifonos pro', style: TextStyle(fontSize: 15),
                              ),
                            ] else if (cont == 7)...[
                                const Text(
                                  'Audifonos apple', style: TextStyle(fontSize: 15),
                                ),
                              ] else if(cont==8)...[
                                const Text (
                                  'Audifonos crot', style: TextStyle(fontSize: 15),
                                ),
                        ] else if (cont==9)...[
                          const Text(
                            'Audifonos samsung', style:  TextStyle(fontSize: 15),
                          )
                        ]else if (cont==10)...[
                          const Text('Audifonos pro', style: TextStyle(fontSize: 15),
                          )
    ]
                ],
              ),
            )

          ],
        ),
      ),
    );

  }

}
