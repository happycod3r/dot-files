# Sudo (`sudo`)

!!! info "Інформація"
    [**Sudo**](https://www.sudo.ws) — це інструмент, який дозволяє системному адміністратору делегувати повноваження користувачам або групам.

Секція `sudo` показує індикатор, коли користувач отримав безпарольний доступ. Ця секція показується лише за доступності команди `sudo` у вашій системі.

## Показ секції

Встановіть `SPACESHIP_SUDO_SHOW` у `true` у вашому `.spaceshiprc.zsh`, якщо вам потрібно показати, що у вас є доступ через sudo:

```zsh title=".spaceshiprc.zsh"
SPACESHIP_SUDO_SHOW=true
```

## Параметри

| Змінна                  |               Типово               | Пояснення                              |
|:----------------------- |:----------------------------------:| -------------------------------------- |
| `SPACESHIP_SUDO_SHOW`   |               `true`               | Показати секцію                        |
| `SPACESHIP_SUDO_PREFIX` |                 -                  | Префікс секції                         |
| `SPACESHIP_SUDO_SUFFIX` | `$SPACESHIP_PROMPT_DEFAULT_SUFFIX` | Суфікс секції                          |
| `SPACESHIP_SUDO_SYMBOL` |                `↯`                 | Символ, що відображається як індикатор |
| `SPACESHIP_SUDO_COLOR`  |              `yellow`              | Колір секції                           |
