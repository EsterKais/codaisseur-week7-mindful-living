BookPhoto.delete_all
ProfilePhoto.delete_all
CoursePhoto.delete_all
RetreatPhoto.delete_all
Book.delete_all
Course.delete_all
Retreat.delete_all
Profile.delete_all
User.delete_all


# PROFILES
ester_profile = Profile.create(first_name: "Ester", last_name: "Kais", years_in_practice: "1 - 5", profile_description: "Lorem Ipsum Yadiyadiyada Ester Profile", teacher: true)
amber_profile = Profile.create(first_name: "Amber", last_name: "Taal", years_in_practice: "< 1", profile_description: "Lorem Ipsum Yadiyadiyada Amber Profile", teacher: true)
pascal_profile = Profile.create(first_name: "Pascal", last_name: "de Rooij", years_in_practice: "5 - 10", profile_description: "Lorem Ipsum Yadiyadiyada Pascal Profile", teacher: true)
laura_profile = Profile.create(first_name: "Laura", last_name: "de la Rie", years_in_practice: " > 10", profile_description: "Lorem Ipsum Yadiyadiyada Laura Profile", teacher: true)
susanna_profile = Profile.create(first_name: "Susanna", last_name: "Laanevali", years_in_practice: "< 1", profile_description: "Lorem Ipsum Yadiyadiyada Susanna Profile", teacher: true)
miriam_profile = Profile.create(first_name: "Miriam", last_name: "Jensen", years_in_practice: "> 10", profile_description: "Lorem Ipsum Yadiyadiyada Miriam Profile", teacher: true)
leslie_profile = Profile.create(first_name: "Leslie", last_name: "Bruzike", years_in_practice: "5 - 10", profile_description: "Lorem Ipsum Yadiyadiyada Leslie Profile", teacher: true)


# USERS
ester = User.create(email: "ester@mindful-living.com", password: "secret", profile: ester_profile)
amber = User.create(email: "amber@mindful-living.com", password: "secret", profile: amber_profile)
pascal = User.create(email: "pascal@mindful-living.com", password: "secret", profile: pascal_profile)
laura = User.create(email: "laura@mindful-living.com", password: "secret", profile: laura_profile)
susanna = User.create(email: "susanna@mindful-living.com", password: "secret", profile: susanna_profile)
miriam = User.create(email: "miriam@mindful-living.com", password: "secret", profile: miriam_profile)
leslie = User.create(email: "leslie@mindful-living.com", password: "secret", profile: leslie_profile)


# RETREATS
ester_retreat_one = Retreat.create(retreat_name: "Retreat1", retreat_description: "New yadiyada retreat1 Bla Ester retreat", retreat_link_to_info: "I am a retreat1 link to info", retreat_link_to_booking: "I am link to retreat1 booking", profiles: [ester_profile])
ester_retreat_two = Retreat.create(retreat_name: "Retreat2", retreat_description: "New yadiyada retreat2 of Now Bla Ester retreat", retreat_link_to_info: "I am a retreat2 link to info", retreat_link_to_booking: "I am link to retreat2 booking", profiles: [ester_profile])
laura_retreat_one = Retreat.create(retreat_name: "Retreat3", retreat_description: "New yadiyada retreat3 of Now Bla Laura retreat", retreat_link_to_info: "I am a retreat3 link to info", retreat_link_to_booking: "I am link to retreat3 booking", profiles: [laura_profile])
susanna_retreat_one = Retreat.create(retreat_name: "Retreat4", retreat_description: "New yadiyada retreat4 of Now Bla Susanna retreat", retreat_link_to_info: "I am a retreat4 link to info", retreat_link_to_booking: "I am link to retreat4 booking", profiles: [susanna_profile])
miriam_retreat_one = Retreat.create(retreat_name: "Retreat5", retreat_description: "New yadiyada retreat5 of Now Bla Miriam retreat", retreat_link_to_info: "I am a retreat5 link to info", retreat_link_to_booking: "I am link to retreat5 booking", profiles: [miriam_profile])

# BOOKS
ester_book_one = Book.create(book_name: "The New Earth", book_description: "New yadiyada Earth Bla Ester Book", book_link_to_buy: "I am a earth link to buy", profiles: [ester_profile])
ester_book_two = Book.create(book_name: "Power of Now", book_description: "New yadiyada Power of Now Bla Ester Book", book_link_to_buy: "I am a power link to buy", profiles: [ester_profile])
laura_book_one = Book.create(book_name: "Book1", book_description: "New yadiyada Book1 of Now Bla Laura Book", book_link_to_buy: "I am a book1 link to buy", profiles: [laura_profile])
susanna_book_one = Book.create(book_name: "Book2", book_description: "New yadiyada Book2 of Now Bla Susanna Book", book_link_to_buy: "I am a book2 link to buy", profiles: [susanna_profile])
miriam_book_one = Book.create(book_name: "Book3", book_description: "New yadiyada Book3 of Now Bla Miriam Book", book_link_to_buy: "I am a book3 link to buy", profiles: [miriam_profile])

# COURSES
ester_course_one = Course.create(course_name: "Course1", course_description: "New yadiyada Course1 Bla Ester Course", course_link_to_info: "I am a course1 link to info", course_link_to_booking: "I am link to course1 booking", profiles: [ester_profile])
ester_course_two = Course.create(course_name: "Course2", course_description: "New yadiyada Course2 of Now Bla Ester Course", course_link_to_info: "I am a course2 link to info", course_link_to_booking: "I am link to course2 booking", profiles: [ester_profile])
laura_course_one = Course.create(course_name: "Course3", course_description: "New yadiyada Course3 of Now Bla Laura Course", course_link_to_info: "I am a course3 link to info", course_link_to_booking: "I am link to course3 booking", profiles: [laura_profile])
susanna_course_one = Course.create(course_name: "Course4", course_description: "New yadiyada Course4 of Now Bla Susanna Course", course_link_to_info: "I am a course4 link to info", course_link_to_booking: "I am link to course4 booking", profiles: [susanna_profile])
miriam_course_one = Course.create(course_name: "Course5", course_description: "New yadiyada Course5 of Now Bla Miriam Course", course_link_to_info: "I am a course5 link to info", course_link_to_booking: "I am link to course5 booking", profiles: [miriam_profile])

# PHOTOS_RETREAT
RetreatPhoto.create(retreat: ester_retreat_two, remote_retreat_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1479373531/mindful-living/bookpowerofnow.jpg")
RetreatPhoto.create(retreat: ester_retreat_one, remote_retreat_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1479373532/mindful-living/booknewearth.jpg")
RetreatPhoto.create(retreat: laura_retreat_one, remote_retreat_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1479373883/mindful-living/bookall.png")
RetreatPhoto.create(retreat: susanna_retreat_one, remote_retreat_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1479373883/mindful-living/bookall.png")
RetreatPhoto.create(retreat: miriam_retreat_one, remote_retreat_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1479373883/mindful-living/bookall.png")

# PHOTOS_BOOK
BookPhoto.create(book: ester_book_two, book_image: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1479373531/mindful-living/bookpowerofnow.jpg")
BookPhoto.create(book: ester_book_one, book_image: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1479373532/mindful-living/booknewearth.jpg")
BookPhoto.create(book: laura_book_one, book_image: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1479373883/mindful-living/bookall.png")
BookPhoto.create(book: susanna_book_one, book_image: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1479373883/mindful-living/bookall.png")
BookPhoto.create(book: miriam_book_one, book_image: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1479373883/mindful-living/bookall.png")

# PHOTOS_COURSE
CoursePhoto.create(course: ester_course_two, remote_course_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1479373531/mindful-living/bookpowerofnow.jpg")
CoursePhoto.create(course: ester_course_one, remote_course_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1479373532/mindful-living/booknewearth.jpg")
CoursePhoto.create(course: laura_course_one, remote_course_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1479373883/mindful-living/bookall.png")
CoursePhoto.create(course: susanna_course_one, remote_course_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1479373883/mindful-living/bookall.png")
CoursePhoto.create(course: miriam_course_one, remote_course_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1479373883/mindful-living/bookall.png")

# PHOTOS_PROFILE
ProfilePhoto.create(profile: ester_profile, remote_profile_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1479373531/mindful-living/bookpowerofnow.jpg")
ProfilePhoto.create(profile: amber_profile, remote_profile_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1479373532/mindful-living/booknewearth.jpg")
ProfilePhoto.create(profile: pascal_profile, remote_profile_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1479373883/mindful-living/bookall.png")
ProfilePhoto.create(profile: laura_profile, remote_profile_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1479373883/mindful-living/bookall.png")
ProfilePhoto.create(profile: susanna_profile, remote_profile_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1479373883/mindful-living/bookall.png")
ProfilePhoto.create(profile: miriam_profile, remote_profile_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1479373883/mindful-living/bookall.png")
ProfilePhoto.create(profile: leslie_profile, remote_profile_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1479373883/mindful-living/bookall.png")
