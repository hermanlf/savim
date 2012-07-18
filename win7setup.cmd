if exist "%userprofile%\.vim\vim.dirs" (
    del "%userprofile%\.vim\vim.dirs"
    copy default.dirs vim.dirs
) else (
    copy default.dirs vim.dirs
)
mklink %userprofile%\.vimrc %userprofile%\.vim\.vimrc
mkdir %userprofile%\.vim\.vimbackup
mkdir %userprofile%\.vim\.vimswap
mkdir %userprofile%\.vim\.vimundo
mkdir %userprofile%\.vim\.vimviews
