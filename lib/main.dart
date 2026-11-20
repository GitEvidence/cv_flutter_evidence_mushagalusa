import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(const CvApp());


class Experience {
  final String period;
  final String titre;
  final String lieu;
  final String? attributions;
  const Experience(this.period, this.titre, this.lieu, [this.attributions]);
}

class Formation {
  final String period;
  final String titre;
  final String institution;
  final List<String> diplomes;
  const Formation(this.period, this.titre, this.institution, this.diplomes);
}

class Certif {
  final String period;
  final String titre;
  final String? detail;
  const Certif(this.period, this.titre, [this.detail]);
}

class Stage {
  final String period;
  final String lieu;
  final String type;
  const Stage(this.period, this.lieu, this.type);
}

class Projet {
  final String year;
  final String nom;
  final String description;
  const Projet(this.year, this.nom, this.description);
}

class Ref {
  final String nom;
  final String titre;
  final String? tel;
  final String? email;
  const Ref(this.nom, this.titre, {this.tel, this.email});
}

class Membre {
  final String nom;
  final String role;
  final String sousTitre;
  const Membre(this.nom, this.role, this.sousTitre);
}

class Donnees {
  static const identifiant = 'evidence';
  static const motDePasse = 'evidence0000';

  static const nom = 'Mushagalusa Mweze';
  static const prenom = 'Evidence';
  static const civilite = 'Dr.';
  static const titreLong =
      'Médecin · Développeur full-stack · Architecte bases de données · Tech Evangelist en e-santé';
  static const photo = 'assets/images/evidence.jpg';

  static const naissance = '03 octobre 1994';
  static const lieuNaissance = 'Bukavu, RDC';
  static const nationalite = 'Congolaise';
  static const adresse = 'Q. Katindo, Av. Masisi N5, Goma';
  static const adresseCourte = 'Katindo, Goma';
  static const telephone = '+243 970 664 715';
  static const email = 'evidence.racine@gmail.com';
  static const emailPro = 'm.evidence@pmsdrc.com';
  static const web = 'https://pmsarl.org/';
  static const webDisplay = 'pmsarl.org';
  static const sexe = 'Masculin';
  static const etatCivil = 'Marié · 2 enfants';
  static const croyance = 'Chrétienne';
  static const loisir = 'Musique, natation';

  static const synthese =
      "Fort d'un leadership éprouvé, je dirige des équipes techniques dans des secteurs exigeants — santé, ONG, technologie — en pilotant des projets complexes et en fédérant des équipes pluridisciplinaires. Mon expertise s'étend du développement full-stack à l'architecture de bases de données, en passant par la cybersécurité et la gouvernance IT. Sur le plan stratégique, j'aligne les choix technologiques avec les enjeux métier, tout en menant des négociations et en bâtissant des partenariats clés.";

  static const experiences = <Experience>[
    Experience(
      "Janv. 2022 — Aujourd'hui",
      'Directeur du département technique, R&D',
      'PMS Sarl · Goma',
      "Gestion des équipes · Gestion des équipements · Négociation de contrat · Gestion des ressources humaines · Formation des salariés · Négociations stratégiques avec les fournisseurs · Planification des ressources humaines · Stratégie d'entreprise · Lobbying · Gestion de projet.",
    ),
    Experience(
      "Janv. 2022 — Aujourd'hui",
      'Développeur FullStack des logiciels',
      'PMS Sarl · Bukavu',
      'Développement Front-End · Développement Back-End · Développement des API · Architecte des bases de données.',
    ),
    Experience(
      "2022 — Aujourd'hui",
      "Directeur du système d'information",
      'Centre Hospitalier Bethesda',
      'Stratégie et alignement métier · Gouvernance IT · Gestion de projets et innovation · Cybersécurité et conformité · Management des équipes IT · Partenariats et fournisseurs · Performance et reporting.',
    ),
    Experience(
      "Juil. 2022 — 2024",
      'Consultant Technique',
      'TRAFFED RDC · Bukavu',
      'Expertise technique, conseil stratégique et accompagnement opérationnel.',
    ),
    Experience(
      "Avr. 2021 — Aujourd'hui",
      'Responsable technique',
      'World Hope Givers · Goma',
      'Création et maintenance des sites web · Gestion des comptes de l\'organisation · Expertise technique et conseil stratégique.',
    ),
    Experience(
      "Avr. 2021 — 2022",
      'Conseiller technique',
      'SAD DRC · Bukavu',
      'Expertise technique, conseil stratégique et accompagnement opérationnel.',
    ),
    Experience(
      "Avr. 2021 — 2022",
      'Conseiller technique',
      'CCONAT · Bukavu',
      'Expertise technique, conseil stratégique et accompagnement opérationnel.',
    ),
  ];

  static const formations = <Formation>[
    Formation(
      "2024 — Aujourd'hui",
      'Informatique adaptée à la gestion',
      'Institut Supérieur d\'Informatique et de Gestion (ISIG) · Goma',
      [
        "Diplôme d'ingénieur en Informatique (en cours)",
        'Diplôme de master en Informatique (prévu)',
      ],
    ),
    Formation(
      '2014 — 2021',
      'Sciences biomédicales · Médecine',
      'Université Évangélique en Afrique · Bukavu',
      [
        'Diplôme de grade en sciences biomédicales',
        'Doctorat en médecine et santé communautaire, chirurgie et accouchement',
      ],
    ),
    Formation(
      '2006 — 2014',
      "Diplôme d'État",
      'Institut IMANI PANZI · Bukavu',
      [],
    ),
  ];

  static const skills = <String, List<String>>{
    'Langages': ['C#', 'HTML', 'Java', 'JavaScript'],
    'Frameworks': [
      '.NET ASP Framework',
      '.NET Blazor Server',
      '.NET Blazor WebAssembly',
      '.NET MAUI',
      '.NET ASP Core',
      '.NET ASP Core API',
      'jQuery',
    ],
    'Bases de données': ['SQL Server', 'MySQL'],
    'Systèmes & réseau': [
      'Windows Server',
      'Networking et sécurité',
      'Wireshark',
      'Colasoft Capsa',
    ],
    'UI & UX': ['Bootstrap', 'CSS'],
  };

  static const langues = <String, String>{
    'Français': 'Parlé · écrit',
    'Anglais': 'Parlé · écrit',
    'Kiswahili': 'Maternel',
    'Lingala': 'Parlé · écrit',
  };

  static const projets = <Projet>[
    Projet(
      'Juil. 2022',
      'Progressive Medical Systems',
      "Système d'information hospitalier (SIH) pour la gestion et l'organisation des informations médicales et administratives : dossiers patients, protocoles de soins, ressources hospitalières, indicateurs de performance.",
    ),
    Projet(
      'Avr. 2024',
      'B.Host Congo',
      'Système de gestion de ventes : suivi et optimisation des transactions commerciales, gestion des clients, paiements, stocks et analyses de performance.',
    ),
    Projet(
      'Avr. 2025',
      'Mutuelle SA',
      "Système de gestion d'une mutuelle de santé : administration des adhésions, cotisations, remboursements et gestion financière.",
    ),
    Projet(
      'Mai 2025',
      'MAIDESO',
      'Outil pour administrer les adhésions, cotisations, prestations et comptabilité des mutuelles sociales — gestion transparente des aides sociales.',
    ),
  ];

  static const certifications = <Certif>[
    Certif('Déc. 2024', 'Microsoft Foundational C#', 'freeCodeCamp'),
    Certif('Nov. 2024', 'Gestion des informations sanitaires',
        'DPS-Goma · Module SR / SNISS'),
    Certif('Sept. 2025', 'Certification en programmation web', 'ISIG Goma'),
    Certif('Nov. 2025', 'Réseaux et administration système', 'ISIG Goma'),
    Certif('2010 — 2011', 'Développement web & WordPress',
        'Autodidacte · Bukavu'),
    Certif('2012 — 2013', 'Applications web & bases de données',
        'Autodidacte · Goma'),
  ];

  static const stages = <Stage>[
    Stage('Juil. 2020 — Août 2021', 'HGPR Panzi · Bukavu', 'Internat médecine'),
    Stage('Janv. — Juil. 2020', 'HGPR Kaziba · Walungu', 'Stage rural'),
    Stage('Juil. 2019', 'HGPR Panzi · Bukavu', 'Gynécologie obstétrique'),
    Stage('Juil. 2018', 'Hôpital Charité Maternelle · Goma', 'Obstétrique'),
    Stage('Juil. 2017', 'Hôpital Heal · Goma',
        'Biologie clinique & technique chirurgicale'),
    Stage('Juil. 2016', 'Hôpital Heal · Goma', 'Soins infirmiers'),
  ];

  static const references = <Ref>[
    Ref('Pr. Dr. Samuel Ngayihembako', 'Président ECC Nord-Kivu',
        tel: '+243 818 263 662', email: 'skayihembako@gmail.com'),
    Ref('Dr. Steve Kisembo', 'Médecin directeur · HGR Virunga',
        tel: '+243 997 898 999'),
    Ref('Dr. Josué Muhasa', 'Médecin directeur · CH Bethesda',
        tel: '+243 997 745 003', email: 'josuemuhindo@yahoo.fr'),
    Ref('Dr. Tshass Chasinga', 'Médecin pathologiste · HGPR Panzi',
        tel: '+243 998 370 631', email: 'chasingab@gmail.com'),
    Ref('Dr. Jonathan Yoyu', 'Chercheur · Fondation Panzi',
        tel: '+243 975 125 445', email: 'tjonathanyoyu@gmail.com'),
    Ref('Dr. Nelson Kambale', 'Directeur · ECC Nord-Kivu DORM',
        tel: '+243 971 718 215', email: 'k.nelson@pmsdrc.com'),
    Ref('Mr Augustin Mighisa', 'Administrateur · PMS Sarl',
        tel: '+243 993 680 321', email: 'augustiny9@gmail.com'),
    Ref('Dr. Obady Kambale', 'Chirurgien esthétique · CH Bethesda',
        tel: '+243 997 707 571', email: 'obadyvitwamba@gmail.com'),
    Ref('Ir Paul Backes', 'Responsable technique · AusHeal/Heal Africa',
        tel: '+243 977 912 347'),
    Ref('Ir Elie Ngowa', 'Informaticien · BDEAC',
        tel: '+243 898 427 621', email: 'elieshamamba@gmail.com'),
  ];

  static const famille = <Membre>[
    Membre('Déborah', 'Épouse', 'Conjointe'),
    Membre('Eden', 'Fille', 'Enfant'),
  ];
}


const kBg = Color(0xFFF7F8F4);
const kSurface = Color(0xFFFFFFFF);
const kBorder = Color(0xFFE6EAE2);
const kInk = Color(0xFF12201A);
const kInk2 = Color(0xFF4A5A52);
const kInk3 = Color(0xFF8A968E);
const kAccent = Color(0xFF2D6A4F);
const kAccent2 = Color(0xFF40916C);
const kAccentSoft = Color(0xFFE6F0EA);
const kDark = Color(0xFF14261D);
const kDarkInk = Color(0xFFE8F0EA);
const kDarkInk2 = Color(0xFFA9BAAF);
const kDanger = Color(0xFFC2410C);
const kDangerSoft = Color(0xFFFEF2E8);

TextStyle sans(
  double size, {
  FontWeight w = FontWeight.w400,
  Color c = kInk,
  double? h,
  double? ls,
}) =>
    GoogleFonts.dmSans(
        fontSize: size, fontWeight: w, color: c, height: h, letterSpacing: ls);


class CvApp extends StatelessWidget {
  const CvApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dr. Evidence Mushagalusa — CV',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: kAccent,
          brightness: Brightness.light,
        ).copyWith(primary: kAccent, surface: kSurface, onSurface: kInk),
        scaffoldBackgroundColor: kBg,
        splashFactory: InkSparkle.splashFactory,
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: kAccent,
          selectionColor: kAccent.withOpacity(0.2),
          selectionHandleColor: kAccent,
        ),
      ),
      home: const LoginPage(),
    );
  }
}


class Photo extends StatelessWidget {
  final String? asset;
  final String nom;
  final double size;
  final double radius;
  final Color bg;
  const Photo({
    super.key,
    this.asset,
    required this.nom,
    this.size = 56,
    this.radius = 12,
    this.bg = kAccentSoft,
  });

  @override
  Widget build(BuildContext context) {
    final initiale = nom.isNotEmpty ? nom.trim()[0].toUpperCase() : '?';
    final placeholder = Container(
      width: size,
      height: size,
      color: bg,
      alignment: Alignment.center,
      child: Text(initiale,
          style: sans(size * 0.42, w: FontWeight.w800, c: kAccent)),
    );
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: bg,
      ),
      clipBehavior: Clip.antiAlias,
      child: asset == null
          ? placeholder
          : Image.asset(
              asset!,
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) => placeholder,
            ),
    );
  }
}

class SectionHead extends StatelessWidget {
  final String title;
  final String? trailing;
  const SectionHead(this.title, {super.key, this.trailing});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14, top: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 4,
            height: 16,
            decoration: BoxDecoration(
              color: kAccent,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(title,
                style: sans(15, w: FontWeight.w700, ls: -0.1)),
          ),
          if (trailing != null)
            Text(trailing!, style: sans(12, c: kInk3, w: FontWeight.w500)),
        ],
      ),
    );
  }
}

class CardBox extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  final VoidCallback? onTap;
  const CardBox({super.key, required this.child, this.padding, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: kSurface,
      borderRadius: BorderRadius.circular(16),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: kBorder),
          ),
          padding: padding ?? const EdgeInsets.all(16),
          child: child,
        ),
      ),
    );
  }
}

class Tag extends StatelessWidget {
  final String text;
  final bool filled;
  const Tag(this.text, {super.key, this.filled = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: filled ? kAccentSoft : kBg,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: filled ? Colors.transparent : kBorder),
      ),
      child: Text(text,
          style: sans(12, w: FontWeight.w600, c: filled ? kAccent : kInk2)),
    );
  }
}

class PeriodBadge extends StatelessWidget {
  final String text;
  const PeriodBadge(this.text, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 4),
      decoration: BoxDecoration(
        color: kAccentSoft,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(text,
          style: sans(10.5,
              w: FontWeight.w700, c: kAccent, ls: 0.2)),
    );
  }
}

void toast(BuildContext context, String msg) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(SnackBar(
      content: Text(msg,
          style: sans(13, w: FontWeight.w500, c: Colors.white)),
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 90),
      backgroundColor: kInk,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    ));
}


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _idCtrl = TextEditingController();
  final _mdpCtrl = TextEditingController();
  bool _hide = true;
  bool _loading = false;
  String? _error;

  Future<void> _submit() async {
    FocusScope.of(context).unfocus();
    setState(() {
      _error = null;
      _loading = true;
    });
    await Future.delayed(const Duration(milliseconds: 600));
    if (!mounted) return;
    if (_idCtrl.text.trim().toLowerCase() == Donnees.identifiant &&
        _mdpCtrl.text == Donnees.motDePasse) {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 400),
          pageBuilder: (_, __, ___) => const MainShell(),
          transitionsBuilder: (_, a, __, c) =>
              FadeTransition(opacity: a, child: c),
        ),
      );
    } else {
      setState(() {
        _loading = false;
        _error = 'Identifiant ou mot de passe incorrect.';
      });
    }
  }

  @override
  void dispose() {
    _idCtrl.dispose();
    _mdpCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBg,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(24, 32, 24, 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 24),
             
              const SizedBox(height: 36),

              Text('Bonjour.',
                  style: sans(40,
                      w: FontWeight.w800, h: 1.0, ls: -1.5)),
              const SizedBox(height: 4),
              Text('Connectez-vous.',
                  style: sans(40,
                      w: FontWeight.w800,
                      h: 1.0,
                      ls: -1.5,
                      c: kAccent)),
              const SizedBox(height: 20),
              Text('Accédez au CV du Dr. Evidence Mushagalusa.',
                  style: sans(14, c: kInk2, h: 1.45)),

              const SizedBox(height: 48),
              _field('Identifiant', _idCtrl,
                  textInputAction: TextInputAction.next),
              const SizedBox(height: 18),
              _field(
                'Mot de passe',
                _mdpCtrl,
                obscure: _hide,
                onSubmitted: (_) => _submit(),
                suffix: IconButton(
                  iconSize: 20,
                  splashRadius: 20,
                  icon: Icon(
                    _hide
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                    color: kInk3,
                  ),
                  onPressed: () => setState(() => _hide = !_hide),
                ),
              ),

              if (_error != null) ...[
                const SizedBox(height: 14),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  decoration: BoxDecoration(
                    color: kDangerSoft,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(children: [
                    const Icon(Icons.error_outline,
                        size: 16, color: kDanger),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(_error!,
                          style: sans(12.5,
                              w: FontWeight.w500, c: kDanger)),
                    ),
                  ]),
                ),
              ],

              const SizedBox(height: 32),
              SizedBox(
                height: 54,
                child: FilledButton(
                  onPressed: _loading ? null : _submit,
                  style: FilledButton.styleFrom(
                    backgroundColor: kAccent,
                    disabledBackgroundColor: kAccent.withOpacity(0.5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14)),
                    elevation: 0,
                  ),
                  child: _loading
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                              strokeWidth: 2.2, color: Colors.white),
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Se connecter',
                                style: sans(15,
                                    w: FontWeight.w700,
                                    c: Colors.white)),
                            const SizedBox(width: 6),
                            const Icon(Icons.arrow_forward_rounded,
                                size: 18, color: Colors.white),
                          ],
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _field(
    String label,
    TextEditingController ctrl, {
    bool obscure = false,
    Widget? suffix,
    TextInputAction? textInputAction,
    ValueChanged<String>? onSubmitted,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 2, bottom: 8),
          child: Text(label, style: sans(12.5, w: FontWeight.w600, c: kInk2)),
        ),
        TextField(
          controller: ctrl,
          obscureText: obscure,
          cursorColor: kAccent,
          textInputAction: textInputAction,
          onSubmitted: onSubmitted,
          style: sans(15, w: FontWeight.w500),
          decoration: InputDecoration(
            filled: true,
            fillColor: kSurface,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 14, vertical: 15),
            suffixIcon: suffix,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: kBorder),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: kBorder),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: kAccent, width: 1.5),
            ),
          ),
        ),
      ],
    );
  }
}


class MainShell extends StatefulWidget {
  const MainShell({super.key});
  @override
  State<MainShell> createState() => _MainShellState();
}

class _MainShellState extends State<MainShell> {
  int _i = 0;

  void _logout() {
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        transitionDuration: const Duration(milliseconds: 350),
        pageBuilder: (_, __, ___) => const LoginPage(),
        transitionsBuilder: (_, a, __, c) =>
            FadeTransition(opacity: a, child: c),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final pages = [
      AccueilPage(onLogout: _logout),
      const FamillePage(),
      const ContactPage(),
    ];
    return Scaffold(
      backgroundColor: kBg,
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 200),
        child: KeyedSubtree(key: ValueKey(_i), child: pages[_i]),
      ),
      bottomNavigationBar:
          _NavBar(index: _i, onChange: (v) => setState(() => _i = v)),
    );
  }
}

class _NavBar extends StatelessWidget {
  final int index;
  final ValueChanged<int> onChange;
  const _NavBar({required this.index, required this.onChange});

  static const _items = [
    (icon: Icons.article_outlined, active: Icons.article_rounded, label: 'CV'),
    (icon: Icons.people_outline_rounded,
        active: Icons.people_rounded,
        label: 'Famille'),
    (icon: Icons.contact_mail_outlined,
        active: Icons.contact_mail_rounded,
        label: 'Contact'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kSurface,
        border: Border(top: BorderSide(color: kBorder)),
      ),
      child: SafeArea(
        top: false,
        child: SizedBox(
          height: 68,
          child: Row(
            children: [
              for (int i = 0; i < _items.length; i++)
                Expanded(child: _item(i)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _item(int i) {
    final active = i == index;
    final it = _items[i];
    return InkWell(
      onTap: () => onChange(i),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeOutCubic,
            width: 56,
            height: 28,
            decoration: BoxDecoration(
              color: active ? kAccentSoft : Colors.transparent,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Icon(
              active ? it.active : it.icon,
              size: 22,
              color: active ? kAccent : kInk3,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            it.label,
            style: sans(
              11,
              w: active ? FontWeight.w700 : FontWeight.w500,
              c: active ? kAccent : kInk3,
            ),
          ),
        ],
      ),
    );
  }
}


class AccueilPage extends StatelessWidget {
  final VoidCallback? onLogout;
  const AccueilPage({super.key, this.onLogout});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _hero(onLogout),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 24, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _statsRow(),
                  const SizedBox(height: 24),
                  _synthese(),
                  const SizedBox(height: 24),
                  _experiences(),
                  const SizedBox(height: 24),
                  _formations(),
                  const SizedBox(height: 24),
                  _skills(),
                  const SizedBox(height: 24),
                  _langues(),
                  const SizedBox(height: 24),
                  _projets(),
                  const SizedBox(height: 24),
                  _certifications(),
                  const SizedBox(height: 24),
                  _stages(),
                  const SizedBox(height: 24),
                  _leadership(),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget _hero(VoidCallback? onLogout) {
    return Container(
      decoration: const BoxDecoration(
        color: kDark,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(28)),
      ),
      padding: EdgeInsets.fromLTRB(
          20,
          MediaQueryData.fromWindow(WidgetsBinding.instance.window)
                  .padding
                  .top +
              12,
          20,
          26),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text('Mon CV',
                    style: sans(13,
                        w: FontWeight.w600, c: kDarkInk2, ls: 0.2)),
              ),
              Material(
                color: Colors.white.withOpacity(0.08),
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: onLogout,
                  child: const Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(Icons.logout_rounded,
                        size: 17, color: kDarkInk),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 22),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                      color: Colors.white.withOpacity(0.18), width: 1.5),
                ),
                padding: const EdgeInsets.all(2),
                child: Photo(
                  asset: Donnees.photo,
                  nom: Donnees.prenom,
                  size: 82,
                  radius: 12,
                  bg: kDarkInk.withOpacity(0.12),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 2),
                    Text('${Donnees.civilite} ${Donnees.prenom}',
                        style: sans(22,
                            w: FontWeight.w800,
                            c: kDarkInk,
                            h: 1.1,
                            ls: -0.6)),
                    Text(Donnees.nom,
                        style: sans(22,
                            w: FontWeight.w800,
                            c: kDarkInk,
                            h: 1.1,
                            ls: -0.6)),
                    const SizedBox(height: 10),
                    Text(Donnees.titreLong,
                        style: sans(11.5,
                            c: kDarkInk2, h: 1.5, w: FontWeight.w500)),
                    const SizedBox(height: 10),
                    Row(children: [
                      Icon(Icons.place_outlined,
                          size: 12, color: kDarkInk2),
                      const SizedBox(width: 4),
                      Text('Goma · Nord-Kivu · RDC',
                          style: sans(11,
                              c: kDarkInk2, w: FontWeight.w500)),
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _statsRow() => Row(
        children: [
          _stat('7', 'expériences'),
          const SizedBox(width: 10),
          _stat('4', 'langues'),
          const SizedBox(width: 10),
          _stat('4', 'projets'),
          const SizedBox(width: 10),
          _stat('10', 'certifs'),
        ],
      );

  Widget _stat(String v, String l) => Expanded(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 14),
          decoration: BoxDecoration(
            color: kSurface,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: kBorder),
          ),
          child: Column(
            children: [
              Text(v, style: sans(20, w: FontWeight.w800, h: 1)),
              const SizedBox(height: 4),
              Text(l,
                  style: sans(9.5, c: kInk3, w: FontWeight.w500, ls: 0.1)),
            ],
          ),
        ),
      );

  Widget _synthese() => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SectionHead('Synthèse'),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: kAccentSoft,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: kAccent.withOpacity(0.15)),
            ),
            child: Text(Donnees.synthese,
                style: sans(13, c: kInk, h: 1.55, w: FontWeight.w400)),
          ),
        ],
      );

  Widget _experiences() => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SectionHead('Expériences',
              trailing: '${Donnees.experiences.length} postes'),
          for (int i = 0; i < Donnees.experiences.length; i++)
            Padding(
              padding: EdgeInsets.only(
                  bottom: i == Donnees.experiences.length - 1 ? 0 : 10),
              child: _expCard(Donnees.experiences[i]),
            ),
        ],
      );

  Widget _expCard(Experience e) => CardBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PeriodBadge(e.period),
            const SizedBox(height: 10),
            Text(e.titre,
                style: sans(14, w: FontWeight.w700, h: 1.35, ls: -0.1)),
            const SizedBox(height: 3),
            Text(e.lieu, style: sans(12, c: kAccent, w: FontWeight.w600)),
            if (e.attributions != null) ...[
              const SizedBox(height: 10),
              Text(e.attributions!, style: sans(12, c: kInk2, h: 1.55)),
            ],
          ],
        ),
      );

  Widget _formations() => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SectionHead('Formation'),
          for (int i = 0; i < Donnees.formations.length; i++)
            Padding(
              padding: EdgeInsets.only(
                  bottom: i == Donnees.formations.length - 1 ? 0 : 10),
              child: _formationCard(Donnees.formations[i]),
            ),
        ],
      );

  Widget _formationCard(Formation f) => CardBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(f.titre,
                      style: sans(14, w: FontWeight.w700, h: 1.3, ls: -0.1)),
                ),
                const SizedBox(width: 8),
                PeriodBadge(f.period),
              ],
            ),
            const SizedBox(height: 4),
            Text(f.institution, style: sans(12, c: kInk2, h: 1.4)),
            if (f.diplomes.isNotEmpty) ...[
              const SizedBox(height: 10),
              for (var d in f.diplomes)
                Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 7),
                        child: Container(
                          width: 4,
                          height: 4,
                          decoration: const BoxDecoration(
                              color: kAccent, shape: BoxShape.circle),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(d, style: sans(12, c: kInk2, h: 1.5)),
                      ),
                    ],
                  ),
                ),
            ],
          ],
        ),
      );

  Widget _skills() => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SectionHead('Compétences techniques'),
          CardBox(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                for (int i = 0; i < Donnees.skills.length; i++) ...[
                  if (i > 0)
                    Container(height: 1, color: kBorder, margin: EdgeInsets.zero),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(Donnees.skills.keys.elementAt(i),
                            style: sans(11.5,
                                w: FontWeight.w700, c: kInk3, ls: 0.6)),
                        const SizedBox(height: 8),
                        Wrap(
                          spacing: 6,
                          runSpacing: 6,
                          children: Donnees.skills.values
                              .elementAt(i)
                              .map((s) => Tag(s))
                              .toList(),
                        ),
                      ],
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      );

  Widget _langues() => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SectionHead('Langues'),
          CardBox(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Column(
              children: [
                for (int i = 0; i < Donnees.langues.length; i++) ...[
                  if (i > 0) Container(height: 1, color: kBorder),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(Donnees.langues.keys.elementAt(i),
                              style: sans(13.5, w: FontWeight.w600)),
                        ),
                        Text(Donnees.langues.values.elementAt(i),
                            style: sans(12, c: kInk2, w: FontWeight.w500)),
                      ],
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      );

  Widget _projets() => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SectionHead('Projets livrés', trailing: '${Donnees.projets.length}'),
          for (int i = 0; i < Donnees.projets.length; i++)
            Padding(
              padding: EdgeInsets.only(
                  bottom: i == Donnees.projets.length - 1 ? 0 : 10),
              child: _projetCard(Donnees.projets[i]),
            ),
        ],
      );

  Widget _projetCard(Projet p) => CardBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 34,
                  height: 34,
                  decoration: BoxDecoration(
                    color: kAccentSoft,
                    borderRadius: BorderRadius.circular(9),
                  ),
                  child: const Icon(Icons.apps_rounded,
                      size: 17, color: kAccent),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(p.nom,
                          style: sans(14,
                              w: FontWeight.w700, ls: -0.1, h: 1.25)),
                      const SizedBox(height: 2),
                      Text(p.year,
                          style: sans(11, c: kInk3, w: FontWeight.w600)),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(p.description, style: sans(12, c: kInk2, h: 1.55)),
          ],
        ),
      );

  Widget _certifications() => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SectionHead('Formations & certifications'),
          CardBox(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Column(
              children: [
                for (int i = 0; i < Donnees.certifications.length; i++) ...[
                  if (i > 0) Container(height: 1, color: kBorder),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 7, vertical: 2),
                          decoration: BoxDecoration(
                            color: kAccentSoft,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(Donnees.certifications[i].period,
                              style: sans(10,
                                  w: FontWeight.w700, c: kAccent)),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(Donnees.certifications[i].titre,
                                  style: sans(13,
                                      w: FontWeight.w600, h: 1.35)),
                              if (Donnees.certifications[i].detail != null) ...[
                                const SizedBox(height: 2),
                                Text(Donnees.certifications[i].detail!,
                                    style: sans(11.5,
                                        c: kInk3, w: FontWeight.w500)),
                              ],
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      );

  Widget _stages() => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SectionHead('Stages professionnels'),
          CardBox(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Column(
              children: [
                for (int i = 0; i < Donnees.stages.length; i++) ...[
                  if (i > 0) Container(height: 1, color: kBorder),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(Donnees.stages[i].type,
                                  style: sans(13,
                                      w: FontWeight.w600, h: 1.35)),
                              const SizedBox(height: 2),
                              Text(Donnees.stages[i].lieu,
                                  style: sans(11.5,
                                      c: kInk2, w: FontWeight.w500)),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(Donnees.stages[i].period,
                            style: sans(11, c: kInk3, w: FontWeight.w500)),
                      ],
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      );

  Widget _leadership() => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SectionHead('Leadership'),
          Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [kDark, Color(0xFF1F3A2E)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.format_quote_rounded,
                    size: 22, color: kDarkInk2),
                const SizedBox(height: 8),
                Text(
                    "Un mélange de crédibilité technique, de vision stratégique et d'intelligence collective — transformer les défis complexes en opportunités durables.",
                    style: sans(15,
                        c: kDarkInk, h: 1.55, w: FontWeight.w500)),
                const SizedBox(height: 14),
                Row(children: [
                  Container(width: 18, height: 1, color: kDarkInk2),
                  const SizedBox(width: 8),
                  Text('Dr. Evidence Mushagalusa',
                      style: sans(11,
                          c: kDarkInk2,
                          w: FontWeight.w600,
                          ls: 0.3)),
                ]),
              ],
            ),
          ),
        ],
      );
}


class FamillePage extends StatelessWidget {
  const FamillePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 24),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 24),
              Text('Famille',
                  style: sans(30, w: FontWeight.w800, h: 1.05, ls: -1.2)),
              const SizedBox(height: 6),
              Text(Donnees.etatCivil,
                  style: sans(13.5, c: kInk2, h: 1.4)),
              const SizedBox(height: 24),
              const SectionHead('Proches'),
              for (int i = 0; i < Donnees.famille.length; i++)
                Padding(
                  padding: EdgeInsets.only(
                      bottom: i == Donnees.famille.length - 1 ? 0 : 10),
                  child: _membreCard(Donnees.famille[i]),
                ),
              const SizedBox(height: 24),
              const SectionHead('Informations personnelles'),
              CardBox(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                child: Column(
                  children: [
                    _info('Date de naissance', Donnees.naissance),
                    Container(height: 1, color: kBorder),
                    _info('Lieu de naissance', Donnees.lieuNaissance),
                    Container(height: 1, color: kBorder),
                    _info('Nationalité', Donnees.nationalite),
                    Container(height: 1, color: kBorder),
                    _info('Sexe', Donnees.sexe),
                    Container(height: 1, color: kBorder),
                    _info('Croyance', Donnees.croyance),
                    Container(height: 1, color: kBorder),
                    _info('Loisirs', Donnees.loisir),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _membreCard(Membre m) => CardBox(
        child: Row(
          children: [
            Photo(
              nom: m.nom,
              size: 56,
              radius: 28,
              bg: m.role == 'Épouse'
                  ? const Color(0xFFF4E8DC)
                  : kAccentSoft,
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(m.nom,
                      style: sans(18, w: FontWeight.w700, h: 1.15, ls: -0.4)),
                  const SizedBox(height: 3),
                  Text(m.sousTitre,
                      style: sans(12, c: kInk2, w: FontWeight.w500)),
                ],
              ),
            ),
            Tag(m.role, filled: true),
          ],
        ),
      );

  Widget _info(String label, String value) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          children: [
            Expanded(
              child: Text(label,
                  style: sans(13, c: kInk2, w: FontWeight.w500)),
            ),
            Text(value, style: sans(13, w: FontWeight.w600)),
          ],
        ),
      );
}


class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  Future<void> _open(BuildContext context, String url) async {
    try {
      final ok = await launchUrl(Uri.parse(url),
          mode: LaunchMode.externalApplication);
      if (!ok && context.mounted) toast(context, "Impossible d'ouvrir");
    } catch (_) {
      if (context.mounted) toast(context, "Impossible d'ouvrir");
    }
  }

  Future<void> _copy(BuildContext context, String text) async {
    await Clipboard.setData(ClipboardData(text: text));
    if (context.mounted) toast(context, 'Copié dans le presse-papiers');
  }

  @override
  Widget build(BuildContext context) {
    final tel = Donnees.telephone.replaceAll(' ', '');
    final wa = 'https://wa.me/${tel.replaceAll('+', '')}';

    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 24),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 24),
              Text('Contact',
                  style: sans(30, w: FontWeight.w800, h: 1.05, ls: -1.2)),
              const SizedBox(height: 6),
              Text('Discutons ensemble.',
                  style: sans(13.5, c: kInk2, h: 1.4)),
              const SizedBox(height: 24),

              // Actions rapides
              Row(
                children: [
                  _action(context, Icons.call_rounded, 'Appeler',
                      () => _open(context, 'tel:$tel')),
                  const SizedBox(width: 10),
                  _action(context, Icons.mail_rounded, 'E-mail',
                      () => _open(context, 'mailto:${Donnees.email}')),
                  const SizedBox(width: 10),
                  _action(context, Icons.chat_rounded, 'WhatsApp',
                      () => _open(context, wa)),
                ],
              ),
              const SizedBox(height: 24),

              // Coordonnées
              const SectionHead('Coordonnées'),
              CardBox(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                child: Column(
                  children: [
                    _contactRow(
                      Icons.phone_rounded,
                      'Téléphone',
                      Donnees.telephone,
                      () => _open(context, 'tel:$tel'),
                      () => _copy(context, Donnees.telephone),
                    ),
                    Container(height: 1, color: kBorder),
                    _contactRow(
                      Icons.email_rounded,
                      'E-mail personnel',
                      Donnees.email,
                      () => _open(context, 'mailto:${Donnees.email}'),
                      () => _copy(context, Donnees.email),
                    ),
                    Container(height: 1, color: kBorder),
                    _contactRow(
                      Icons.business_center_rounded,
                      'E-mail professionnel',
                      Donnees.emailPro,
                      () => _open(context, 'mailto:${Donnees.emailPro}'),
                      () => _copy(context, Donnees.emailPro),
                    ),
                    Container(height: 1, color: kBorder),
                    _contactRow(
                      Icons.language_rounded,
                      'Site web',
                      Donnees.webDisplay,
                      () => _open(context, Donnees.web),
                      () => _copy(context, Donnees.web),
                    ),
                    Container(height: 1, color: kBorder),
                    _contactRow(
                      Icons.location_on_rounded,
                      'Adresse',
                      Donnees.adresse,
                      () => _copy(context, Donnees.adresse),
                      () => _copy(context, Donnees.adresse),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Références
              SectionHead('Références',
                  trailing: '${Donnees.references.length}'),
              CardBox(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                child: Column(
                  children: [
                    for (int i = 0; i < Donnees.references.length; i++) ...[
                      if (i > 0) Container(height: 1, color: kBorder),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 28,
                              height: 28,
                              decoration: BoxDecoration(
                                color: kAccentSoft,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              alignment: Alignment.center,
                              child: Text('${i + 1}',
                                  style: sans(11,
                                      w: FontWeight.w700, c: kAccent)),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(Donnees.references[i].nom,
                                      style: sans(13,
                                          w: FontWeight.w600, h: 1.35)),
                                  const SizedBox(height: 2),
                                  Text(Donnees.references[i].titre,
                                      style: sans(11.5,
                                          c: kInk2,
                                          w: FontWeight.w500,
                                          h: 1.4)),
                                  if (Donnees.references[i].tel !=
                                      null) ...[
                                    const SizedBox(height: 4),
                                    GestureDetector(
                                      onTap: () => _open(
                                          context,
                                          'tel:${Donnees.references[i].tel!.replaceAll(' ', '')}'),
                                      child: Text(
                                        Donnees.references[i].tel!,
                                        style: sans(11.5,
                                            c: kAccent,
                                            w: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Text('Appui long pour copier',
                    style: sans(11.5, c: kInk3)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _action(BuildContext context, IconData icon, String label,
      VoidCallback onTap) {
    return Expanded(
      child: CardBox(
        onTap: onTap,
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          children: [
            Container(
              width: 38,
              height: 38,
              decoration: BoxDecoration(
                color: kAccentSoft,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(icon, size: 18, color: kAccent),
            ),
            const SizedBox(height: 8),
            Text(label, style: sans(12, w: FontWeight.w600)),
          ],
        ),
      ),
    );
  }

  Widget _contactRow(
    IconData icon,
    String label,
    String value,
    VoidCallback onTap,
    VoidCallback onLongPress,
  ) {
    return InkWell(
      onTap: onTap,
      onLongPress: onLongPress,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          children: [
            Container(
              width: 34,
              height: 34,
              decoration: BoxDecoration(
                color: kAccentSoft,
                borderRadius: BorderRadius.circular(9),
              ),
              child: Icon(icon, size: 16, color: kAccent),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(label,
                      style: sans(11, c: kInk3, w: FontWeight.w500)),
                  const SizedBox(height: 2),
                  Text(value,
                      style: sans(13, w: FontWeight.w600),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis),
                ],
              ),
            ),
            const Icon(Icons.chevron_right_rounded,
                size: 18, color: kInk3),
          ],
        ),
      ),
    );
  }
}