Dado("estar na tela de cadastro") do

  visit 'https://demo.suiteondemand.com/'

end

Dado("efetue o preenchimento dos campos com informação correta para o cadastro") do
	#login
	fill_in('user_name', :with => 'will')
	fill_in('user_password', :with => 'will')
	click_button('bigbutton')

	#criar nova task
	visit 'https://demo.suiteondemand.com/index.php?module=Tasks&action=EditView&return_module=Tasks&return_action=DetailView'
	
	fill_in('name', :with => 'Teste Nova Task')
	fill_in('date_start_date', :with => '14/10/2017')
	select('08', :from => 'date_start_hours')	
	fill_in('date_due_date', :with => '16/10/2017')
	select('08', :from => 'date_due_hours')
	find(:xpath, '//*[@id="SAVE"]').click

	


end

Então("cadastro realizado com sucesso") do

      assert_text('Vitor')

      sleep = 5 
end
