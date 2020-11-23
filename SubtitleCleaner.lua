-- :raven

script_name = "Aegi Clean Text"
script_description = "Clean all selected text columns inside script and keap timings."
script_version = "1.0.1"
script_author = ":raven"

function clean_text(subtitles, selected_lines, active_line)
	for i, j in ipairs(selected_lines) do
		local sub = subtitles[j]
		
		-- if you remove blank character in (line 10) dialogs will be removed.
		-- sub.text = ' '

		-- in new release(1.0.1) the problam solved
		sub.text = "\n\r"
		sub.text = sub.text:gsub("\n", '')
		
		subtitles[j] = sub
	end
	
	aegisub.set_undo_point(script_name)
end

aegisub.register_macro(script_name, "Clean all selected dialoges text columns.", clean_text)
