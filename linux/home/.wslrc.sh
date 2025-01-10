# eval executes lines returned by keychain to ensure sshd picks up this ssh-agent instance
eval "$(keychain -q --eval --noask --agents ssh id_ed25519)"