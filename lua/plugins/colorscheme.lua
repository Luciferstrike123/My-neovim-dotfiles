-- lua/plugins/colorscheme.lua
return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000, -- Ensure it loads first
		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
				background = {
					light = "mocha",
					dark = "mocha",
				},
				transparent_background = false,
				show_end_of_buffer = false,
				term_colors = true,
				dim_inactive = {
					enabled = false,
					shade = "dark",
					percentage = 0.15,
				},
				no_italic = false,
				no_bold = false,
				no_underline = true,
				styles = {
					comments = { "italic" },
					conditionals = { "italic" },
					loops = {},
					functions = { "bold" },
					keywords = { "italic" },
					strings = {},
					variables = {},
					numbers = {},
					booleans = { "italic" },
					properties = {},
					types = { "bold" },
					operators = {},
				},
				color_overrides = {
					mocha = {
						base = "#0F111A",
						mantle = "#141921",
						crust = "#0A0E14",
						text = "#CBCCC6",
						subtext1 = "#A3A6A0",
						subtext0 = "#7D827D",
						overlay0 = "#5C6773",
						peach = "#FF7733",
						green = "#BAE67E",
						blue = "#73D0FF",
						yellow = "#E6B450",
						mauve = "#C792EA",
						red = "#F07178",
						sky = "#5FD7FF",
						maroon = "#F07178",
						flamingo = "#F07178",
						pink = "#FF75A0",
						teal = "#95E6CB",
						sapphire = "#73D0FF",
						lavender = "#C792EA",
						rosewater = "#F07178",
						surface0 = "#191E26",
						surface1 = "#202631",
						surface2 = "#272E3B",
					},
				},
				custom_highlights = function(colors)
					return {
						Comment = { fg = colors.overlay0, style = {"italic"} }, -- Changed: style = {"italic"}
						NvimTreeNormal = { fg = colors.text, bg = colors.mantle },
						NvimTreeRootFolder = { fg = colors.blue, style = {"bold"} }, -- Changed: style = {"bold"}
						TelescopeSelection = { bg = colors.surface1, fg = colors.peach, style = {"bold"} }, -- Changed: style = {"bold"}
						TelescopeBorder = { fg = colors.blue },
						DiagnosticError = { fg = colors.red },
						DiagnosticWarn = { fg = colors.peach },
						DiagnosticInfo = { fg = colors.sky },
						DiagnosticHint = { fg = colors.mauve },
					}
				end,
				integrations = {
					cmp = true,
					gitsigns = true,
					nvimtree = {
						enabled = true,
						show_root = true,
						transparent_panel = false,
					},
					telescope = {
						enabled = true,
					},
					notify = true,
					mini = {
						enabled = true,
					},
					native_lsp = {
						enabled = true,
						virtual_text = {
							errors = { "italic" },
							hints = { "italic" },
							warnings = { "italic" },
							information = { "italic" },
						},
						underlines = {
							errors = { "underline" },
							hints = { "underline" },
							warnings = { "underline" },
							information = { "underline" },
						},
						inlay_hints = {
							background = true,
						},
					},
					treesitter = true,
					treesitter_context = true,
					markdown = true,
					lsp_trouble = true,
					dashboard = true,
					which_key = true,
					indent_blankline = {
						enabled = true,
						colored_indent_levels = false,
					},
					neotree = true, -- Note: you have both nvimtree and neotree enabled here. Usually only one is needed/used.
					dap = {
						enabled = true,
						enable_ui = true,
					},
					aerial = true,
					barbar = false,
					bufferline = {
						enabled = true,
						indicator = "underline",
						separator_visible = true,
						offsets = {
							{
								filetype = "NvimTree",
								text = "File Explorer",
								text_align = "left",
								separator = true
							}
						}
					},
					navic = {
						enabled = true,
						custom_bg = 'NONE',
					},
				},
			})
			-- Apply the colorscheme after setup
			vim.cmd.colorscheme("catppuccin")
		end,
	},
}