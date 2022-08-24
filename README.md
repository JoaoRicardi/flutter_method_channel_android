# flutter_challenge

Um projeto flutter para avaliar os conhecimnetos do candidato sobre o framework e padroes de projeto.

Neste projeto estamos utilizando flavors para lidar com ambientes. Nas suas plataformas foram configurados
nativamente.No Android em app/build.gradle e no IOS como um novo scheme.

Para ver quais ambientes temos disponiveis rodar:
 'flutter run'
 Aonde sera exibido uma lista dos flavors disponiveis.Por exemplo, para rodar em qa devemos utilizar o opcional flavor como abaixo:

 'flutter run --flavor qa'

 qa podendo ser substituido pelo ambiente a ser rodado.

 Neste projeto tambem estamos utilziando a sdk do firebase, por motivos de segurança, o upload dos arquivos de configuracao
 nao foi para o git (uma vez que é publico) e portanto caso nao seja preenchido vai dar erro ao rodar o app.
 Para preencher:
    - No Android:
     em app/src/$ambiente
        colocar o google-service.json gerado em um projeto seu no firebase junto com mesmo projecct id que este.

        prod => com.example.flutter_challenge
        qa => com.example.qa.flutter_challenge
    - No IOS:
        criar uma pasta com o seguinte formato:
        config:
            qa: GoogleService-Info.plist
            prod: GoogleService-Info.plist
        para cada configuracao criar um projeto com o bundle identifier correto como abaixo:
            qa: com.example.qa.flutterChallenge
            prod: com.example.flutterChallenge

        ps: a diferenca nos bundle ids se da devido a necessidade de cada plataforma.