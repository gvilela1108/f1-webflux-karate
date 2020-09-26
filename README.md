# Teste da API F1 Web Flux usando Karate

## Autores

* **Guilherme Vilela** - *Versão Inicial* - [gvilela1108](https://github.com/gvilela1108)

## Versão
1.0

# How To Run

1 - Subir a aplicação API F1 WebFlux conforme informado no readme do projeto

2 - Executar o comando para rodar todos os testes
```
mvn test -DargLine="-Dkarate.env=dev"
```

3 - Acessar o diretorio dos resultados e escolher o arquivo especifico para verificar os resultados
```
rest.race.race.html
rest.result.result.html

<PATH>/karate-f1app-test/target/surefire-reports/
```

* Obs Caso der Build Sucess ao rodar o mvn test significa que passou os testes, este log serve apenas para verificar visualmente o step que deu erro.

* Outras Formas de testar

** Alterando o ambiente 
```
Substituir -Dkarate.env=dev"
por -Dkarate.env=hm"

ou o que adicionar no arquivo karate-config.js
```

** Rodando apenas um grupo de teste
```
mvn test -Dtest=RaceTest -DargLine="-Dkarate.env=dev"
```