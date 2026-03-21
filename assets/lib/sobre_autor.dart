import 'package:anuncios/main.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AutorPage extends StatefulWidget {
  const AutorPage({super.key});

  @override
  State<AutorPage> createState() => _AutorPageState();
}

class _AutorPageState extends State<AutorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sobre o Autor',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyApp()),
            );
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildProfileImage(),
              const SizedBox(height: 24),
              _buildInfoCard(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileImage() {
    return Container(
      width: 160,
      height: 160,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        border: Border.all(color: Colors.white, width: 4),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 15,
            offset: const Offset(0, 8),
          ),
        ],
        image: const DecorationImage(
          image: AssetImage('lib/eu.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildInfoCard(BuildContext context) {
    return Card(
      elevation: 4,
      color: Colors.grey.shade200,
      shadowColor: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: SizedBox(
          width: 250,
          height: 270,
          child: Column(
            children: [
              const Text(
                'Gustavo Bergamo',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey.shade50,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'Full Stack Developer',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.blue.shade800,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 32),
              const Text(
                'ENTRE EM CONTATO',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  letterSpacing: 1.0,
                ),
              ),
              Column(
                children: [
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildSocialIcon(
                        asset: 'lib/email.png',
                        onTap: () {
                          // Removido setState desnecessário
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('luizgustavobergamo@gmail.com'),
                            ),
                          );
                        },
                      ),
                      const SizedBox(width: 20),
                      _buildSocialIcon(
                        asset: 'lib/whatsapp.png',
                        onTap: () {
                          launchUrl(
                            Uri.parse(
                              'https://api.whatsapp.com/send?phone=5511982583623',
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildSocialIcon(
                        asset: 'lib/linkedin.png',
                        onTap: () {
                          launchUrl(
                            Uri.parse(
                              'https://www.linkedin.com/in/luiz-bergamo-3334501b5/',
                            ),
                          );
                        },
                      ),
                      const SizedBox(width: 20),
                      _buildSocialIcon(
                        asset: 'lib/github.png',
                        onTap: () {
                          launchUrl(
                            Uri.parse('https://github.com/GustavoBergamo'),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSocialIcon({
    required String asset,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(50),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey.shade50,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey.shade200),
        ),
        child: Image.asset(asset, height: 32, width: 32),
      ),
    );
  }
}
