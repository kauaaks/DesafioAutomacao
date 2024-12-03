

base_dir="/REDE"


if [ ! -d "$base_dir" ]; then
    mkdir -p "$base_dir"
    echo "Diretório $base_dir criado."
fi

colaboradores=(
    "ALAN GOMES SOARES"
    "ANDREA ALVES DOS SANTOS"
    "BRUNO ANASTÁCIO DE OLIVEIRA"
    "CAMILA OLIVEIRA DE LIRA"
    "CARLOS ALEXANDRE AZEVEDO GERMANO SOUSA"
    "CAROLINE DIAS DO NASCIMENTO"
    "DANIEL RIBEIRO SANTANA"
    "DARIO DIAS DE FARIAS"
    "EDUARDO DE OLIVEIRA RIOS"
    "FABIO SANTIAGO DA SILVA"
    "FELIPE DA SILVA MACHADO"
    "FELIPE KAUÊ BARRIOS"
    "FLÁVIO HENRIQUE PERUSIN DE SOUZA"
    "FRANCISCO DE ASSIS MACEDO CAVALCANTE"
    "GABRIEL ROCHA CREPALDI"
    "GABRIEL SOUZA LIMA"
    "GABRIEL WILLIAM LOPES RODRIGUES"
    "GABRIELY JÓ DA SILVA"
    "GUILHERME MONTEIRO ALVES"
    "GUSTAVO FRIAS DE OLIVEIRA TAVARES"
    "HENRIQUE GUSTAVO LOPES CABRAL"
    "ISAAC KAUE BATISTA SOUZA"
    "ISABELLY VICTÓRIA TEIXEIRA DE MESQUITA"
    "JOAO ASAFE SOARES"
    "JONATHAN LIMA DOS SANTOS FREITAS"
    "KAUA AKSENOW SANTOS DA MOTA"
    "LUCAS EDUARDO DE LEMOS DOS SANTOS"
    "LUCAS PIRES DE ANDRADE"
    "MATHEUS WALLACE DE CARVALHO"
    "NATALIA PARDINHO MOREIRA"
    "NICOLAS DONEDA DO NASCIMENTO"
    "PALLOMA KETERNNYN BELMIRO DOS SANTOS"
    "RAISSA CHAGAS DO CARMO"
    "RAPHAELA GUEDES DE SOUZA MELO"
    "REBECCA RIBEIRO ARAÚJO GUEDES"
    "RIAM MARQUES DOS SANTOS ANDRE"
    "ROGERIO FERNANDES DA SILVA JUNIOR"
    "SABRINA ALVES BENEVIDES"
    "WALDANIA TEIXEIRA DE OLIVEIRA"
)


for colaborador in "${colaboradores[@]}"; do
    # Separar o primeiro e último nome
    primeiro_nome=$(echo "$colaborador" | awk '{print toupper($1)}')  
    ultimo_nome=$(echo "$colaborador" | awk '{print toupper($NF)}')  

    pasta="$primeiro_nome-$ultimo_nome"

    if [ ! -d "$base_dir/$pasta" ]; then
        mkdir "$base_dir/$pasta"
        echo "Pasta criada: $base_dir/$pasta"
    else
        echo "A pasta $base_dir/$pasta já existe."
    fi
done

echo "Pastas criadas:"
ls "$base_dir"
