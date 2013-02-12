Ruby Immersion <3
--------

Tenho uma série de posts sobre Ruby em meu [blog](#posts) e a ideia deste repositório é centralizar todos os exemplos de código estudados, sempre com testes validando o que é explicado.

Além de servir como base para o Blog, pode ser utilizado também parar gerar novos testes a fim de estudar e validar recursos e conceitos da linguagem.

Para mostrar o código nos posts, criei um plugin no Wordpress que permite incluir trechos de arquivos do GitHub, o  [WP-Git-Embed](https://github.com/gbaptista/wp-git-embed).

Aqui tem uma lista de todos os [posts já escritos](#posts) até o momento.


Rake
--------

### Executar todos os testes:
```bash
rake
# ou
rake test
```

### Executar um teste único:
```bash
rake t modules:2
# ou
rake test_only modules:2

# Executará:
# test/modules/test_02.rb
```

### Gerar novos testes:
```bash
rake g modules:3
# ou
rake generate modules:3

# Irá gerar os arquivos:
# lib/modules/03.rb
# test/modules/test_03.rb
```

Posts
--------

* [Módulo, Namespace, Mixin e a Herança Múltipla Imaginária](http://gbaptista.com/2013/02/12/modulo-namespace-mixin-e-a-heranca-multipla-imaginaria/)
* [A malandragem do attr_writer](http://gbaptista.com/2013/02/07/a-malandragem-do-attr_writer/)
