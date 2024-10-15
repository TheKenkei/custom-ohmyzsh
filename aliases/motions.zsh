bindkey "^[w" forward-word
bindkey "^[b" backward-word
bindkey "^[d" kill-word
bindkey "^[D" kill-line
zle-end-of-word() {
  zle forward-word      # Перемещаемся к началу следующего слова
  zle backward-char     # Возвращаемся на один символ назад
}
zle -N zle-end-of-word  # Регистрируем функцию как zle-команду
bindkey "^[e" zle-end-of-word  # Назначаем команду на Alt + e
