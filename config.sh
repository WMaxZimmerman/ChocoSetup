mkdir /c/git

cd ~
git clone git@github.com:WMaxZimmerman/aliases.git
git clone git@github.com:WMaxZimmerman/emax.git

mv emax ".emacs.d"
touch .bashrc
echo ". ~/aliases/init.sh" > .bashrc
