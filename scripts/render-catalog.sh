#!/usr/bin/env bash
set -euo pipefail

CATALOG="catalog/repos.yaml"

echo "# Catalogue des repos"
echo
echo "Source: \`catalog/repos.yaml\`"
echo
echo "| Repo | Catégorie | Statut | Objectif | Quickstart | Dépendances |"
echo "|---|---|---|---|---|---|"

awk '
function trim(s){ sub(/^[ \t]+/,"",s); sub(/[ \t]+$/,"",s); return s }
function strip_quotes(s){ s=trim(s); gsub(/^"/,"",s); gsub(/"$/,"",s); return s }

function flush(){
  if(inItem==1){
    repo="[" name "](https://github.com/zdmooc/" name ")"
    gsub(/\|/,"\\|",purpose)
    printf("| %s | %s | %s | %s | %s | %s |\n", repo, category, status, purpose, quickstart, deps)
  }
}

BEGIN{
  inItem=0; mode="";
  name=""; category=""; status=""; purpose="";
  quickstart=""; deps="";
}

/^[[:space:]]*-[[:space:]]name:[[:space:]]*/{
  flush()
  inItem=1; mode=""
  line=$0; sub(/.*name:[[:space:]]*/,"",line); name=trim(line)
  category=""; status=""; purpose=""; quickstart=""; deps=""
  next
}

inItem==1 && /^[[:space:]]*category:[[:space:]]*/{
  line=$0; sub(/.*category:[[:space:]]*/,"",line); category=trim(line); next
}

inItem==1 && /^[[:space:]]*status:[[:space:]]*/{
  line=$0; sub(/.*status:[[:space:]]*/,"",line); status=trim(line); next
}

inItem==1 && /^[[:space:]]*purpose:[[:space:]]*/{
  line=$0; sub(/.*purpose:[[:space:]]*/,"",line); purpose=strip_quotes(line); next
}

inItem==1 && /^[[:space:]]*quickstart:[[:space:]]*$/ { mode="quick"; next }
inItem==1 && /^[[:space:]]*depends_on:[[:space:]]*$/ { mode="deps"; next }

inItem==1 && (mode=="quick" || mode=="deps") && /^[[:space:]]*-[[:space:]]*/{
  line=$0
  sub(/^[[:space:]]*-[[:space:]]*/,"",line)
  line=strip_quotes(line)
  if(mode=="quick"){
    quickstart = (quickstart=="" ? line : quickstart "<br>" line)
  } else {
    deps = (deps=="" ? line : deps "<br>" line)
  }
  next
}

END{ flush() }
' "$CATALOG"
