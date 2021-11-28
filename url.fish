 for ii in data/*.html                                 Sat 27 Nov 2021 10:30:28 PM PST
      cat "$ii" | pup 'a[name] attr{href}' | sed -e 's@^@https://govt.westlaw.com@'
  end > url.csv

