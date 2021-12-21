function dcl-fn {
	docker-compose logs -f $1
}

alias dc="docker-compose"
alias dcu="docker-compose up -d"
alias dcd="docker-compose down"
alias dcr="docker-compose run"
alias dcx="docker-compose exec"
alias dcl=dcl-fn