# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# . . .

Product.delete_all

Product.create!([
  {
    title: 'Seven Mobile Apps in Seven Weeks',
    description:
    %{<p>
    <em>Native Apps, Multiple Platforms</em>
    Answer the question “Can we build this for ALL the devices?” with a
    resounding YES. This book will help you get there with a real-world
    introduction to seven platforms, whether you’re new to mobile or an
    experienced developer needing to expand your options. Plus, you’ll find
    out which cross-platform solution makes the most sense for your needs.
    </p>},
    image_url: 'ruby.jpg',
    price: 24.99
  },
  {
    title: 'Regrant',
    description: "Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.",
    image_url: 'lorem.jpg',
    price: 39.99
  },
  {
    title: 'Bytecard',
    description: "Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.",
    image_url: 'lorem.jpg',
    price: 49.99
  },
  {
    title: 'Y-find',
    description: "Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.",
    image_url: 'lorem.jpg',
    price: 10.50
  },
  {
    title: 'Tres-Zap',
    description: "In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.",
    image_url: 'lorem.jpg',
    price: 79.99
  },
  {
    title: 'Greenlam',
    description: "Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.",
    image_url: 'lorem.jpg',
    price: 55.00
  },
  {
    title: 'Transcof',
    description: "Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.",
    image_url: 'lorem.jpg',
    price: 99.00
  },
  {
    title: 'Bytecard 2.0',
    description: "Phasellus in felis. Donec semper sapien a libero. Nam dui.",
    image_url: 'lorem.jpg',
    price: 30.00
  },
  {
    title: 'Subin',
    description: "Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.",
    image_url: 'lorem.jpg',
    price: 45.00
  },
  {
    title: 'Viva',
    description: "Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.",
    image_url: 'lorem.jpg',
    price: 19.50
  },
  {
    title: 'Subin 2.0',
    description: "In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.",
    image_url: 'lorem.jpg',
    price: 20.00
  }
])

User.create!(
  name: 'admin',
  email: 'admin@localhost',
  password: 'password'
)
# . . .