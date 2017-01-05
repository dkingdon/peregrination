# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

City.destroy_all

City.create({name: "San Francisco", image: "https://cdn0.tnwcdn.com/wp-content/blogs.dir/1/files/2015/08/SANFRANCISCO-1200x618.jpg"})
City.create({name: "New York", image: "https://static.mgmresorts.com/content/dam/MGM/new-york-new-york/architecture/exterior/skyline/new-york-new-york-skyline-angle-blue-background.tif.image.1440.550.high.jpg"})
City.create({name: "London", image: "https://www.imperial.ac.uk/ImageCropToolT4/imageTool/uploaded-images/LONDON_shutterstock_229478404--tojpeg_1417791048879_x1.jpg"})
City.create({name: "Gibraltar", image: "https://image.jimcdn.com/app/cms/image/transf/none/path/sf778462bcdf82c75/image/i8791725d74c556bc/version/1452438276/image.jpg"})
City.create({name: "San Juan", image: "https://media.timeout.com/images/102852687/image.jpg"})
City.create({name: "Paris", image: "https://www.cpp.edu/~international/study-abroad/img/jXMx4mQz6MsnhP1FSKp2TJMt.jpeg"})
