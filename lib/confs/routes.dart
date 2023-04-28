import 'package:trabalho1/page/page_contato.dart';
import 'package:trabalho1/page/page_cadastro_contato.dart';

//string que da acesso a pagina
const String HOME_PAGE = '/';
const String ADD_CONTATO = '/new';

var routesOfApp = {
  HOME_PAGE: (context) => const PageContato(),
  ADD_CONTATO: (context) => const PageCadastroContato(),
};
