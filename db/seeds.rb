# Playlist_id => 0 quando o video nao pertence  uma playlist


###################################### Accounts ######################################

Account.create(:admin => true, :date_birth => DateTime.strptime("21/04/1992", "%d/%m/%Y"), :email => 'martasantos@gmail.com', :password=> '123123123');

###################################### Captcha ######################################

Captcha.create(:code => '527109', :photo => '527109.jpg');
Captcha.create(:code => 'bijew', :photo => 'bijew.jpg');
Captcha.create(:code => 'disbud', :photo => 'disbud.jpg');
Captcha.create(:code => 'holistic', :photo => 'holistic.jpg');
Captcha.create(:code => 'warrok', :photo => 'warrok.jpg');

###################################### Channel ######################################

Channel.create(:account_id => '1', :photo => 'balloons.jpg');

###################################### Playlist ######################################

Playlist.create(:channel_id=> '1', :name => 'Trailers 2013');
Playlist.create(:channel_id=> '1', :name => 'Favorite');

###################################### Video ######################################

Video.create(:playlist_id => '1', :path => 'hunger.mp4' ,:age => '0', :image_path => 'hunger.jpg', :category=> 'Movies', :description=>'The Hunger Games: Catching Fire Official Theatrical Trailer (2013)', :dislikes =>'0', :has_comments=>true, :likes =>'400', :privacy => false, :title => 'The Hunger Games', :featured=>true, :views=>0);
Video.create(:playlist_id => '0', :path => 'avatar2.mp4' ,:age => '0', :image_path => 'avatar2.jpg', :category=> 'Movies', :description=>'Avatar 2 Official Trailer (2014-2015)', :dislikes =>'0', :has_comments=>true, :likes =>'200', :privacy => false, :title => 'Avatar 2', :featured=>true, :views=>0);
Video.create(:playlist_id => '2', :path => 'lana.mp4' ,:age => '0', :image_path => 'lana.jpg', :category=> 'Music', :description=>'Lana del Rey - Summertime sadness', :dislikes =>'5', :has_comments=>true, :likes =>'2200', :privacy => false, :title => 'Lana del Rey - Summertime sadness', :featured=>true, :views=>0);
Video.create(:playlist_id => '0', :path => 'relaxing.mp4' ,:age => '0', :image_path => 'relaxing.jpg', :category=> 'Music', :description=>'ERNESTO CORTAZAR - Winter (Relaxing Music)', :dislikes =>'5', :has_comments=>true, :likes =>'2200', :privacy => false, :title => 'ERNESTO CORTAZAR - Winter ', :featured=>true, :views=>0);
Video.create(:playlist_id => '0', :path => 'tnores.mp4' ,:age => '0', :image_path => 'tnores.jpg', :category=> 'Music', :description=>'Luciano Pavarotti - Nessun Dorma (1080pHD)', :dislikes =>'5', :has_comments=>true, :likes =>'2200', :privacy => false, :title => 'Luciano Pavarotti - Nessun Dorma', :featured=>true, :views=>0);
Video.create(:playlist_id => '0', :path => 'adele.mp4' ,:age => '0', :image_path => 'adele.jpg', :category=> 'Music', :description=>'Adele - Skyfall (Lyric Video)', :dislikes =>'5', :has_comments=>true, :likes =>'2200', :privacy => false, :title => 'Adele - Skyfall', :featured=>true, :views=>0);
Video.create(:playlist_id => '0', :path => 'batman.mp4' ,:age => '0', :image_path => 'batman.jpg', :category=> 'Movies', :description=>'Batman- Arkham Origins -- Full Trailer', :dislikes =>'5', :has_comments=>true, :likes =>'2200', :privacy => false, :title => 'Batman- Arkham Origins', :featured=>true, :views=>0);
Video.create(:playlist_id => '0', :path => 'riddick.mp4' ,:age => '0', :image_path => 'riddick.jpg', :category=> 'Movies', :description=>'Riddick - Debut Trailer', :dislikes =>'5', :has_comments=>true, :likes =>'2200', :privacy => false, :title => 'Riddick Trailer', :featured=>true, :views=>0);
Video.create(:playlist_id => '0', :path => 'top.mp4' ,:age => '0', :image_path => 'top.jpg', :category=> 'Sport', :description=>'Top 10 NBA Plays- November 15th', :dislikes =>'5', :has_comments=>true, :likes =>'2200', :privacy => false, :title => 'Top 10 NBA Plays- November 15th', :featured=>true, :views=>0);
Video.create(:playlist_id => '0', :path => 'swim.mp4' ,:age => '0', :image_path => 'swim.jpg', :category=> 'Sport', :description=>'Freestyle - Playing with Surface Area', :dislikes =>'5', :has_comments=>true, :likes =>'2200', :privacy => false, :title => 'Freestyle - Playing with Surface Area', :featured=>true, :views=>0);
Video.create(:playlist_id => '0', :path => 'german.mp4' ,:age => '0', :image_path => 'german.jpg', :category=> 'Sport', :description=>'Unbelievable point by Apolonia at 2013 German Open', :dislikes =>'5', :has_comments=>true, :likes =>'2200', :privacy => false, :title => 'Unbelievable point by Apolonia at 2013 German', :featured=>true, :views=>0);
Video.create(:playlist_id => '0', :path => 'ronaldo.mp4' ,:age => '0', :image_path => 'ronaldo.jpg', :category=> 'Sport', :description=>'Cristiano Ronaldo gives Lustig (Sweden) a little headbutt before making fun of him for playacting', :dislikes =>'5', :has_comments=>true, :likes =>'2200', :privacy => false, :title => 'Cristiano Ronaldo', :featured=>true, :views=>0);
Video.create(:playlist_id => '0', :path => 'robocot.mp4' ,:age => '0', :image_path => 'robocot.jpg', :category=> 'Movies', :description=>'Robocop Trailer 2014 Movie - Official 2013 Teaser [HD](1)', :dislikes =>'5', :has_comments=>true, :likes =>'2200', :privacy => false, :title => 'Robocop Trailer', :featured=>true, :views=>0);
Video.create(:playlist_id => '0', :path => 'noah.mp4' ,:age => '0', :image_path => 'noah.jpg', :category=> 'Movies', :description=>'Noah Official Trailer #1 (2014) - Russell Crowe, Emma Watson Movie HD', :dislikes =>'5', :has_comments=>true, :likes =>'2200', :privacy => false, :title => 'Noah Official Trailer', :featured=>true, :views=>0);

###################################### Related ######################################

Related.create(:related_id => '1', :video_id=> '2');

###################################### Comment ######################################

Comment.create(:comment => 'Adorei o video!', :dislikes => '0', :likes => '5', :video_id => '1');
Comment.create(:comment => 'Adorei o video!', :dislikes => '0', :likes => '5', :video_id => '1');
Comment.create(:comment => 'Este filme tem que ganhar um oscar! Simplesmente amei!', :dislikes => '0', :likes => '15', :video_id => '2');