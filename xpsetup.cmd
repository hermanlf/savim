if exist "%userprofile%\.vimrc" (
    echo .vimrc already exists
    del "%userprofile%\.vimrc"
) else (
    copy .vimrc "%userprofile%"
)

if exist "%userprofile%\.vim\vim.dirs" (
    del "%userprofile%\.vim\vim.dirs"
) else (
    copy xp.dirs vim.dirs
)

if exist "%userprofile%\.vim\.vimbackup" (
    echo .vimbackup already exists
) else (
    mkdir "%userprofile%\.vim\.vimbackup"
)

if exist "%userprofile%\.vim\.vimswap" (
    echo .vimswap already exists
) else (
    mkdir "%userprofile%\.vim\.vimswap"
)

if exist "%userprofile%\.vim\.vimundo" (
    echo .vimundo already exists
) else (
    mkdir "%userprofile%\.vim\.vimundo"
)

if exist "%userprofile%\.vim\.vimviews" (
    echo .vimviews already exists
) else (
    mkdir "%userprofile%\.vim\.vimviews"
)
