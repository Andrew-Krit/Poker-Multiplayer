if(input_check_pressed("up"))
{
	selected_option_index--;
	selected_option_index = clamp(selected_option_index, 0, array_length(current_menu_page)-1);
}
if(input_check_pressed("down"))
{
	selected_option_index++;
	selected_option_index = clamp(selected_option_index, 0,  array_length(current_menu_page)-1);
}

if(input_check_pressed("action"))
{
	current_menu_page[selected_option_index][1]();
}