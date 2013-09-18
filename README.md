vim-phpunit
===========

Run phpunit tests using vim :D

## Setup

```
git clone https://github.com/pedrogimenez/vim-phpunit.git ~/.vim/bundle/vim-phpunit
```

Add this to your .vimrc:

```
" PHPUnit mappings
map <Leader>l :call RunCurrentTest()<CR>
map <Leader>la :call RunAllTests()<CR>
```

## Use

Inside vim:

> Press Leader + l to run the current test file.

> Press Leader + la to run all the test files.

Enjoy :heart:
