require 'test/unit'
require_relative '../questao_3'

class Questao3Test < Test::Unit::TestCase
  def test_output_format_1
    test_input = '97905796671Maria Neusa de00001234'
    expected_output = get_expected_output('format_1')
    test_subject = Questao3.new.solucao(test_input)

    assert_equal(expected_output, test_subject)
  end

  def test_output_format_2
    test_input = '44010762900Ricardo Fontes00000567'
    expected_output = get_expected_output('format_2')
    test_subject = Questao3.new.solucao(test_input)

    assert_equal(expected_output, test_subject)
  end

  private

  def get_expected_output(format = nil)
    case format
    when 'format_1'
      {cpf: '97905796671', name: 'Maria Neusa de', value: '1234'}
    when 'format_2'
      {cpf: '44010762900', name: 'Ricardo Fontes', value: '567'}
    else
      {cpf: '97905796671', name: 'Maria Neusa de', value: '1234'}
    end
  end
end