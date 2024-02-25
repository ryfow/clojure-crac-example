#!/usr/bin/env bash

echo '(org.crac.Core/checkpointRestore)' | clj -M:create-checkpoint -i src/clojure_crac_example/init.clj -r

# checkpointRestore exits the process with a non-zero exit status, even when it works

exit
