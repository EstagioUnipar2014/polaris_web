Sistema de gerenciamento de propriedades leiteiras Polaris.
=====

Este é um sistema para o gerenciamento de propriedades rurais, que focam na produção de leite.

O sistema traz o cadastro de animais, vacinações, exames, produção diária, além de um controle de nutrição.
Também apresenta vários relatórios para o gerenciamento da propriedade.
Em um futuro, também será implementado um sistema de gerenciamento financeiro.

Configuração e instalação
-----

Arquivo de configuração do banco de dados:
``` sh
cp /config/database.yml.tmp /config/database.yml
```

Configuração do ambiente rails:
``` sh
bundle install
rake db:create
rake db:migrate
rails s
```
