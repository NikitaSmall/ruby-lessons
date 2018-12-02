class CodePage < Page
  def annotate_user_interaction
    puts @config['user_interaction_annotation']
  end

  def obtain_code_from_user
    @code = gets.chomp
  end

  def enter_code
    raise 'obtain the code first!' if @code.nil?
    page.find(@selectors['verification_code_field']).set(@code)

    wait
  end
end
