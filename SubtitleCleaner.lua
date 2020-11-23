-- :raven

script_name = "Clean Text"
script_description = "Clean all selected text columns inside script and keap timings."
script_version = "1.0"
script_author = ":raven"

function clean_text(subtitles, selected_lines, active_line)
	for z, i in ipairs(selected_lines) do
		local sub = subtitles[i]
		-- if you remove blank character in (line 10) dialogs will be removed.
		sub.text = ' '
		subtitles[i] = sub
	end
	aegisub.set_undo_point(script_name)
end

aegisub.register_macro(script_name, "Clean all selected dialoges text columns.", clean_text)
