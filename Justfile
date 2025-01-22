default:
    @just --list

zip:
    rm -f dev.zip
    zip -r dev.zip . -x ".git/*" 