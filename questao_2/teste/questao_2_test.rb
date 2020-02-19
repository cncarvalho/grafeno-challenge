require 'test/unit'
require_relative '../questao_2'

class Questao2Test < Test::Unit::TestCase
  def test_output_default_format
    test_input = get_test_input
    expected_output = get_expected_output
    test_subject = Questao2.new.solucao(test_input)

    assert_equal(expected_output, test_subject)
  end

  def test_output_format_1
    test_input = get_test_input
    expected_output = get_expected_output('format_1')
    test_subject = Questao2.new.solucao(test_input, 'teste/format_1.yml')

    assert_equal(expected_output, test_subject)
  end

  def test_output_format_2
    test_input = get_test_input
    expected_output = get_expected_output('format_2')
    test_subject = Questao2.new.solucao(test_input, 'teste/format_2.yml')

    assert_equal(expected_output, test_subject)
  end

  private

  def get_test_input
    [
      {
        name: 'Maria Neusa de Aparecida',
        cpf: '97905796671',
        state: 'Sao Paulo',
        value: '1234'
      },
      {
        name: 'Ricardo Fontes',
        cpf: '44010762900',
        state: 'Rio Grande do Sul',
        value: '567'
      }
    ]
  end

  def get_expected_output(format = nil)
    case format
    when 'format_1'
      "97905796671Maria Neusa de00001234\n44010762900Ricardo Fontes00000567"
    when 'format_2'
      "0009790579667100001234Sao Paulo     \n0004401076290000000567Rio Grande do "
    else
      "97905796671Maria Neusa de00001234\n44010762900Ricardo Fontes00000567"
    end
  end
end