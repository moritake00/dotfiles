echo '=== fisher ==='
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
fisher update
fisher install h-matsuo/fish-color-scheme-switcher
fisher install oh-my-fish/theme-batman
fisher install jethrokuan/fzf

echo '=== fzf ==='
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf/
yes | ~/.fzf/install
