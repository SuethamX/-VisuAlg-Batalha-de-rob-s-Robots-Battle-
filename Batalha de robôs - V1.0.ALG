Algoritmo "Batalha de robôs V1.0"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor   : Suetham X
Var
   //aumentar vida robô um
   avidaumru, avidadoisru, avidatresru, avidaquatroru, avidacincoru, avidaseisru, avidaseteru, avidaoitoru, avidanoveru, avidadezru, avidaonzeru, avidadozeru, avidatrezeru, avidaquatorzeru, avidaquinzeru, avidadezesseisru, avidadezesseteru, avidadezoitoru, avidadezenoveru, avidavinteru:REAL
   //vida aumentada total dos robôs
   avidaru, avidard:REAL
   //aumentar vida robô dois
   avidaumrd, avidadoisrd, avidatresrd, avidaquatrord, avidacincord, avidaseisrd, avidaseterd, avidaoitord, avidanoverd, avidadezrd, avidaonzerd, avidadozerd, avidatrezerd, avidaquatorzerd, avidaquinzerd, avidadezesseisrd, avidadezesseterd, avidadezoitord, avidadezenoverd, avidavinterd:REAL
   //vida dos robôs
   vidairu, vidaird, vidaru, vidard:REAL
   //dano robô um
   danoumru, danodoisru, danotresru, danoquatroru, danocincoru, danoseisru, danoseteru, danooitoru, danonoveru, danodezru, danoonzeru, danodozeru, danotrezeru, danoquatorzeru, danoquinzeru, danodezesseisru, danodezesseteru, danodezoitoru, danodezenoveru, danovinteru:REAL
   //dano robô dois
   danoumrd, danodoisrd, danotresrd, danoquatrord, danocincord, danoseisrd, danoseterd, danooitord, danonoverd, danodezrd, danoonzerd, danodozerd, danotrezerd, danoquatorzerd, danoquinzerd, danodezesseisrd, danodezesseterd, danodezoitord, danodezenoverd, danovinterd:REAL
   //dano crítico robô um
   danocumru, danocdoisru, danoctresru, danocquatroru, danoccincoru, danocseisru, danocseteru, danocoitoru, danocnoveru, danocdezru, danoconzeru, danocdozeru, danoctrezeru, danocquatorzeru, danocquinzeru, danocdezesseisru, danocdezesseteru, danocdezoitoru, danocdezenoveru, danocvinteru:REAL
   //dano crítico robô dois
   danocumrd, danocdoisrd, danoctresrd, danocquatrord, danoccincord, danocseisrd, danocseterd, danocoitord, danocnoverd, danocdezrd, danoconzerd, danocdozerd, danoctrezerd, danocquatorzerd, danocquinzerd, danocdezesseisrd, danocdezesseterd, danocdezoitord, danocdezenoverd, danocvinterd:REAL
   //nomes
   nomeju, nomejd, nomeru, nomerd:CARACTER
   //ações
   acao, acaodois, acaoenter:CARACTER

Inicio
   //apresentação
   escreval ("Batalha de Robôs 1.0 - Feito para jogar com 2 jogadores)")
   escreval ("JOGUE COM O CAPSLOCK ATIVADO!!!!!")
   escreval (" ")
   escreval ("Feito por Suetham X")
   escreval (" ")
   escreval ("Aperte ENTER para Iniciar")
   leia (acaoenter)
   limpatela

   //escolha de nomes do jogador um
   escreval ("Vez do Jogador 1")
   escreval ("Qual é o seu nome?: ")
   leia(nomeju)
   escreval ("Qual vai ser o nome do seu robô?: ")
   leia(nomeru)
   escreval ("Aperte ENTER para passar a vez")
   leia (acaoenter)
   limpatela

   //escolha de nomes do jogador dois
   escreval ("Vez do Jogador 2")
   escreval ("Qual é o seu nome?: ")
   leia(nomejd)
   escreval ("Qual vai ser o nome do seu robô?: ")
   leia(nomerd)
   escreval ("Aperte ENTER para passar a vez")
   leia (acaoenter)
   limpatela

   //definição de vida
   vidaru <- randi(30) + 80
   vidard <- randi(30) + 80
   vidairu <- vidaru
   vidaird <- vidard

   //Primeira ação jogador um
   escreval ("Rodada 1")
   escreval ("Atualmente ", nomeru," tem", vidaru, " de vida e o ", nomerd," tem", vidard, " de vida")
   escreval ("Vez do ", nomeju)
   escreval ("ATK para atacar, AVI para aumentar vida, ATC para tentar acertar um ataque crítico, ABN abandonar a partida")
   leia (acao)
   escolha (acao)
      escreval (" ")

   caso "ATK"
      danoumru <- randi(7) + 16
      vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
      se (vidard <= 0) entao
         escreval ("Fim de jogo. O ", nomejd," é o perdedor e o ", nomeju," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomeju, " é o perdedor e o ", nomejd, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("você atacou o ", nomerd, " e deu", danoumru," de dano")
escreval ("agora o ", nomerd, " tem", vidard," de vida")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "AVI"
   se avidaru > 100 entao
      escreval ("Sua vida já foi aumentada ao máximo!, Aperte ENTER para passar a vez")
   senao
      avidaumru <- randi(40)
      avidaru <- avidaumru + avidadoisru + avidatresru + avidaquatroru + avidacincoru + avidaseisru + avidaseteru + avidaoitoru + avidanoveru + avidadezru + avidaonzeru + avidadozeru + avidatrezeru + avidaquatorzeru + avidaquinzeru + avidadezesseisru + avidadezesseteru + avidadezoitoru + avidadezenoveru  + avidavinteru
      vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
      escreval ("Sua vida aumentou em ", avidaumru)
      escreval ("Aperte ENTER para passar a vez")
   fimse
   leia (acaoenter)
caso "ATC"
   danocumru <- randi(40)
   vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomejd," é o perdedor e o ", nomeju," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomeju, " é o perdedor e o ", nomejd, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("Sua tentativa de ataque critíco deu ", danocumru," de dano")
escreval ("agora o ", nomerd, " tem", vidard," de vida!")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "ABN"
   escreval (nomeju," é um perdedor ele abandonou a partida. ", nomejd," é o vencedor")
fimalgoritmo
outrocaso
   escreval ("isso não existe. ", nomeju," perdeu a vez. Aperte ENTER para passar a vez")
   leia (acaoenter)
fimescolha
limpatela

//Primeira ação jogador dois
escreval ("Rodada 2")
escreval ("Atualmente ", nomeru," tem", vidaru, " de vida e o ", nomerd," tem", vidard, " de vida")
escreval ("Vez do ", nomejd)
escreval ("ATK para atacar, AVI para aumentar vida, ATC para tentar acertar um ataque crítico, ABN abandonar a partida")
leia (acao)
escolha (acao)
   escreval (" ")
caso "ATK"
   danoumrd <- randi(7) + 16
   vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
   se (vidaru <= 0) entao
      escreval ("Fim de jogo. O ", nomeju," é o perdedor e o ", nomejd," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidard <= 0) entao
   escreval ("Fim de jogo. O ", nomejd, " é o perdedor e o ", nomeju, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("você atacou o ", nomeru, " e deu", danoumrd," de dano")
escreval ("agora o ", nomeru, " tem", vidaru," de vida")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "AVI"
   se avidaru > 100 entao
      escreval ("Sua vida já foi aumentada ao máximo!, Aperte ENTER para passar a vez")
   senao
      avidaumrd <- randi(40)
      avidard <- avidaumrd + avidadoisrd + avidatresrd + avidaquatrord + avidacincord + avidaseisrd + avidaseterd + avidaoitord + avidanoverd + avidadezrd + avidaonzerd + avidadozerd + avidatrezerd + avidaquatorzerd + avidaquinzerd + avidadezesseisrd + avidadezesseterd + avidadezoitord + avidadezenoverd  + avidavinterd
      vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
      escreval ("Sua vida aumentou em ", avidaumrd)
      escreval ("Aperte ENTER para passar a vez")
   fimse
   leia (acaoenter)
caso "ATC"
   danocumrd <- randi(40)
   vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomeju," é o perdedor e o ", nomejd," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomejd, " é o perdedor e o ", nomeju, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("Sua tentativa de ataque critíco deu ", danocumrd," de dano")
escreval ("agora o ", nomeru, " tem", vidaru," de vida!")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "ABN"
   escreval (nomejd," é um perdedor ele abandonou a partida. ", nomeju," é o vencedor")
fimalgoritmo
outrocaso
   escreval ("isso não existe. ", nomejd," perdeu a vez. Aperte ENTER para passar a vez")
   leia (acaoenter)
fimescolha
limpatela


//Segunda ação jogador um
escreval ("Rodada 3")
escreval ("Atualmente ", nomeru," tem", vidaru, " de vida e o ", nomerd," tem", vidard, " de vida")
escreval ("Vez do ", nomeju)
escreval ("ATK para atacar, AVI para aumentar vida, ATC para tentar acertar um ataque crítico, ABN abandonar a partida")
leia (acao)
escolha (acao)
   escreval (" ")

caso "ATK"
   danodoisru <- randi(7) + 16
   vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomejd," é o perdedor e o ", nomeju," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomeju, " é o perdedor e o ", nomejd, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("você atacou o ", nomerd, " e deu", danodoisru," de dano")
escreval ("agora o ", nomerd, " tem", vidard," de vida")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "AVI"
   se avidaru > 100 entao
      escreval ("Sua vida já foi aumentada ao máximo!, Aperte ENTER para passar a vez")
   senao
      avidadoisru <- randi(40)
      avidaru <- avidaumru + avidadoisru + avidatresru + avidaquatroru + avidacincoru + avidaseisru + avidaseteru + avidaoitoru + avidanoveru + avidadezru + avidaonzeru + avidadozeru + avidatrezeru + avidaquatorzeru + avidaquinzeru + avidadezesseisru + avidadezesseteru + avidadezoitoru + avidadezenoveru  + avidavinteru
      vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
      escreval ("Sua vida aumentou em ", avidadoisru)
      escreval ("Aperte ENTER para passar a vez")
   fimse
   leia (acaoenter)
caso "ATC"
   danocdoisru <- randi(40)
   vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomejd," é o perdedor e o ", nomeju," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomeju, " é o perdedor e o ", nomejd, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("Sua tentativa de ataque critíco deu ", danocdoisru," de dano")
escreval ("agora o ", nomerd, " tem", vidard," de vida!")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "ABN"
   escreval (nomeju," é um perdedor ele abandonou a partida. ", nomejd," é o vencedor")
fimalgoritmo
outrocaso
   escreval ("isso não existe. ", nomeju," perdeu a vez. Aperte ENTER para passar a vez")
   leia (acaoenter)
fimescolha
limpatela

//Segunda ação jogador dois
escreval ("Rodada 4")
escreval ("Atualmente ", nomeru," tem", vidaru, " de vida e o ", nomerd," tem", vidard, " de vida")
escreval ("Vez do ", nomejd)
escreval ("ATK para atacar, AVI para aumentar vida, ATC para tentar acertar um ataque crítico, ABN abandonar a partida")
leia (acao)
escolha (acao)
   escreval (" ")
caso "ATK"
   danodoisrd <- randi(7) + 16
   vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
   se (vidaru <= 0) entao
      escreval ("Fim de jogo. O ", nomeju," é o perdedor e o ", nomejd," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidard <= 0) entao
   escreval ("Fim de jogo. O ", nomejd, " é o perdedor e o ", nomeju, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("você atacou o ", nomeru, " e deu", danodoisrd," de dano")
escreval ("agora o ", nomeru, " tem", vidaru," de vida")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "AVI"
   se avidard > 100 entao
      escreval ("Sua vida já foi aumentada ao máximo!, Aperte ENTER para passar a vez")
   senao
      avidadoisrd <- randi(40)
      avidard <- avidaumrd + avidadoisrd + avidatresrd + avidaquatrord + avidacincord + avidaseisrd + avidaseterd + avidaoitord + avidanoverd + avidadezrd + avidaonzerd + avidadozerd + avidatrezerd + avidaquatorzerd + avidaquinzerd + avidadezesseisrd + avidadezesseterd + avidadezoitord + avidadezenoverd  + avidavinterd
      vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
      escreval ("Sua vida aumentou em ", avidadoisrd)
      escreval ("Aperte ENTER para passar a vez")
   fimse
   leia (acaoenter)
caso "ATC"
   danocdoisrd <- randi(40)
   vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomeju," é o perdedor e o ", nomejd," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomejd, " é o perdedor e o ", nomeju, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("Sua tentativa de ataque critíco deu ", danocdoisrd," de dano")
escreval ("agora o ", nomeru, " tem", vidaru," de vida!")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "ABN"
   escreval (nomejd," é um perdedor ele abandonou a partida. ", nomeju," é o vencedor")
fimalgoritmo
outrocaso
   escreval ("isso não existe. ", nomejd," perdeu a vez. Aperte ENTER para passar a vez")
   leia (acaoenter)
fimescolha
limpatela


//Terceira ação do jogador um
escreval ("Rodada 5")
escreval ("Atualmente ", nomeru," tem", vidaru, " de vida e o ", nomerd," tem", vidard, " de vida")
escreval ("Vez do ", nomeju)
escreval ("ATK para atacar, AVI para aumentar vida, ATC para tentar acertar um ataque crítico, ABN abandonar a partida")
leia (acao)
escolha (acao)
   escreval (" ")

caso "ATK"
   danotresru <- randi(7) + 16
   vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomejd," é o perdedor e o ", nomeju," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomeju, " é o perdedor e o ", nomejd, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("você atacou o ", nomerd, " e deu", danotresru," de dano")
escreval ("agora o ", nomerd, " tem", vidard," de vida")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "AVI"
   se avidaru > 100 entao
      escreval ("Sua vida já foi aumentada ao máximo!, Aperte ENTER para passar a vez")
   senao
      avidatresru <- randi(40)
      avidaru <- avidaumru + avidadoisru + avidatresru + avidaquatroru + avidacincoru + avidaseisru + avidaseteru + avidaoitoru + avidanoveru + avidadezru + avidaonzeru + avidadozeru + avidatrezeru + avidaquatorzeru + avidaquinzeru + avidadezesseisru + avidadezesseteru + avidadezoitoru + avidadezenoveru  + avidavinteru
      vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
      escreval ("Sua vida aumentou em ", avidatresru)
      escreval ("Aperte ENTER para passar a vez")
   fimse
   leia (acaoenter)
caso "ATC"
   danoctresru <- randi(40)
   vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomejd," é o perdedor e o ", nomeju," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomeju, " é o perdedor e o ", nomejd, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("Sua tentativa de ataque critíco deu ", danoctresru," de dano")
escreval ("agora o ", nomerd, " tem", vidard," de vida!")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "ABN"
   escreval (nomeju," é um perdedor ele abandonou a partida. ", nomejd," é o vencedor")
fimalgoritmo
outrocaso
   escreval ("isso não existe. ", nomeju," perdeu a vez. Aperte ENTER para passar a vez")
   leia (acaoenter)
fimescolha
limpatela

//Terceira ação do jogador dois
escreval ("Rodada 6")
escreval ("Atualmente ", nomeru," tem", vidaru, " de vida e o ", nomerd," tem", vidard, " de vida")
escreval ("Vez do ", nomejd)
escreval ("ATK para atacar, AVI para aumentar vida, ATC para tentar acertar um ataque crítico, ABN abandonar a partida")
leia (acao)
escolha (acao)
   escreval (" ")
caso "ATK"
   danotresrd <- randi(7) + 16
   vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
   se (vidaru <= 0) entao
      escreval ("Fim de jogo. O ", nomeju," é o perdedor e o ", nomejd," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidard <= 0) entao
   escreval ("Fim de jogo. O ", nomejd, " é o perdedor e o ", nomeju, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("você atacou o ", nomeru, " e deu", danotresrd," de dano")
escreval ("agora o ", nomeru, " tem", vidaru," de vida")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "AVI"
   se avidard > 100 entao
      escreval ("Sua vida já foi aumentada ao máximo!, Aperte ENTER para passar a vez")
   senao
      avidatresrd <- randi(40)
      avidard <- avidaumrd + avidadoisrd + avidatresrd + avidaquatrord + avidacincord + avidaseisrd + avidaseterd + avidaoitord + avidanoverd + avidadezrd + avidaonzerd + avidadozerd + avidatrezerd + avidaquatorzerd + avidaquinzerd + avidadezesseisrd + avidadezesseterd + avidadezoitord + avidadezenoverd  + avidavinterd
      vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
      escreval ("Sua vida aumentou em ", avidadoisrd)
      escreval ("Aperte ENTER para passar a vez")
   fimse
   leia (acaoenter)
caso "ATC"
   danoctresrd <- randi(40)
   vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomeju," é o perdedor e o ", nomejd," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomejd, " é o perdedor e o ", nomeju, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("Sua tentativa de ataque critíco deu ", danoctresrd," de dano")
escreval ("agora o ", nomeru, " tem", vidaru," de vida!")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "ABN"
   escreval (nomejd," é um perdedor ele abandonou a partida. ", nomeju," é o vencedor")
fimalgoritmo
outrocaso
   escreval ("isso não existe. ", nomejd," perdeu a vez. Aperte ENTER para passar a vez")
   leia (acaoenter)
fimescolha
limpatela

//Quarta ação do jogador um
escreval ("Rodada 7")
escreval ("Atualmente ", nomeru," tem", vidaru, " de vida e o ", nomerd," tem", vidard, " de vida")
escreval ("Vez do ", nomeju)
escreval ("ATK para atacar, AVI para aumentar vida, ATC para tentar acertar um ataque crítico, ABN abandonar a partida")
leia (acao)
escolha (acao)
   escreval (" ")

caso "ATK"
   danotresru <- randi(7) + 16
   vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomejd," é o perdedor e o ", nomeju," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomeju, " é o perdedor e o ", nomejd, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("você atacou o ", nomerd, " e deu", danotresru," de dano")
escreval ("agora o ", nomerd, " tem", vidard," de vida")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "AVI"
   se avidaru > 100 entao
      escreval ("Sua vida já foi aumentada ao máximo!, Aperte ENTER para passar a vez")
   senao
      avidaquatroru <- randi(40)
      avidaru <- avidaumru + avidadoisru + avidatresru + avidaquatroru + avidacincoru + avidaseisru + avidaseteru + avidaoitoru + avidanoveru + avidadezru + avidaonzeru + avidadozeru + avidatrezeru + avidaquatorzeru + avidaquinzeru + avidadezesseisru + avidadezesseteru + avidadezoitoru + avidadezenoveru  + avidavinteru
      vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
      escreval ("Sua vida aumentou em ", avidaquatroru)
      escreval ("Aperte ENTER para passar a vez")
   fimse
   leia (acaoenter)
caso "ATC"
   danoctresru <- randi(40)
   vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomejd," é o perdedor e o ", nomeju," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomeju, " é o perdedor e o ", nomejd, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("Sua tentativa de ataque critíco deu ", danoctresru," de dano")
escreval ("agora o ", nomerd, " tem", vidard," de vida!")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "ABN"
   escreval (nomeju," é um perdedor ele abandonou a partida. ", nomejd," é o vencedor")
fimalgoritmo
outrocaso
   escreval ("isso não existe. ", nomeju," perdeu a vez. Aperte ENTER para passar a vez")
   leia (acaoenter)
fimescolha
limpatela

//Quarta ação do jogador dois
escreval ("Rodada 8")
escreval ("Atualmente ", nomeru," tem", vidaru, " de vida e o ", nomerd," tem", vidard, " de vida")
escreval ("Vez do ", nomejd)
escreval ("ATK para atacar, AVI para aumentar vida, ATC para tentar acertar um ataque crítico, ABN abandonar a partida")
leia (acao)
escolha (acao)
   escreval (" ")
caso "ATK"
   danoquatrord <- randi(7) + 16
   vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
   se (vidaru <= 0) entao
      escreval ("Fim de jogo. O ", nomeju," é o perdedor e o ", nomejd," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidard <= 0) entao
   escreval ("Fim de jogo. O ", nomejd, " é o perdedor e o ", nomeju, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("você atacou o ", nomeru, " e deu", danoquatrord," de dano")
escreval ("agora o ", nomeru, " tem", vidaru," de vida")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "AVI"
   se avidard > 100 entao
      escreval ("Sua vida já foi aumentada ao máximo!, Aperte ENTER para passar a vez")
   senao
      avidaquatrord <- randi(40)
      avidard <- avidaumrd + avidadoisrd + avidatresrd + avidaquatrord + avidacincord + avidaseisrd + avidaseterd + avidaoitord + avidanoverd + avidadezrd + avidaonzerd + avidadozerd + avidatrezerd + avidaquatorzerd + avidaquinzerd + avidadezesseisrd + avidadezesseterd + avidadezoitord + avidadezenoverd  + avidavinterd
      vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
      escreval ("Sua vida aumentou em ", avidaquatrord)
      escreval ("Aperte ENTER para passar a vez")
   fimse
   leia (acaoenter)
caso "ATC"
   danocquatrord <- randi(40)
   vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomeju," é o perdedor e o ", nomejd," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomejd, " é o perdedor e o ", nomeju, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("Sua tentativa de ataque critíco deu ", danocquatrord," de dano")
escreval ("agora o ", nomeru, " tem", vidaru," de vida!")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "ABN"
   escreval (nomejd," é um perdedor ele abandonou a partida. ", nomeju," é o vencedor")
fimalgoritmo
outrocaso
   escreval ("isso não existe. ", nomejd," perdeu a vez. Aperte ENTER para passar a vez")
   leia (acaoenter)
fimescolha
limpatela

//Quinta ação do jogador um
escreval ("Rodada 9")
escreval ("Atualmente ", nomeru," tem", vidaru, " de vida e o ", nomerd," tem", vidard, " de vida")
escreval ("Vez do ", nomeju)
escreval ("ATK para atacar, AVI para aumentar vida, ATC para tentar acertar um ataque crítico, ABN abandonar a partida")
leia (acao)
escolha (acao)
   escreval (" ")

caso "ATK"
   danocincoru <- randi(7) + 16
   vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomejd," é o perdedor e o ", nomeju," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomeju, " é o perdedor e o ", nomejd, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("você atacou o ", nomerd, " e deu", danocincoru," de dano")
escreval ("agora o ", nomerd, " tem", vidard," de vida")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "AVI"
   se avidaru > 100 entao
      escreval ("Sua vida já foi aumentada ao máximo!, Aperte ENTER para passar a vez")
   senao
      avidacincoru <- randi(40)
      avidaru <- avidaumru + avidadoisru + avidatresru + avidaquatroru + avidacincoru + avidaseisru + avidaseteru + avidaoitoru + avidanoveru + avidadezru + avidaonzeru + avidadozeru + avidatrezeru + avidaquatorzeru + avidaquinzeru + avidadezesseisru + avidadezesseteru + avidadezoitoru + avidadezenoveru  + avidavinteru
      vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
      escreval ("Sua vida aumentou em ", avidacincoru)
      escreval ("Aperte ENTER para passar a vez")
   fimse
   leia (acaoenter)
caso "ATC"
   danoccincoru <- randi(40)
   vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomejd," é o perdedor e o ", nomeju," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomeju, " é o perdedor e o ", nomejd, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("Sua tentativa de ataque critíco deu ", danoccincoru," de dano")
escreval ("agora o ", nomerd, " tem", vidard," de vida!")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "ABN"
   escreval (nomeju," é um perdedor ele abandonou a partida. ", nomejd," é o vencedor")
fimalgoritmo
outrocaso
   escreval ("isso não existe. ", nomeju," perdeu a vez. Aperte ENTER para passar a vez")
   leia (acaoenter)
fimescolha
limpatela

//Quinta ação do jogador dois
escreval ("Rodada 10")
escreval ("Atualmente ", nomeru," tem", vidaru, " de vida e o ", nomerd," tem", vidard, " de vida")
escreval ("Vez do ", nomejd)
escreval ("ATK para atacar, AVI para aumentar vida, ATC para tentar acertar um ataque crítico, ABN abandonar a partida")
leia (acao)
escolha (acao)
   escreval (" ")
caso "ATK"
   danocincord <- randi(7) + 16
   vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
   se (vidaru <= 0) entao
      escreval ("Fim de jogo. O ", nomeju," é o perdedor e o ", nomejd," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidard <= 0) entao
   escreval ("Fim de jogo. O ", nomejd, " é o perdedor e o ", nomeju, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("você atacou o ", nomeru, " e deu", danocincord," de dano")
escreval ("agora o ", nomeru, " tem", vidaru," de vida")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "AVI"
   se avidard > 100 entao
      escreval ("Sua vida já foi aumentada ao máximo!, Aperte ENTER para passar a vez")
   senao
      avidacincord <- randi(40)
      avidard <- avidaumrd + avidadoisrd + avidatresrd + avidaquatrord + avidacincord + avidaseisrd + avidaseterd + avidaoitord + avidanoverd + avidadezrd + avidaonzerd + avidadozerd + avidatrezerd + avidaquatorzerd + avidaquinzerd + avidadezesseisrd + avidadezesseterd + avidadezoitord + avidadezenoverd  + avidavinterd
      vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
      escreval ("Sua vida aumentou em ", avidacincord)
      escreval ("Aperte ENTER para passar a vez")
   fimse
   leia (acaoenter)
caso "ATC"
   danoccincord <- randi(40)
   vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomeju," é o perdedor e o ", nomejd," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomejd, " é o perdedor e o ", nomeju, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("Sua tentativa de ataque critíco deu ", danoccincord," de dano")
escreval ("agora o ", nomeru, " tem", vidaru," de vida!")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "ABN"
   escreval (nomejd," é um perdedor ele abandonou a partida. ", nomeju," é o vencedor")
fimalgoritmo
outrocaso
   escreval ("isso não existe. ", nomejd," perdeu a vez. Aperte ENTER para passar a vez")
   leia (acaoenter)
fimescolha
limpatela

//Sexta ação do jogador um
escreval ("Rodada 11")
escreval ("Atualmente ", nomeru," tem", vidaru, " de vida e o ", nomerd," tem", vidard, " de vida")
escreval ("Vez do ", nomeju)
escreval ("ATK para atacar, AVI para aumentar vida, ATC para tentar acertar um ataque crítico, ABN abandonar a partida")
leia (acao)
escolha (acao)
   escreval (" ")

caso "ATK"
   danoseisru <- randi(7) + 16
   vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomejd," é o perdedor e o ", nomeju," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomeju, " é o perdedor e o ", nomejd, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("você atacou o ", nomerd, " e deu", danoseisru," de dano")
escreval ("agora o ", nomerd, " tem", vidard," de vida")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "AVI"
   se avidaru > 100 entao
      escreval ("Sua vida já foi aumentada ao máximo!, Aperte ENTER para passar a vez")
   senao
      avidaseisru <- randi(40)
      avidaru <- avidaumru + avidadoisru + avidatresru + avidaquatroru + avidacincoru + avidaseisru + avidaseteru + avidaoitoru + avidanoveru + avidadezru + avidaonzeru + avidadozeru + avidatrezeru + avidaquatorzeru + avidaquinzeru + avidadezesseisru + avidadezesseteru + avidadezoitoru + avidadezenoveru  + avidavinteru
      vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
      escreval ("Sua vida aumentou em ", avidaseisru)
      escreval ("Aperte ENTER para passar a vez")
   fimse
   leia (acaoenter)
caso "ATC"
   danocseisru <- randi(40)
   vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomejd," é o perdedor e o ", nomeju," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomeju, " é o perdedor e o ", nomejd, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("Sua tentativa de ataque critíco deu ", danocseisru," de dano")
escreval ("agora o ", nomerd, " tem", vidard," de vida!")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "ABN"
   escreval (nomeju," é um perdedor ele abandonou a partida. ", nomejd," é o vencedor")
fimalgoritmo
outrocaso
   escreval ("isso não existe. ", nomeju," perdeu a vez. Aperte ENTER para passar a vez")
   leia (acaoenter)
fimescolha
limpatela

//Sexta ação do jogador dois
escreval ("Rodada 12")
escreval ("Atualmente ", nomeru," tem", vidaru, " de vida e o ", nomerd," tem", vidard, " de vida")
escreval ("Vez do ", nomejd)

escreval ("ATK para atacar, AVI para aumentar vida, ATC para tentar acertar um ataque crítico, ABN abandonar a partida")
leia (acao)
escolha (acao)
   escreval (" ")
caso "ATK"
   danoseisrd <- randi(7) + 16
   vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
   se (vidaru <= 0) entao
      escreval ("Fim de jogo. O ", nomeju," é o perdedor e o ", nomejd," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidard <= 0) entao
   escreval ("Fim de jogo. O ", nomejd, " é o perdedor e o ", nomeju, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("você atacou o ", nomeru, " e deu", danoseisrd," de dano")
escreval ("agora o ", nomeru, " tem", vidaru," de vida")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "AVI"
   se avidard > 100 entao
      escreval ("Sua vida já foi aumentada ao máximo!, Aperte ENTER para passar a vez")
   senao
      avidaseisrd <- randi(40)
      avidard <- avidaumrd + avidadoisrd + avidatresrd + avidaquatrord + avidacincord + avidaseisrd + avidaseterd + avidaoitord + avidanoverd + avidadezrd + avidaonzerd + avidadozerd + avidatrezerd + avidaquatorzerd + avidaquinzerd + avidadezesseisrd + avidadezesseterd + avidadezoitord + avidadezenoverd  + avidavinterd
      vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
      escreval ("Sua vida aumentou em ", avidaseisrd)
      escreval ("Aperte ENTER para passar a vez")
   fimse
   leia (acaoenter)
caso "ATC"
   danocseisrd <- randi(40)
   vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomeju," é o perdedor e o ", nomejd," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomejd, " é o perdedor e o ", nomeju, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("Sua tentativa de ataque critíco deu ", danocseisrd," de dano")
escreval ("agora o ", nomeru, " tem", vidaru," de vida!")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "ABN"
   escreval (nomejd," é um perdedor ele abandonou a partida. ", nomeju," é o vencedor")
fimalgoritmo
outrocaso
   escreval ("isso não existe. ", nomejd," perdeu a vez. Aperte ENTER para passar a vez")
   leia (acaoenter)
fimescolha
limpatela

//Sétíma ação do jogador um
escreval ("Rodada 13")
escreval ("Atualmente ", nomeru," tem", vidaru, " de vida e o ", nomerd," tem", vidard, " de vida")
escreval ("Vez do ", nomeju)
escreval ("ATK para atacar, AVI para aumentar vida, ATC para tentar acertar um ataque crítico, ABN abandonar a partida")
leia (acao)
escolha (acao)
   escreval (" ")

caso "ATK"
   danoseteru <- randi(7) + 16
   vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomejd," é o perdedor e o ", nomeju," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomeju, " é o perdedor e o ", nomejd, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("você atacou o ", nomerd, " e deu", danoseteru," de dano")
escreval ("agora o ", nomerd, " tem", vidard," de vida")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "AVI"
   se avidaru > 100 entao
      escreval ("Sua vida já foi aumentada ao máximo!, Aperte ENTER para passar a vez")
   senao
      avidaseteru <- randi(40)
      avidaru <- avidaumru + avidadoisru + avidatresru + avidaquatroru + avidacincoru + avidaseisru + avidaseteru + avidaoitoru + avidanoveru + avidadezru + avidaonzeru + avidadozeru + avidatrezeru + avidaquatorzeru + avidaquinzeru + avidadezesseisru + avidadezesseteru + avidadezoitoru + avidadezenoveru  + avidavinteru
      vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
      escreval ("Sua vida aumentou em ", avidaseteru)
      escreval ("Aperte ENTER para passar a vez")
   fimse
   leia (acaoenter)
caso "ATC"
   danocseteru <- randi(40)
   vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomejd," é o perdedor e o ", nomeju," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomeju, " é o perdedor e o ", nomejd, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("Sua tentativa de ataque critíco deu ", danocseteru," de dano")
escreval ("agora o ", nomerd, " tem", vidard," de vida!")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "ABN"
   escreval (nomeju," é um perdedor ele abandonou a partida. ", nomejd," é o vencedor")
fimalgoritmo
outrocaso
   escreval ("isso não existe. ", nomeju," perdeu a vez. Aperte ENTER para passar a vez")
   leia (acaoenter)
fimescolha
limpatela

//Sétima ação do jogador dois
escreval ("Rodada 14")
escreval ("Atualmente ", nomeru," tem", vidaru, " de vida e o ", nomerd," tem", vidard, " de vida")
escreval ("Vez do ", nomejd)
escreval ("ATK para atacar, AVI para aumentar vida, ATC para tentar acertar um ataque crítico, ABN abandonar a partida")
leia (acao)
escolha (acao)
   escreval (" ")
caso "ATK"
   danoseterd <- randi(7) + 16
   vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
   se (vidaru <= 0) entao
      escreval ("Fim de jogo. O ", nomeju," é o perdedor e o ", nomejd," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidard <= 0) entao
   escreval ("Fim de jogo. O ", nomejd, " é o perdedor e o ", nomeju, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("você atacou o ", nomeru, " e deu", danoseterd," de dano")
escreval ("agora o ", nomeru, " tem", vidaru," de vida")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "AVI"
   se avidard > 100 entao
      escreval ("Sua vida já foi aumentada ao máximo!, Aperte ENTER para passar a vez")
   senao
      avidaseterd <- randi(40)
      avidard <- avidaumrd + avidadoisrd + avidatresrd + avidaquatrord + avidacincord + avidaseisrd + avidaseterd + avidaoitord + avidanoverd + avidadezrd + avidaonzerd + avidadozerd + avidatrezerd + avidaquatorzerd + avidaquinzerd + avidadezesseisrd + avidadezesseterd + avidadezoitord + avidadezenoverd  + avidavinterd
      vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
      escreval ("Sua vida aumentou em ", avidaseterd)
      escreval ("Aperte ENTER para passar a vez")
   fimse
   leia (acaoenter)
caso "ATC"
   danocseterd <- randi(40)
   vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomeju," é o perdedor e o ", nomejd," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomejd, " é o perdedor e o ", nomeju, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("Sua tentativa de ataque critíco deu ", danocseterd," de dano")
escreval ("agora o ", nomeru, " tem", vidaru," de vida!")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "ABN"
   escreval (nomejd," é um perdedor ele abandonou a partida. ", nomeju," é o vencedor")
fimalgoritmo
outrocaso
   escreval ("isso não existe. ", nomejd," perdeu a vez. Aperte ENTER para passar a vez")
   leia (acaoenter)
fimescolha
limpatela

//Oitava ação do jogador um
escreval ("Rodada 15")
escreval ("Atualmente ", nomeru," tem", vidaru, " de vida e o ", nomerd," tem", vidard, " de vida")
escreval ("Vez do ", nomeju)
escreval ("ATK para atacar, AVI para aumentar vida, ATC para tentar acertar um ataque crítico, ABN abandonar a partida")
leia (acao)
escolha (acao)
   escreval (" ")

caso "ATK"
   danooitoru <- randi(7) + 16
   vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomejd," é o perdedor e o ", nomeju," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomeju, " é o perdedor e o ", nomejd, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("você atacou o ", nomerd, " e deu", danooitoru," de dano")
escreval ("agora o ", nomerd, " tem", vidard," de vida")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "AVI"
   se avidaru > 100 entao
      escreval ("Sua vida já foi aumentada ao máximo!, Aperte ENTER para passar a vez")
   senao
      avidaoitoru <- randi(40)
      avidaru <- avidaumru + avidadoisru + avidatresru + avidaquatroru + avidacincoru + avidaseisru + avidaseteru + avidaoitoru + avidanoveru + avidadezru + avidaonzeru + avidadozeru + avidatrezeru + avidaquatorzeru + avidaquinzeru + avidadezesseisru + avidadezesseteru + avidadezoitoru + avidadezenoveru  + avidavinteru
      vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidaru
      escreval ("Sua vida aumentou em ", avidaoitoru)
      escreval ("Aperte ENTER para passar a vez")
   fimse
   leia (acaoenter)
caso "ATC"
   danocoitoru <- randi(40)
   vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomejd," é o perdedor e o ", nomeju," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomeju, " é o perdedor e o ", nomejd, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("Sua tentativa de ataque critíco deu ", danocoitoru," de dano")
escreval ("agora o ", nomerd, " tem", vidard," de vida!")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "ABN"
   escreval (nomeju," é um perdedor ele abandonou a partida. ", nomejd," é o vencedor")
fimalgoritmo
outrocaso
   escreval ("isso não existe. ", nomeju," perdeu a vez. Aperte ENTER para passar a vez")
   leia (acaoenter)
fimescolha
limpatela

//Oitava ação do jogador dois
escreval ("Rodada 16")
escreval ("Atualmente ", nomeru," tem", vidaru, " de vida e o ", nomerd," tem", vidard, " de vida")
escreval ("Vez do ", nomejd)
escreval ("ATK para atacar, AVI para aumentar vida, ATC para tentar acertar um ataque crítico, ABN abandonar a partida")
leia (acao)
escolha (acao)
   escreval (" ")
caso "ATK"
   danooitord <- randi(7) + 16
   vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
   se (vidaru <= 0) entao
      escreval ("Fim de jogo. O ", nomeju," é o perdedor e o ", nomejd," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidard <= 0) entao
   escreval ("Fim de jogo. O ", nomejd, " é o perdedor e o ", nomeju, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("você atacou o ", nomeru, " e deu", danooitord," de dano")
escreval ("agora o ", nomeru, " tem", vidaru," de vida")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "AVI"
   se avidard > 100 entao
      escreval ("Sua vida já foi aumentada ao máximo!, Aperte ENTER para passar a vez")
   senao
      avidaoitord <- randi(40)
      avidard <- avidaumrd + avidadoisrd + avidatresrd + avidaquatrord + avidacincord + avidaseisrd + avidaseterd + avidaoitord + avidanoverd + avidadezrd + avidaonzerd + avidadozerd + avidatrezerd + avidaquatorzerd + avidaquinzerd + avidadezesseisrd + avidadezesseterd + avidadezoitord + avidadezenoverd  + avidavinterd
      vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
      escreval ("Sua vida aumentou em ", avidaoitord)
      escreval ("Aperte ENTER para passar a vez")
   fimse
   leia (acaoenter)
caso "ATC"
   danocoitord <- randi(40)
   vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomeju," é o perdedor e o ", nomejd," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomejd, " é o perdedor e o ", nomeju, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("Sua tentativa de ataque critíco deu ", danocoitord," de dano")
escreval ("agora o ", nomeru, " tem", vidaru," de vida!")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "ABN"
   escreval (nomejd," é um perdedor ele abandonou a partida. ", nomeju," é o vencedor")
fimalgoritmo
outrocaso
   escreval ("isso não existe. ", nomejd," perdeu a vez. Aperte ENTER para passar a vez")
   leia (acaoenter)
fimescolha
limpatela

//Nona ação do jogador um
escreval ("Rodada 17")
escreval ("Atualmente ", nomeru," tem", vidaru, " de vida e o ", nomerd," tem", vidard, " de vida")
escreval ("Vez do ", nomeju)
escreval ("ATK para atacar, AVI para aumentar vida, ATC para tentar acertar um ataque crítico, ABN abandonar a partida")
leia (acao)
escolha (acao)
   escreval (" ")

caso "ATK"
   danonoveru <- randi(7) + 16
   vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomejd," é o perdedor e o ", nomeju," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomeju, " é o perdedor e o ", nomejd, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("você atacou o ", nomerd, " e deu", danonoveru," de dano")
escreval ("agora o ", nomerd, " tem", vidard," de vida")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "AVI"
   se avidaru > 100 entao
      escreval ("Sua vida já foi aumentada ao máximo!, Aperte ENTER para passar a vez")
   senao
      avidanoveru <- randi(40)
      avidaru <- avidaumru + avidadoisru + avidatresru + avidaquatroru + avidacincoru + avidaseisru + avidaseteru + avidaoitoru + avidanoveru + avidadezru + avidaonzeru + avidadozeru + avidatrezeru + avidaquatorzeru + avidaquinzeru + avidadezesseisru + avidadezesseteru + avidadezoitoru + avidadezenoveru  + avidavinteru
      vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidaru
      escreval ("Sua vida aumentou em ", avidanoveru)
      escreval ("Aperte ENTER para passar a vez")
   fimse
   leia (acaoenter)
caso "ATC"
   danocnoveru <- randi(40)
   vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomejd," é o perdedor e o ", nomeju," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomeju, " é o perdedor e o ", nomejd, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("Sua tentativa de ataque critíco deu ", danocnoveru," de dano")
escreval ("agora o ", nomerd, " tem", vidard," de vida!")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "ABN"
   escreval (nomeju," é um perdedor ele abandonou a partida. ", nomejd," é o vencedor")
fimalgoritmo
outrocaso
   escreval ("isso não existe. ", nomeju," perdeu a vez. Aperte ENTER para passar a vez")
   leia (acaoenter)
fimescolha
limpatela

//Nona ação do jogador dois
escreval ("Rodada 18")
escreval ("Atualmente ", nomeru," tem", vidaru, " de vida e o ", nomerd," tem", vidard, " de vida")
escreval ("Vez do ", nomejd)
escreval ("ATK para atacar, AVI para aumentar vida, ATC para tentar acertar um ataque crítico, ABN abandonar a partida")
leia (acao)
escolha (acao)
   escreval (" ")
caso "ATK"
   danonoverd <- randi(7) + 16
   vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
   se (vidaru <= 0) entao
      escreval ("Fim de jogo. O ", nomeju," é o perdedor e o ", nomejd," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidard <= 0) entao
   escreval ("Fim de jogo. O ", nomejd, " é o perdedor e o ", nomeju, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("você atacou o ", nomeru, " e deu", danonoverd," de dano")
escreval ("agora o ", nomeru, " tem", vidaru," de vida")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "AVI"
   se avidard > 100 entao
      escreval ("Sua vida já foi aumentada ao máximo!, Aperte ENTER para passar a vez")
   senao
      avidanoverd <- randi(40)
      avidard <- avidaumrd + avidadoisrd + avidatresrd + avidaquatrord + avidacincord + avidaseisrd + avidaseterd + avidaoitord + avidanoverd + avidadezrd + avidaonzerd + avidadozerd + avidatrezerd + avidaquatorzerd + avidaquinzerd + avidadezesseisrd + avidadezesseterd + avidadezoitord + avidadezenoverd  + avidavinterd
      vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
      escreval ("Sua vida aumentou em ", avidanoverd)
      escreval ("Aperte ENTER para passar a vez")
   fimse
   leia (acaoenter)
caso "ATC"
   danocnoverd <- randi(40)
   vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomeju," é o perdedor e o ", nomejd," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomejd, " é o perdedor e o ", nomeju, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("Sua tentativa de ataque critíco deu ", danocnoverd," de dano")
escreval ("agora o ", nomeru, " tem", vidaru," de vida!")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "ABN"
   escreval (nomejd," é um perdedor ele abandonou a partida. ", nomeju," é o vencedor")
fimalgoritmo
outrocaso
   escreval ("isso não existe. ", nomejd," perdeu a vez. Aperte ENTER para passar a vez")
   leia (acaoenter)
fimescolha
limpatela

//Décima ação do jogador um
escreval ("Rodada 19")
escreval ("Atualmente ", nomeru," tem", vidaru, " de vida e o ", nomerd," tem", vidard, " de vida")
escreval ("Vez do ", nomeju)
escreval ("ATK para atacar, AVI para aumentar vida, ATC para tentar acertar um ataque crítico, ABN abandonar a partida")
leia (acao)
escolha (acao)
   escreval (" ")

caso "ATK"
   danodezru <- randi(7) + 16
   vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomejd," é o perdedor e o ", nomeju," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomeju, " é o perdedor e o ", nomejd, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("você atacou o ", nomerd, " e deu", danodezru," de dano")
escreval ("agora o ", nomerd, " tem", vidard," de vida")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "AVI"
   se avidaru > 100 entao
      escreval ("Sua vida já foi aumentada ao máximo!, Aperte ENTER para passar a vez")
   senao
      avidadezru <- randi(40)
      avidaru <- avidaumru + avidadoisru + avidatresru + avidaquatroru + avidacincoru + avidaseisru + avidaseteru + avidaoitoru + avidanoveru + avidadezru + avidaonzeru + avidadozeru + avidatrezeru + avidaquatorzeru + avidaquinzeru + avidadezesseisru + avidadezesseteru + avidadezoitoru + avidadezenoveru  + avidavinteru
      vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidaru
      escreval ("Sua vida aumentou em ", avidadezru)
      escreval ("Aperte ENTER para passar a vez")
   fimse
   leia (acaoenter)
caso "ATC"
   danocdezru <- randi(40)
   vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomejd," é o perdedor e o ", nomeju," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomeju, " é o perdedor e o ", nomejd, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("Sua tentativa de ataque critíco deu ", danocdezru," de dano")
escreval ("agora o ", nomerd, " tem", vidard," de vida!")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "ABN"
   escreval (nomeju," é um perdedor ele abandonou a partida. ", nomejd," é o vencedor")
fimalgoritmo
outrocaso
   escreval ("isso não existe. ", nomeju," perdeu a vez. Aperte ENTER para passar a vez")
   leia (acaoenter)
fimescolha
limpatela

//Décima ação do jogador dois
escreval ("Rodada 20")
escreval ("Atualmente ", nomeru," tem", vidaru, " de vida e o ", nomerd," tem", vidard, " de vida")
escreval ("Vez do ", nomejd)
escreval ("ATK para atacar, AVI para aumentar vida, ATC para tentar acertar um ataque crítico, ABN abandonar a partida")
leia (acao)
escolha (acao)
   escreval (" ")
caso "ATK"
   danodezrd <- randi(7) + 16
   vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
   se (vidaru <= 0) entao
      escreval ("Fim de jogo. O ", nomeju," é o perdedor e o ", nomejd," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidard <= 0) entao
   escreval ("Fim de jogo. O ", nomejd, " é o perdedor e o ", nomeju, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("você atacou o ", nomeru, " e deu", danodezrd," de dano")
escreval ("agora o ", nomeru, " tem", vidaru," de vida")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "AVI"
   se avidard > 100 entao
      escreval ("Sua vida já foi aumentada ao máximo!, Aperte ENTER para passar a vez")
   senao
      avidadezrd <- randi(40)
      avidard <- avidaumrd + avidadoisrd + avidatresrd + avidaquatrord + avidacincord + avidaseisrd + avidaseterd + avidaoitord + avidanoverd + avidadezrd + avidaonzerd + avidadozerd + avidatrezerd + avidaquatorzerd + avidaquinzerd + avidadezesseisrd + avidadezesseterd + avidadezoitord + avidadezenoverd  + avidavinterd
      vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
      escreval ("Sua vida aumentou em ", avidadezrd)
      escreval ("Aperte ENTER para passar a vez")
   fimse
   leia (acaoenter)
caso "ATC"
   danocdezrd <- randi(40)
   vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomeju," é o perdedor e o ", nomejd," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomejd, " é o perdedor e o ", nomeju, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("Sua tentativa de ataque critíco deu ", danocdezrd," de dano")
escreval ("agora o ", nomeru, " tem", vidaru," de vida!")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "ABN"
   escreval (nomejd," é um perdedor ele abandonou a partida. ", nomeju," é o vencedor")
fimalgoritmo
outrocaso
   escreval ("isso não existe. ", nomejd," perdeu a vez. Aperte ENTER para passar a vez")
   leia (acaoenter)
fimescolha
limpatela

//Décima primeira ação do jogador um
escreval ("Rodada 21")
escreval ("Atualmente ", nomeru," tem", vidaru, " de vida e o ", nomerd," tem", vidard, " de vida")
escreval ("Vez do ", nomeju)
escreval ("ATK para atacar, AVI para aumentar vida, ATC para tentar acertar um ataque crítico, ABN abandonar a partida")
leia (acao)
escolha (acao)
   escreval (" ")

caso "ATK"
   danoonzeru <- randi(7) + 16
   vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomejd," é o perdedor e o ", nomeju," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomeju, " é o perdedor e o ", nomejd, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("você atacou o ", nomerd, " e deu", danoonzeru," de dano")
escreval ("agora o ", nomerd, " tem", vidard," de vida")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "AVI"
   se avidaru > 100 entao
      escreval ("Sua vida já foi aumentada ao máximo!, Aperte ENTER para passar a vez")
   senao
      avidaonzeru <- randi(40)
      avidaru <- avidaumru + avidadoisru + avidatresru + avidaquatroru + avidacincoru + avidaseisru + avidaseteru + avidaoitoru + avidanoveru + avidadezru + avidaonzeru + avidadozeru + avidatrezeru + avidaquatorzeru + avidaquinzeru + avidadezesseisru + avidadezesseteru + avidadezoitoru + avidadezenoveru  + avidavinteru
      vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidaru
      escreval ("Sua vida aumentou em ", avidaonzeru)
      escreval ("Aperte ENTER para passar a vez")
   fimse
   leia (acaoenter)
caso "ATC"
   danoconzeru <- randi(40)
   vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomejd," é o perdedor e o ", nomeju," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomeju, " é o perdedor e o ", nomejd, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("Sua tentativa de ataque critíco deu ", danoconzeru," de dano")
escreval ("agora o ", nomerd, " tem", vidard," de vida!")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "ABN"
   escreval (nomeju," é um perdedor ele abandonou a partida. ", nomejd," é o vencedor")
fimalgoritmo
outrocaso
   escreval ("isso não existe. ", nomeju," perdeu a vez. Aperte ENTER para passar a vez")
   leia (acaoenter)
fimescolha
limpatela

//Décima primeira ação do jogador dois
escreval ("Rodada 22")
escreval ("Atualmente ", nomeru," tem", vidaru, " de vida e o ", nomerd," tem", vidard, " de vida")
escreval ("Vez do ", nomejd)
escreval ("ATK para atacar, AVI para aumentar vida, ATC para tentar acertar um ataque crítico, ABN abandonar a partida")
leia (acao)
escolha (acao)
   escreval (" ")
caso "ATK"
   danoonzerd <- randi(7) + 16
   vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
   se (vidaru <= 0) entao
      escreval ("Fim de jogo. O ", nomeju," é o perdedor e o ", nomejd," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidard <= 0) entao
   escreval ("Fim de jogo. O ", nomejd, " é o perdedor e o ", nomeju, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("você atacou o ", nomeru, " e deu", danoonzerd," de dano")
escreval ("agora o ", nomeru, " tem", vidaru," de vida")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "AVI"
   se avidard > 100 entao
      escreval ("Sua vida já foi aumentada ao máximo!, Aperte ENTER para passar a vez")
   senao
      avidaonzerd <- randi(40)
      avidard <- avidaumrd + avidadoisrd + avidatresrd + avidaquatrord + avidacincord + avidaseisrd + avidaseterd + avidaoitord + avidanoverd + avidadezrd + avidaonzerd + avidadozerd + avidatrezerd + avidaquatorzerd + avidaquinzerd + avidadezesseisrd + avidadezesseterd + avidadezoitord + avidadezenoverd  + avidavinterd
      vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
      escreval ("Sua vida aumentou em ", avidaonzerd)
      escreval ("Aperte ENTER para passar a vez")
   fimse
   leia (acaoenter)
caso "ATC"
   danoconzerd <- randi(40)
   vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomeju," é o perdedor e o ", nomejd," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomejd, " é o perdedor e o ", nomeju, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("Sua tentativa de ataque critíco deu ", danoconzerd," de dano")
escreval ("agora o ", nomeru, " tem", vidaru," de vida!")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "ABN"
   escreval (nomejd," é um perdedor ele abandonou a partida. ", nomeju," é o vencedor")
fimalgoritmo
outrocaso
   escreval ("isso não existe. ", nomejd," perdeu a vez. Aperte ENTER para passar a vez")
   leia (acaoenter)
fimescolha
limpatela

//Décima segunda ação do jogador um
escreval ("Rodada 23")
escreval ("Atualmente ", nomeru," tem", vidaru, " de vida e o ", nomerd," tem", vidard, " de vida")
escreval ("Vez do ", nomeju)
escreval ("ATK para atacar, AVI para aumentar vida, ATC para tentar acertar um ataque crítico, ABN abandonar a partida")
leia (acao)
escolha (acao)
   escreval (" ")

caso "ATK"
   danodozeru <- randi(7) + 16
   vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomejd," é o perdedor e o ", nomeju," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomeju, " é o perdedor e o ", nomejd, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("você atacou o ", nomerd, " e deu", danodozeru," de dano")
escreval ("agora o ", nomerd, " tem", vidard," de vida")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "AVI"
   se avidaru > 100 entao
      escreval ("Sua vida já foi aumentada ao máximo!, Aperte ENTER para passar a vez")
   senao
      avidadozeru <- randi(40)
      avidaru <- avidaumru + avidadoisru + avidatresru + avidaquatroru + avidacincoru + avidaseisru + avidaseteru + avidaoitoru + avidanoveru + avidadezru + avidaonzeru + avidadozeru + avidatrezeru + avidaquatorzeru + avidaquinzeru + avidadezesseisru + avidadezesseteru + avidadezoitoru + avidadezenoveru  + avidavinteru
      vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidaru
      escreval ("Sua vida aumentou em ", avidadozeru)
      escreval ("Aperte ENTER para passar a vez")
   fimse
   leia (acaoenter)
caso "ATC"
   danocdozeru <- randi(40)
   vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomejd," é o perdedor e o ", nomeju," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomeju, " é o perdedor e o ", nomejd, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("Sua tentativa de ataque critíco deu ", danocdozeru," de dano")
escreval ("agora o ", nomerd, " tem", vidard," de vida!")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "ABN"
   escreval (nomeju," é um perdedor ele abandonou a partida. ", nomejd," é o vencedor")
fimalgoritmo
outrocaso
   escreval ("isso não existe. ", nomeju," perdeu a vez. Aperte ENTER para passar a vez")
   leia (acaoenter)
fimescolha
limpatela

//Décima segunda ação do jogador dois
escreval ("Rodada 24")
escreval ("Atualmente ", nomeru," tem", vidaru, " de vida e o ", nomerd," tem", vidard, " de vida")
escreval ("Vez do ", nomejd)
escreval ("ATK para atacar, AVI para aumentar vida, ATC para tentar acertar um ataque crítico, ABN abandonar a partida")
leia (acao)
escolha (acao)
   escreval (" ")
caso "ATK"
   danodozerd <- randi(7) + 16
   vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
   se (vidaru <= 0) entao
      escreval ("Fim de jogo. O ", nomeju," é o perdedor e o ", nomejd," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidard <= 0) entao
   escreval ("Fim de jogo. O ", nomejd, " é o perdedor e o ", nomeju, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("você atacou o ", nomeru, " e deu", danodozerd," de dano")
escreval ("agora o ", nomeru, " tem", vidaru," de vida")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "AVI"
   se avidard > 100 entao
      escreval ("Sua vida já foi aumentada ao máximo!, Aperte ENTER para passar a vez")
   senao
      avidadozerd <- randi(40)
      avidard <- avidaumrd + avidadoisrd + avidatresrd + avidaquatrord + avidacincord + avidaseisrd + avidaseterd + avidaoitord + avidanoverd + avidadezrd + avidaonzerd + avidadozerd + avidatrezerd + avidaquatorzerd + avidaquinzerd + avidadezesseisrd + avidadezesseterd + avidadezoitord + avidadezenoverd  + avidavinterd
      vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
      escreval ("Sua vida aumentou em ", avidadozerd)
      escreval ("Aperte ENTER para passar a vez")
   fimse
   leia (acaoenter)
caso "ATC"
   danocdozerd <- randi(40)
   vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomeju," é o perdedor e o ", nomejd," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomejd, " é o perdedor e o ", nomeju, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("Sua tentativa de ataque critíco deu ", danocdozerd," de dano")
escreval ("agora o ", nomeru, " tem", vidaru," de vida!")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "ABN"
   escreval (nomejd," é um perdedor ele abandonou a partida. ", nomeju," é o vencedor")
fimalgoritmo
outrocaso
   escreval ("isso não existe. ", nomejd," perdeu a vez. Aperte ENTER para passar a vez")
   leia (acaoenter)
fimescolha
limpatela

//Décima terceira ação do jogador um
escreval ("Rodada 25")
escreval ("Atualmente ", nomeru," tem", vidaru, " de vida e o ", nomerd," tem", vidard, " de vida")
escreval ("Vez do ", nomeju)
escreval ("ATK para atacar, AVI para aumentar vida, ATC para tentar acertar um ataque crítico, ABN abandonar a partida")
leia (acao)
escolha (acao)
   escreval (" ")

caso "ATK"
   danotrezeru <- randi(7) + 16
   vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomejd," é o perdedor e o ", nomeju," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomeju, " é o perdedor e o ", nomejd, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("você atacou o ", nomerd, " e deu", danotrezeru," de dano")
escreval ("agora o ", nomerd, " tem", vidard," de vida")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "AVI"
   se avidaru > 100 entao
      escreval ("Sua vida já foi aumentada ao máximo!, Aperte ENTER para passar a vez")
   senao
      avidatrezeru <- randi(40)
      avidaru <- avidaumru + avidadoisru + avidatresru + avidaquatroru + avidacincoru + avidaseisru + avidaseteru + avidaoitoru + avidanoveru + avidadezru + avidaonzeru + avidadozeru + avidatrezeru + avidaquatorzeru + avidaquinzeru + avidadezesseisru + avidadezesseteru + avidadezoitoru + avidadezenoveru  + avidavinteru
      vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidaru
      escreval ("Sua vida aumentou em ", avidatrezeru)
      escreval ("Aperte ENTER para passar a vez")
   fimse
   leia (acaoenter)
caso "ATC"
   danoctrezeru <- randi(40)
   vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomejd," é o perdedor e o ", nomeju," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomeju, " é o perdedor e o ", nomejd, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("Sua tentativa de ataque critíco deu ", danoctrezeru," de dano")
escreval ("agora o ", nomerd, " tem", vidard," de vida!")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "ABN"
   escreval (nomeju," é um perdedor ele abandonou a partida. ", nomejd," é o vencedor")
fimalgoritmo
outrocaso
   escreval ("isso não existe. ", nomeju," perdeu a vez. Aperte ENTER para passar a vez")
   leia (acaoenter)
fimescolha
limpatela

//Décima terceira ação do jogador dois
escreval ("Rodada 26")
escreval ("Atualmente ", nomeru," tem", vidaru, " de vida e o ", nomerd," tem", vidard, " de vida")
escreval ("Vez do ", nomejd)
escreval ("ATK para atacar, AVI para aumentar vida, ATC para tentar acertar um ataque crítico, ABN abandonar a partida")
leia (acao)
escolha (acao)
   escreval (" ")
caso "ATK"
   danotrezerd <- randi(7) + 16
   vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
   se (vidaru <= 0) entao
      escreval ("Fim de jogo. O ", nomeju," é o perdedor e o ", nomejd," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidard <= 0) entao
   escreval ("Fim de jogo. O ", nomejd, " é o perdedor e o ", nomeju, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("você atacou o ", nomeru, " e deu", danotrezerd," de dano")
escreval ("agora o ", nomeru, " tem", vidaru," de vida")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "AVI"
   se avidard > 100 entao
      escreval ("Sua vida já foi aumentada ao máximo!, Aperte ENTER para passar a vez")
   senao
      avidatrezerd <- randi(40)
      avidard <- avidaumrd + avidadoisrd + avidatresrd + avidaquatrord + avidacincord + avidaseisrd + avidaseterd + avidaoitord + avidanoverd + avidadezrd + avidaonzerd + avidadozerd + avidatrezerd + avidaquatorzerd + avidaquinzerd + avidadezesseisrd + avidadezesseterd + avidadezoitord + avidadezenoverd  + avidavinterd
      vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
      escreval ("Sua vida aumentou em ", avidatrezerd)
      escreval ("Aperte ENTER para passar a vez")
   fimse
   leia (acaoenter)
caso "ATC"
   danoctrezerd <- randi(40)
   vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomeju," é o perdedor e o ", nomejd," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomejd, " é o perdedor e o ", nomeju, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("Sua tentativa de ataque critíco deu ", danoctrezerd," de dano")
escreval ("agora o ", nomeru, " tem", vidaru," de vida!")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "ABN"
   escreval (nomejd," é um perdedor ele abandonou a partida. ", nomeju," é o vencedor")
fimalgoritmo
outrocaso
   escreval ("isso não existe. ", nomejd," perdeu a vez. Aperte ENTER para passar a vez")
   leia (acaoenter)
fimescolha
limpatela

//Décima quarta ação do jogador um
escreval ("Rodada 27")
escreval ("Atualmente ", nomeru," tem", vidaru, " de vida e o ", nomerd," tem", vidard, " de vida")
escreval ("Vez do ", nomeju)
escreval ("ATK para atacar, AVI para aumentar vida, ATC para tentar acertar um ataque crítico, ABN abandonar a partida")
leia (acao)
escolha (acao)
   escreval (" ")

caso "ATK"
   danoquatorzeru <- randi(7) + 16
   vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomejd," é o perdedor e o ", nomeju," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomeju, " é o perdedor e o ", nomejd, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("você atacou o ", nomerd, " e deu", danoquatorzeru," de dano")
escreval ("agora o ", nomerd, " tem", vidard," de vida")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "AVI"
   se avidaru > 100 entao
      escreval ("Sua vida já foi aumentada ao máximo!, Aperte ENTER para passar a vez")
   senao
      avidaquatorzeru <- randi(40)
      avidaru <- avidaumru + avidadoisru + avidatresru + avidaquatroru + avidacincoru + avidaseisru + avidaseteru + avidaoitoru + avidanoveru + avidadezru + avidaonzeru + avidadozeru + avidatrezeru + avidaquatorzeru + avidaquinzeru + avidadezesseisru + avidadezesseteru + avidadezoitoru + avidadezenoveru  + avidavinteru
      vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidaru
      escreval ("Sua vida aumentou em ", avidaquatorzeru)
      escreval ("Aperte ENTER para passar a vez")
   fimse
   leia (acaoenter)
caso "ATC"
   danocquatorzeru <- randi(40)
   vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomejd," é o perdedor e o ", nomeju," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomeju, " é o perdedor e o ", nomejd, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("Sua tentativa de ataque critíco deu ", danocquatorzeru," de dano")
escreval ("agora o ", nomerd, " tem", vidard," de vida!")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "ABN"
   escreval (nomeju," é um perdedor ele abandonou a partida. ", nomejd," é o vencedor")
fimalgoritmo
outrocaso
   escreval ("isso não existe. ", nomeju," perdeu a vez. Aperte ENTER para passar a vez")
   leia (acaoenter)
fimescolha
limpatela

//Décima quarta ação do jogador dois
escreval ("Rodada 28")
escreval ("Atualmente ", nomeru," tem", vidaru, " de vida e o ", nomerd," tem", vidard, " de vida")
escreval ("Vez do ", nomejd)
escreval ("ATK para atacar, AVI para aumentar vida, ATC para tentar acertar um ataque crítico, ABN abandonar a partida")
leia (acao)
escolha (acao)
   escreval (" ")
caso "ATK"
   danoquatorzerd <- randi(7) + 16
   vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomeju," é o perdedor e o ", nomejd," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidard <= 0) entao
   escreval ("Fim de jogo. O ", nomejd, " é o perdedor e o ", nomeju, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("você atacou o ", nomeru, " e deu", danoquatorzerd," de dano")
escreval ("agora o ", nomeru, " tem", vidaru," de vida")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "AVI"
   se avidard > 100 entao
      escreval ("Sua vida já foi aumentada ao máximo!, Aperte ENTER para passar a vez")
   senao
      avidaquatorzerd <- randi(40)
      avidard <- avidaumrd + avidadoisrd + avidatresrd + avidaquatrord + avidacincord + avidaseisrd + avidaseterd + avidaoitord + avidanoverd + avidadezrd + avidaonzerd + avidadozerd + avidatrezerd + avidaquatorzerd + avidaquinzerd + avidadezesseisrd + avidadezesseterd + avidadezoitord + avidadezenoverd  + avidavinterd
      vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
      escreval ("Sua vida aumentou em ", avidaquatorzerd)
      escreval ("Aperte ENTER para passar a vez")
   fimse
   leia (acaoenter)
caso "ATC"
   danocquatorzerd <- randi(40)
   vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomeju," é o perdedor e o ", nomejd," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomejd, " é o perdedor e o ", nomeju, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("Sua tentativa de ataque critíco deu ", danocquatorzerd," de dano")
escreval ("agora o ", nomeru, " tem", vidaru," de vida!")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "ABN"
   escreval (nomejd," é um perdedor ele abandonou a partida. ", nomeju," é o vencedor")
fimalgoritmo
outrocaso
   escreval ("isso não existe. ", nomejd," perdeu a vez. Aperte ENTER para passar a vez")
   leia (acaoenter)
fimescolha
limpatela

//Décima quinta ação do jogador um
escreval ("Rodada 29")
escreval ("Atualmente ", nomeru," tem", vidaru, " de vida e o ", nomerd," tem", vidard, " de vida")
escreval ("Vez do ", nomeju)
escreval ("ATK para atacar, AVI para aumentar vida, ATC para tentar acertar um ataque crítico, ABN abandonar a partida")
leia (acao)
escolha (acao)
   escreval (" ")

caso "ATK"
   danoquinzeru <- randi(7) + 16
   vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomejd," é o perdedor e o ", nomeju," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomeju, " é o perdedor e o ", nomejd, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("você atacou o ", nomerd, " e deu", danoquinzeru," de dano")
escreval ("agora o ", nomerd, " tem", vidard," de vida")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "AVI"
   se avidaru > 100 entao
      escreval ("Sua vida já foi aumentada ao máximo!, Aperte ENTER para passar a vez")
   senao
      avidaquinzeru <- randi(40)
      avidard <- avidaumrd + avidadoisrd + avidatresrd + avidaquatrord + avidacincord + avidaseisrd + avidaseterd + avidaoitord + avidanoverd + avidadezrd + avidaonzerd + avidadozerd + avidatrezerd + avidaquatorzerd + avidaquinzerd + avidadezesseisrd + avidadezesseterd + avidadezoitord + avidadezenoverd  + avidavinterd
      vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidaru
      escreval ("Sua vida aumentou em ", avidaquinzeru)
      escreval ("Aperte ENTER para passar a vez")
   fimse
   leia (acaoenter)
caso "ATC"
   danocquinzeru <- randi(40)
   vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomejd," é o perdedor e o ", nomeju," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomeju, " é o perdedor e o ", nomejd, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("Sua tentativa de ataque critíco deu ", danocquinzeru," de dano")
escreval ("agora o ", nomerd, " tem", vidard," de vida!")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "ABN"
   escreval (nomeju," é um perdedor ele abandonou a partida. ", nomejd," é o vencedor")
fimalgoritmo
outrocaso
   escreval ("isso não existe. ", nomeju," perdeu a vez. Aperte ENTER para passar a vez")
   leia (acaoenter)
fimescolha
limpatela

//Décima quinta ação do jogador dois
escreval ("Rodada 30")
escreval ("Atualmente ", nomeru," tem", vidaru, " de vida e o ", nomerd," tem", vidard, " de vida")
escreval ("Vez do ", nomejd)
escreval ("ATK para atacar, AVI para aumentar vida, ATC para tentar acertar um ataque crítico, ABN abandonar a partida")
leia (acao)
escolha (acao)
   escreval (" ")
caso "ATK"
   danoquinzerd <- randi(7) + 16
   vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
   se (vidaru <= 0) entao
      escreval ("Fim de jogo. O ", nomeju," é o perdedor e o ", nomejd," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidard <= 0) entao
   escreval ("Fim de jogo. O ", nomejd, " é o perdedor e o ", nomeju, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("você atacou o ", nomeru, " e deu", danoquinzerd," de dano")
escreval ("agora o ", nomeru, " tem", vidaru," de vida")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "AVI"
   se avidard > 100 entao
      escreval ("Sua vida já foi aumentada ao máximo!, Aperte ENTER para passar a vez")
   senao
      avidaquinzerd <- randi(40)
      avidard <- avidaumrd + avidadoisrd + avidatresrd + avidaquatrord + avidacincord + avidaseisrd + avidaseterd + avidaoitord + avidanoverd + avidadezrd + avidaonzerd + avidadozerd + avidatrezerd + avidaquatorzerd + avidaquinzerd + avidadezesseisrd + avidadezesseterd + avidadezoitord + avidadezenoverd  + avidavinterd
      vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
      escreval ("Sua vida aumentou em ", avidaquinzerd)
      escreval ("Aperte ENTER para passar a vez")
   fimse
   leia (acaoenter)
caso "ATC"
   danocquinzerd <- randi(40)
   vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomeju," é o perdedor e o ", nomejd," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomejd, " é o perdedor e o ", nomeju, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("Sua tentativa de ataque critíco deu ", danocquinzerd," de dano")
escreval ("agora o ", nomeru, " tem", vidaru," de vida!")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "ABN"
   escreval (nomejd," é um perdedor ele abandonou a partida. ", nomeju," é o vencedor")
fimalgoritmo
outrocaso
   escreval ("isso não existe. ", nomejd," perdeu a vez. Aperte ENTER para passar a vez")
   leia (acaoenter)
fimescolha
limpatela

//Décima sexta ação do jogador um
escreval ("Rodada 31")
escreval ("Atualmente ", nomeru," tem", vidaru, " de vida e o ", nomerd," tem", vidard, " de vida")
escreval ("Vez do ", nomeju)
escreval ("ATK para atacar, AVI para aumentar vida, ATC para tentar acertar um ataque crítico, ABN abandonar a partida")
leia (acao)
escolha (acao)
   escreval (" ")

caso "ATK"
   danodezesseisru <- randi(7) + 16
   vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomejd," é o perdedor e o ", nomeju," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomeju, " é o perdedor e o ", nomejd, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("você atacou o ", nomerd, " e deu", danodezesseisru," de dano")
escreval ("agora o ", nomerd, " tem", vidard," de vida")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "AVI"
   se avidaru > 100 entao
      escreval ("Sua vida já foi aumentada ao máximo!, Aperte ENTER para passar a vez")
   senao
      avidadezesseisru <- randi(40)
      avidaru <- avidaumru + avidadoisru + avidatresru + avidaquatroru + avidacincoru + avidaseisru + avidaseteru + avidaoitoru + avidanoveru + avidadezru + avidaonzeru + avidadozeru + avidatrezeru + avidaquatorzeru + avidaquinzeru + avidadezesseisru + avidadezesseteru + avidadezoitoru + avidadezenoveru  + avidavinteru
      vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidaru
      escreval ("Sua vida aumentou em ", avidadezesseisru)
      escreval ("Aperte ENTER para passar a vez")
   fimse
   leia (acaoenter)
caso "ATC"
   danocdezesseisru <- randi(40)
   vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomejd," é o perdedor e o ", nomeju," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomeju, " é o perdedor e o ", nomejd, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("Sua tentativa de ataque critíco deu ", danocdezesseisru," de dano")
escreval ("agora o ", nomerd, " tem", vidard," de vida!")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "ABN"
   escreval (nomeju," é um perdedor ele abandonou a partida. ", nomejd," é o vencedor")
fimalgoritmo
outrocaso
   escreval ("isso não existe. ", nomeju," perdeu a vez. Aperte ENTER para passar a vez")
   leia (acaoenter)
fimescolha
limpatela

//Décima sexta do jogador dois
escreval ("Rodada 32")
escreval ("Atualmente ", nomeru," tem", vidaru, " de vida e o ", nomerd," tem", vidard, " de vida")
escreval ("Vez do ", nomejd)
escreval ("ATK para atacar, AVI para aumentar vida, ATC para tentar acertar um ataque crítico, ABN abandonar a partida")
leia (acao)
escolha (acao)
   escreval (" ")
caso "ATK"
   danodezesseisrd <- randi(7) + 16
   vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
   se (vidaru <= 0) entao
      escreval ("Fim de jogo. O ", nomeju," é o perdedor e o ", nomejd," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidard <= 0) entao
   escreval ("Fim de jogo. O ", nomejd, " é o perdedor e o ", nomeju, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("você atacou o ", nomeru, " e deu", danodezesseisrd," de dano")
escreval ("agora o ", nomeru, " tem", vidaru," de vida")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "AVI"
   se avidard > 100 entao
      escreval ("Sua vida já foi aumentada ao máximo!, Aperte ENTER para passar a vez")
   senao
      avidadezesseisrd <- randi(40)
      avidard <- avidaumrd + avidadoisrd + avidatresrd + avidaquatrord + avidacincord + avidaseisrd + avidaseterd + avidaoitord + avidanoverd + avidadezrd + avidaonzerd + avidadozerd + avidatrezerd + avidaquatorzerd + avidaquinzerd + avidadezesseisrd + avidadezesseterd + avidadezoitord + avidadezenoverd  + avidavinterd
      vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
      escreval ("Sua vida aumentou em ", avidadezesseisrd)
      escreval ("Aperte ENTER para passar a vez")
   fimse
   leia (acaoenter)
caso "ATC"
   danocdezesseisrd <- randi(40)
   vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomeju," é o perdedor e o ", nomejd," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomejd, " é o perdedor e o ", nomeju, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("Sua tentativa de ataque critíco deu ", danocdezesseisrd," de dano")
escreval ("agora o ", nomeru, " tem", vidaru," de vida!")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "ABN"
   escreval (nomejd," é um perdedor ele abandonou a partida. ", nomeju," é o vencedor")
fimalgoritmo
outrocaso
   escreval ("isso não existe. ", nomejd," perdeu a vez. Aperte ENTER para passar a vez")
   leia (acaoenter)
fimescolha
limpatela

//Décima sétima ação do jogador um
escreval ("Rodada 33")
escreval ("Atualmente ", nomeru," tem", vidaru, " de vida e o ", nomerd," tem", vidard, " de vida")
escreval ("Vez do ", nomeju)
escreval ("ATK para atacar, AVI para aumentar vida, ATC para tentar acertar um ataque crítico, ABN abandonar a partida")
leia (acao)
escolha (acao)
   escreval (" ")

caso "ATK"
   danodezesseteru <- randi(7) + 16
   vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomejd," é o perdedor e o ", nomeju," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomeju, " é o perdedor e o ", nomejd, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("você atacou o ", nomerd, " e deu", danodezesseteru," de dano")
escreval ("agora o ", nomerd, " tem", vidard," de vida")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "AVI"
   se avidaru > 100 entao
      escreval ("Sua vida já foi aumentada ao máximo!, Aperte ENTER para passar a vez")
   senao
      avidadezesseteru <- randi(40)
      avidard <- avidaumrd + avidadoisrd + avidatresrd + avidaquatrord + avidacincord + avidaseisrd + avidaseterd + avidaoitord + avidanoverd + avidadezrd + avidaonzerd + avidadozerd + avidatrezerd + avidaquatorzerd + avidaquinzerd + avidadezesseisrd + avidadezesseterd + avidadezoitord + avidadezenoverd  + avidavinterd
      vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidaru
      escreval ("Sua vida aumentou em ", avidadezesseteru)
      escreval ("Aperte ENTER para passar a vez")
   fimse
   leia (acaoenter)
caso "ATC"
   danocdezesseteru <- randi(40)
   vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomejd," é o perdedor e o ", nomeju," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomeju, " é o perdedor e o ", nomejd, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("Sua tentativa de ataque critíco deu ", danocdezesseteru," de dano")
escreval ("agora o ", nomerd, " tem", vidard," de vida!")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "ABN"
   escreval (nomeju," é um perdedor ele abandonou a partida. ", nomejd," é o vencedor")
fimalgoritmo
outrocaso
   escreval ("isso não existe. ", nomeju," perdeu a vez. Aperte ENTER para passar a vez")
   leia (acaoenter)
fimescolha
limpatela

//Décima sétima do jogador dois
escreval ("Rodada 34")
escreval ("Atualmente ", nomeru," tem", vidaru, " de vida e o ", nomerd," tem", vidard, " de vida")
escreval ("Vez do ", nomejd)
escreval ("ATK para atacar, AVI para aumentar vida, ATC para tentar acertar um ataque crítico, ABN abandonar a partida")
leia (acao)
escolha (acao)
   escreval (" ")
caso "ATK"
   danodezesseterd <- randi(7) + 16
   vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
   se (vidaru <= 0) entao
      escreval ("Fim de jogo. O ", nomeju," é o perdedor e o ", nomejd," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidard <= 0) entao
   escreval ("Fim de jogo. O ", nomejd, " é o perdedor e o ", nomeju, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("você atacou o ", nomeru, " e deu", danodezesseterd," de dano")
escreval ("agora o ", nomeru, " tem", vidaru," de vida")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "AVI"
   se avidard > 100 entao
      escreval ("Sua vida já foi aumentada ao máximo!, Aperte ENTER para passar a vez")
   senao
      avidadezesseterd <- randi(40)
      avidard <- avidaumrd + avidadoisrd + avidatresrd + avidaquatrord + avidacincord + avidaseisrd + avidaseterd + avidaoitord + avidanoverd + avidadezrd + avidaonzerd + avidadozerd + avidatrezerd + avidaquatorzerd + avidaquinzerd + avidadezesseisrd + avidadezesseterd + avidadezoitord + avidadezenoverd  + avidavinterd
      vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
      escreval ("Sua vida aumentou em ", avidadezesseterd)
      escreval ("Aperte ENTER para passar a vez")
   fimse
   leia (acaoenter)
caso "ATC"
   danocdezesseterd <- randi(40)
   vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomeju," é o perdedor e o ", nomejd," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomejd, " é o perdedor e o ", nomeju, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("Sua tentativa de ataque critíco deu ", danocdezesseterd," de dano")
escreval ("agora o ", nomeru, " tem", vidaru," de vida!")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "ABN"
   escreval (nomejd," é um perdedor ele abandonou a partida. ", nomeju," é o vencedor")
fimalgoritmo
outrocaso
   escreval ("isso não existe. ", nomejd," perdeu a vez. Aperte ENTER para passar a vez")
   leia (acaoenter)
fimescolha
limpatela

//Décima oitava do jogador um
escreval ("Rodada 35")
escreval ("Atualmente ", nomeru," tem", vidaru, " de vida e o ", nomerd," tem", vidard, " de vida")
escreval ("Vez do ", nomeju)
escreval ("ATK para atacar, AVI para aumentar vida, ATC para tentar acertar um ataque crítico, ABN abandonar a partida")
leia (acao)
escolha (acao)
   escreval (" ")

caso "ATK"
   danodezoitoru <- randi(7) + 16
   vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomejd," é o perdedor e o ", nomeju," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomeju, " é o perdedor e o ", nomejd, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("você atacou o ", nomerd, " e deu", danodezoitoru," de dano")
escreval ("agora o ", nomerd, " tem", vidard," de vida")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "AVI"
   se avidaru > 100 entao
      escreval ("Sua vida já foi aumentada ao máximo!, Aperte ENTER para passar a vez")
   senao
      avidadezoitoru <- randi(40)
      avidaru <- avidaumru + avidadoisru + avidatresru + avidaquatroru + avidacincoru + avidaseisru + avidaseteru + avidaoitoru + avidanoveru + avidadezru + avidaonzeru + avidadozeru + avidatrezeru + avidaquatorzeru + avidaquinzeru + avidadezesseisru + avidadezesseteru + avidadezoitoru + avidadezenoveru  + avidavinteru
      vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidaru
      escreval ("Sua vida aumentou em ", avidadezoitoru)
      escreval ("Aperte ENTER para passar a vez")
   fimse
   leia (acaoenter)
caso "ATC"
   danocdezoitoru <- randi(40)
   vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomejd," é o perdedor e o ", nomeju," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomeju, " é o perdedor e o ", nomejd, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("Sua tentativa de ataque critíco deu ", danocdezoitoru," de dano")
escreval ("agora o ", nomerd, " tem", vidard," de vida!")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "ABN"
   escreval (nomeju," é um perdedor ele abandonou a partida. ", nomejd," é o vencedor")
fimalgoritmo
outrocaso
   escreval ("isso não existe. ", nomeju," perdeu a vez. Aperte ENTER para passar a vez")
   leia (acaoenter)
fimescolha
limpatela

//Décima oitava do jogador dois
escreval ("Rodada 36")
escreval ("Atualmente ", nomeru," tem", vidaru, " de vida e o ", nomerd," tem", vidard, " de vida")
escreval ("Vez do ", nomejd)
escreval ("ATK para atacar, AVI para aumentar vida, ATC para tentar acertar um ataque crítico, ABN abandonar a partida")
leia (acao)
escolha (acao)
   escreval (" ")
caso "ATK"
   danodezoitord <- randi(7) + 16
   vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
   se (vidaru <= 0) entao
      escreval ("Fim de jogo. O ", nomeju," é o perdedor e o ", nomejd," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidard <= 0) entao
   escreval ("Fim de jogo. O ", nomejd, " é o perdedor e o ", nomeju, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("você atacou o ", nomeru, " e deu", danodezoitord," de dano")
escreval ("agora o ", nomeru, " tem", vidaru," de vida")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "AVI"
   se avidard > 100 entao
      escreval ("Sua vida já foi aumentada ao máximo!, Aperte ENTER para passar a vez")
   senao
      avidadezoitord <- randi(40)
      avidard <- avidaumrd + avidadoisrd + avidatresrd + avidaquatrord + avidacincord + avidaseisrd + avidaseterd + avidaoitord + avidanoverd + avidadezrd + avidaonzerd + avidadozerd + avidatrezerd + avidaquatorzerd + avidaquinzerd + avidadezesseisrd + avidadezesseterd + avidadezoitord + avidadezenoverd  + avidavinterd
      vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
      escreval ("Sua vida aumentou em ", avidadezoitord)
      escreval ("Aperte ENTER para passar a vez")
   fimse
   leia (acaoenter)
caso "ATC"
   danocdezoitord <- randi(40)
   vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomeju," é o perdedor e o ", nomejd," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomejd, " é o perdedor e o ", nomeju, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("Sua tentativa de ataque critíco deu ", danocdezoitord," de dano")
escreval ("agora o ", nomeru, " tem", vidaru," de vida!")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "ABN"
   escreval (nomejd," é um perdedor ele abandonou a partida. ", nomeju," é o vencedor")
fimalgoritmo
outrocaso
   escreval ("isso não existe. ", nomejd," perdeu a vez. Aperte ENTER para passar a vez")
   leia (acaoenter)
fimescolha
limpatela

//Décima nona do jogador um
escreval ("Rodada 37")
escreval ("Atualmente ", nomeru," tem", vidaru, " de vida e o ", nomerd," tem", vidard, " de vida")
escreval ("Vez do ", nomeju)
escreval ("ATK para atacar, AVI para aumentar vida, ATC para tentar acertar um ataque crítico, ABN abandonar a partida")
leia (acao)
escolha (acao)
   escreval (" ")

caso "ATK"
   danodezenoveru <- randi(7) + 16
   vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomejd," é o perdedor e o ", nomeju," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomeju, " é o perdedor e o ", nomejd, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("você atacou o ", nomerd, " e deu", danodezenoveru," de dano")
escreval ("agora o ", nomerd, " tem", vidard," de vida")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "AVI"
   se avidaru > 100 entao
      escreval ("Sua vida já foi aumentada ao máximo!, Aperte ENTER para passar a vez")
   senao
      avidadezenoveru <- randi(40)
      avidaru <- avidaumru + avidadoisru + avidatresru + avidaquatroru + avidacincoru + avidaseisru + avidaseteru + avidaoitoru + avidanoveru + avidadezru + avidaonzeru + avidadozeru + avidatrezeru + avidaquatorzeru + avidaquinzeru + avidadezesseisru + avidadezesseteru + avidadezoitoru + avidadezenoveru  + avidavinteru
      vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidaru
      escreval ("Sua vida aumentou em ", avidadezenoveru)
      escreval ("Aperte ENTER para passar a vez")
   fimse
   leia (acaoenter)
caso "ATC"
   danocdezenoveru <- randi(40)
   vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomejd," é o perdedor e o ", nomeju," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomeju, " é o perdedor e o ", nomejd, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("Sua tentativa de ataque critíco deu ", danocdezenoveru," de dano")
escreval ("agora o ", nomerd, " tem", vidard," de vida!")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "ABN"
   escreval (nomeju," é um perdedor ele abandonou a partida. ", nomejd," é o vencedor")
fimalgoritmo
outrocaso
   escreval ("isso não existe. ", nomeju," perdeu a vez. Aperte ENTER para passar a vez")
   leia (acaoenter)
fimescolha
limpatela

//Décima nona do jogador dois
escreval ("Rodada 38")
escreval ("Atualmente ", nomeru," tem", vidaru, " de vida e o ", nomerd," tem", vidard, " de vida")
escreval ("Vez do ", nomejd)
escreval ("ATK para atacar, AVI para aumentar vida, ATC para tentar acertar um ataque crítico, ABN abandonar a partida")
leia (acao)
escolha (acao)
   escreval (" ")
caso "ATK"
   danodezenoverd <- randi(7) + 16
   vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
   se (vidaru <= 0) entao
      escreval ("Fim de jogo. O ", nomeju," é o perdedor e o ", nomejd," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidard <= 0) entao
   escreval ("Fim de jogo. O ", nomejd, " é o perdedor e o ", nomeju, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("você atacou o ", nomeru, " e deu", danodezenoverd," de dano")
escreval ("agora o ", nomeru, " tem", vidaru," de vida")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "AVI"
   se avidard > 100 entao
      escreval ("Sua vida já foi aumentada ao máximo!, Aperte ENTER para passar a vez")
   senao
      avidadezenoverd <- randi(40)
      avidard <- avidaumrd + avidadoisrd + avidatresrd + avidaquatrord + avidacincord + avidaseisrd + avidaseterd + avidaoitord + avidanoverd + avidadezrd + avidaonzerd + avidadozerd + avidatrezerd + avidaquatorzerd + avidaquinzerd + avidadezesseisrd + avidadezesseterd + avidadezoitord + avidadezenoverd  + avidavinterd
      vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
      escreval ("Sua vida aumentou em ", avidadezenoverd)
      escreval ("Aperte ENTER para passar a vez")
   fimse
   leia (acaoenter)
caso "ATC"
   danocdezenoverd <- randi(40)
   vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomeju," é o perdedor e o ", nomejd," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomejd, " é o perdedor e o ", nomeju, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("Sua tentativa de ataque critíco deu ", danocdezenoverd," de dano")
escreval ("agora o ", nomeru, " tem", vidaru," de vida!")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "ABN"
   escreval (nomejd," é um perdedor ele abandonou a partida. ", nomeju," é o vencedor")
fimalgoritmo
outrocaso
   escreval ("isso não existe. ", nomejd," perdeu a vez. Aperte ENTER para passar a vez")
   leia (acaoenter)
fimescolha
limpatela

//Vigésima ação do jogador um
escreval ("Rodada 39")
escreval ("Atualmente ", nomeru," tem", vidaru, " de vida e o ", nomerd," tem", vidard, " de vida")
escreval ("Vez do ", nomeju)
escreval ("ATK para atacar, AVI para aumentar vida, ATC para tentar acertar um ataque crítico, ABN abandonar a partida")
leia (acao)
escolha (acao)
   escreval (" ")

caso "ATK"
   danovinteru <- randi(7) + 16
   vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomejd," é o perdedor e o ", nomeju," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomeju, " é o perdedor e o ", nomejd, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("você atacou o ", nomerd, " e deu", danovinteru," de dano")
escreval ("agora o ", nomerd, " tem", vidard," de vida")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "AVI"
   se avidaru > 100 entao
      escreval ("Sua vida já foi aumentada ao máximo!, Aperte ENTER para passar a vez")
   senao
      avidavinteru <- randi(40)
      avidaru <- avidaumru + avidadoisru + avidatresru + avidaquatroru + avidacincoru + avidaseisru + avidaseteru + avidaoitoru + avidanoveru + avidadezru + avidaonzeru + avidadozeru + avidatrezeru + avidaquatorzeru + avidaquinzeru + avidadezesseisru + avidadezesseteru + avidadezoitoru + avidadezenoveru  + avidavinteru
      vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
      escreval ("Sua vida aumentou em ", avidavinteru)
      escreval ("Aperte ENTER para passar a vez")
   fimse
   leia (acaoenter)
caso "ATC"
   danocvinteru <- randi(40)
   vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidard
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomejd," é o perdedor e o ", nomeju," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomeju, " é o perdedor e o ", nomejd, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("Sua tentativa de ataque critíco deu ", danocvinteru," de dano")
escreval ("agora o ", nomerd, " tem", vidard," de vida!")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "ABN"
   escreval (nomeju," é um perdedor ele abandonou a partida. ", nomejd," é o vencedor")
fimalgoritmo
outrocaso
   escreval ("isso não existe. ", nomeju," perdeu a vez. Aperte ENTER para passar a vez")
   leia (acaoenter)
fimescolha
limpatela

//Vigésima ação do jogador dois
escreval ("Rodada 40")
escreval ("Atualmente ", nomeru," tem", vidaru, " de vida e o ", nomerd," tem", vidard, " de vida")
escreval ("Vez do ", nomejd)
escreval ("ATK para atacar, AVI para aumentar vida, ATC para tentar acertar um ataque crítico, ABN abandonar a partida")
leia (acao)
escolha (acao)
   escreval (" ")
caso "ATK"
   danovinterd <- randi(7) + 16
   vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidaru
   se (vidaru <= 0) entao
      escreval ("Fim de jogo. O ", nomeju," é o perdedor e o ", nomejd," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidard <= 0) entao
   escreval ("Fim de jogo. O ", nomejd, " é o perdedor e o ", nomeju, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("você atacou o ", nomeru, " e deu", danovinterd," de dano")
escreval ("agora o ", nomeru, " tem", vidaru," de vida")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "AVI"
   se avidard > 100 entao
      escreval ("Sua vida já foi aumentada ao máximo!, Aperte ENTER para passar a vez")
   senao
      avidavinterd <- randi(40)
      avidard <- avidaumrd + avidadoisrd + avidatresrd + avidaquatrord + avidacincord + avidaseisrd + avidaseterd + avidaoitord + avidanoverd + avidadezrd + avidaonzerd + avidadozerd + avidatrezerd + avidaquatorzerd + avidaquinzerd + avidadezesseisrd + avidadezesseterd + avidadezoitord + avidadezenoverd  + avidavinterd
      vidard <- vidaird - danocumru - danocdoisru - danoctresru - danocquatroru - danoccincoru - danocseisru - danocseteru - danocoitoru - danocnoveru - danocdezru - danoconzeru - danocdozeru - danoctrezeru - danocquatorzeru - danocquinzeru - danocdezesseisru - danocdezesseteru - danocdezoitoru - danocdezenoveru - danocvinteru - danoumru - danodoisru - danotresru - danoquatroru - danocincoru - danoseisru - danoseteru - danooitoru - danonoveru - danodezru - danoonzeru - danodozeru - danotrezeru - danoquatorzeru - danoquinzeru - danodezesseisru - danodezesseteru - danodezoitoru - danodezenoveru - danovinteru + avidaru
      escreval ("Sua vida aumentou em ", avidavinterd)
      escreval ("Aperte ENTER para passar a vez")
   fimse
   leia (acaoenter)
caso "ATC"
   danocvinterd <- randi(40)
   vidaru <- vidairu - danocumrd - danocdoisrd - danoctresrd - danocquatrord - danoccincord - danocseisrd - danocseterd - danocoitord - danocnoverd - danocdezrd - danoconzerd - danocdozerd - danoctrezerd - danocquatorzerd - danocquinzerd - danocdezesseisrd - danocdezesseterd - danocdezoitord - danocdezenoverd - danocvinterd - danoumrd - danodoisrd - danotresrd - danoquatrord - danocincord - danoseisrd - danoseterd - danooitord - danonoverd - danodezrd - danoonzerd - danodozerd - danotrezerd - danoquatorzerd - danoquinzerd - danodezesseisrd - danodezesseterd - danodezoitord - danodezenoverd - danovinterd + avidardu
   se (vidard <= 0) entao
      escreval ("Fim de jogo. O ", nomeju," é o perdedor e o ", nomejd," ganhou, parabéns!")
fimalgoritmo
senao
fimse
se (vidaru <= 0) entao
   escreval ("Fim de jogo. O ", nomejd, " é o perdedor e o ", nomeju, " ganhou, parabéns!")
fimalgoritmo
senao
fimse
escreval ("Sua tentativa de ataque critíco deu ", danocvinterd," de dano")
escreval ("agora o ", nomeru, " tem", vidaru," de vida!")
escreval ("Aperte ENTER para passar a vez")
leia (acaoenter)
caso "ABN"
   escreval (nomejd," é um perdedor ele abandonou a partida. ", nomeju," é o vencedor")
fimalgoritmo
outrocaso
   escreval ("isso não existe. ", nomejd," perdeu a vez. Aperte ENTER para passar a vez")
   leia (acaoenter)
fimescolha
limpatela
fimalgoritmo