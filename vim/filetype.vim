" Add our YAML syntax highlighting
au BufNewFile,BufRead *.yaml,*.yml so ~/.dotfiles/vim/syntax/yaml.vim

" Add our syntax highlighting for Nginx
au BufRead,BufNewFile /etc/nginx/*,/usr/local/nginx/conf/* if &ft == '' | setfiletype nginx | endif
