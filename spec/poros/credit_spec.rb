require 'rails_helper'

RSpec.describe Credit do
  it 'has image attributes' do
    location = 'Buena Vista, CO'

    data =
              {:id=>"qDGrbudbYz4",
          :created_at=>"2020-09-20T22:59:56-04:00",
          :updated_at=>"2022-01-16T06:14:48-05:00",
          :promoted_at=>nil,
          :width=>5422,
          :height=>3615,
          :color=>"#8c8c8c",
          :blur_hash=>"LICZ;MS5M{ofEkRjM{of00t6oKjt",
          :description=>nil,
          :alt_description=>"snow covered mountain under blue sky during daytime",
          :urls=>
          {:raw=>
          "https://images.unsplash.com/photo-1600656862529-3c4011c36a13?ixid=MnwyOTE2NzN8MHwxfHNlYXJjaHwxfHxCdWVuYSUyMFZpc3RhJTJDJTIwQ098ZW58MHx8fHwxNjQyMzUyMzk3&ixlib=rb-1.2.1",
          :full=>
          "https://images.unsplash.com/photo-1600656862529-3c4011c36a13?crop=entropy&cs=srgb&fm=jpg&ixid=MnwyOTE2NzN8MHwxfHNlYXJjaHwxfHxCdWVuYSUyMFZpc3RhJTJDJTIwQ098ZW58MHx8fHwxNjQyMzUyMzk3&ixlib=rb-1.2.1&q=85",
          :regular=>
          "https://images.unsplash.com/photo-1600656862529-3c4011c36a13?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyOTE2NzN8MHwxfHNlYXJjaHwxfHxCdWVuYSUyMFZpc3RhJTJDJTIwQ098ZW58MHx8fHwxNjQyMzUyMzk3&ixlib=rb-1.2.1&q=80&w=1080",
          :small=>
          "https://images.unsplash.com/photo-1600656862529-3c4011c36a13?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyOTE2NzN8MHwxfHNlYXJjaHwxfHxCdWVuYSUyMFZpc3RhJTJDJTIwQ098ZW58MHx8fHwxNjQyMzUyMzk3&ixlib=rb-1.2.1&q=80&w=400",
          :thumb=>
          "https://images.unsplash.com/photo-1600656862529-3c4011c36a13?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyOTE2NzN8MHwxfHNlYXJjaHwxfHxCdWVuYSUyMFZpc3RhJTJDJTIwQ098ZW58MHx8fHwxNjQyMzUyMzk3&ixlib=rb-1.2.1&q=80&w=200"},
          :links=>
          {:self=>"https://api.unsplash.com/photos/qDGrbudbYz4",
          :html=>"https://unsplash.com/photos/qDGrbudbYz4",
          :download=>
          "https://unsplash.com/photos/qDGrbudbYz4/download?ixid=MnwyOTE2NzN8MHwxfHNlYXJjaHwxfHxCdWVuYSUyMFZpc3RhJTJDJTIwQ098ZW58MHx8fHwxNjQyMzUyMzk3",
          :download_location=>
          "https://api.unsplash.com/photos/qDGrbudbYz4/download?ixid=MnwyOTE2NzN8MHwxfHNlYXJjaHwxfHxCdWVuYSUyMFZpc3RhJTJDJTIwQ098ZW58MHx8fHwxNjQyMzUyMzk3"},
          :categories=>[],
          :likes=>3,
          :liked_by_user=>false,
          :current_user_collections=>[],
          :sponsorship=>nil,
          :topic_submissions=>{},
          :user=>
          {:id=>"weYlJbjRlmY",
          :updated_at=>"2022-01-13T13:39:33-05:00",
          :username=>"haydenhatchphoto",
          :name=>"Hayden Hatch",
          :first_name=>"Hayden",
          :last_name=>"Hatch",
          :twitter_username=>nil,
          :portfolio_url=>"https://haydenhatchphoto.wixsite.com/site",
          :bio=>"insta: @haydenhatchphoto",
          :location=>nil,
          :links=>
          {:self=>"https://api.unsplash.com/users/haydenhatchphoto",
           :html=>"https://unsplash.com/@haydenhatchphoto",
           :photos=>"https://api.unsplash.com/users/haydenhatchphoto/photos",
           :likes=>"https://api.unsplash.com/users/haydenhatchphoto/likes",
           :portfolio=>"https://api.unsplash.com/users/haydenhatchphoto/portfolio",
           :following=>"https://api.unsplash.com/users/haydenhatchphoto/following",
           :followers=>"https://api.unsplash.com/users/haydenhatchphoto/followers"},
          :profile_image=>
          {:small=>
            "https://images.unsplash.com/profile-fb-1600656509-fe61542a4986.jpg?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=32&w=32",
           :medium=>
            "https://images.unsplash.com/profile-fb-1600656509-fe61542a4986.jpg?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=64&w=64",
           :large=>
            "https://images.unsplash.com/profile-fb-1600656509-fe61542a4986.jpg?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=128&w=128"},
          :instagram_username=>"haydenhatchphoto",
          :total_collections=>0,
          :total_likes=>0,
          :total_photos=>11,
          :accepted_tos=>true,
          :for_hire=>false,
          :social=>
          {:instagram_username=>"haydenhatchphoto",
           :portfolio_url=>"https://haydenhatchphoto.wixsite.com/site",
           :twitter_username=>nil,
           :paypal_email=>nil}},
          :tags=>
          [{:type=>"landing_page",
          :title=>"grey",
          :source=>
           {:ancestry=>
             {:type=>{:slug=>"wallpapers", :pretty_slug=>"HD Wallpapers"},
              :category=>{:slug=>"colors", :pretty_slug=>"Color"},
              :subcategory=>{:slug=>"grey", :pretty_slug=>"Grey"}},
            :title=>"HD Grey Wallpapers",
            :subtitle=>"Download Free Grey Wallpapers",
            :description=>"Choose from a curated selection of grey wallpapers for your mobile and desktop screens. Always free on Unsplash.",
            :meta_title=>"Grey Wallpapers: Free HD Download [500+ HQ] | Unsplash",
            :meta_description=>"Choose from hundreds of free grey wallpapers. Download HD wallpapers for free on Unsplash.",
            :cover_photo=>
             {:id=>"ctXf1GVyf9A",
              :created_at=>"2018-09-10T04:05:55-04:00",
              :updated_at=>"2022-01-14T13:04:03-05:00",
              :promoted_at=>nil,
              :width=>5304,
              :height=>7952,
              :color=>"#a6a6a6",
              :blur_hash=>"L3IYFNIU00~q-;M{R*t80KtRIUM{",
              :description=>"Old stone background texture",
              :alt_description=>nil,
              :urls=>
               {:raw=>"https://images.unsplash.com/photo-1536566482680-fca31930a0bd?ixlib=rb-1.2.1",
                :full=>"https://images.unsplash.com/photo-1536566482680-fca31930a0bd?ixlib=rb-1.2.1&q=85&fm=jpg&crop=entropy&cs=srgb",
                :regular=>
                 "https://images.unsplash.com/photo-1536566482680-fca31930a0bd?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max",
                :small=>
                 "https://images.unsplash.com/photo-1536566482680-fca31930a0bd?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max",
                :thumb=>
                 "https://images.unsplash.com/photo-1536566482680-fca31930a0bd?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=200&fit=max"},
              :links=>
               {:self=>"https://api.unsplash.com/photos/ctXf1GVyf9A",
                :html=>"https://unsplash.com/photos/ctXf1GVyf9A",
                :download=>"https://unsplash.com/photos/ctXf1GVyf9A/download",
                :download_location=>"https://api.unsplash.com/photos/ctXf1GVyf9A/download"},
              :categories=>[],
              :likes=>1293,
              :liked_by_user=>false,
              :current_user_collections=>[],
              :sponsorship=>nil,
              :topic_submissions=>{:"textures-patterns"=>{:status=>"approved", :approved_on=>"2020-04-06T10:20:11-04:00"}},
              :user=>
               {:id=>"IFcEhJqem0Q",
                :updated_at=>"2022-01-14T22:55:53-05:00",
                :username=>"anniespratt",
                :name=>"Annie Spratt",
                :first_name=>"Annie",
                :last_name=>"Spratt",
                :twitter_username=>"anniespratt",
                :portfolio_url=>"https://www.anniespratt.com",
                :bio=>
                 "Hobbyist photographer from England, sharing my digital, film + vintage slide scans.  \r\nFor free videos or to buy prints head to
          👉🏻 anniespratt.com",
                :location=>"New Forest National Park, UK",
                :links=>
                 {:self=>"https://api.unsplash.com/users/anniespratt",
                  :html=>"https://unsplash.com/@anniespratt",
                  :photos=>"https://api.unsplash.com/users/anniespratt/photos",
                  :likes=>"https://api.unsplash.com/users/anniespratt/likes",
                  :portfolio=>"https://api.unsplash.com/users/anniespratt/portfolio",
                  :following=>"https://api.unsplash.com/users/anniespratt/following",
                  :followers=>"https://api.unsplash.com/users/anniespratt/followers"},
                :profile_image=>
                 {:small=>
                   "https://images.unsplash.com/profile-1628142977790-d9f66dcbc498image?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=32&w=32",
                  :medium=>
                   "https://images.unsplash.com/profile-1628142977790-d9f66dcbc498image?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=64&w=64",
                  :large=>
                   "https://images.unsplash.com/profile-1628142977790-d9f66dcbc498image?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=128&w=128"},
                :instagram_username=>"anniespratt",
                :total_collections=>142,
                :total_likes=>14324,
                :total_photos=>14778,
                :accepted_tos=>true,
                :for_hire=>false,
                :social=>
                 {:instagram_username=>"anniespratt",
                  :portfolio_url=>"https://www.anniespratt.com",
                  :twitter_username=>"anniespratt",
                  :paypal_email=>nil}}}}},
          {:type=>"search", :title=>"buena vista"},
          {:type=>"search", :title=>"co"}]}

      credit = Credit.new(data)

      expect(credit.source).to eq("https://api.unsplash.com/users/haydenhatchphoto/photos")
      expect(credit.artist_name).to eq("Hayden Hatch")
  end
end
