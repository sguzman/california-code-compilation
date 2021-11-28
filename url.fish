 for ii in data/*.html
      cat "$ii" | pup 'a[name] attr{href}' | sed -e 's@^@https://govt.westlaw.com@'
  end > url.csv

