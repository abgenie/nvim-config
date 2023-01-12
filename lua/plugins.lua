vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- Packer
    use 'wbthomason/packer.nvim'

    -- ПЛАГИНЫ ВНЕШНЕГО ВИДА
    -- Цветовая схема
    use 'joshdick/onedark.vim'
    --- Информационная строка внизу
    use { 'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    config = function()
        require('lualine').setup()
    end, }
    -- Табы вверху
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons',
    config = function()
        require("bufferline").setup{}
    end, }

    -- НАВИГАЦИЯ
    -- Файловый менеджер
    use { 'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {} end, }
    -- Навигация внутри файла по классам и функциям
    use 'majutsushi/tagbar'
    -- Замена fzf и ack
    use { 'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} },
    config = function() require'telescope'.setup {} end, }

    -- LSP
    -- Подсветка, редактирование и навигация по коду 
    use 'nvim-treesitter/nvim-treesitter'
    -- Collection of configurations for built-in LSP client
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'
    -- Автодополнение
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'saadparwaiz1/cmp_luasnip'
    --- Автодополнение к файловой системе
    use 'hrsh7th/cmp-path'
    -- Snippets plugin
    use 'L3MON4D3/LuaSnip'

    -- PYTHON
    -- Поддержка темплейтом jinja2
    use 'mitsuhiko/vim-jinja'

    -- HTML и CSS
    -- Подсвечивает закрывающий и открывающий тэги
    use 'idanarye/breeze.vim'
    -- Закрывает автоматом html и xml тэги. Пишешь <h1> и он закроется </h1>
    use 'alvan/vim-closetag'
    -- Подсвечивает #ffffff
    use 'ap/vim-css-color'

    -- РАЗНОЕ
    -- Команды работают на русской раскладке 
    use 'powerman/vim-plugin-ruscmd'
    -- 'Автоформатирование' кода для всех языков
    use 'Chiel92/vim-autoformat'
    -- ]p - вставить на строку выше, [p - ниже
    use 'tpope/vim-unimpaired'
    --- popup окошки
    use 'nvim-lua/popup.nvim'
    -- Стартовая страница, если просто набрать vim в консоле
    use 'mhinz/vim-startify'
    -- Комментирует по gc все, вне зависимости от языка программирования
    use { 'numToStr/Comment.nvim',
    config = function() require('Comment').setup() end }
    -- Закрывает автоматом скобки
    use 'cohama/lexima.vim'
    -- Линтер, работает для всех языков
    --use 'dense-analysis/ale'

end)
