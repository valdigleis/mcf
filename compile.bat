@echo off
set FILENAME=mcf

:: Removendo arquivos intermediários se existirem
if exist "%FILENAME%.aux" del /Q "%FILENAME%.aux"
if exist "%FILENAME%.bbl" del /Q "%FILENAME%.bbl"
if exist "%FILENAME%.blg" del /Q "%FILENAME%.blg"
if exist "%FILENAME%.lof" del /Q "%FILENAME%.lof"
if exist "%FILENAME%.log" del /Q "%FILENAME%.log"
if exist "%FILENAME%.out" del /Q "%FILENAME%.out"
if exist "%FILENAME%.toc" del /Q "%FILENAME%.toc"
if exist "%FILENAME%.fdb_latexmk" del /Q "%FILENAME%.fdb_latexmk"
if exist "%FILENAME%.fls" del /Q "%FILENAME%.fls"

:: Compilação com lualatex e bibtex
lualatex "%FILENAME%.tex"
bibtex "%FILENAME%"
lualatex "%FILENAME%.tex"
lualatex "%FILENAME%.tex"

:: Limpeza de arquivos intermediários se existirem
if exist "%FILENAME%.aux" del /Q "%FILENAME%.aux"
if exist "%FILENAME%.bbl" del /Q "%FILENAME%.bbl"
if exist "%FILENAME%.blg" del /Q "%FILENAME%.blg"
if exist "%FILENAME%.lof" del /Q "%FILENAME%.lof"
if exist "%FILENAME%.log" del /Q "%FILENAME%.log"
if exist "%FILENAME%.out" del /Q "%FILENAME%.out"
if exist "%FILENAME%.toc" del /Q "%FILENAME%.toc"

:: Exibindo mensagem de conclusão
echo ================================================================
echo                 Sucess... Build Completed!!!                    
echo ================================================================