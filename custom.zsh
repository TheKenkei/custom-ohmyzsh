
export NVM_DIR="$HOME/.nvm"
export ZSH_CONFIG=${HOME}/.config/zsh/custom/my-custom/custom.zsh

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun completions
[ -s "/home/kenkei/.bun/_bun" ] && source "/home/kenkei/.bun/_bun"


alias update="clear && echo source ~/.zshrc && source ~/.zshrc"
alias ls="eza --tree --level=1 --icons=always --no-time --no-user --no-permissions"
alias lg="lazygit"
alias update="echp source ~/.zshrc && source ~/.zshrc"
alias cl="clear"

alias precommit="npm run eslint ; npm run prettier && npm run test && npm run typecheck && npm run build && echo COMPLETE!!!"
alias npm-clear="rm -rf ~/.npm; rm -rf ~/.cache"

alias update="source ~/.zshrc"
alias brew-update="brew update -d --auto-update --verbose --force --debug"
alias cdd="cd $1 && ls"
alias dc="docker compose"
alias drestart="docker compose down ; docker compose up -d && docker compose logs -f"

alias de="docker exec -it "
alias de-db="docker exec -it postgres su postgres"
alias dl="docker logs -f "
alias nr="npm run"
# TMUX
alias t-routelink="tmux new -s routelink -c ~/projects/RouteLink.ru|| tmux a -t routelink"
alias t-nvim-config="tmux new -s nvim-config -c ~/.config/nvim || tmux a -t nvim-config"
alias t-kenkei="tmux new -s kenkei || tmux a -t kenkei"
alias t-npm="tmux new -s npm || tmux a -t npm"

alias t-routelink="tmux new -s routelink -c ~/projects/RouteLink.ru|| tmux a -t routelink"



export NVIM_CONFIG=${HOME}/.config/nvim


eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
export PATH="/home/linuxbrew/.linuxbrew/opt/php@8.2/bin:$PATH"
export PATH="/home/linuxbrew/.linuxbrew/opt/php@8.2/sbin:$PATH"
export PATH="/home/linuxbrew/.linuxbrew/opt/php@8.2/bin:$PATH"
export PATH="/home/linuxbrew/.linuxbrew/opt/php@8.2/sbin:$PATH"




targz() {
	echo "taring $1 in $1.tar.gz ... "

	tar -czf $1.tar.gz $1
	if [ "$2" = "--rm" ]; then
		echo "deling $1 ..."
		rm -rf $1
	fi
	echo "done!"

}
backup() {
	local source_dir="$1"
	local backup_dir="${source_dir}-backup"
	local remove_source="$2"

	echo "Backing up ${source_dir} to ${backup_dir}..."
	cp -r "${source_dir}" "${backup_dir}"

	if [[ "${remove_source}" == "--rm" ]]; then
		echo "Removing ${source_dir}..."
		rm -rf "${source_dir}"
	fi

	echo "Done!"
}
function yy() {
	local temp_file="$(mktemp -t "yazi_cwd.XXXXXX")"
	yazi "$@" --cwd-file="$temp_file"
	local new_directory="$(cat -- "$temp_file")"
	if [ -n "$new_directory" ] && [ "$new_directory" != "$PWD" ]; then
		cd "$new_directory"
	fi
	rm -f -- "$temp_file"
}
nvim() {
  local nvim_exec="/home/linuxbrew/.linuxbrew/bin/nvim"
  if [ -n "$1" ]; then
    echo "$1"
    "$nvim_exec" +NvimTreeToggle +TmuxNavigateRight "$@"
  else
    "$nvim_exec" +NvimTreeToggle "$@"
  fi
}

ZSH_THEME="powerlevel10k/powerlevel10k"

# plugins=( git sudo z brew npm docker docker-compose gh zsh-syntax-highlighting web-search dirhistory)
