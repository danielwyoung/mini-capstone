#User.create!([
  #{email: "greenboots@gmail.com", encrypted_password: "$2a$10$YK4PW7ZvBhXPYXJ.H01YR.h5gFyjQibHONTxvyRNDhWWs6Kns47ly", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-11-26 00:59:51", last_sign_in_at: "2015-11-26 00:59:51", current_sign_in_ip: "::1", last_sign_in_ip: "::1"}
#])
Image.create!([
  {product_id: 1, image_url: "http://www.lovelonglong.com/upload/product/normal/product_1311083896950942568.jpg"},
  {product_id: 1, image_url: "http://www.polyvore.com/cgi/img-thing?.out=jpg&size=l&tid=31259066"},
  {product_id: 2, image_url: "http://ecx.images-amazon.com/images/I/41651tY9EHL.jpg"},
  {product_id: 3, image_url: "http://badasspetz.com/images/royal-blue-personalized-leather-dog-leash.jpg"},
  {product_id: 4, image_url: "http://rlv.zcache.com/dog_bowl_by_janz_large_in_sky_blue_pet_bowl-r9a4f4356727c4c6aaa8fb58dfce5b0c9_2iwjt_8byvr_324.jpg"},
  {product_id: 5, image_url: "http://3.bp.blogspot.com/-fAWgDqnVYiw/UEygSgM67uI/AAAAAAAAABI/J-sV_BA8AcA/s300/ChuckIt%2BUltra%2BBalls.jpg"},
  {product_id: 1, image_url: "http://ecx.images-amazon.com/images/I/712ZKTPhl9L._SX466_.jpg"}
])
Order.create!([
  {user_id: 1, product_id: nil, quantity: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: 2, quantity: 4, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: 3, quantity: 4, subtotal: "48.0", tax: "4.32", total: "52.32"},
  {user_id: 1, product_id: 4, quantity: 6, subtotal: "48.0", tax: "4.32", total: "52.32"},
  {user_id: 1, product_id: 3, quantity: 3, subtotal: "36.0", tax: "3.24", total: "39.24"},
  {user_id: 1, product_id: 1, quantity: 12, subtotal: "36.0", tax: "3.24", total: "39.24"},
  {user_id: 1, product_id: 5, quantity: 7, subtotal: "28.0", tax: "2.52", total: "30.52"},
  {user_id: 1, product_id: 2, quantity: 6, subtotal: "24.0", tax: "2.16", total: "26.16"},
  {user_id: 1, product_id: 2, quantity: 6, subtotal: "24.0", tax: "2.16", total: "26.16"},
  {user_id: 1, product_id: 4, quantity: 11, subtotal: "88.0", tax: "7.92", total: "95.92"}
])
Product.create!([
  {name: "Dog Collar", price: "3.0", description: "Leather Dog Collar", size: "Medium", color: "Red", available: "4", supplier_id: "1"},
  {name: "Cat Collar", price: "4.0", description: "Jeweled Cat Collar", size: "Small", color: "Pink", available: "5", supplier_id: "2"},
  {name: "Leash", price: "12.0", description: "Leather leash", size: "10ft", color: "Blue", available: "10", supplier_id: "1"},
  {name: "Food Bowl", price: "8.0", description: "Ceramic Bowl", size: "8 quart", color: "Sky Blue", available: "7", supplier_id: "1"},
  {name: "Chewy Ball", price: "4.0", description: "Chewy Ball", size: "N/A", color: "Orange", available: "6", supplier_id: "2"}
])
Supplier.create!([
  {name: "Puppy Supplies", email: "topdog@puppysupplies.com", phone: "262-555-5555"},
  {name: "Pets R Us", email: "spot@petsrus.com", phone: "262-555-5656"}
])
