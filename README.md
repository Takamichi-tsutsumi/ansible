# Ansible
Django applicationの開発環境をprovisioningする。

## 実行方法

VagrantのBoxをダウンロードする
```
$ vagrant box add puphpet/centos65-x64
```

LocalにAnsibleをインストールする
```
$ pip install ansible
```

このリポジトリをクローンする
```
$ git clone https://github.com/Takamichi-tsutsumi/ansible
```

dataディレクトリを作成してvagrantを起動する
```
$ mkdir data
$ mv ansible/Vagrantfile ../
$ vagrant up
```
