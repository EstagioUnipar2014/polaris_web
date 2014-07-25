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
  inflect.irregular 'dieta_do_animal', 'dietas_do_animal'
  inflect.irregular 'doenca_do_animal', 'doencas_do_animal'
  inflect.irregular 'pais', 'paises'
  inflect.irregular 'doenca_exame', 'doencas_exames'
  inflect.irregular 'dieta', 'dietas'
  inflect.irregular 'ciclo_dieta', 'ciclos_dietas'
  inflect.irregular 'animal_dieta', 'animal_dieta'
#   inflect.uncountable %w( fish sheep )
end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end
