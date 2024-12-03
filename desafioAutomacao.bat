@echo off
setlocal enabledelayedexpansion

set base_dir=C:\REDE

if not exist "%base_dir%" mkdir "%base_dir%"

set colaboradores[0]=ALAN GOMES SOARES
set colaboradores[1]=ANDREA ALVES DOS SANTOS
set colaboradores[2]=BRUNO ANASTÁCIO DE OLIVEIRA
set colaboradores[3]=CAMILA OLIVEIRA DE LIRA
set colaboradores[4]=CARLOS ALEXANDRE AZEVEDO GERMANO SOUSA
set colaboradores[5]=CAROLINE DIAS DO NASCIMENTO
set colaboradores[6]=DANIEL RIBEIRO SANTANA
set colaboradores[7]=DARIO DIAS DE FARIAS
set colaboradores[8]=EDUARDO DE OLIVEIRA RIOS
set colaboradores[9]=FABIO SANTIAGO DA SILVA
set colaboradores[10]=FELIPE DA SILVA MACHADO
set colaboradores[11]=FELIPE KAUÊ BARRIOS
set colaboradores[12]=FLÁVIO HENRIQUE PERUSIN DE SOUZA
set colaboradores[13]=FRANCISCO DE ASSIS MACEDO CAVALCANTE
set colaboradores[14]=GABRIEL ROCHA CREPALDI
set colaboradores[15]=GABRIEL SOUZA LIMA
set colaboradores[16]=GABRIEL WILLIAM LOPES RODRIGUES
set colaboradores[17]=GABRIELY JÓ DA SILVA
set colaboradores[18]=GUILHERME MONTEIRO ALVES
set colaboradores[19]=GUSTAVO FRIAS DE OLIVEIRA TAVARES
set colaboradores[20]=HENRIQUE GUSTAVO LOPES CABRAL
set colaboradores[21]=ISAAC KAUE BATISTA SOUZA
set colaboradores[22]=ISABELLY VICTÓRIA TEIXEIRA DE MESQUITA
set colaboradores[23]=JOAO ASAFE SOARES
set colaboradores[24]=JONATHAN LIMA DOS SANTOS FREITAS
set colaboradores[25]=KAUA AKSENOW SANTOS DA MOTA
set colaboradores[26]=LUCAS EDUARDO DE LEMOS DOS SANTOS
set colaboradores[27]=LUCAS PIRES DE ANDRADE
set colaboradores[28]=MATHEUS WALLACE DE CARVALHO
set colaboradores[29]=NATALIA PARDINHO MOREIRA
set colaboradores[30]=NICOLAS DONEDA DO NASCIMENTO
set colaboradores[31]=PALLOMA KETERNNYN BELMIRO DOS SANTOS
set colaboradores[32]=RAISSA CHAGAS DO CARMO
set colaboradores[33]=RAPHAELA GUEDES DE SOUZA MELO
set colaboradores[34]=REBECCA RIBEIRO ARAÚJO GUEDES
set colaboradores[35]=RIAM MARQUES DOS SANTOS ANDRE
set colaboradores[36]=ROGERIO FERNANDES DA SILVA JUNIOR
set colaboradores[37]=SABRINA ALVES BENEVIDES
set colaboradores[38]=WALDANIA TEIXEIRA DE OLIVEIRA

for /L %%i in (0,1,38) do (

    set nome_completo=!colaboradores[%%i]!

    for /f "tokens=1,* delims= " %%A in ("!nome_completo!") do (
        set primeiro_nome=%%A
        set resto=%%B
    )

    for %%A in (!resto!) do set ultimo_nome=%%A

    set pasta=!primeiro_nome!-!ultimo_nome!

    if not exist "%base_dir%\!pasta!" (
        mkdir "%base_dir%\!pasta!"
        echo Pasta criada: !pasta!
    ) else (
        echo A pasta !pasta! já existe.
    )
)

echo.
echo Pastas criadas:
dir /b "%base_dir%"
pause