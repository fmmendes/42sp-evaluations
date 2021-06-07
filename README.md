# Como preparar o ambiente
Após clonar esse repositório rode o script first-time.sh
```shell
bash first-time.sh
```
# Como usar o script
Basta navegar no terminal para a lista que deseja avaliar e rodar o script passando o nome de usuário e o link do git a ser avaliado.
Exemplo abaixo:

Shell00
```shell
cd shell00
./eval.sh fimoraes git@vogsphere-v2.42sp.org.br:vogsphere/intra-uuid-6065b583-76ec-4541-85ee-4fd89f109a33-3580828
```
Shell01
```shell
cd shell01
./eval.sh fimoraes git@vogsphere-v2.42sp.org.br:vogsphere/intra-uuid-6065b583-76ec-4541-85ee-4fd89f109a33-3580828
```
C
```shell
cd shell01
./eval.sh
```
# Como atualizar
Através do terminal navegue até o diretório onde clonou esse git e execute o script update.sh
```shell
bash update.sh
```
# Exemplo de como me organizei
![imagem com exemplo da minha estrutura](./img1.png)
# FAQ
## Mas não tem problemas eu clonar o repositório do amiginho dentro dessa pasta?
> R.: Não, esse repositório possui um .gitignore que já cuida disso :smile:
# TO:DO
- Montar outputs de referência para melhorar os testes
- Fazer com que todos os scripts se tornem 1 só :smiling_face_with_three_hearts:
- Fazer melhorias (sempre :smile:)
