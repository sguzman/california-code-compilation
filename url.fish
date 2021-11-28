 for ii in data/*.html
      set --local url (cat "$ii" | pup 'a[name] attr{href}' | sed -e 's@^@https://govt.westlaw.com@')
      set --local name (cat "$ii" | pup 'a[name] attr{name}')
      if count $url > 0 and count $name > 0 and count $url = count $name
          for jj in (seq 1 (count $url))
              echo -e "$url[$jj]\n\tout=$name[$jj].html"
          end
      end
  end

