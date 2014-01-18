# nerd-power-rails

[![Build Status](https://travis-ci.org/nandosousafr/nerd-power-rails.png?branch=master)](https://travis-ci.org/nandosousafr/nerd-power-rails)

Protótipo [SkyNerd] NerdPower em RubyOnRails

Depedências:

* Postgres

## API

### Sistema de Alianças
```ruby
  jovem_nerd = User.create name: 'Alexandre Allotoni'
  azaghal = User.create name: 'Dave Pazos'

  jovem_nerd.send_invitation_to azaghal

  # último convite enviado pendente do JN
  jovem_nerd.pendent_invitations.last.receiver.name
  # => "Dave Pazos"

  # último convite recebido em aberto do Azagual
  azaghal.inbox_invitations.last.sender.name
  # => "Alexandre Allotoni"


```


