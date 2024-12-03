{
  config,
  pkgs,
  nixvim,
  ...
}:

{
  imports = [
    nixvim.homeManagerModules.nixvim
  ];
  programs.nixvim = {
    enable = true;
		
    colorschemes.tokyonight.enable = true;
    
		plugins = {
      web-devicons.enable = true;
			lualine.enable = true;
			nvim-tree.enable = true;
			bufferline.enable = true;
		};    

		opts = {
			# 缩进 
    	shiftwidth = 2;
			tabstop = 2;
			autoindent = true;
			expandtab = true;
    	# 显示
			number = true;
      relativenumber = true;
      signcolumn = "yes";
			# 搜索区分大小写
			ic = true;
		};
  };
}
