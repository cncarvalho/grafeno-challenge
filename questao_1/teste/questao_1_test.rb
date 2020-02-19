require 'test/unit'
require_relative '../questao_1'

class Questao1Test < Test::Unit::TestCase
  def test_output
    test_input = get_test_input
    expected_output = get_expected_output
    test_subject = Questao1.new.solucao(test_input)

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
      },
      {
        name: 'Nome curto',
        cpf: '100',
        state: 'Ceará',
        value: '100'
      },
      {
        name: 'Nome muito muito longo',
        cpf: '123456789101112',
        state: 'Estado com um nome muito longo',
        value: '123456789101112'
      }
    ]
  end

  def get_expected_output
    test_case_1 = 'Maria Neusa97905796671Sao Paulo  1234       '
    test_case_2 = 'Ricardo Fon44010762900Rio Grande 567        '
    test_case_3 = 'Nome curto 100        Ceará      100        '
    test_case_4 = 'Nome muito 12345678910Estado com 12345678910'

    [test_case_1, test_case_2, test_case_3, test_case_4].join("\n")
  end
end