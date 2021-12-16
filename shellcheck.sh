#!/bin/bash

RETURN_CODE=0
while IFS= read -r -d '' FILE
do
   if file "${FILE}" | grep -q shell; then
      if shellcheck -x "${FILE}"; then
         echo "${FILE} is OK."
      else
         RETURN_CODE=1
      fi
   fi
done < <(find . -type f -not -wholename '*\.git/*' -print0)
exit "${RETURN_CODE}"
