# Automatically load keys into the ssd-agent and store passphrases in keychain
tee -a ~/.ssh/config << END
Host *
 AddKeysToAgent yes
 UseKeychain yes
 IdentityFile ~/.ssh/id_rsa
END

ssh-add -K ~/.ssh/id_rsa

# Switching remote URLs from HTTPS to SSH
git remote set-url origin git@github.com:roverslim/dotfiles.git
git config --global user.email 2433416+roverslim@users.noreply.github.com
