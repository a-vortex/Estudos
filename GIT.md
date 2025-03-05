# 👾 Notas Sobre GITHUB

Resumo do conteúdo de Versionamento do GITHUB

## 🔴 Clonando um repositório remoto para sua máquina
Crie uma pasta para armazenar esse repositório em algum lugar do seu computador.

### 👉 Por link https
- Com um repositório existente no GitHub, vá em `<>code`, e copie o link do mesmo.
- Em seguida, abra o git bash na pasta que deseja armazenar o repositório no seu computador e digite no terminal o seguinte comando:
```
git clone <URL>
```

## 🟠 Salvando alterações no repositório 
Após realizar alterações no repositório do computador, vá para o terminal e digite:
```
git add <nome da pasta/arquivo modificado> // git add .
```
para salvar suas alterações. Após, digite:
```
git commit -m"<comentário do commit>"
```
para realizar um commit com todas as alterações salvas e depois:
```
git push
```
para enviar as alterações para o repositório remoto.

## ⚠Sheet de comandos no terminal
```
mkdir <nome do diretório> // ls
cd <nome do diretório> // cd ..
git init
cat config
git clone <URL> <nome opcional>
git remote -v
git clone <URL> --branch <nome branch> --single-branch
git status
touch <nome do arquivo>
gid add <nome do arquivo> // git add .
git commit -m"<mensagem>"
git log
git restore <nome do arquivo>
git commit --amend -m"<novo comentário>"
git reset --soft/mixed/hard <id do commit>
git reflog
git pull
git checkout -b "nome"
```
