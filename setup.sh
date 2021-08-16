cd fishui-git
makepkg -si --noconfirm
cd ../libcutefish-git
makepkg -si --noconfirm
cd ..

for f in cutefish*; do
	if [ -d "$f" ]; then
		cd $f
		makepkg -si --noconfirm
		cd ..
	fi
done
