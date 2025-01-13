default:
    @just --list

zip:
    zip -r dev.zip . -x ".git/*" 