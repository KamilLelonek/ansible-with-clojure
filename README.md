# servers-provisioning

This project manages your infrastructure by authorizing [all GitHub users from your organization](https://github.com/orgs/ORGANIZATION/people) to access every machine.

## Prerequisites

Make sure you have installed the following things:

- Homebrew:

```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

- Brew Cask - `brew install caskroom/cask/brew-cask`
- Virtual Box - `brew cask install virtualbox`
- Vagrant - `brew cask install vagrant`
- Ansible - `brew install ansible`

## Usage

Before doing anything make sure you have configured environmental variables such as:

  - `GITHUB_TOKEN`
  - `GITHUB_CLIENT_ID`
  - `GITHUB_CLIENT_SECRET`

### Local

  1. To create virtual machine (this is required only for the first time) run the following command:

        vagrant up

  2. Then you can setup you local machine in the same way as production environment will be configured:

        vagrant provision

  3. Finally you can `ssh` to your machine and browse it contents:

        vagrant ssh

### Producion

Reprovision all machines and synchronize them with current GitHub users run:

    ./scripts/deploy.rb
