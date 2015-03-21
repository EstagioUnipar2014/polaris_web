# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
  inflect.irregular 'animal', 'animais'
  inflect.irregular 'classificacao', 'classificacoes'
  inflect.irregular 'pesagem', 'pesagens'
  inflect.irregular 'imagem', 'imagens'
  inflect.irregular 'pais', 'paises'
  inflect.irregular 'doenca_exame', 'doencas_exames'
  inflect.irregular 'dieta', 'dietas'
  inflect.irregular 'ciclo_dieta', 'ciclos_dietas'
  inflect.plural 'animal_dieta', 'animal_dieta'
  inflect.irregular 'animal_doenca', 'animais_doencas'
  inflect.irregular 'notificacao', 'notificacoes'
  inflect.irregular 'movimentacao', 'movimentacoes'
  inflect.irregular 'categoria_financeira', 'categorias_financeiras'
#   inflect.uncountable %w( fish sheep )
end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end
