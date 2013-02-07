Ruby Immersion <3
--------

Tenho uma série de posts sobre Ruby em meu [blog](#posts) e a ideia deste repositório é centralizar todos os exemplos de código estudados, sempre com testes validando o que é explicado.

Além de servir como base para o Blog, pode ser utilizado também parar gerar novos testes a fim de estudar e validar recursos e conceitos da linguagem.

Para mostrar o código nos posts, fiz uma pequena adaptação no plugin [WP-Syntax](http://wordpress.org/extend/plugins/wp-syntax/) do Wordpress que pode ser vista [neste gist](https://gist.github.com/gbaptista/4726705). Esta adaptação está bem nojenta, mas funciona bem. Está na minha lista fazer um plugin decente para incluir códigos de repositórios do Github (o [gist-it.appspot.com](http://gist-it.appspot.com/) é bacana, mas não senti amor).

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

* [A malandragem do attr_writer](http://blog.gbaptista.com/2013/02/07/a-malandragem-do-attr_writer/)
