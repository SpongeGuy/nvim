return {
  "goolord/alpha-nvim",
  config = function()
    local alpha = require('alpha')
    local dashboard = alpha.setup(require'alpha.themes.theta'.config)
  end
}
