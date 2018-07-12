LIB_DIR="/usr/local/lib/nave"
LIB_NAVE="$LIB_DIR/nave.sh"
BIN_NAVE="/usr/local/bin/nave"
ALIAS_NAVE="alias nave-update=\"cd /usr/local/lib/nave; git pull; cd > /dev/null 2>&1\""

echo "##########################################################################"
echo "Installing nave..."
echo "See http://github.com/isaacs/nave for more information"
echo ""
if [ -f "$LIB_NAVE" ]; then
  echo "$LIB_NAVE already exists."
else
  echo "Cloning into $LIB_NAVE"
  git clone https://github.com/isaacs/nave.git "$LIB_DIR"
fi
if [ -f "$BIN_NAVE" ]; then
  echo "$BIN_NAVE already exists."
else 
  echo "Linking $LIB_NAVE to $BIN_NAVE"
  ln -s "$LIB_NAVE" "$BIN_NAVE"
  chmod +x "$BIN_NAVE"
fi
echo ""
echo "To update nave easily, add"
echo ""
echo "$ALIAS_NAVE"
echo ""
echo "to wherever you keep your aliases, such as ~/.bashrc, ~/.bash_profile"
echo "or ~/.aliases"
echo ""
read -p "Add the alias to \`~/.bashrc\` ? (y/n)"
if [ "$REPLY" == "y" ]; then 
  echo "$ALIAS_NAVE" >> ~/.bashrc
  echo "Added alias to .bashrc"
fi
echo ""
echo "ALL DONE!"
