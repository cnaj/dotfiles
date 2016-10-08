compaudit | xargs chmod g-w
rm -f ~/.zcompdump; compinit
cp `ls .zcompdump*`
