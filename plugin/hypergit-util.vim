


fun! g:findDotGit()
  let path = getcwd()
  let parts = split(path,'/')
  let paths = []
  for i in range(1,len(parts))
    cal add(paths,  '/'.join(parts,'/'))
    cal remove(parts,-1)
  endfor
  for p in paths 
    if isdirectory(p . '/.git')
      return p
    endif
  endfor
  return ""
endf
