import 'package:sealed_unions/factories/doublet_factory.dart';
import 'package:sealed_unions/factories/nonet_factory.dart';
import 'package:sealed_unions/factories/nullet_factory.dart';
import 'package:sealed_unions/factories/octet_factory.dart';
import 'package:sealed_unions/factories/quartet_factory.dart';
import 'package:sealed_unions/factories/quintet_factory.dart';
import 'package:sealed_unions/factories/septet_factory.dart';
import 'package:sealed_unions/factories/sextet_factory.dart';
import 'package:sealed_unions/factories/singlet_factory.dart';
import 'package:sealed_unions/factories/triplet_factory.dart';
import 'package:test/test.dart';

const String VALID = "a";
const String INVALID = "";
const List<String> VALID_ARRAY = const [
  VALID,
  VALID,
  VALID,
  VALID,
  VALID,
  VALID,
  VALID,
  VALID,
  VALID,
  VALID,
];

final String Function(int) VALUE = (a) => VALID;
final String Function(int) EMPTY = (a) => INVALID;
final Function(int) SUCCESS = (i) => "Success";
final Function(int) ERROR = (i) => StateError("");

void main() {
  group('Union Factories => test join ', () {
    Nullet<int> nullet = Nullet();
    Singlet<int> singlet = Singlet();
    Doublet<int, int> doublet = Doublet();
    Triplet<int, int, int> triplet = Triplet();
    Quartet<int, int, int, int> quartet = Quartet();
    Quintet<int, int, int, int, int> quintet = Quintet();
    Sextet<int, int, int, int, int, int> sextet = Sextet();
    Septet<int, int, int, int, int, int, int> septet = Septet();
    Octet<int, int, int, int, int, int, int, int> octet = Octet();
    Nonet<int, int, int, int, int, int, int, int, int> nonet = Nonet();

    String join0 = nullet.first(0).join(VALUE);
    String join1 = singlet.first(0).join(VALUE, () => INVALID);
    String join2 = doublet.first(0).join(VALUE, VALUE);
    String join3 = triplet.first(0).join(VALUE, VALUE, VALUE);
    String join4 = quartet.first(0).join(VALUE, VALUE, VALUE, VALUE);
    String join5 = quintet.first(0).join(VALUE, VALUE, VALUE, VALUE, VALUE);
    String join6 = sextet.first(0).join(VALUE, VALUE, VALUE, VALUE, VALUE, VALUE);
    String join7 = septet.first(0).join(VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE);
    String join8 = octet.first(0).join(VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE);
    String join9 = nonet.first(0).join(VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE, VALUE);

    test('assert valid array => first', () {
      expect(VALID_ARRAY, [join0, join1, join2, join3, join4, join5, join6, join7, join8, join9]);
    });

    join1 = singlet.none().join(EMPTY, () => VALID);
    join2 = doublet.second(0).join((a) => INVALID, (a) => VALID);
    join3 = triplet.second(0).join(EMPTY, VALUE, EMPTY);
    join4 = quartet.second(0).join(EMPTY, VALUE, EMPTY, EMPTY);
    join5 = quintet.second(0).join(EMPTY, VALUE, EMPTY, EMPTY, EMPTY);
    join6 = sextet.second(0).join(EMPTY, VALUE, EMPTY, EMPTY, EMPTY, EMPTY);
    join7 = septet.second(0).join(EMPTY, VALUE, EMPTY, EMPTY, EMPTY, EMPTY, EMPTY);
    join8 = octet.second(0).join(EMPTY, VALUE, EMPTY, EMPTY, EMPTY, EMPTY, EMPTY, EMPTY);
    join9 = nonet.second(0).join(EMPTY, VALUE, EMPTY, EMPTY, EMPTY, EMPTY, EMPTY, EMPTY, EMPTY);

    test('assert valid array => second', () {
      expect(VALID_ARRAY, [join0, join1, join2, join3, join4, join5, join6, join7, join8, join9]);
    });

    join3 = triplet.third(0).join(EMPTY, EMPTY, VALUE);
    join4 = quartet.third(0).join(EMPTY, EMPTY, VALUE, EMPTY);
    join5 = quintet.third(0).join(EMPTY, EMPTY, VALUE, EMPTY, EMPTY);
    join6 = sextet.third(0).join(EMPTY, EMPTY, VALUE, EMPTY, EMPTY, EMPTY);
    join7 = septet.third(0).join(EMPTY, EMPTY, VALUE, EMPTY, EMPTY, EMPTY, EMPTY);
    join8 = octet.third(0).join(EMPTY, EMPTY, VALUE, EMPTY, EMPTY, EMPTY, EMPTY, EMPTY);
    join9 = nonet.third(0).join(EMPTY, EMPTY, VALUE, EMPTY, EMPTY, EMPTY, EMPTY, EMPTY, EMPTY);

    test('assert valid array => third', () {
      expect(VALID_ARRAY, [join0, join1, join2, join3, join4, join5, join6, join7, join8, join9]);
    });

    join4 = quartet.fourth(0).join(EMPTY, EMPTY, EMPTY, VALUE);
    join5 = quintet.fourth(0).join(EMPTY, EMPTY, EMPTY, VALUE, EMPTY);
    join6 = sextet.fourth(0).join(EMPTY, EMPTY, EMPTY, VALUE, EMPTY, EMPTY);
    join7 = septet.fourth(0).join(EMPTY, EMPTY, EMPTY, VALUE, EMPTY, EMPTY, EMPTY);
    join8 = octet.fourth(0).join(EMPTY, EMPTY, EMPTY, VALUE, EMPTY, EMPTY, EMPTY, EMPTY);
    join9 = nonet.fourth(0).join(EMPTY, EMPTY, EMPTY, VALUE, EMPTY, EMPTY, EMPTY, EMPTY, EMPTY);

    test('assert valid array => fourth', () {
      expect(VALID_ARRAY, [join0, join1, join2, join3, join4, join5, join6, join7, join8, join9]);
    });

    join5 = quintet.fifth(0).join(EMPTY, EMPTY, EMPTY, EMPTY, VALUE);
    join6 = sextet.fifth(0).join(EMPTY, EMPTY, EMPTY, EMPTY, VALUE, EMPTY);
    join7 = septet.fifth(0).join(EMPTY, EMPTY, EMPTY, EMPTY, VALUE, EMPTY, EMPTY);
    join8 = octet.fifth(0).join(EMPTY, EMPTY, EMPTY, EMPTY, VALUE, EMPTY, EMPTY, EMPTY);
    join9 = nonet.fifth(0).join(EMPTY, EMPTY, EMPTY, EMPTY, VALUE, EMPTY, EMPTY, EMPTY, EMPTY);

    test('assert valid array => fifth', () {
      expect(VALID_ARRAY, [join0, join1, join2, join3, join4, join5, join6, join7, join8, join9]);
    });

    join6 = sextet.sixth(0).join(EMPTY, EMPTY, EMPTY, EMPTY, EMPTY, VALUE);
    join7 = septet.sixth(0).join(EMPTY, EMPTY, EMPTY, EMPTY, EMPTY, VALUE, EMPTY);
    join8 = octet.sixth(0).join(EMPTY, EMPTY, EMPTY, EMPTY, EMPTY, VALUE, EMPTY, EMPTY);
    join9 = nonet.sixth(0).join(EMPTY, EMPTY, EMPTY, EMPTY, EMPTY, VALUE, EMPTY, EMPTY, EMPTY);

    test('assert valid array => sixth', () {
      expect(VALID_ARRAY, [join0, join1, join2, join3, join4, join5, join6, join7, join8, join9]);
    });

    join7 = septet.seventh(0).join(EMPTY, EMPTY, EMPTY, EMPTY, EMPTY, EMPTY, VALUE);
    join8 = octet.seventh(0).join(EMPTY, EMPTY, EMPTY, EMPTY, EMPTY, EMPTY, VALUE, EMPTY);
    join9 = nonet.seventh(0).join(EMPTY, EMPTY, EMPTY, EMPTY, EMPTY, EMPTY, VALUE, EMPTY, EMPTY);

    test('assert valid array => septet', () {
      expect(VALID_ARRAY, [join0, join1, join2, join3, join4, join5, join6, join7, join8, join9]);
    });

    join8 = octet.eighth(0).join(EMPTY, EMPTY, EMPTY, EMPTY, EMPTY, EMPTY, EMPTY, VALUE);
    join9 = nonet.eighth(0).join(EMPTY, EMPTY, EMPTY, EMPTY, EMPTY, EMPTY, EMPTY, VALUE, EMPTY);

    test('assert valid array => eighth', () {
      expect(VALID_ARRAY, [join0, join1, join2, join3, join4, join5, join6, join7, join8, join9]);
    });

    join9 = nonet.ninth(0).join(EMPTY, EMPTY, EMPTY, EMPTY, EMPTY, EMPTY, EMPTY, EMPTY, VALUE);

    test('assert valid array => ninth', () {
      expect(VALID_ARRAY, [join0, join1, join2, join3, join4, join5, join6, join7, join8, join9]);
    });
  });

  group('Union Factories => test continued ', () {
    Nullet<int> nullet = Nullet();
    Singlet<int> singlet = Singlet();
    Doublet<int, int> doublet = Doublet();
    Triplet<int, int, int> triplet = Triplet();
    Quartet<int, int, int, int> quartet = Quartet();
    Quintet<int, int, int, int, int> quintet = Quintet();
    Sextet<int, int, int, int, int, int> sextet = Sextet();
    Septet<int, int, int, int, int, int, int> septet = Septet();
    Octet<int, int, int, int, int, int, int, int> octet = Octet();
    Nonet<int, int, int, int, int, int, int, int, int> nonet = Nonet();

    nullet.first(0).continued(SUCCESS);
    singlet.first(0).continued(SUCCESS, () {});
    doublet.first(0).continued(SUCCESS, ERROR);
    triplet.first(0).continued(SUCCESS, ERROR, ERROR);
    quartet.first(0).continued(SUCCESS, ERROR, ERROR, ERROR);
    quintet.first(0).continued(SUCCESS, ERROR, ERROR, ERROR, ERROR);
    sextet.first(0).continued(SUCCESS, ERROR, ERROR, ERROR, ERROR, ERROR);
    septet.first(0).continued(SUCCESS, ERROR, ERROR, ERROR, ERROR, ERROR, ERROR);
    octet.first(0).continued(SUCCESS, ERROR, ERROR, ERROR, ERROR, ERROR, ERROR, ERROR);
    nonet.first(0).continued(SUCCESS, ERROR, ERROR, ERROR, ERROR, ERROR, ERROR, ERROR, ERROR);
    /* */
    singlet.none().continued(ERROR, () {});
    doublet.second(0).continued(ERROR, SUCCESS);
    triplet.second(0).continued(ERROR, SUCCESS, ERROR);
    quartet.second(0).continued(ERROR, SUCCESS, ERROR, ERROR);
    quintet.second(0).continued(ERROR, SUCCESS, ERROR, ERROR, ERROR);
    sextet.second(0).continued(ERROR, SUCCESS, ERROR, ERROR, ERROR, ERROR);
    septet.second(0).continued(ERROR, SUCCESS, ERROR, ERROR, ERROR, ERROR, ERROR);
    octet.second(0).continued(ERROR, SUCCESS, ERROR, ERROR, ERROR, ERROR, ERROR, ERROR);
    nonet.second(0).continued(ERROR, SUCCESS, ERROR, ERROR, ERROR, ERROR, ERROR, ERROR, ERROR);
    /* */
    triplet.third(0).continued(ERROR, ERROR, SUCCESS);
    quartet.third(0).continued(ERROR, ERROR, SUCCESS, ERROR);
    quintet.third(0).continued(ERROR, ERROR, SUCCESS, ERROR, ERROR);
    sextet.third(0).continued(ERROR, ERROR, SUCCESS, ERROR, ERROR, ERROR);
    septet.third(0).continued(ERROR, ERROR, SUCCESS, ERROR, ERROR, ERROR, ERROR);
    octet.third(0).continued(ERROR, ERROR, SUCCESS, ERROR, ERROR, ERROR, ERROR, ERROR);
    nonet.third(0).continued(ERROR, ERROR, SUCCESS, ERROR, ERROR, ERROR, ERROR, ERROR, ERROR);
    /* */
    quartet.fourth(0).continued(ERROR, ERROR, ERROR, SUCCESS);
    quintet.fourth(0).continued(ERROR, ERROR, ERROR, SUCCESS, ERROR);
    sextet.fourth(0).continued(ERROR, ERROR, ERROR, SUCCESS, ERROR, ERROR);
    septet.fourth(0).continued(ERROR, ERROR, ERROR, SUCCESS, ERROR, ERROR, ERROR);
    octet.fourth(0).continued(ERROR, ERROR, ERROR, SUCCESS, ERROR, ERROR, ERROR, ERROR);
    nonet.fourth(0).continued(ERROR, ERROR, ERROR, SUCCESS, ERROR, ERROR, ERROR, ERROR, ERROR);
    /* */
    quintet.fifth(0).continued(ERROR, ERROR, ERROR, ERROR, SUCCESS);
    sextet.fifth(0).continued(ERROR, ERROR, ERROR, ERROR, SUCCESS, ERROR);
    septet.fifth(0).continued(ERROR, ERROR, ERROR, ERROR, SUCCESS, ERROR, ERROR);
    octet.fifth(0).continued(ERROR, ERROR, ERROR, ERROR, SUCCESS, ERROR, ERROR, ERROR);
    nonet.fifth(0).continued(ERROR, ERROR, ERROR, ERROR, SUCCESS, ERROR, ERROR, ERROR, ERROR);
    /* */
    sextet.sixth(0).continued(ERROR, ERROR, ERROR, ERROR, ERROR, SUCCESS);
    septet.sixth(0).continued(ERROR, ERROR, ERROR, ERROR, ERROR, SUCCESS, ERROR);
    octet.sixth(0).continued(ERROR, ERROR, ERROR, ERROR, ERROR, SUCCESS, ERROR, ERROR);
    nonet.sixth(0).continued(ERROR, ERROR, ERROR, ERROR, ERROR, SUCCESS, ERROR, ERROR, ERROR);
    /* */
    septet.seventh(0).continued(ERROR, ERROR, ERROR, ERROR, ERROR, ERROR, SUCCESS);
    octet.seventh(0).continued(ERROR, ERROR, ERROR, ERROR, ERROR, ERROR, SUCCESS, ERROR);
    nonet.seventh(0).continued(ERROR, ERROR, ERROR, ERROR, ERROR, ERROR, SUCCESS, ERROR, ERROR);
    /* */
    octet.eighth(0).continued(ERROR, ERROR, ERROR, ERROR, ERROR, ERROR, ERROR, SUCCESS);
    nonet.eighth(0).continued(ERROR, ERROR, ERROR, ERROR, ERROR, ERROR, ERROR, SUCCESS, ERROR);
    /* */
    nonet.ninth(0).continued(ERROR, ERROR, ERROR, ERROR, ERROR, ERROR, ERROR, ERROR, SUCCESS);
  });
}
