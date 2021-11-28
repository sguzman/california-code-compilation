xsv cat columns url.csv name.csv | gawk -F, '{ print $1, $2}' | while read url name
      aria2c --log-level debug --check-certificate=false --continue --always-resume --dir data --out "$name".html "$url"
  end

