data RESULTADOS;
    infile 'C:\consultoria\ipea\amostra\results-survey 17-07.csv' delimiter = ',' DSD MISSOVER truncover lrecl=32767 firstobs=2;
       informat ID_da_resposta $4. ;
       informat Data_de_envio $21. ;
       informat VAR3 $4. ;
       informat VAR4 $7. ;
       informat VAR5 $21. ;
       informat VAR6 $21. ;
       informat VAR7 $16. ;
       informat QA1 $3. ;
       informat QA2 $3. ;
       informat QA3 $6. ;
       informat QA4 $3. ;
       informat QB1 $3. ;
       informat QB2 $3. ;
       informat QB3 $5. ;
       informat QB4 $3. ;
       informat QB5 $3. ;
       informat QB6 $3. ;
       informat QB7 $3. ;
       informat QB8 $3. ;
       informat QC1 $3. ;
       informat QC2 $3. ;
       informat QC3 $3. ;
       informat QC4 $3. ;
       informat QC5 $3. ;
       informat QC6 $5. ;
       informat QC7 $3. ;
       informat QC8 $3. ;
       informat QC9 $3. ;
       informat QC10 $3. ;
       informat QC11 $5. ;
       informat QC12 $3. ;
       informat QC13 $5. ;
       informat QD1 $5. ;
       informat QD2 $5. ;
       informat QD3 $3. ;
       informat QD4 $3. ;
       informat QD5 $3. ;
       informat QD6 $5. ;
       informat QE1 $5. ;
       informat QE2 $3. ;
       informat QE3 $5. ;
       informat QE4 $5. ;
       informat QE5 $5. ;
       informat QE6 $5. ;
       informat QE7 $5. ;
       informat QE8 $3. ;
       informat QE9 $3. ;
       informat QE10 $5. ;
       informat QE11 $3. ;
       informat QE12 $3. ;
       informat QE13 $3. ;
       informat QF1 $5. ;
       informat QF2 $3. ;
       informat QF3 $5. ;
       informat QF4 $5. ;
       informat QF5 $3. ;
       informat QF6 $3. ;
       informat QF7 $5. ;
       informat QF8 $3. ;
       informat QF9 $5. ;
       informat QF10 $5. ;
       informat QF11 $5. ;
       informat QG1 $3. ;
       informat QG2 $3. ;
       informat QG3 $3. ;
       informat QG4 $3. ;
       informat QG5 $3. ;
       informat QG6 $5. ;
       informat QG7 $5. ;
       informat QH1 $5. ;
       informat QH2 $5. ;
       informat QH3 $5. ;
       informat QH4 $5. ;
       informat QH5 $5. ;
       informat QI1 $3. ;
       informat QI2 $5. ;
       informat QI2_O $50. ;
       informat QI3 $3. ;
       informat QI4 $5. ;
       informat QI4_O $50. ;
       informat QI5 $3. ;
       informat QI6 $5. ;
       informat QI7 $43. ;
       informat QI8 $3. ;
       informat QI9 $3. ;
       informat QI10 $3. ;
       informat QJ1 $3. ;
       informat QJ2 $5. ;
       informat QJ3 $3. ;
       informat QJ4 $3. ;
       informat Tempo_total 10.2 ;
       format ID_da_resposta $4. ;
       format Data_de_envio $21. ;
       format VAR3 $4. ;
       format VAR4 $7. ;
       format VAR5 $21. ;
       format VAR6 $21. ;
       format VAR7 $16. ;
       format QA1$3. ;
       format QA2$3. ;
       format QA3 $6. ;
       format QA4 $3. ;
       format QB1 $3. ;
       format QB2 $3. ;
       format QB3 $5. ;
       format QB4 $3. ;
       format QB5 $3. ;
       format QB6 $3. ;
       format QB7 $3. ;
       format QB8 $3. ;
       format QC1 $3. ;
       format QC2 $3. ;
       format QC3 $3. ;
       format QC4 $3. ;
       format QC5 $3. ;
       format QC6 $5. ;
       format QC7 $3. ;
       format QC8 $3. ;
       format QC9 $3. ;
       format QC10 $3. ;
       format QC11 $5. ;
       format QC12 $3. ;
       format QC13 $5. ;
       format QD1 $5. ;
       format QD2 $5. ;
       format QD3 $3. ;
       format QD4 $3. ;
       format QD5 $3. ;
       format QD6 $5. ;
       format QE1 $5. ;
       format QE2 $3. ;
       format QE3 $5. ;
       format QE4 $5. ;
       format QE5 $5. ;
       format QE6 $5. ;
       format QE7 $5. ;
       format QE8 $3. ;
       format QE9 $3. ;
       format QE10 $5. ;
       format QE11 $3. ;
       format QE12 $3. ;
       format QE13 $3. ;
       format QF1 $5. ;
       format QF2 $3. ;
       format QF3 $5. ;
       format QF4 $5. ;
       format QF5 $3. ;
       format QF6 $3. ;
       format QF7 $5. ;
       format QF8 $3. ;
       format QF9 $5. ;
       format QF10 $5. ;
       format QF11 $5. ;
       format QG1 $3. ;
       format QG2 $3. ;
       format QG3 $3. ;
       format QG4 $3. ;
       format QG5 $3. ;
       format QG6 $5. ;
       format QG7 $5. ;
       format QH1 $5. ;
       format QH2 $5. ;
       format QH3 $5. ;
       format QH4 $5. ;
       format QH5 $5. ;
       format QI1 $3. ;
       format QI2 $5. ;
       format QI2_O $50. ;
       format QI3 $3. ;
       format QI4 $5. ;
       format QI4_O $50. ;
       format QI5 $3. ;
       format QI6 $5. ;
       format QI7 $43. ;
       format QI8 $3. ;
       format QI9 $3. ;
       format QI10 $3. ;
       format QJ1 $3. ;
       format QJ2 $5. ;
       format QJ3 $3. ;
       format QJ4 $3. ;
       format Tempo_total commax10.2 ;
    input
                ID_da_resposta  $
                Data_de_envio  $
                VAR3  $
                VAR4  $
                VAR5  $
                VAR6  $
                VAR7  $
                QA1 $
                QA2 $
                QA3  $
                QA4  $
                QB1  $
                QB2  $
                QB3  $
                QB4  $
                QB5  $
                QB6  $
                QB7  $
                QB8  $
                QC1  $
                QC2  $
                QC3  $
                QC4  $
                QC5  $
                QC6  $
                QC7  $
                QC8  $
                QC9  $
                QC10  $
                QC11  $
                QC12  $
                QC13  $
                QD1  $
                QD2  $
                QD3  $
                QD4  $
                QD5  $
                QD6  $
                QE1  $
                QE2  $
                QE3  $
                QE4  $
                QE5  $
                QE6  $
                QE7  $
                QE8  $
                QE9  $
                QE10  $
                QE11  $
                QE12  $
                QE13  $
                QF1  $
                QF2  $
                QF3  $
                QF4  $
                QF5  $
                QF6  $
                QF7  $
                QF8  $
                QF9  $
                QF10  $
                QF11  $
                QG1  $
                QG2  $
                QG3  $
                QG4  $
                QG5  $
                QG6  $
                QG7  $
                QH1  $
                QH2  $
                QH3  $
                QH4  $
                QH5  $
                QI1  $
                QI2  $
                QI2_O  $
                QI3  $
                QI4  $
                QI4_O  $
                QI5  $
                QI6  $
                QI7  $
                QI8  $
                QI9  $
                QI10  $
                QJ1  $
                QJ2  $
                QJ3  $
                QJ4  $
                Tempo_total 
    ;
run;
data resultados;set resultados;
if ID_da_resposta<=14 then delete;
if Data_de_envio ne '';
tempo_total_min=Tempo_total/60;
Data_de_envio1=substr(Data_de_envio,1,10);
Data_de_inicio1=substr(var5,1,10);
Data_de_ultima_acao1=substr(var6,1,10);
Data_Inicio_Fim=trim(left(Data_de_inicio1))||" / "||trim(left(Data_de_envio1));
label ID_da_resposta="ID da resposta"
Data_de_envio="Data de envio"
VAR3="Última página"
VAR4="Idioma inicial"
VAR5="Data de início"
VAR6="Data da última ação"
VAR7="Endereço IP"
QA1="Qual é o seu gênero?"
QA2="Qual a sua cor ou raça?"
QA3="Ano de nascimento"
QA4="Qual é o seu mais alto nível de escolaridade?"
QB1="Em relação a sua organização, avalie o seu grau de concordância com as seguintes afirmações:[I-Meu órgão de trabalho é capaz de recrutar pessoas com as habilidades corretas.]"
QB2="Em relação a sua organização, avalie o seu grau de concordância com as seguintes afirmações:[II-Promoções em meu órgão de trabalho são baseadas no mérito.]"
QB3="Em relação a sua organização, avalie o seu grau de concordância com as seguintes afirmações:[III-Indicações para cargos comissionados deveriam ser baseadas no mérito.]"
QB4="Qual o seu nível de satisfação com o reconhecimento que você recebe por fazer um bom trabalho?"
QB5="Avalie o grau de importância dos itens a seguir para nomeação a cargos comissionados.[I-Competência técnica.]"
QB6="Avalie o grau de importância dos itens a seguir para nomeação a cargos comissionados.[II-Afiliação a partidos políticos.]"
QB7="Avalie o grau de importância dos itens a seguir para nomeação a cargos comissionados.[III-Especialização na carreira.]"
QB8="Avalie o grau de importância dos itens a seguir para nomeação a cargos comissionados.[IV-Rede de relacionamento pessoal.]"
QC1="Avalie o seu grau de concordância com os itens a seguir:[I-Minha percepção é que o governo utiliza ao máximo minhas habilidades.]"
QC2="Avalie o seu grau de concordância com os itens a seguir:[II-Em meu atual cargo sinto-me encorajado a trazer novos e melhores modos de trabalho.]"
QC3="Avalie o seu grau de concordância com os itens a seguir:[III-Tenho condições para tomar decisões próprias na realização do meu trabalho.]"
QC4="Avalie o seu grau de concordância com os itens a seguir:[IV-A aprovação de um projeto depende das minhas considerações técnicas]"
QC5="Qual o nível de satisfação com o seu envolvimento nas decisões que afetam seu trabalho?"
QC6="Com que frequência regras e regulamentos formais impedem que você execute seu trabalho?"
QC7="Avalie o seu grau de concordância com os itens a seguir:[I-Uma carreira no setor público é desejada entre os graduados das melhores universidades do país.]"
QC8="Avalie o seu grau de concordância com os itens a seguir:[II-Servidores nunca se beneficiam de seus cargos, exceto pelo seu salário.]"
QC9="Avalie o seu grau de concordância com os itens a seguir:[III-Servidores são politicamente neutros no desempenho de suas funções.]"
QC10="Avalie o seu grau de concordância com os itens a seguir:[IV-Servidores devem obedecer estritamente aos seus superiores.]"
QC11="Avalie o seu grau de concordância com os itens a seguir:[V-Servidores possuem liberdade para substituir regras formais em favor de seu próprio julgamento.]"
QC12="Ter conexões políticas pode ser importante no setor público em algumas ocasiões.Avalie o grau de importância dos itens a seguir: [I-Obter um aumento salarial.]"
QC13="Ter conexões políticas pode ser importante no setor público em algumas ocasiões.Avalie o grau de importância dos itens a seguir: [II-Alcançar o objetivo da política pública.]"
QD1="Avalie o seu grau de concordância com os itens a seguir:[I-A cultura organizacional de meu órgão dificulta práticas de corrupção]"
QD2="Avalie o seu grau de concordância com os itens a seguir:[II-Organizações da sociedade civil são capazes de participar do processo de tomada de decisão das políticas do meu órgão.]"
QD3="Avalie o seu grau de concordância com os itens a seguir:[III-Minha organização é cobrada em relação à obtenção de resultados.]"
QD4="Avalie o seu grau de concordância com os itens a seguir:[IV-O desempenho da minha organização é bem avaliado pela sociedade.]"
QD5="Avalie o seu grau de concordância com os itens a seguir:[V-A gestão das políticas de competência do meu órgão conta com instrumentos de coordenação entre diferentes níveis de governo.]"
QD6="Avalie o seu grau de concordância com os itens a seguir:[VI-A sociedade respeita as autoridades governamentais não eleitas.]"
QE1="Os itens a seguir são obstáculos ao bom desempenho do seu órgão?[I-Recursos humanos.]"
QE2="Os itens a seguir são obstáculos ao bom desempenho do seu órgão?[II-Orçamento.]"
QE3="Os itens a seguir são obstáculos ao bom desempenho do seu órgão?[III-Recursos tecnológicos.]"
QE4="Os itens a seguir são obstáculos ao bom desempenho do seu órgão?[IV-Estabilidade do quadro dirigente.]"
QE5="Os itens a seguir são obstáculos ao bom desempenho do seu órgão?[V-Processos de planejamento, monitoramento e avaliação.]"
QE6="Os itens a seguir são obstáculos ao bom desempenho do seu órgão?[VI-Legislação.]"
QE7="Os itens a seguir são obstáculos ao bom desempenho do seu órgão?[VII-Instrumentos de relacionamento com o Poder Judiciário e o Ministério Público.]"
QE8="Os itens a seguir são obstáculos ao bom desempenho do seu órgão?[VIII-Instrumentos de relacionamento com o Poder Legislativo.]"
QE9="Os itens a seguir são obstáculos ao bom desempenho do seu órgão?[IX-Instrumentos de coordenação interfederativa com estados e municípios.]"
QE10="Os itens a seguir são obstáculos ao bom desempenho do seu órgão?[X-Auditorias e processos de controle.]"
QE11="Os itens a seguir são obstáculos ao bom desempenho do seu órgão?[XI-Instrumentos de participação social.]"
QE12="Os itens a seguir são obstáculos ao bom desempenho do seu órgão?[XII-Acesso aos principais decisores políticos]"
QE13="Os itens a seguir são obstáculos ao bom desempenho do seu órgão?[XIII-Interferência político-partidária]"
QF1="Nos últimos 12 meses, com que frequência você interagiu com:[I-Outras organizações ou agências ligadas ao seu órgão.]"
QF2="Nos últimos 12 meses, com que frequência você interagiu com:[II-Órgãos de outros ministérios.]"
QF3="Nos últimos 12 meses, com que frequência você interagiu com:[III-Congresso/Parlamentares.]"
QF4="Nos últimos 12 meses, com que frequência você interagiu com:[IV-Judiciário/Membros do judiciário.]"
QF5="Nos últimos 12 meses, com que frequência você interagiu com:[V-Órgãos de controle (TCU, CGU, Ministérios Público).]"
QF6="Nos últimos 12 meses, com que frequência você interagiu com:[VI-Prefeituras.]"
QF7="Nos últimos 12 meses, com que frequência você interagiu com:[VII-Governos estaduais.]"
QF8="Nos últimos 12 meses, com que frequência você interagiu com:[VIII-Empresas privadas]"
QF9="Nos últimos 12 meses, com que frequência você interagiu com:[IX-Organizações internacionais.]"
QF10="Nos últimos 12 meses, com que frequência você interagiu com:[X-Organizações da sociedade civil.]"
QF11="Nos últimos 12 meses, com que frequência você interagiu com:[XI-Universidades e institutos de pesquisa.]"
QG1="Os servidores de sua organização possuem as habilidades descritas abaixo? Avalie o seu grau de concordância com os itens a seguir: [I-Conhecimentos das políticas públicas do setor de atuação.]"
QG2="Os servidores de sua organização possuem as habilidades descritas abaixo? Avalie o seu grau de concordância com os itens a seguir: [II-Habilidades de pesquisa.]"
QG3="Os servidores de sua organização possuem as habilidades descritas abaixo? Avalie o seu grau de concordância com os itens a seguir: [III-Habilidades para analisar políticas públicas.]"
QG4="Os servidores de sua organização possuem as habilidades descritas abaixo? Avalie o seu grau de concordância com os itens a seguir: [IV-Liderança.]"
QG5="Os servidores de sua organização possuem as habilidades descritas abaixo? Avalie o seu grau de concordância com os itens a seguir: [V-Habilidades para gerenciamento de conflitos.]"
QG6="Os servidores de sua organização possuem as habilidades descritas abaixo? Avalie o seu grau de concordância com os itens a seguir: [VI-Habilidades de construção de relações interpessoais.]"
QG7="Os servidores de sua organização possuem as habilidades descritas abaixo? Avalie o seu grau de concordância com os itens a seguir: [VII-Habilidade de comunicação.]"
QH1="Atualmente, sua organização alcançou mais ou menos resultados comparado a cinco anos atrás?"
QH2="Avalie o seu grau de concordância com os itens a seguir:[As políticas produzidas pela organização a qual pertenço atingiram os resultados esperados.]"
QH3="Avalie o seu grau de concordância com os itens a seguir:[Os recursos disponíveis foram suficientes para o cumprimento das funções da organização à qual pertenço.]"
QH4="Avalie o seu grau de concordância com os itens a seguir:[As habilidades requeridas dos integrantes da organização a que pertenço estiveram adequadas para o alcance de seus objetivos]"
QH5="Avalie o seu grau de concordância com os itens a seguir:[Minha organização é criativa e inovadora.]"
QI1="Há quantos anos você atua no serviço público?"
QI2="Qual é o seu vínculo com a administração pública?"
QI2_O="Qual é o seu vínculo com a administração pública? [Outros]"
QI3="Qual é a sua carreira?"
QI4="Sua organização pertence a qual ministério?"
QI4_O="Sua organização pertence a qual ministério? [Outros]"
QI5="Você trabalha no Distrito Federal ou em outra unidade da Federação?"
QI6="Em que tipo de organização você trabalha atualmente?"
QI7="Em qual órgão você trabalha atualmente?"
QI8="Você possui cargo comissionado?"
QI9="Qual é o seu cargo comissionado?"
QI10="Você é filiado a algum partido político?"
QJ1="I) Dois servidores pertencem à mesma carreira, porém um está a mais tempo no cargo que o outro. O servidor com menos tempo apresenta maiores habilidades técnicas e obtém nomeação a cargo comissionado antes do servidor mais antigo na carreira.  	 "
QJ2="II) Um servidor público proveniente de uma família influente trabalha em um órgão que deseja estabelecer parcerias com o empresariado local. Este servidor é promomovido, nomeado para um cargo de confiança, em detrimento de outros servidores com as mesmas competências técnicas e tempo de serviço. "
QJ3="III) O governo adota um sistema de promoção nas carreiras com base em pontuação e com o objetivo de promover a diversidade concede pontos extras para minorias étnico-raciais.  "
QJ4="IV) O governo adota um sistema de promoção nas carreiras com base em pontuação e com o objetivo de promover a diversidade concede pontos extras para mulheres."
Tempo_total="Tempo total";
run;

proc format;
value $QA1_	'1'='Feminino' '2'='Masculino'	'999'='Sem resposta';
value $QA2_ '1'='Amarela (asiática)' '2'='Branca' '3'='Indígena' '4'='Parda' '5'='Preta' '999'='Eu não sei/Eu não quero responder';
value $QA4_ '1'='Ensino Médio' '2'='Graduação' '3'='Especialização' '4'='Mestrado' '5'='Doutorado' '999'='Eu não sei/Eu não quero responder';
value $QB1_ '5'='Concordo plenamente' '4'='Concordo' '3'='Não concordo nem discordo' '2'='Discordo' '1'='Discordo Plenamente' '999'='Eu não sei/Eu não quero responder';
value $QB2_ '5'='Concordo plenamente' '4'='Concordo' '3'='Não concordo nem discordo' '2'='Discordo' '1'='Discordo Plenamente' '999'='Eu não sei/Eu não quero responder';
value $QB3_ '5'='Concordo plenamente' '4'='Concordo' '3'='Não concordo nem discordo' '2'='Discordo' '1'='Discordo Plenamente' '999'='Eu não sei/Eu não quero responder';
value $QB4_ '5'='Muito Satisfeito' '4'='Satisfeito' '3'='Nem satisfeito nem insatisfeito' '2'='Insatisfeito' '1'='Muito Insatisfeito' '999'='Eu não sei/Eu não quero responder';
value $QB5_ '4'='Muito Importante' '3'='Importante' '2'='Pouco Importante' '1'='Sem Importância' '999'='Eu não sei/Eu não quero responder';
value $QB6_ '4'='Muito Importante' '3'='Importante' '2'='Pouco Importante' '1'='Sem Importância' '999'='Eu não sei/Eu não quero responder';
value $QB7_ '4'='Muito Importante' '3'='Importante' '2'='Pouco Importante' '1'='Sem Importância' '999'='Eu não sei/Eu não quero responder';
value $QB8_ '4'='Muito Importante' '3'='Importante' '2'='Pouco Importante' '1'='Sem Importância' '999'='Eu não sei/Eu não quero responder';
value $QC1_ '5'='Concordo plenamente' '4'='Concordo' '3'='Não concordo nem discordo' '2'='Discordo' '1'='Discordo Plenamente' '999'='Eu não sei/Eu não quero responder';
value $QC2_ '5'='Concordo plenamente' '4'='Concordo' '3'='Não concordo nem discordo' '2'='Discordo' '1'='Discordo Plenamente' '999'='Eu não sei/Eu não quero responder';
value $QC3_ '5'='Concordo plenamente' '4'='Concordo' '3'='Não concordo nem discordo' '2'='Discordo' '1'='Discordo Plenamente' '999'='Eu não sei/Eu não quero responder';
value $QC4__ '5'='Concordo plenamente' '4'='Concordo' '3'='Não concordo nem discordo' '2'='Discordo' '1'='Discordo Plenamente' '999'='Eu não sei/Eu não quero responder';
value $QC5_ '5'='Muito Satisfeito' '4'='Satisfeito' '3'='Nem satisfeito nem insatisfeito' '2'='Insatisfeito' '1'='Muito Insatisfeito' '999'='Eu não sei/Eu não quero responder';
value $QC6_ '5'='Sempre' '4'='Muitas vezes' '3'='Às vezes' '2'='Raramente'	'1'='Nunca' '999'='Eu não sei/Eu não quero responder';
value $QC7_ '5'='Concordo plenamente' '4'='Concordo' '3'='Não concordo nem discordo' '2'='Discordo' '1'='Discordo Plenamente' '999'='Eu não sei/Eu não quero responder';
value $QC8_ '5'='Concordo plenamente' '4'='Concordo' '3'='Não concordo nem discordo' '2'='Discordo' '1'='Discordo Plenamente' '999'='Eu não sei/Eu não quero responder';
value $QC9_ '5'='Concordo plenamente' '4'='Concordo' '3'='Não concordo nem discordo' '2'='Discordo' '1'='Discordo Plenamente' '999'='Eu não sei/Eu não quero responder';
value $QC10_ '5'='Concordo plenamente' '4'='Concordo' '3'='Não concordo nem discordo' '2'='Discordo' '1'='Discordo Plenamente' '999'='Eu não sei/Eu não quero responder';
value $QC11_ '5'='Concordo plenamente' '4'='Concordo' '3'='Não concordo nem discordo' '2'='Discordo' '1'='Discordo Plenamente' '999'='Eu não sei/Eu não quero responder';
value $QC12_ '4'='Muito Importante' '3'='Importante' '2'='Pouco Importante' '1'='Sem Importância' '999'='Eu não sei/Eu não quero responder';
value $QC13_ '4'='Muito Importante' '3'='Importante' '2'='Pouco Importante' '1'='Sem Importância' '999'='Eu não sei/Eu não quero responder';
value $QD1_ '5'='Concordo plenamente' '4'='Concordo' '3'='Não concordo nem discordo' '2'='Discordo' '1'='Discordo Plenamente' '999'='Eu não sei/Eu não quero responder';
value $QD2_ '5'='Concordo plenamente' '4'='Concordo' '3'='Não concordo nem discordo' '2'='Discordo' '1'='Discordo Plenamente' '999'='Eu não sei/Eu não quero responder';
value $QD3_ '5'='Concordo plenamente' '4'='Concordo' '3'='Não concordo nem discordo' '2'='Discordo' '1'='Discordo Plenamente' '999'='Eu não sei/Eu não quero responder';
value $QD4_ '5'='Concordo plenamente' '4'='Concordo' '3'='Não concordo nem discordo' '2'='Discordo' '1'='Discordo Plenamente' '999'='Eu não sei/Eu não quero responder';
value $QD5_ '5'='Concordo plenamente' '4'='Concordo' '3'='Não concordo nem discordo' '2'='Discordo' '1'='Discordo Plenamente' '999'='Eu não sei/Eu não quero responder';
value $QD6_ '5'='Concordo plenamente' '4'='Concordo' '3'='Não concordo nem discordo' '2'='Discordo' '1'='Discordo Plenamente' '999'='Eu não sei/Eu não quero responder';
value $QE1_ '5'='Concordo plenamente' '4'='Concordo' '3'='Não concordo nem discordo' '2'='Discordo' '1'='Discordo Plenamente' '999'='Eu não sei/Eu não quero responder';
value $QE2_ '5'='Concordo plenamente' '4'='Concordo' '3'='Não concordo nem discordo' '2'='Discordo' '1'='Discordo Plenamente' '999'='Eu não sei/Eu não quero responder';
value $QE3_ '5'='Concordo plenamente' '4'='Concordo' '3'='Não concordo nem discordo' '2'='Discordo' '1'='Discordo Plenamente' '999'='Eu não sei/Eu não quero responder';
value $QE4_ '5'='Concordo plenamente' '4'='Concordo' '3'='Não concordo nem discordo' '2'='Discordo' '1'='Discordo Plenamente' '999'='Eu não sei/Eu não quero responder';
value $QE5_ '5'='Concordo plenamente' '4'='Concordo' '3'='Não concordo nem discordo' '2'='Discordo' '1'='Discordo Plenamente' '999'='Eu não sei/Eu não quero responder';
value $QE6_ '5'='Concordo plenamente' '4'='Concordo' '3'='Não concordo nem discordo' '2'='Discordo' '1'='Discordo Plenamente' '999'='Eu não sei/Eu não quero responder';
value $QE7_ '5'='Concordo plenamente' '4'='Concordo' '3'='Não concordo nem discordo' '2'='Discordo' '1'='Discordo Plenamente' '999'='Eu não sei/Eu não quero responder';
value $QE8_ '5'='Concordo plenamente' '4'='Concordo' '3'='Não concordo nem discordo' '2'='Discordo' '1'='Discordo Plenamente' '999'='Eu não sei/Eu não quero responder';
value $QE9_ '5'='Concordo plenamente' '4'='Concordo' '3'='Não concordo nem discordo' '2'='Discordo' '1'='Discordo Plenamente' '999'='Eu não sei/Eu não quero responder';
value $QE10_ '5'='Concordo plenamente' '4'='Concordo' '3'='Não concordo nem discordo' '2'='Discordo' '1'='Discordo Plenamente' '999'='Eu não sei/Eu não quero responder';
value $QE11_ '5'='Concordo plenamente' '4'='Concordo' '3'='Não concordo nem discordo' '2'='Discordo' '1'='Discordo Plenamente' '999'='Eu não sei/Eu não quero responder';
value $QE12_ '5'='Concordo plenamente' '4'='Concordo' '3'='Não concordo nem discordo' '2'='Discordo' '1'='Discordo Plenamente' '999'='Eu não sei/Eu não quero responder';
value $QE13_ '5'='Concordo plenamente' '4'='Concordo' '3'='Não concordo nem discordo' '2'='Discordo' '1'='Discordo Plenamente' '999'='Eu não sei/Eu não quero responder';
value $QF1_ '5'='Semanalmente' '4'='Mensalmente' '3'='Trimestralmente' '2'='Semestralmente' '1'='Nenhuma vez no último ano' '999'='Eu não sei/Eu não quero responder';
value $QF2_ '5'='Semanalmente' '4'='Mensalmente' '3'='Trimestralmente' '2'='Semestralmente' '1'='Nenhuma vez no último ano' '999'='Eu não sei/Eu não quero responder';
value $QF3_ '5'='Semanalmente' '4'='Mensalmente' '3'='Trimestralmente' '2'='Semestralmente' '1'='Nenhuma vez no último ano' '999'='Eu não sei/Eu não quero responder';
value $QF4_ '5'='Semanalmente' '4'='Mensalmente' '3'='Trimestralmente' '2'='Semestralmente' '1'='Nenhuma vez no último ano' '999'='Eu não sei/Eu não quero responder';
value $QF5_ '5'='Semanalmente' '4'='Mensalmente' '3'='Trimestralmente' '2'='Semestralmente' '1'='Nenhuma vez no último ano' '999'='Eu não sei/Eu não quero responder';
value $QF6_ '5'='Semanalmente' '4'='Mensalmente' '3'='Trimestralmente' '2'='Semestralmente' '1'='Nenhuma vez no último ano' '999'='Eu não sei/Eu não quero responder';
value $QF7_ '5'='Semanalmente' '4'='Mensalmente' '3'='Trimestralmente' '2'='Semestralmente' '1'='Nenhuma vez no último ano' '999'='Eu não sei/Eu não quero responder';
value $QF8_ '5'='Semanalmente' '4'='Mensalmente' '3'='Trimestralmente' '2'='Semestralmente' '1'='Nenhuma vez no último ano' '999'='Eu não sei/Eu não quero responder';
value $QF9_ '5'='Semanalmente' '4'='Mensalmente' '3'='Trimestralmente' '2'='Semestralmente' '1'='Nenhuma vez no último ano' '999'='Eu não sei/Eu não quero responder';
value $QF10_ '5'='Semanalmente' '4'='Mensalmente' '3'='Trimestralmente' '2'='Semestralmente' '1'='Nenhuma vez no último ano' '999'='Eu não sei/Eu não quero responder';
value $QF11_ '5'='Semanalmente' '4'='Mensalmente' '3'='Trimestralmente' '2'='Semestralmente' '1'='Nenhuma vez no último ano' '999'='Eu não sei/Eu não quero responder';
value $QG1_ '5'='Concordo plenamente' '4'='Concordo' '3'='Não concordo nem discordo' '2'='Discordo' '1'='Discordo Plenamente' '999'='Eu não sei/Eu não quero responder';
value $QG2_ '5'='Concordo plenamente' '4'='Concordo' '3'='Não concordo nem discordo' '2'='Discordo' '1'='Discordo Plenamente' '999'='Eu não sei/Eu não quero responder';
value $QG3_ '5'='Concordo plenamente' '4'='Concordo' '3'='Não concordo nem discordo' '2'='Discordo' '1'='Discordo Plenamente' '999'='Eu não sei/Eu não quero responder';
value $QG4_ '5'='Concordo plenamente' '4'='Concordo' '3'='Não concordo nem discordo' '2'='Discordo' '1'='Discordo Plenamente' '999'='Eu não sei/Eu não quero responder';
value $QG5_ '5'='Concordo plenamente' '4'='Concordo' '3'='Não concordo nem discordo' '2'='Discordo' '1'='Discordo Plenamente' '999'='Eu não sei/Eu não quero responder';
value $QG6_ '5'='Concordo plenamente' '4'='Concordo' '3'='Não concordo nem discordo' '2'='Discordo' '1'='Discordo Plenamente' '999'='Eu não sei/Eu não quero responder';
value $QG7_ '5'='Concordo plenamente' '4'='Concordo' '3'='Não concordo nem discordo' '2'='Discordo' '1'='Discordo Plenamente' '999'='Eu não sei/Eu não quero responder';
value $QH1_ '5'='Muito mais efetiva' '4'='Mais efetiva' '3'='Igual' '2'='Piorou' '1'='Piorou muito' '999'='Eu não sei/Eu não quero responder';
value $QH2_ '5'='Concordo plenamente' '4'='Concordo' '3'='Não concordo nem discordo' '2'='Discordo' '1'='Discordo Plenamente' '999'='Eu não sei/Eu não quero responder';
value $QH3_ '5'='Concordo plenamente' '4'='Concordo' '3'='Não concordo nem discordo' '2'='Discordo' '1'='Discordo Plenamente' '999'='Eu não sei/Eu não quero responder';
value $QH4_ '5'='Concordo plenamente' '4'='Concordo' '3'='Não concordo nem discordo' '2'='Discordo' '1'='Discordo Plenamente' '999'='Eu não sei/Eu não quero responder';
value $QH5_ '5'='Concordo plenamente' '4'='Concordo' '3'='Não concordo nem discordo' '2'='Discordo' '1'='Discordo Plenamente' '999'='Eu não sei/Eu não quero responder';
value $QI1_ '1'='Entre 1-5 anos' '2'='Entre 6-10 anos' '3'='Entre 11-15 anos' '4'='Entre 16-20 anos' '5'='Entre 21-25 anos' '6'='Mais de 25 anos' '999'='Eu não sei/Eu não quero responder';
value $QI2_ '1'='Com vínculo (Estatutário)' '2'='Sem vínculo' '3'='Celetista' '-oth-'='Outros' '999'='Eu não sei / Eu não quero responder';
value $QI3_ '1'='Carreira de nível básico' '2'='Carreira de nível médio' '3'='Carreira de nível superior' '4'='Sem vínculo empregatício com a administração pública'  '999'='Eu não sei/Eu não quero responder';
value $QI4_ 'A1'='Agricultura, Pecuária e Abastecimento'
 	'A2'='Cidades'
 	'A3'='Ciência, Tecnologia, Inovações e Comunicações'
	'A4'='Cultura'
	'A5'='Defesa'
	'A6'='Desenvolvimento social'
	'A7'='Direitos humanos'
	'A8'='Educação'
	'A9'='Esportes'
	'A10'='Fazenda'
	'A11'='Indústria, comércio exterior e serviços'
	'A12'='Integração nacional'
	'A13'='Justiça e Segurança pública'
	'A14'='Meio ambiente'
	'A15'='Minas e energia'
	'A16'='Planejamento, desenvolvimento e gestão'
	'A17'='Relações exteriores'
	'A18'='Saúde'
	'A19'='Trabalho'
	'A20'='Transparência, Fiscalização e CGU'
	'A21'='Transportes, portos e aviação civil'
	'A22'='Turismo'
	'A23'='Secretaria de governo/PR'
	'A24'='Secretaria geral/PR'
	'A25'='Advocacia Geral da União'
	'A26'='Banco Central do Brasil'
	'A27'='Casa Civil'
	'A28'='Gabinete de segurança institucional'
	'-oth-'='Outros'
	'999'='Eu não sei / Eu não quero responder';
value $QI5_ '1'='Distrito Federal' '2'='Outra UF' '999'='Eu não sei/Eu não quero responder';
value $QI6_ '1'='Administração direta' '2'='Agência reguladora' '3'='Autarquia/ Fundação Pública' '4'='Empresa Pública' '999'='Eu não sei / Eu não quero responder';
value $QI8_ '1'='Sim' '2'='Não';
value $QI9_ '1'='Função/gratificação' '2'='DAS ou equivalente (livre provimento)' '3'='Outro' '999'='Eu não sei / Eu não quero responder';
value $QI10_ '1'='Sim' '2'='Não';
value $QJ1_ '4'='Completamente meritocrático' '3'='Parcialmente meritocrático' '2'='Pouco meritocrático' '1'='Nada meritocrático' '999'='Eu não sei/Eu não quero responder';
value $QJ2_ '4'='Completamente meritocrático' '3'='Parcialmente meritocrático' '2'='Pouco meritocrático' '1'='Nada meritocrático' '999'='Eu não sei/Eu não quero responder';
value $QJ3_ '4'='Completamente meritocrático' '3'='Parcialmente meritocrático' '2'='Pouco meritocrático' '1'='Nada meritocrático' '999'='Eu não sei/Eu não quero responder';
value $QJ4_ '4'='Completamente meritocrático' '3'='Parcialmente meritocrático' '2'='Pouco meritocrático' '1'='Nada meritocrático' '999'='Eu não sei/Eu não quero responder';
run;

proc contents data=resultados out=var noprint;run;

data var;set var;
if substr(NAME,1,1)='Q' and length(NAME)<=4;
run;
data var;set var;
call symput('var'||trim(left(_n_)),trim(left(NAME)));
run;
%put &var1;
proc sql noprint;select count(*) into:nvar from var;quit;%put &nvar;

%macro l;
data resultados;set resultados;
%do i=1 %to &nvar;
%if &&var&i ne QA3 and &&var&i ne QC4 and &&var&i ne QI7 %then %do;
format &&var&i $&&var&i.._.;
%end;
%end;
run;
%mend l;
%l;

data token_respondidos;
length tid $5. firstname $50. lastname $10. email $20. emailstatus $3. token $16. 
	   language $5. validfrom $2. validuntil $2. invited $2. reminded $2. remindercount $2.
	   completed $2. usesleft $2. Matricula $8. Cod_orgao_Lotacao $5. CPF $20.;
infile 'C:\consultoria\ipea\amostra\Tokens respondidos8.txt' delimiter = ',' dsd 
MISSOVER truncover lrecl=32767 firstobs=2;
   input tid $ firstname $ lastname $ email $ emailstatus $ token $ language $ 
	   validfrom $ validuntil $ invited $ reminded $ remindercount $ completed $ 
       usesleft $ Matricula $ Cod_orgao_Lotacao $ CPF $;
run;

proc import datafile='C:\consultoria\ipea\amostra\amostra_final_com_tokens.xlsx'
out=amostra replace;
run;

proc sql;
create table quest_respondidos as
select a.token,Modelo_Juridico_Organizacional,cargos_carreiras,Cargo_Comissionado,
ORG_EXERCICIO from amostra a,token_respondidos b
where a.token=b.token;
quit;
proc freq data=quest_respondidos noprint;
tables Modelo_Juridico_Organizacional*cargos_carreiras*Cargo_Comissionado  
/out=freq_geral_amostra(drop=percent rename=count=respondidos);
run;


data resultados2;merge resultados quest_respondidos;run;

libname ipea 'C:\consultoria\ipea\amostra';

data freq_geral_amostra;merge freq_geral_amostra ipea.freq_geral2(drop=percent 
amostra_necessaria2 _nsize_);
by Modelo_Juridico_Organizacional cargos_carreiras Cargo_Comissionado;
pct_respondidos=respondidos/amostra_necessaria;
peso=count/respondidos;
run;
proc sort data=resultados2;
by Modelo_Juridico_Organizacional cargos_carreiras Cargo_Comissionado;
run;
data resultados2;merge resultados2 freq_geral_amostra(keep=Modelo_Juridico_Organizacional
cargos_carreiras Cargo_Comissionado peso);
by Modelo_Juridico_Organizacional cargos_carreiras Cargo_Comissionado;
run;
proc means data=resultados2 sum;var peso;run;

proc freq data=ipea.Sampling_frame2 noprint;
tables ORG_EXERCICIO /out=pop_ORG_EXERCICIO;
run;
proc freq data=quest_respondidos noprint;
tables ORG_EXERCICIO /out=freq_geral_amostra_orgao(drop=percent rename=count=respondidos);
run;

data freq_geral_amostra_orgao;merge freq_geral_amostra_orgao(in=a) pop_ORG_EXERCICIO;
by ORG_EXERCICIO;
if a;
amostra_necessaria=ceil((count*96)/(count+96));
pct_respondidos=respondidos/amostra_necessaria;
peso_orgao=count/respondidos;
run;
proc sort data=resultados2;by ORG_EXERCICIO;run;
data resultados2;merge resultados2 freq_geral_amostra_orgao(keep=ORG_EXERCICIO peso_orgao);
by ORG_EXERCICIO;
run;
proc means data=resultados2 sum;var peso peso_orgao;run;
proc sort data=resultados2;by Data_de_envio;run;




options nodate nonumber;
ods noproctitle;
ods rtf file='C:\consultoria\ipea\amostra\resultados_preliminares.doc' style=journal startpage=no;

proc freq data=resultados;
tables Data_de_envio1 Data_de_inicio1 Data_de_ultima_acao1 Data_Inicio_Fim /out=freq_data;
run;
proc gchart data=freq_data;
hbar3d Data_Inicio_Fim /freq=count;
where count>5;
run;
quit;

%macro r;
proc freq data=resultados;
%do i=1 %to &nvar;
%if &&var&i ne QA3 and &&var&i ne QC4 and &&var&i ne QI7 %then %do;
tables &&var&i /out=table_&&var&i;
%end;
%end;
run;
%mend r;
%r;

proc freq data=resultados;
tables QI2_O /out=table_QI2_O;
tables QI4_O /out=table_QI4_O;
run;


proc means data=resultados min q1 median mean q3 max;
var tempo_total_min;
label tempo_total_min='Tempo Total (minutos)';
run;
ods rtf close;


options nodate nonumber;
ods noproctitle;
ods rtf file='C:\consultoria\ipea\amostra\resultados_finais_peso.doc' style=journal startpage=no;

proc freq data=resultados2;
tables Data_de_envio1 Data_de_inicio1 Data_de_ultima_acao1 Data_Inicio_Fim /out=freq_data;
run;
proc gchart data=freq_data;
hbar3d Data_Inicio_Fim /freq=count;
where count>5;
run;
quit;

%macro r;
proc surveyfreq data=resultados2;
%do i=1 %to &nvar;
%if &&var&i ne QA3 and &&var&i ne QC4 and &&var&i ne QI7 %then %do;
tables &&var&i /cl nostd;
%end;
%end;
weight peso;
run;
%mend r;
%r;

proc surveyfreq data=resultados2;
tables QI2_O/cl nostd ;
tables QI4_O /cl nostd;
weight peso;
run;


proc means data=resultados2 min q1 median mean q3 max;
var tempo_total_min;
label tempo_total_min='Tempo Total (minutos)';
run;
ods rtf close;


options nodate nonumber;
ods noproctitle;
ods rtf file='C:\consultoria\ipea\amostra\resultados_finais_Modelo_Juridico_Organizacional_peso.doc' style=journal startpage=no;


%macro r;
proc surveyfreq data=resultados2;
%do i=1 %to &nvar;
%if &&var&i ne QA3 and &&var&i ne QC4 and &&var&i ne QI7 %then %do;
tables Modelo_Juridico_Organizacional*&&var&i /nocellpercent nostd row(cl);
%end;
%end;
weight peso;
run;
%mend r;
%r;

proc surveyfreq data=resultados2;
tables Modelo_Juridico_Organizacional*QI2_O/nocellpercent nostd row(cl);
tables Modelo_Juridico_Organizacional*QI4_O /nocellpercent nostd row(cl);
weight peso;
run;

ods rtf close;



options nodate nonumber orientation=landscape;
ods noproctitle;
ods rtf file='C:\consultoria\ipea\amostra\grupos_amostra_respondidas.doc' bodytitle 
startpage=no ;
title 'Respostas por Grupos';
proc print data=freq_geral_amostra(drop=count peso) noobs;
sum respondidos amostra_necessaria;
format pct_respondidos percent8.2;
run;

title 'Respostas por Orgão Exercício';
proc print data=freq_geral_amostra_orgao(drop=count percent peso_orgao) noobs;
sum respondidos amostra_necessaria;
format pct_respondidos percent8.2;
run;
ods rtf close;

proc sql;
create table unidades_nao_responderam as
select Modelo_Juridico_Organizacional,cargos_carreiras,Cargo_Comissionado,
ORG_EXERCICIO,UORG_EXERCICIO,UF_EXERCICIO from amostra 
where token not in (select token from token_respondidos);
quit;

proc freq data=unidades_nao_responderam noprint;
tables Modelo_Juridico_Organizacional*cargos_carreiras*Cargo_Comissionado*
ORG_EXERCICIO*UORG_EXERCICIO*UF_EXERCICIO /out=freq_orgaos_nao_resp;
run;

proc export data=freq_orgaos_nao_resp(drop=percent) 
outfile='C:\consultoria\ipea\amostra\unidades_nao_responderam.xlsx' replace;
sheet='unidades_sem_resposta';
run;

/**** resultados por orgaos ******/

data resultados_orgaos;merge resultados quest_respondidos;run;
proc freq data=resultados_orgaos noprint;
tables QI4*ORG_EXERCICIO /out=freq_orgao_token;
run;
proc sort data=resultados_orgaos;by ORG_EXERCICIO;run;

options nodate nonumber;
ods noproctitle;
ods rtf file='C:\consultoria\ipea\amostra\resultados_preliminares_orgaos.doc' style=journal startpage=no;
%macro r;
proc freq data=resultados_orgaos;
%do i=1 %to &nvar;
%if &&var&i ne QA3 and &&var&i ne QC4 and &&var&i ne QI7 %then %do;
tables ORG_EXERCICIO*&&var&i /out=table_&&var&i;
%end;
%end;
run;
%mend r;
%r;

proc freq data=resultados_orgaos;
tables ORG_EXERCICIO*QI2_O /out=table_QI2_O;
run;
ods rtf close;

options nodate nonumber;
ods noproctitle;
ods rtf file='C:\consultoria\ipea\amostra\resultados_finais_orgaos_peso.doc' style=journal startpage=no;
%macro r;
proc surveyfreq data=resultados2;
%do i=1 %to &nvar;
%if &&var&i ne QA3 and &&var&i ne QC4 and &&var&i ne QI7 %then %do;
tables ORG_EXERCICIO*&&var&i /nocellpercent nostd row(cl);
%end;
%end;
weight peso_orgao;
run;
%mend r;
%r;

ods rtf close;


proc export data=resultados2 outfile='C:\consultoria\ipea\amostra\resultados_finais_peso.xlsx' replace;
run;
