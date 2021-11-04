add_cus_dep('glo', 'gls', 0, 'makeglo2gls');
sub makeglo2gls {
    system("makeindex -s '$_[0]'.ist -t '$_[0]'.glg -o '$_[0]'.gls '$_[0]'.glo");
}

add_cus_dep('acn', 'acr', 0, 'makeacn2acr');
sub makeacn2acr {
    system("makeindex -s '$_[0]'.ist -t '$_[0]'.alg -o '$_[0]'.acr '$_[0]'.acn");
}

@default_files = ('ECP-ST-CAR.tex');

$pdflatex = 'pdflatex  %O  --shell-escape %S';

$clean_ext = "cut glsdefs cut ist xml run.xml ucf ist acn acr alg bbl glo snm nav vrb listing lol";
