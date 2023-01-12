local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

-- Системный буфер обмена shift - Y
map('v', 'S-Y', '"+y', {})
-- Быстрое нажатие jj - переход в нормальный режим
map('i', 'jj', '<Esc>', {noremap = true})
-- Переключение вкладок с помощью TAB или shift-tab (akinsho/bufferline.nvim)
map('n', '<Tab>', ':BufferLineCycleNext<CR>', default_opts)
map('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', default_opts)
-- fzf
map('n', '<C-a>', [[ <cmd>lua require('telescope.builtin').find_files()<cr> ]], default_opts)
map('n', '<C-p>', [[ <cmd>lua require('telescope.builtin').buffers()<cr> ]], default_opts)

-- Фн. клавиши
-- По F1 очищаем последний поиск с подсветкой
map('n', '<F1>', ':nohl<CR>', default_opts)
-- shift + F1 = удалить пустые строки
map('n', '<S-F1>', ':g/^$/d<CR>', default_opts)
-- <F4> Поиск слова под курсором
map('n', '<F4>', [[<cmd>lua require('telescope.builtin').grep_string()<cr>]], default_opts)
-- <F5> разные вариации нумераций строк, можно переключаться
map('n', '<F5>', ':exec &nu==&rnu? "se nu!" : "se rnu!"<CR>', default_opts)
-- <F6> дерево файлов.
map('n', '<F6>', ':NvimTreeRefresh<CR>:NvimTreeToggle<CR>', default_opts)
-- <F8>  Показ дерева классов и функций, плагин majutsushi/tagbar
map('n', '<F8>', ':TagbarToggle<CR>', default_opts)
