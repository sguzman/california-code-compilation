for ii in data/*.html
      cat "$ii" | pup 'a[name] attr{name}'
  end > name.csv

