# nerd-power-rails

[![Build Status](https://travis-ci.org/nandosousafr/nerd-power-rails.png?branch=master)](https://travis-ci.org/nandosousafr/nerd-power-rails)
[![Code Climate](https://codeclimate.com/github/nandosousafr/nerd-power-rails.png)](https://codeclimate.com/github/nandosousafr/nerd-power-rails)

Protótipo [SkyNerd] NerdPower em RubyOnRails

Depedências:

* Postgres
* Redis

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

1. Faça um Fork;
2. Adicione sua feature ou correção de bug;
3. Envie um pull request no GitHub.


