#!/usr/bin/env bash

echo '(org.crac.Core/checkpointRestore)' | clj -A:create-checkpoint

# checkpointRestore exits the process with a non-zero exit status, even when it works

exit
