Book.delete_all
Course.delete_all
Retreat.delete_all
Profile.delete_all
User.delete_all


# PROFILES
ester_profile = Profile.create(first_name: "Ester", last_name: "Kais", years_in_practice: "1 - 5", profile_description: "Lorem Ipsum Yadiyadiyada Ester Profile", teacher: true)
amber_profile = Profile.create(first_name: "Amber", last_name: "Taal", years_in_practice: "< 1", profile_description: "Lorem Ipsum Yadiyadiyada Amber Profile", teacher: false)
pascal_profile = Profile.create(first_name: "Pascal", last_name: "de Rooij", years_in_practice: "5 - 10", profile_description: "Lorem Ipsum Yadiyadiyada Pascal Profile", teacher: true)


# USERS
ester = User.create(email: "ester@mindful-living.com", password: "secret", profile: ester_profile)
amber = User.create(email: "amber@mindful-living.com", password: "secret", profile: amber_profile)
pascal = User.create(email: "pascal@mindful-living.com", password: "secret", profile: pascal_profile)

# RETREATS
ester_retreat_one = Retreat.create(retreat_name: "Retreat1", retreat_description: "New yadiyada retreat1 Bla Ester retreat", retreat_link_to_info: "I am a retreat1 link to info", retreat_link_to_booking: "I am link to retreat1 booking", profiles: [ester_profile])
ester_retreat_two = Retreat.create(retreat_name: "Retreat2", retreat_description: "New yadiyada retreat2 of Now Bla Ester retreat", retreat_link_to_info: "I am a retreat2 link to info", retreat_link_to_booking: "I am link to retreat2 booking", profiles: [ester_profile])

# BOOKS
ester_book_one = Book.create(book_name: "The New Earth", book_description: "New yadiyada Earth Bla Ester Book", book_link_to_buy: "I am a earth link to buy", profiles: [ester_profile])
ester_book_two = Book.create(book_name: "Power of Now", book_description: "New yadiyada Power of Now Bla Ester Book", book_link_to_buy: "I am a power link to buy", profiles: [ester_profile])

# COURSES
ester_course_one = Course.create(course_name: "Course1", course_description: "New yadiyada Course1 Bla Ester Course", course_link_to_info: "I am a course1 link to info", course_link_to_booking: "I am link to course1 booking", profiles: [ester_profile])
ester_course_two = Course.create(course_name: "Course2", course_description: "New yadiyada Course2 of Now Bla Ester Course", course_link_to_info: "I am a course2 link to info", course_link_to_booking: "I am link to course2 booking", profiles: [ester_profile])
