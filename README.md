# nerd-power-rails

[![Build Status](https://travis-ci.org/nandosousafr/nerd-power-rails.png?branch=master)](https://travis-ci.org/nandosousafr/nerd-power-rails)
[![Code Climate](https://codeclimate.com/github/nandosousafr/nerd-power-rails.png)](https://codeclimate.com/github/nandosousafr/nerd-power-rails)

Protótipo [SkyNerd] NerdPower em RubyOnRails

Depedências:

* Postgres
* Redis

## Escopo inicial
* Usuário poderá fazer alianças com outros usuários;
* Usuário poderá fazer publicações (somente em texto a princípio);
* Usuário poderá buscar conteúdo na rede;

## Próxima etapa
* Usuário poderá trocar mensagens com outros usuários em realtime;
* Usuário poderá anexar imagens a publicação;
* Usuário poderá anexar links a publicação;


## Idéias
* Usuário poderá ouvir, comentar, curtir podcasts através da rede;
* Usuário poderá anexar filmes a publicação de forma semântica;

## Idéias de monetização
* A rede poderá intermediar compra/venda/troca de artigos
(quadrinhos, games, etc..) nerds entre os usuários;

## Tratado Nerd
* Garantir privacidade do nerd;
* Não inundar a rede de anúncios de publicidade;

## API

### Sistema de Alianças
```ruby
  jovem_nerd = User.create name: 'Alexandre Ottoni'
  azaghal = User.create name: 'Dave Pazos'

  jovem_nerd.send_invitation_to azaghal

  # último convite enviado pendente do JN
  jovem_nerd.pendent_invitations.last.receiver.name
  # => "Dave Pazos"

  # último convite recebido em aberto do Azagual
  azaghal.inbox_invitations.last.sender.name
  # => "Alexandre Ottoni"

  # o Rei da Oceania aceita o convite
  azaghal.inbox_invitations.last.confirm!

  # amigos do azaghal
  azaghal.friends.pluck :name
  # => ["Alexandre Ottoni"]

  # amigos do jovem nerd
  jovem_nerd.friends.pluck :name
  # => ["Dave Pazos"]
```

## Contribuições

Antes de colaborar esteja certo que você está seguindo estas
[guidelines](http://guidelines.plataformatec.com.br).

1. Faça um Fork;
2. Adicione sua feature ou correção de bug;
3. Envie um pull request no GitHub.


