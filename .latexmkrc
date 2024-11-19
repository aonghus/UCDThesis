$pdflatex = 'lualatex %O -interaction=batchmode -halt-on-error -shell-escape %S';
$pdf_mode = 1;
$clean_ext = 'crumbs';
$cleanup_includes_generated = 1;
push @generated_exts, 'synctex.gz';
push @generated_exts, 'vrb';
push @generated_exts, 'snm';
push @generated_exts, 'nav';
push @generated_exts, 'fdb_latexmk';
push @generated_exts, "_minted-";
$clean_ext = "_minted-%R/* _minted-%R";

$success_cmd = '';