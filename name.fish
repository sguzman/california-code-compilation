for ii in data/*.html                                 Sat 27 Nov 2021 10:31:27 PM PST
      cat "$ii" | pup 'a[name] attr{name}'
  end > name.csv

