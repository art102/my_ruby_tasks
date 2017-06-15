# encoding: UTF-8

questions = ["Если ваш партнер бросает взгляд на незнакомую женщину, вы устраиваете ему скандал прямо на улице?(д/н)",
			"Если ваш партнер опаздывает на ужин, вы уверены, что он был с другой?(д/н)",
			"Вы расспрашиваете его о работе, о коллегах?(д/н)",
			"Вы считаете, что каждую свободную минуту должны проводить вместе?(да/нет)",
			"Он для вас — свет в окошке?(д/н)",
			"Случается ли вам проверять его корреспонденцию и рыться в его вещах?(д/н)",
			"Чем чаще он говорит о своих чувствах, тем меньше вы верите?(да/нет)",
			"Вы хотите, чтобы он интересовался только тем, чем интересуетесь вы?(д/н)",
			"Вы всегда спрашиваете у него, куда он ходит и с кем встречается?(д/н)",
			"Если вы на него обижены, то молчите по нескольку дней?(да/нет)",
			"Вас мучают мысли о его бывшей возлюбленной?(д/н)",
			"Он утверждает, что не ревнует вас, потому что доверяет. Для вас это означает, что любовь прошла?(д/н)"]

answers = []

result = {

	:over_10 => "Вы болезненно ревнивы. Не думайте, что если избранник вас любит, то он автоматически становится вашей собственностью. Вы считаете себя непривлекательной и боитесь, что он бросит вас ради какой нибудь красавицы. Вы ни в чем не уверены, особенно в нем. Задумайтесь над этим, потому что нельзя быть настолько ревнивой и агрессивной, это может привести к конфликтам и даже к разрыву отношений.",

	:between5_9 => "Ваша ревность действует на вас мобилизующе, но не она одна управляет вашим поведением. В минуту слабости случается и вам устраивать скандалы. Но, успокоившись, вы понимаете, что для вашей ревности не было никаких оснований.",

	:less_5 => "Вам совершенно незнакомо чувство ревности. Но тревога и беспокойство могут накапливаться со временем. Вы должны решать волнующие вас проблемы со своим партнером."
	}

#arr_size = answers.size

while answers.size != questions.size

  questions.each_with_index do |item, i|

  	print "#{i + 1}. #{item}: "
  	user_answer = gets.strip

  	if user_answer == 'д' || user_answer == 'y'
			answers << 'yes'
  	end
		
  end

break

end

p answers.size

if answers.size >= 10
	puts result[:over_10]
elsif answers.size >= 5 and answers.size <= 9
	puts result[:between5_9]
elsif answers.size < 5
	puts result[:less_5]
end
	
	


