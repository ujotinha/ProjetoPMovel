import 'package:projetointheirskin/tela2.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.chat, color: Colors.white),
          backgroundColor: Color(0xFF25d366),
        ),
        body: buildListview(),
      ),
    );
  }

  buildAppBar() {
    return AppBar(
      actions: [
        Icon(
          Icons.search,
          color: Colors.white,
        ),
        Icon(
          Icons.more_vert,
          color: Colors.white,
        ),
      ],
      centerTitle: false,
      backgroundColor: Color(0xFF075E54),
      title: Text(
        'WhatsApp',
        style: TextStyle(
          fontSize: 24,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  buildListview() {
    return ListView(
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 28,
            backgroundImage: NetworkImage(
              'https://forbes.com.br/wp-content/uploads/2021/02/ForbesMoney-CaioCastro-150221-Divulgacao.jpg',
            ),
          ),
          title: Text('Contatinho da 413'),
          subtitle: Text('Oi sumida rsrsrs'),
          trailing: Text('ONTEM'),
        ),
        Divider(
          indent: 80,
          endIndent: 24,
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 28,
            backgroundImage: NetworkImage(
              'https://forbes.com.br/wp-content/uploads/2021/02/ForbesMoney-CaioCastro-150221-Divulgacao.jpg',
            ),
          ),
          title: Text('Varao'),
          subtitle: Text('Oi Varoa..'),
          trailing: Text('ONTEM'),
        ),
        Divider(
          indent: 80,
          endIndent: 24,
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 28,
            backgroundImage: NetworkImage(
              'https://forbes.com.br/wp-content/uploads/2021/02/ForbesMoney-CaioCastro-150221-Divulgacao.jpg',
            ),
          ),
          title: Text('Chato da 912'),
          subtitle: Text('Vamos tomar um acai hoje?'),
          trailing: Text('ONTEM'),
        ),
      ],
    );
  }
}
