class FoodfreecycleMailer < ActionMailer::Base
		

def foodfreecycle_created(user) #(users)
		
		@user = user

		mail to: user.email,
			from: "foodhallproject@gmail.com",
			subject: "Newfreecycle",
			body: "New freecycle has been created"


	#mail( to: users.pluck[:email] ,
	#from:"foodhallproject@gmail.com",
	#subject: 'Food freecycle created',
	#body: " A new foodfreecycle has been created. Go see what it is at: www.foodhalls.org")

	end

end