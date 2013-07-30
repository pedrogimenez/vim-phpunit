if !exists("g:phpunit_command")
  let s:cmd = "phpunit {test}"
  let g:phpunit_command = "!echo " . s:cmd . " && " . s:cmd
endif

function! RunAllTests()
  let l:test_dir = ""
  call RunTests(l:test_dir)
endfunction

function! RunCurrentTest()
  if IsATestFile()
    let l:current_test = @%
    call RunTests(l:current_test)
  endif
endfunction

function! IsATestFile()
  return match(expand("%"), "Test.php$") != -1
endfunction

function! RunTests(test)
  write
  execute substitute(g:phpunit_command, "{test}", a:test, "g")
endfunction
