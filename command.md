# CHEATSHEET
 <!--   For mainly Shell/Bash commands this is not a nice ordered cheatsheet
    mainly used by using: grep <search> command.notes to find right command.
    -->
 # Elzinus

* ``git pull --rebase && git push`` -- failed to push refs fix
* ``%s/=.*$/replaceterm/g`` -- replaces from character (=. till end of line (.*$) in vim
* ``pandoc --latex-engine=xelatex 4_Objects_and_Graphics.markdown -o 4.pdf`` -- convert document with codeblocks
* ``pandoc --latex-engine=xelatex 4_Objects_and_Graphics.markdown -o 4.pdf`` -- convert document with codeblocks
* ``pandoc --bibliography=bibref.bib --latex-engine=xelatex --output=1_watIsGeschiedenisVanDeFilosofie.pdf 1_Wat_is_een_geschiedenis_van_de_filosofie.markdown``
* ``find . -type f -exec sed -i 's/foo/bar/g' {} +`` -- Vervang foo met bar in alle files under de pwd
* ``pandoc -f markdown -o docx hallo.md`` - Bijvoorbeeld van markdown naar word
* ``pandoc -s *.docx --wrap=none --reference-links -t markdown -o All-docx.md`` - concattenate alle docs in Markdown file
* ``curl --silent https://somewebpage.html | pandoc --from html --to markdown_strict -o installing.md`` - Of van een weppagina naar een Markdown:
*
* ``Figlet`` - Een terminalprogramma om plain text wordart te maken
*
*
* ## Convert - Afbeeldingen converteren
* ``convert example.png -resize 200 example.png`` - Wil je een groep afbeeldingen converteren naar een breedte van 200px maar wel de juiste verhoudingen behouden?
* ``for file in *.png; do convert $file -resize 400 resize400-$file; done`` - Batch conveteren image naar 400px width
*
*
## Lees bestanden
* cat.....................show file
* less....................shows textfiles on line at a time
* head....................first lines
* tail....................last lines
* grep 'keyword' file.....search for a word
* 	-i..................disable case sensetive
* wc file.................count words
* 	-l..................lines
* 	-w..................words
* /word...................search word
*
*
## Grep verwijder lijnen met specifieke string
* ``grep`` -- om documenten aan te passen.
* ``Grep [term] [locatie] > newfile`` -- Kopieert alle lijnen met 'term' naar newfile
* ``cat test | sed '/filosofie/d' >> newFile`` -- Create file with lines of test, zonder het patroon filosofie
* ``grep -v test example.txt > example.txt.tmp;mv example.txt.tmp example.txt`` -- Verwijder alle regels met 'test'
* ``grep projectidee todo.txt >> todo-projectidee.txt; grep -v projectidee todo.txt > todo.txt.tmp;mv todo.txt.tmp todo.txt`` -- Alle lijnen met projectidee uit file todo.txt krijgen een eigen file (todo-projectidee.txt). Vervolgens worden alle lijnen met projectidee uit de originele file verwijderd
* ``sort filename.txt | uniq >> filename.txt.tmp; mv filename.txt.tmp filename.txt`` -- Dedupliceert het hele document
* ``grep trivium -r sayers .`` - Will search for trivium string in als (sub)direcory files. For only filenames add ``-l`` (files-with-matches) option
* ``grep "(A\|(B\|(C\|(D" Dropbox/todo/todo.txt`` to grep alle top-prioriteit taken uit todo.txt
* ``grep -irl beleggen Dropbox/zimNotebook/`` - Zoek bestanden die beleggen bevatten (-l)
* ``grep -irh beleggen Dropbox/zimNotebook/`` - Zoek in zimNotebook/ naar lijnen met 'beleggen', zonder filename af te drukken (-h)
* ``grep -irhn -C 1 beleggen Dropbox/zimNotebook/`` - Grep with linenumers (n) and show one line above and below (-C 1)
* ``grep -irnE 'filosofie.*definitie|definitie.*filosofie``' - Search for filosofie AND definitie in any order
*
## Navigeren
* cd......................change directory
* 	~...................home folder
* 	".".................current folder
* 	".."................parent folder
* ls......................show files
* 	-i..................show all files
*
*
## Bestanden aanpassen
* cp [directory]..........copy file
* mv......................move or copy file
* rm......................remove file
* rmdir...................remove folder
* cat file1 > file2 ......append file 1 tot 2
*
* ``which [command-name]`` -- Localiseren waar een bestand is?
*
*
* ``pactl set-sink-volume 0 150%`` -- Set sound to an higher level
* ``pactl set-sink-volume 0 +10%`` -- Increase sound relative
*
* ``xcalib -i -a`` — invert schermkleur
*
* ``netstat`` — Print netwerk
* ``ifconfig`` — configureer a network interface
* ``route`` -- Print route netwerk
*
*
* ``dict -d gcide [zoekterm]`` - Gebruik dict om termen te zoeken
* ``youtube-dl -xvi link-to-youtube.com`` - Download playlist or movies for youtube as audio/sound
*
* ``echocommand`` echo to command.notes zie bashrc
* ``lowriter --convert-to pdf *.doc`` - convert doc word pdf
* ``youtube-dl -xvi https://www.youtube.com/playlist?list=PLqeYp3nxIYpF7dW7qK8OvLsVomHrnYNjD`` - Download YouTube als audiobestanden.
* Taskwarrior ``task project:OLDNAME modify project:NEWNAME`` - verander naam van een project
* afbeelding  ``for file in *.png; do convert $file -resize 400 resize400-$file; done`` -- batch conveteren bestanden naar 400px
* afbeelding ``convert example.png -resize 200 example.png`` -- Wil je een groep afbeeldingen converteren naar een breedte van 200px maar wel de juiste verhoudingen behouden?
* filemanagement ``df -ah`` -- laat alle filesystems zien in (h) menselijk te lezen vorm
* filemanagement``du -sh [folder]`` -- shows available diskspace in [folder]
* find ``find . -name *foo*`` - zoek in alle (sub)mappen voor bestandsnamen met foo erin
* focus ``task +stad | cat > Dropbox/todo/todo.txt`` echo taskwarrior naar todo.txt
* general ``cat file1 > file2`` ......append file 1 tot 2
* general ``ls -i`` - toon alle bestanden
* general ``service udev status`` -- service, service name, action on service
* general ``uname -a`` -- Gives al kernel etc information
* general ``which [command-name]``
* misc ``Figlet`` - Een terminalprogramma om plain text wordart te maken
* misc ``xcalib -i -a`` — invert schermkleur
* netwerk ``ifconfig`` — configureer a network interface
* netwerk ``ifconfig``-- Find IP addresses
* netwerk ``netstat`` — print network
* netwerk ``route``
* sound ``pactl set-sink-volume 0 +10%``
* sound ``pactl set-sink-volume 0 150%``
* taskwarrior ``task completed project:huishouden`` laat alle taken van project huishouden zien die compleet zijn
* tekst ``cat test | sed '/filosofie/d' >> newFile`` -- Create file with lines of test, zonder het patroon filosofie
* tekst ``curl --silent https://somewebpage.html | pandoc --from html --to markdown_strict -o installing.md`` -- conveteer webpagina naar markdown
* tekst ``dict -d gcide [zoekterm]`` - Gebruik dict om termen te zoeken
* tekst ``grep trivium -r sayers .`` - Will search for trivium string in als (sub)direcory files. For only filenames add ``-l`` (files-with-matches) option
* tekst ``pandoc -f markdown -o docx hallo.md``
* tekst ``pandoc -s *.docx --wrap=none --reference-links -t markdown -o All-docx.md`` - concattenate alle docs in Markdown file
* tekst ``unoconv -f pdf presentation.ppt`` - Converteer een ptt naar een pdf
* tekst ``wc <file>`` tel woorden ``-l`` lines, ``-w`` woorden.
* tekst.grep ``grep "(A\|(B\|(C\|(D" Dropbox/todo/todo.txt`` to grep alle top-prioriteit taken uit todo.txt
* tekst.grep ``grep -irh beleggen Dropbox/zimNotebook/`` - Zoek in zimNotebook/ naar lijnen met 'beleggen', zonder filename af te drukken (-h)
* tekst.grep ``grep -irhn -C 1 beleggen Dropbox/zimNotebook/`` - Grep with linenumers (n) and show one line above and below (-C 1)
* tekst.grep ``grep -irl beleggen Dropbox/zimNotebook/`` - Zoek bestanden die beleggen bevatten (-l)
* tekst.grep ``grep -irnE "filosofie.*definitie|definitie.*filosofie" `` - Search for filosofie AND definitie in any order
* tekst.grep ``grep -rl "string" /path`` - search in subfolders. -r (or --recursive) to traverse all sub-directories of /path.  -l (or --files-with-matches) option is used to only print filenames of matching files,
* tekst.grep ``grep -v test example.txt > example.txt.tmp;mv example.txt.tmp example.txt`` -- Verwijder alle regels met 'test'
* tekst.grep ``grep <search> -i`` -- zoek zonder hoofdlettergevoeligheid
* tekst.grep ``grep [term] [locatie] > newfile`` -- Kopieert alle lijnen met 'term' naar newfile
* tekst.grep ``grep projectidee todo.txt >> todo-projectidee.txt; grep -v projectidee todo.txt > todo.txt.tmp;mv todo.txt.tmp todo.txt`` -- Alle lijnen met projectidee uit file todo.txt krijgen een eigen file (todo-projectidee.txt). Vervolgens worden alle lijnen met projectidee uit de originele file verwijderd
* tekst.grep ``grep`` -- om documenten aan te passen.
* text ``sort filename.txt | uniq >> filename.txt.tmp; mv filename.txt.tmp filename.txt`` -- Dedupliceert het hele document
* vim ``ctrl-v`` - visual block mode selecteer onafhankelijk van complete lines
* vim ``di[`` -- delete inside brackets symbol ``da[`` verwijdert ook de bracktes
* vim ``va"`` -- visueel select alles binnen symbool hier ``"``
* vim ``sort u`` -- sorteert en dedupliceert het hele document
* vim ``zf`` folds een sectie. ``zd`` unfolds. ``za`` refolds/unfolds
* ``vim ~/.config/user-dirs.dirs`` -- edit name or location default home folders
* ``for i in *.md ; do pandoc "$i" -t zimwiki -o "$(basename "${i/.md}")".txt; done`` -- Convert all markdown files in dictory to Zim
*
* ps -e | grep conky -- Find running process named conky
* cat /etc/lsb-release /etc/os-release -- cat distribution information
* git add -u -- add all tracked modified or deleted
