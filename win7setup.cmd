if exist "%userprofile%\.vim\vim.dirs" (
    del "%userprofile%\.vim\vim.dirs"
    copy /Y "%userprofile%\.vim\default.dirs" "%userprofile%\.vim\vim.dirs"
) else (
    copy /Y "%userprofile%\.vim\default.dirs" "%userprofile%\.vim\vim.dirs"
)
mklink %userprofile%\.vimrc %userprofile%\.vim\.vimrc
mkdir %userprofile%\.vim\.vimbackup
mkdir %userprofile%\.vim\.vimswap
mkdir %userprofile%\.vim\.vimundo
mkdir %userprofile%\.vim\.vimviews
