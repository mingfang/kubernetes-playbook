#https://stackoverflow.com/questions/38257725/how-can-i-completely-sort-arbitrary-json-using-jq

# Apply f to composite entities recursively, and to atoms
def walk(f):
  . as $in
  | if type == "object" then
      reduce keys[] as $key
        ( {}; . + { ($key):  ($in[$key] | walk(f)) } ) | f
  elif type == "array" then map( walk(f) ) | f
  else f
  end;

def normalize: walk(if type == "array" then sort else . end);

normalize