import 'package:mnemonic/mnemonic.dart';
import 'package:test/test.dart';

void main() {
  test('Validate mnemonic', () {
    expect(
        validateMnemonic(
            'share vicious fun apple moment stem holiday bitter little agent first brand'),
        isTrue);
  });

  group('Generate mnemonic with deifferent strengths', () {
    test('Strength 128', () {
      final words = (generateMnemonic(strength: 128)).split(' ');
      expect(words.length, equals(12),
          reason: 'can vary generated entropy bit length');
    });

    test('Strength 160', () {
      final words = (generateMnemonic(strength: 160)).split(' ');
      expect(words.length, equals(15),
          reason: 'can vary generated entropy bit length');
    });

    test('Strength 192', () {
      final words = (generateMnemonic(strength: 192)).split(' ');
      expect(words.length, equals(18),
          reason: 'can vary generated entropy bit length');
    });

    test('Stregth 224', () {
      final words = (generateMnemonic(strength: 224)).split(' ');
      expect(words.length, equals(21),
          reason: 'can vary generated entropy bit length');
    });

    test('Stregth 256', () {
      final words = (generateMnemonic(strength: 256)).split(' ');
      expect(words.length, equals(24),
          reason: 'can vary generated entropy bit length');
    });
  });
}
