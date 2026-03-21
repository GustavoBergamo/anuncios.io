import 'package:anuncios/sobre_autor.dart';
import 'package:anuncios/tabela_servico.dart';
import 'package:anuncios/tabela_voos.dart';
import 'package:flutter/material.dart';

var textoTecnicas = StringBuffer("");
final embarque = GlobalKey();
final bebidasAlcoolicas = GlobalKey();
final abastecimento = GlobalKey();
final soltarCintos = GlobalKey();
final wifi = GlobalKey();
final pospouso = GlobalKey();
final prepouso = GlobalKey();
final demonstracao = GlobalKey();
final sarampo = GlobalKey();
final cgh = GlobalKey();
final gru = GlobalKey();
final embarque0 = GlobalKey();
final embarque1 = GlobalKey();
final embarque2 = GlobalKey();
final embarque3 = GlobalKey();
double tamanhoFonte = 18.0;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anúncios Latam',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Anúncios Latam'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

String bandeira = "lib/brasil.jpg";

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,

        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
        title: Image.asset('lib/latam.png', height: 40),

        actions: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                tamanhoFonte = tamanhoFonte - 1;
              });
            },
            child: const Tooltip(
              message: "Diminuir fonte",
              child: Text('-', style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ),
          const SizedBox(width: 10),
          const Text(
            'Fonte',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 10),

          ElevatedButton(
            onPressed: () {
              setState(() {
                tamanhoFonte = tamanhoFonte + 1;
              });
            },
            child: const Tooltip(
              message: "Aumentar fonte",
              child: Text('+', style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      drawer: Drawer(
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
        width: 100,
        child: ListView(
          //  padding: const EdgeInsets.all(0),
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TabelaVoos()),
                );
              },
              icon: const Icon(Icons.bar_chart),
              iconSize: 40,
              color: Color.fromARGB(255, 3, 6, 83),
              disabledColor: Colors.black12,
              hoverColor: Colors.grey,
              //focusColor: Colors.amber,
              tooltip: 'Tabela de vôos',
            ),

            const Text('Vôos', textAlign: TextAlign.center),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TabelaServico(),
                  ),
                );
              },
              icon: const Icon(Icons.coffee),
              iconSize: 40,
              color: Color.fromARGB(255, 3, 6, 83),
              disabledColor: Colors.black12,
              hoverColor: Colors.grey,
              //focusColor: Colors.amber,
              tooltip: 'Tabela de serviços',
            ),
            const Text('Serviços', textAlign: TextAlign.center),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AutorPage()),
                );
              },
              icon: const Icon(Icons.info_outline),
              iconSize: 40,
              color: Color.fromARGB(255, 3, 6, 83),
              disabledColor: Colors.black12,
              hoverColor: Colors.grey,
              //focusColor: Colors.amber,
              tooltip: 'Sobre',
            ),
            const Text('Sobre', textAlign: TextAlign.center),
          ],
        ),
      ),
      body: SafeArea(
        child: Flex(
          direction: Axis.vertical,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                //OS BOTÕES
                TextButton(
                  onPressed: () {
                    Scrollable.ensureVisible(
                      embarque.currentContext!,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeOut,
                    );
                  },
                  child: const Tooltip(message: "Embarque", child: Text('Emb')),
                ),
                TextButton(
                  onPressed: () {
                    Scrollable.ensureVisible(
                      abastecimento.currentContext!,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeOut,
                    );
                  },
                  child: const Tooltip(
                    message: "Abastecimento",
                    child: Text('Abast'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Scrollable.ensureVisible(
                      bebidasAlcoolicas.currentContext!,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeOut,
                    );
                  },
                  child: const Tooltip(
                    message: "Bebidas Alcóolicas e Vape",
                    child: Text('Vape'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Scrollable.ensureVisible(
                      sarampo.currentContext!,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeOut,
                    );
                  },
                  child: const Tooltip(
                    message: "Sarampo",
                    child: Text('Sarampo'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Scrollable.ensureVisible(
                      soltarCintos.currentContext!,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeOut,
                    );
                  },
                  child: const Tooltip(
                    message: "Soltar Cintos",
                    child: Text('Cintos off'),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                TextButton(
                  onPressed: () {
                    Scrollable.ensureVisible(
                      wifi.currentContext!,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeOut,
                    );
                  },
                  child: const Tooltip(message: "Wifi", child: Text('Wifi')),
                ),
                TextButton(
                  onPressed: () {
                    Scrollable.ensureVisible(
                      prepouso.currentContext!,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeOut,
                    );
                  },
                  child: const Tooltip(
                    message: "Preparar para o pouso",
                    child: Text('Pouso'),
                  ),
                ),

                TextButton(
                  onPressed: () {
                    Scrollable.ensureVisible(
                      pospouso.currentContext!,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeOut,
                    );
                  },
                  child: const Tooltip(
                    message: "Após livrar pista",
                    child: Text('Chegada', style: TextStyle(fontSize: 13)),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Scrollable.ensureVisible(
                      cgh.currentContext!,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeOut,
                    );
                  },
                  child: const Tooltip(
                    message: "Conexões em Cgh",
                    child: Text('Cgh'),
                  ),
                ),

                TextButton(
                  onPressed: () {
                    Scrollable.ensureVisible(
                      gru.currentContext!,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeOut,
                    );
                  },
                  child: const Tooltip(
                    message: "Conexões em Gru",
                    child: Text('Gru'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Scrollable.ensureVisible(
                      demonstracao.currentContext!,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeOut,
                    );
                  },
                  child: const Tooltip(
                    message: "Demonstração de Segurança",
                    child: Text('Demo'),
                  ),
                ),

                /*
                
              ],
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Scrollable.ensureVisible(
                      tecnica7.currentContext!,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeOut,
                    );
                  },
                  child: const Tooltip(
                    message: "Alma Antiga",
                    child: Text('7'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Scrollable.ensureVisible(
                      tecnica8.currentContext!,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeOut,
                    );
                  },
                  child: const Tooltip(
                    message: "Mudança de Vida",
                    child: Text('8'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Scrollable.ensureVisible(
                      tecnica9.currentContext!,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeOut,
                    );
                  },
                  child: const Tooltip(
                    message: "Clã e Família",
                    child: Text('9'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Scrollable.ensureVisible(
                      embarque0.currentContext!,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeOut,
                    );
                  },
                  child: const Tooltip(message: "Carreira", child: Text('10')),
                ),
                TextButton(
                  onPressed: () {
                    Scrollable.ensureVisible(
                      embarque1.currentContext!,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeOut,
                    );
                  },
                  child: const Tooltip(
                    message: "Relacionamentos",
                    child: Text('11'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Scrollable.ensureVisible(
                      embarque2.currentContext!,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeOut,
                    );
                  },
                  child: const Tooltip(message: "Filhos", child: Text('12')),
                ),
                */
              ],
            ),

            //OS TEXTOS
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverList(
                    key: embarque,
                    delegate: SliverChildBuilderDelegate(childCount: 1, (
                      context,
                      index,
                    ) {
                      return Text(
                        textAlign: TextAlign.justify,

                        paraMostrarembarque(),
                        style: TextStyle(
                          fontSize: tamanhoFonte,
                          fontWeight: FontWeight.w500,
                        ),
                      );
                    }),
                  ),
                  SliverList(
                    key: abastecimento,
                    delegate: SliverChildBuilderDelegate(childCount: 1, (
                      context,
                      index,
                    ) {
                      return Text(
                        textAlign: TextAlign.justify,
                        paraMostrarAbastecimento(),
                        style: TextStyle(
                          fontSize: tamanhoFonte,
                          fontWeight: FontWeight.w500,
                        ),
                      );
                    }),
                  ),
                  SliverList(
                    key: bebidasAlcoolicas,
                    delegate: SliverChildBuilderDelegate(childCount: 1, (
                      context,
                      index,
                    ) {
                      return Text(
                        textAlign: TextAlign.justify,
                        paraMostrarbebidasAlcoolicas(),
                        style: TextStyle(
                          fontSize: tamanhoFonte,
                          fontWeight: FontWeight.w500,
                        ),
                      );
                    }),
                  ),
                  SliverList(
                    key: sarampo,
                    delegate: SliverChildBuilderDelegate(childCount: 1, (
                      context,
                      index,
                    ) {
                      return Text(
                        textAlign: TextAlign.justify,
                        paraMostrarSarampo(),
                        style: TextStyle(
                          fontSize: tamanhoFonte,
                          fontWeight: FontWeight.w500,
                        ),
                      );
                    }),
                  ),
                  SliverList(
                    key: soltarCintos,
                    delegate: SliverChildBuilderDelegate(childCount: 1, (
                      context,
                      index,
                    ) {
                      return Text(
                        textAlign: TextAlign.justify,

                        paraMostrarsoltarCintos(),
                        style: TextStyle(
                          fontSize: tamanhoFonte,
                          fontWeight: FontWeight.w500,
                        ),
                      );
                    }),
                  ),
                  SliverList(
                    key: wifi,
                    delegate: SliverChildBuilderDelegate(childCount: 1, (
                      context,
                      index,
                    ) {
                      return Text(
                        textAlign: TextAlign.justify,

                        paraMostrarwifi(),
                        style: TextStyle(
                          fontSize: tamanhoFonte,
                          fontWeight: FontWeight.w500,
                        ),
                      );
                    }),
                  ),
                  SliverList(
                    key: prepouso,
                    delegate: SliverChildBuilderDelegate(childCount: 1, (
                      context,
                      index,
                    ) {
                      return Text(
                        textAlign: TextAlign.justify,

                        paraMostrarPrePouso(),
                        style: TextStyle(
                          fontSize: tamanhoFonte,
                          fontWeight: FontWeight.w500,
                        ),
                      );
                    }),
                  ),
                  SliverList(
                    key: pospouso,
                    delegate: SliverChildBuilderDelegate(childCount: 1, (
                      context,
                      index,
                    ) {
                      return Text(
                        textAlign: TextAlign.justify,

                        paraMostrarpouco(),
                        style: TextStyle(
                          fontSize: tamanhoFonte,
                          fontWeight: FontWeight.w500,
                        ),
                      );
                    }),
                  ),
                  SliverList(
                    key: cgh,
                    delegate: SliverChildBuilderDelegate(childCount: 1, (
                      context,
                      index,
                    ) {
                      return Text(
                        textAlign: TextAlign.justify,

                        paraMostrarCgh(),
                        style: TextStyle(
                          fontSize: tamanhoFonte,
                          fontWeight: FontWeight.w500,
                        ),
                      );
                    }),
                  ),
                  SliverList(
                    key: gru,
                    delegate: SliverChildBuilderDelegate(childCount: 1, (
                      context,
                      index,
                    ) {
                      return Text(
                        textAlign: TextAlign.justify,

                        paraMostrarGru(),
                        style: TextStyle(
                          fontSize: tamanhoFonte,
                          fontWeight: FontWeight.w500,
                        ),
                      );
                    }),
                  ),
                  SliverList(
                    key: demonstracao,
                    delegate: SliverChildBuilderDelegate(childCount: 1, (
                      context,
                      index,
                    ) {
                      return Text(
                        textAlign: TextAlign.justify,

                        paraMostrardemonstracao(),
                        style: TextStyle(
                          fontSize: tamanhoFonte,
                          fontWeight: FontWeight.w500,
                        ),
                      );
                    }),
                  ),

                  /*
                  SliverList(
                    key: tecnica7,
                    delegate: SliverChildBuilderDelegate(childCount: 1, (
                      context,
                      index,
                    ) {
                      return Text(                        textAlign: TextAlign.justify,

                        paraMostrarTecnica7(),
                        style:  TextStyle(
                          fontSize: tamanhoFonte,
                          fontWeight: FontWeight.w500,
                        ),
                      );
                    }),
                  ),
                  SliverList(
                    key: tecnica8,
                    delegate: SliverChildBuilderDelegate(childCount: 1, (
                      context,
                      index,
                    ) {
                      return Text(                        textAlign: TextAlign.justify,

                        paraMostrarTecnica8(),
                        style:  TextStyle(
                          fontSize: tamanhoFonte,
                          fontWeight: FontWeight.w500,
                        ),
                      );
                    }),
                  ),
                  SliverList(
                    key: tecnica9,
                    delegate: SliverChildBuilderDelegate(childCount: 1, (
                      context,
                      index,
                    ) {
                      return Text(                        textAlign: TextAlign.justify,

                        paraMostrarTecnica9(),
                        style:  TextStyle(
                          fontSize: tamanhoFonte,
                          fontWeight: FontWeight.w500,
                        ),
                      );
                    }),
                  ),
                  SliverList(
                    key: embarque0,
                    delegate: SliverChildBuilderDelegate(childCount: 1, (
                      context,
                      index,
                    ) {
                      return Text(                        textAlign: TextAlign.justify,

                        paraMostrarembarque0(),
                        style:  TextStyle(
                          fontSize: tamanhoFonte,
                          fontWeight: FontWeight.w500,
                        ),
                      );
                    }),
                  ),
                  SliverList(
                    key: embarque1,
                    delegate: SliverChildBuilderDelegate(childCount: 1, (
                      context,
                      index,
                    ) {
                      return Text(                        textAlign: TextAlign.justify,

                        paraMostrarembarque1(),
                        style:  TextStyle(
                          fontSize: tamanhoFonte,
                          fontWeight: FontWeight.w500,
                        ),
                      );
                    }),
                  ),
                  SliverList(
                    key: embarque2,
                    delegate: SliverChildBuilderDelegate(childCount: 1, (
                      context,
                      index,
                    ) {
                      return Text(                        textAlign: TextAlign.justify,

                        paraMostrarembarque2(),
                        style:  TextStyle(
                          fontSize: tamanhoFonte,
                          fontWeight: FontWeight.w500,
                        ),
                      );
                    }),
                  ),
                  SliverList(
                    key: embarque3,
                    delegate: SliverChildBuilderDelegate(childCount: 1, (
                      context,
                      index,
                    ) {
                      return Text(                        textAlign: TextAlign.justify,

                        paraMostrarCompostos(),
                        style:  TextStyle(
                          fontSize: tamanhoFonte,
                          fontWeight: FontWeight.w500,
                        ),
                      );
                    }),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(childCount: 50, (
                      context,
                      index,
                    ) {
                      return  Text(
                        '\n',
                        style: TextStyle(
                          fontSize: tamanhoFonte,
                          fontWeight: FontWeight.w500,
                        ),
                      );
                    }),
                  ),
                  */
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

String paraMostrarembarque() {
  textoTecnicas.clear();

  textoTecnicas.write(
    """EMBARQUE\nBem vindos a LATAM, é um prazer tê-los a bordo.

Para agilizar o embarque, pedimos que mantenham o corredor livre, que se acomodem em seus assentos e que coloquem seus itens pessoais, como bolsas, sacolas e mochilas embaixo do assento à sua frente. Isso inclui garrafas e frascos com líquidos para evitar eventuais derramamentos.

Usem os compartimentos superiores exclusivamente para malas de rodinhas e bagagens maiores, maximizando o uso do espaço disponível.

Pedimos aos passageiros acomodados na primeira fileira e nas saídas de emergência que coloquem todas as suas bagagens nos compartimentos superiores.
Muito obrigado/a.

---INGLÊS---
Welcome to LATAM, it’s a pleasure for us to welcome you on board.

To expedite boarding, please keep the aisles free, take your seats and stow your bags, purses, shopping bags and backpacks under the seat in front of you, including bottles or vessels in order to avoid spillage.

Please use the overhead compartments exclusively for wheeled suitcases and larger carry-on luggage for better use of the available space.

If you are seated in the first row of the cabin and emergency exits, we ask you to stow all your luggage in the overhead bins.
Thank you.""",
  );

  return textoTecnicas.toString();
}

String paraMostrarAbastecimento() {
  textoTecnicas.clear();

  textoTecnicas.write(
    """\n\nABASTECIMENTO DE COMBUSTÍVEL\nSua atenção, por favor.

Neste momento estamos realizando o abastecimento de combustível.
Para sua segurança mantenham seus cintos de segurança desafivelados e lembramos que é proibido fumar.

Informamos que parte da tripulação deve permanecer no setor de portas. Finalizado este procedimento, os tripulantes estarão disponíveis na cabine.
Obrigado(a).

---INGLÊS---
Your attention, please.

At this time, the aircraft is being refueled. For your safety leave your seatbelts unfastened and we remind you that smoking is prohibited.
In addition, part of the cabin crew must remain near the exits. Once this procedure is completed, they will be available in the cabin.
Thank you.""",
  );
  return textoTecnicas.toString();
}

String paraMostrarbebidasAlcoolicas() {
  textoTecnicas.clear();

  textoTecnicas.write(
    """\n\nVAPES E BEBIDAS ALCÓOLICAS\nPara a segurança de todos, é necessário seguir as instruções da tripulação a bordo. Assim, garantimos uma experiência de voo respeitosa e
agradável para todos.

Lembramos que, de acordo com as regulamentações aeronáuticas, o uso de vape é estritamente proibido a bordo, assim como o consumo de bebidas alcoólicas que não sejam oferecidas pela LATAM.
Muito obrigado(a).

---INGLÊS---
For everyone’s safety, it is necessary to follow the instructions of the crew on board, in order to ensure a respectful and pleasant flight
experience for all.

We remind you that, in accordance with aviation regulations, the use of vapes is strictly prohibited on board, as well as the consumption of alcoholic beverages not provided by LATAM.
Thank you very much.""",
  );

  return textoTecnicas.toString();
}

String paraMostrarsoltarCintos() {
  textoTecnicas.clear();

  textoTecnicas.write(
    """\n\nSOLTAR CINTOS\nPrezados passageiros, É um prazer compartilhar este voo com vocês. Saudamos especialmente nossos clientes LATAM Pass Elite que voam conosco hoje.

Para sua segurança, pedimos que mantenham o cinto de segurança afivelado, mesmo quando o indicador luminoso estiver apagado.

Se precisarem de algo, não deixem de nos contatar durante o voo.
Esperamos que aproveitem.
Obrigado por voar com a gente, e sejam bem-vindos a ir mais alto.

---INGLÊS---
Dear passengers,
We are delighted to have you with us on this flight. We especially welcome our LATAM Pass Elite customers flying with us today.

For your safety, please keep your seatbelts fastened even if the seatbelt sign is off.

If you need anything, do not hesitate to contact us during the flight.
We hope you enjoy it.
Thank you for flying with us, and welcome to new heights.""",
  );

  return textoTecnicas.toString();
}

String paraMostrarwifi() {
  textoTecnicas.clear();

  textoTecnicas.write("""\n\nWIFI\nPrezados passageiros,

Este voo conta com Wi‑Fi. Se você é membro do programa LATAM Pass, conecte-se e aproveite mensagens e navegação gratuitas.

Se ainda não é membro, conecte-se à rede LATAM Play, inscreva-se e comece a aproveitar este e outros benefícios.

Para garantir um voo tranquilo, solicitamos que utilizem fones de ouvido ou ativem as legendas sem áudio, e lembramos que chamadas de voz e vídeo não são permitidas durante o voo.

Se precisarem de ajuda, não hesitem em contatar a tripulação.

---INGLÊS---
Dear passengers,

Wi-Fi connectivity is available on this flight. If you are a LATAM Pass member, connect and enjoy free messaging and browsing.

If you are not yet a member, connect to the LATAM Play network, sign up, and start enjoying this and other benefits.

To ensure a smooth flight, we ask that you use headphones or turn on subtitles with no sound, and we remind you that voice and video calls are not permitted during the flight.

If you need assistance, do not hesitate to contact the crew.""");

  return textoTecnicas.toString();
}

String paraMostrarpouco() {
  textoTecnicas.clear();

  textoTecnicas.write(
    """\n\nPOUSO\nMuito obrigado(a) por escolherem voar com a LATAM.

Para a sua segurança e dos demais passageiros, pedimos que permaneçam sentados até que o aviso de atar cintos seja apagado.

Quando o desembarque for iniciado, abram com cuidado os compartimentos superiores, pois as bagagens podem ter se movimentado durante o voo e tenham cuidado ao retirá-las, utilizando as duas mãos.

Ao desembarcar, certifiquem-se de levar todos os seus artigos pessoais e de não deixar resíduos na aeronave.

A partir de agora já é permitido usar equipamentos eletrônicos normalmente.

Convidamos vocês a planejarem suas próximas férias do início ao fim em latam.com. Escolham seu pacote, hotel, carro e muito mais, sempre acumulando milhas.

Esperamos tê-los a bordo na sua próxima viagem.

---INGLÊS---
Thank you for choosing to fly with LATAM.

For your safety, please remain seated until the seatbelt sign is turned off.

When deplaning begins and you open the overhead compartments, please be careful as baggage may have shifted around during the flight. 

For your own safety and that of other passengers, use both hands when  removing your luggage.

As you disembark, make sure you take all your personal items with you and please do not leave any residues inside the aircraft.

You may now use your electronic devices normally.

We invite you to plan your next vacation from the beginning to the end at latam.com, choosing your package, accommodation, car rental and more, always earning miles.

We hope to see you on board on your next flight.""",
  );

  return textoTecnicas.toString();
}

String paraMostrardemonstracao() {
  textoTecnicas.clear();

  textoTecnicas.write("""\n\nDEMONSTRAÇÃO DE SEGURANÇA\nSua atenção, por favor.

Apresentaremos agora as informações de segurança para esta aeronave. Observe atentamente os letreiros e avisos luminosos, assim como as instruções dadas pela tripulação. Dispositivos eletrônicos podem ser utilizados somente em modo avião. Computadores devem ser desligados e guardados durante o táxi, decolagem e pouso. Celulares ou tablets devem ser segurados ou guardados no bolsão do assento. Se o seu dispositivo ficar preso no assento, não tente removê-lo e notifique imediatamente a tripulação de cabine.

Para atar o cinto, insira a ponta de metal na fivela e ajuste-o ao corpo puxando a alça. Para abrir o cinto, levante a parte superior da fivela. Coloque o cinto de segurança sempre que o sinal luminoso acender. Recomendamos que você mantenha o cinto de segurança atado e visível durante todo o voo, mesmo se o sinal luminoso estiver desligado.

É proibido fumar a bordo, inclusive cigarros eletrônicos. Manipular os detectores de fumaça dos lavatórios é proibido por lei. Para a decolagem, sua poltrona deve permanecer na posição vertical, a mesa recolhida e travada, e a bagagem de mão no compartimento superior ou embaixo da poltrona à sua frente.

Esta aeronave possui 8 saídas de emergência: 2 na parte dianteira, 4 na parte central e 2 na parte traseira. Um sistema de iluminação de emergência o guiará até as saídas. Localize a saída mais próxima, que poderá estar atrás de você. Em caso de evacuação, deixe seus pertences a bordo.

Se a cabine perder pressão, máscaras de oxigênio cairão automaticamente acima do seu assento. Remova qualquer cobertura facial que estiver utilizando, puxe a máscara, coloque-a sobre o seu nariz e boca, ajuste o elástico em volta da sua cabeça e respire normalmente. Coloque a máscara primeiro em você antes de ajudar crianças ou outras pessoas.

-------------------
Seu dispositivo de flutuação é o seu próprio assento. Para utilizar, retire e abrace o assento, segurando as alças com os braços cruzados conforme indicado no cartão de informações de segurança.
-------------------
Seu colete salva-vidas está localizado embaixo de seu assento. Retire-o da embalagem, passe-o sobre a cabeça, prenda as alças na frente e ajuste-o na cintura. Ao sair do avião, infle o colete puxando a alça vermelha ou soprando pelo tubo. Uma luz se ativará em contato com à água.

Para mais informações, leia nosso cartão de segurança que está localizado no bolsão do assento.
Obrigado (a).
For more information, read our safety information card, located in the seat pocket.
Thank you.""");

  return textoTecnicas.toString();
}

String paraMostrarSarampo() {
  textoTecnicas.clear();

  textoTecnicas.write(
    """\n\nSARAMPO\nANVISA adverte: mantenha sua vacinação atualizada para o Sarampo não voltar para o Brasil.

Se você tiver manchas vermelhas no corpo e febre, procure o serviço de saúde e informe viagem ou contato com viajantes internacionais.

Vacinas salvam vidas.

---INGLÊS---
ANVISA alerts: keep your vaccinations up to date to protect against measles infection. Let’s prevent the disease from returning to Brazil.

If you have fever and red spots on your body, seek health services and report travels or contact with international travelers.

Vaccines save lives.""",
  );

  return textoTecnicas.toString();
}

String paraMostrarPrePouso() {
  textoTecnicas.clear();

  textoTecnicas.write("""\n\nPREPARAR PARA O POUSO
  Sua atenção, por favor.

Pousaremos em alguns instantes. Para garantir a sua segurança e a dos outros passageiros, retorne ao seu assento e mantenha-o na posição vertical, trave sua mesa e afivele o seu cinto de segurança até que o sinal se apague. 

Também pedimos que desligue e guarde seus computadores. Dispositivos pequenos devem ser segurados ou guardados no bolsão à sua frente.

Obrigado(a).

---INGLÊS---
Your attention, please.

We will be landing shortly. To ensure your safety and the safety of other passengers, please return to your seat and place it in the upright position. Securely latch your tray table and keep your seatbelt fastened until the seatbelt sign is turned off. 

If you have computers, you must turn them off and store them. Smaller devices must be held or stored in the seat pocket in front of you.

Thank you.""");

  return textoTecnicas.toString();
}

String paraMostrarCgh() {
  textoTecnicas.clear();

  textoTecnicas.write("""\n\nCONEXÕES EM CGH
Se você tiver um voo de conexão, pedimos que preste atenção às seguintes orientações.

Sua bagagem será transferida para o seu próximo voo se tiver sido etiquetada para o destino final. Neste aeroporto, os portões de embarque 1 a 12 estão localizados no andar superior. O embarque para os portões 13 a 22 é realizado por meio de ônibus, disponíveis no andar inferior.

Passageiros com voos que partem do Aeroporto de Guarulhos devem retirar sua bagagem e realizar o traslado a esse aeroporto pelo meio de transporte de sua escolha. Não se esqueçam que o tempo de deslocamento vai estar sujeito às condições de trânsito.

Lembramos a todos que verifiquem as informações do próximo voo nos monitores do aeroporto, e recomendamos que cheguem com antecedência ao portão de embarque.

Obrigado(a).

---INGLÊS---  
If you have a connecting flight, we ask you to pay attention to the following guidance.

Your baggage will be transferred to your next flight if it was tagged through to the final destination. In this airport, boarding gates 1 to 12 are located on the upper floor. Gates 13 to 22 are boarded by bus, on the ground floor.

Keep in mind that if you have a flight departing from Guarulhos Airport, you must collect your baggage and transfer to that airport by your preferred means of transportation. Please consider that the transfer time will depend on the traffic.

Remember to check the information for your next flight on the airport screens, and we recommend arriving early at your boarding gate.

Thank you.""");

  return textoTecnicas.toString();
}

String paraMostrarGru() {
  textoTecnicas.clear();

  textoTecnicas.write("""\n\nCONEXÕES EM GRU
  Se você tiver um voo de conexão, pedimos que preste atenção às seguintes orientações.

Sua bagagem será transferida para o seu próximo voo se tiver sido etiquetada para o destino final. Caso precise de ajuda, nossos balcões de check-in para conexões estão disponíveis na área pública do saguão de chegadas nacionais.

Lembramos a todos que verifiquem as informações do próximo voo nos monitores do aeroporto, e recomendamos que cheguem com antecedência ao portão de embarque, e se você tiver um voo internacional, verifique o número do terminal de onde parte seu próximo voo.

Obrigado(a).

---INGLÊS---
If you have a connecting flight, we ask you to pay attention to the following guidance.

Your baggage will be transferred to your next flight if it was tagged through to the final destination. If you need assistance, our connection check-in counters are available in the public area of the domestic arrivals hall.

Please remember to check the information for your next flight on the airport screens, and we recommend arriving early at your boarding gate, and if you have an international flight, check the terminal number from where your next flight departs.

Thank you.""");

  return textoTecnicas.toString();
}

String paraMostrarembarque1() {
  textoTecnicas.clear();

  textoTecnicas.write("\n\nTÉCNICA 11");

  return textoTecnicas.toString();
}

String paraMostrarembarque2() {
  textoTecnicas.clear();

  textoTecnicas.write("\n\nTÉCNICA 12 - ");

  return textoTecnicas.toString();
}

String paraMostrarCompostos() {
  textoTecnicas.clear();

  textoTecnicas.write("\n\n---COMPOSTOS---\n");

  return textoTecnicas.toString();
}
