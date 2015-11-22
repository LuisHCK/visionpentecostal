[1mdiff --git a/Gemfile b/Gemfile[m
[1mindex 5f7b811..b1235e1 100644[m
[1m--- a/Gemfile[m
[1m+++ b/Gemfile[m
[36m@@ -2,9 +2,10 @@[m [msource 'https://rubygems.org'[m
 [m
 [m
 # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'[m
[31m-gem 'rails', '4.1.8'[m
[32m+[m[32mgem 'rails', '~> 4.2', '>= 4.2.5'[m
 # Use sqlite3 as the database for Active Record[m
[31m-gem 'sqlite3'[m
[32m+[m[32mgem 'mysql2', '~> 0.4.1'[m
[32m+[m[32m#gem 'sqlite3'[m
 # Use SCSS for stylesheets[m
 gem 'sass-rails', '~> 5.0', '>= 5.0.4'[m
 # Use Uglifier as compressor for JavaScript assets[m
[36m@@ -35,6 +36,12 @@[m [mgem 'sdoc', '~> 0.4.0',          group: :doc[m
 # Use debugger[m
 # gem 'debugger', group: [:development, :test][m
 [m
[32m+[m
[32m+[m[32mgroup :test do[m
[32m+[m[32m gem 'sqlite3'[m[41m	[m
[32m+[m[32mend[m
[32m+[m
[32m+[m
 # Windows does not include zoneinfo files, so bundle the tzinfo-data gem[m
 gem 'tzinfo-data', platforms: [:mingw, :mswin][m
 [m
[36m@@ -42,4 +49,6 @@[m [mgem 'devise'[m
 [m
 gem 'materialize-sass'[m
 [m
[31m-gem 'jquery-turbolinks'[m
\ No newline at end of file[m
[32m+[m[32mgem 'jquery-turbolinks'[m
[32m+[m
[32m+[m[32mgem 'paperclip'[m
\ No newline at end of file[m
[1mdiff --git a/Gemfile.lock b/Gemfile.lock[m
[1mindex 0cab63d..12b8665 100644[m
[1m--- a/Gemfile.lock[m
[1m+++ b/Gemfile.lock[m
[36m@@ -1,43 +1,56 @@[m
 GEM[m
   remote: https://rubygems.org/[m
   specs:[m
[31m-    actionmailer (4.1.8)[m
[31m-      actionpack (= 4.1.8)[m
[31m-      actionview (= 4.1.8)[m
[32m+[m[32m    actionmailer (4.2.5)[m
[32m+[m[32m      actionpack (= 4.2.5)[m
[32m+[m[32m      actionview (= 4.2.5)[m
[32m+[m[32m      activejob (= 4.2.5)[m
       mail (~> 2.5, >= 2.5.4)[m
[31m-    actionpack (4.1.8)[m
[31m-      actionview (= 4.1.8)[m
[31m-      activesupport (= 4.1.8)[m
[31m-      rack (~> 1.5.2)[m
[32m+[m[32m      rails-dom-testing (~> 1.0, >= 1.0.5)[m
[32m+[m[32m    actionpack (4.2.5)[m
[32m+[m[32m      actionview (= 4.2.5)[m
[32m+[m[32m      activesupport (= 4.2.5)[m
[32m+[m[32m      rack (~> 1.6)[m
       rack-test (~> 0.6.2)[m
[31m-    actionview (4.1.8)[m
[31m-      activesupport (= 4.1.8)[m
[32m+[m[32m      rails-dom-testing (~> 1.0, >= 1.0.5)[m
[32m+[m[32m      rails-html-sanitizer (~> 1.0, >= 1.0.2)[m
[32m+[m[32m    actionview (4.2.5)[m
[32m+[m[32m      activesupport (= 4.2.5)[m
       builder (~> 3.1)[m
       erubis (~> 2.7.0)[m
[31m-    activemodel (4.1.8)[m
[31m-      activesupport (= 4.1.8)[m
[32m+[m[32m      rails-dom-testing (~> 1.0, >= 1.0.5)[m
[32m+[m[32m      rails-html-sanitizer (~> 1.0, >= 1.0.2)[m
[32m+[m[32m    activejob (4.2.5)[m
[32m+[m[32m      activesupport (= 4.2.5)[m
[32m+[m[32m      globalid (>= 0.3.0)[m
[32m+[m[32m    activemodel (4.2.5)[m
[32m+[m[32m      activesupport (= 4.2.5)[m
       builder (~> 3.1)[m
[31m-    activerecord (4.1.8)[m
[31m-      activemodel (= 4.1.8)[m
[31m-      activesupport (= 4.1.8)[m
[31m-      arel (~> 5.0.0)[m
[31m-    activesupport (4.1.8)[m
[31m-      i18n (~> 0.6, >= 0.6.9)[m
[32m+[m[32m    activerecord (4.2.5)[m
[32m+[m[32m      activemodel (= 4.2.5)[m
[32m+[m[32m      activesupport (= 4.2.5)[m
[32m+[m[32m      arel (~> 6.0)[m
[32m+[m[32m    activesupport (4.2.5)[m
[32m+[m[32m      i18n (~> 0.7)[m
       json (~> 1.7, >= 1.7.7)[m
       minitest (~> 5.1)[m
[31m-      thread_safe (~> 0.1)[m
[32m+[m[32m      thread_safe (~> 0.3, >= 0.3.4)[m
       tzinfo (~> 1.1)[m
[31m-    arel (5.0.1.20140414130214)[m
[32m+[m[32m    arel (6.0.3)[m
     bcrypt (3.1.10)[m
     bcrypt (3.1.10-x86-mingw32)[m
     builder (3.2.2)[m
[32m+[m[32m    climate_control (0.0.3)[m
[32m+[m[32m      activesupport (>= 3.0)[m
[32m+[m[32m    cocaine (0.5.8)[m
[32m+[m[32m      climate_control (>= 0.0.3, < 1.0)[m
     coffee-rails (4.0.1)[m
       coffee-script (>= 2.2.0)[m
       railties (>= 4.0.0, < 5.0)[m
     coffee-script (2.4.1)[m
       coffee-script-source[m
       execjs[m
[31m-    coffee-script-source (1.9.1.1)[m
[32m+[m[32m    coffee-script-source (1.10.0)[m
     devise (3.5.2)[m
       bcrypt (~> 3.0)[m
       orm_adapter (~> 0.1)[m
[36m@@ -47,48 +60,76 @@[m [mGEM[m
       warden (~> 1.2.3)[m
     erubis (2.7.0)[m
     execjs (2.6.0)[m
[32m+[m[32m    globalid (0.3.6)[m
[32m+[m[32m      activesupport (>= 4.1.0)[m
     i18n (0.7.0)[m
     jbuilder (2.3.2)[m
       activesupport (>= 3.0.0, < 5)[m
       multi_json (~> 1.2)[m
[31m-    jquery-rails (3.1.4)[m
[31m-      railties (>= 3.0, < 5.0)[m
[32m+[m[32m    jquery-rails (4.0.5)[m
[32m+[m[32m      rails-dom-testing (~> 1.0)[m
[32m+[m[32m      railties (>= 4.2.0)[m
       thor (>= 0.14, < 2.0)[m
     jquery-turbolinks (2.1.0)[m
       railties (>= 3.1.0)[m
       turbolinks[m
     json (1.8.3)[m
[32m+[m[32m    loofah (2.0.3)[m
[32m+[m[32m      nokogiri (>= 1.5.9)[m
     mail (2.6.3)[m
       mime-types (>= 1.16, < 3)[m
[31m-    materialize-sass (0.97.1)[m
[32m+[m[32m    materialize-sass (0.97.3)[m
       sass (~> 3.3)[m
     mime-types (2.6.2)[m
[31m-    minitest (5.8.2)[m
[32m+[m[32m    mimemagic (0.3.0)[m
[32m+[m[32m    mini_portile (0.6.2)[m
[32m+[m[32m    minitest (5.8.3)[m
     multi_json (1.11.2)[m
[32m+[m[32m    mysql2 (0.4.1)[m
[32m+[m[32m    mysql2 (0.4.1-x86-mingw32)[m
[32m+[m[32m    nokogiri (1.6.6.4)[m
[32m+[m[32m      mini_portile (~> 0.6.0)[m
[32m+[m[32m    nokogiri (1.6.6.4-x86-mingw32)[m
[32m+[m[32m      mini_portile (~> 0.6.0)[m
     orm_adapter (0.5.0)[m
[31m-    rack (1.5.5)[m
[32m+[m[32m    paperclip (4.3.2)[m
[32m+[m[32m      activemodel (>= 3.2.0)[m
[32m+[m[32m      activesupport (>= 3.2.0)[m
[32m+[m[32m      cocaine (~> 0.5.5)[m
[32m+[m[32m      mime-types[m
[32m+[m[32m      mimemagic (= 0.3.0)[m
[32m+[m[32m    rack (1.6.4)[m
     rack-test (0.6.3)[m
       rack (>= 1.0)[m
[31m-    rails (4.1.8)[m
[31m-      actionmailer (= 4.1.8)[m
[31m-      actionpack (= 4.1.8)[m
[31m-      actionview (= 4.1.8)[m
[31m-      activemodel (= 4.1.8)[m
[31m-      activerecord (= 4.1.8)[m
[31m-      activesupport (= 4.1.8)[m
[32m+[m[32m    rails (4.2.5)[m
[32m+[m[32m      actionmailer (= 4.2.5)[m
[32m+[m[32m      actionpack (= 4.2.5)[m
[32m+[m[32m      actionview (= 4.2.5)[m
[32m+[m[32m      activejob (= 4.2.5)[m
[32m+[m[32m      activemodel (= 4.2.5)[m
[32m+[m[32m      activerecord (= 4.2.5)[m
[32m+[m[32m      activesupport (= 4.2.5)[m
       bundler (>= 1.3.0, < 2.0)[m
[31m-      railties (= 4.1.8)[m
[31m-      sprockets-rails (~> 2.0)[m
[31m-    railties (4.1.8)[m
[31m-      actionpack (= 4.1.8)[m
[31m-      activesupport (= 4.1.8)[m
[32m+[m[32m      railties (= 4.2.5)[m
[32m+[m[32m      sprockets-rails[m
[32m+[m[32m    rails-deprecated_sanitizer (1.0.3)[m
[32m+[m[32m      activesupport (>= 4.2.0.alpha)[m
[32m+[m[32m    rails-dom-testing (1.0.7)[m
[32m+[m[32m      activesupport (>= 4.2.0.beta, < 5.0)[m
[32m+[m[32m      nokogiri (~> 1.6.0)[m
[32m+[m[32m      rails-deprecated_sanitizer (>= 1.0.1)[m
[32m+[m[32m    rails-html-sanitizer (1.0.2)[m
[32m+[m[32m      loofah (~> 2.0)[m
[32m+[m[32m    railties (4.2.5)[m
[32m+[m[32m      actionpack (= 4.2.5)[m
[32m+[m[32m      activesupport (= 4.2.5)[m
       rake (>= 0.8.7)[m
       thor (>= 0.18.1, < 2.0)[m
     rake (10.4.2)[m
     rdoc (4.2.0)[m
       json (~> 1.4)[m
[31m-    responders (1.1.2)[m
[31m-      railties (>= 3.2, < 4.2)[m
[32m+[m[32m    responders (2.1.0)[m
[32m+[m[32m      railties (>= 4.2.0, < 5)[m
     sass (3.4.19)[m
     sass-rails (5.0.4)[m
       railties (>= 4.0.0, < 5.0)[m
[36m@@ -133,7 +174,9 @@[m [mDEPENDENCIES[m
   jquery-rails[m
   jquery-turbolinks[m
   materialize-sass[m
[31m-  rails (= 4.1.8)[m
[32m+[m[32m  mysql2 (~> 0.4.1)[m
[32m+[m[32m  paperclip[m
[32m+[m[32m  rails (~> 4.2, >= 4.2.5)[m
   sass-rails (~> 5.0, >= 5.0.4)[m
   sdoc (~> 0.4.0)[m
   sqlite3[m
[1mdiff --git a/app/controllers/posts_controller.rb b/app/controllers/posts_controller.rb[m
[1mindex 91dc5c5..cd378b5 100644[m
[1m--- a/app/controllers/posts_controller.rb[m
[1m+++ b/app/controllers/posts_controller.rb[m
[36m@@ -55,7 +55,7 @@[m [mclass PostsController < ApplicationController[m
 	private[m
 [m
 	def post_params[m
[31m-		params.require(:post).permit(:titulo,:descripcion,:portada)[m
[32m+[m		[32mparams.require(:post).permit(:titulo,:descripcion,:cover)[m
 	end[m
 [m
 end[m
\ No newline at end of file[m
[1mdiff --git a/app/controllers/programs_controller.rb b/app/controllers/programs_controller.rb[m
[1mindex 2e5d004..42795ef 100644[m
[1m--- a/app/controllers/programs_controller.rb[m
[1m+++ b/app/controllers/programs_controller.rb[m
[36m@@ -56,7 +56,7 @@[m [mclass ProgramsController < ApplicationController[m
 [m
 	private[m
 	def program_params[m
[31m-		params.require(:program).permit(:titulo,:descripcion,:dias,:hora,:portada)[m
[32m+[m		[32mparams.require(:program).permit(:titulo,:descripcion,:dias,:hora,:cover)[m
 	end[m
 [m
 [m
[1mdiff --git a/app/models/post.rb b/app/models/post.rb[m
[1mindex 625c3d7..11f0488 100644[m
[1m--- a/app/models/post.rb[m
[1m+++ b/app/models/post.rb[m
[36m@@ -1,5 +1,7 @@[m
 class Post < ActiveRecord::Base[m
 	validates :titulo, presence: true[m
 	validates :descripcion, presence: true[m
[31m-	validates :portada, presence: true[m
[32m+[m
[32m+[m	[32mhas_attached_file :cover, styles: {medium: "1280x720", tumb: "800x600"}[m
[32m+[m	[32mvalidates_attachment_content_type :cover, content_type: /\Aimage\/.*\z/ , presence: true[m
 end[m
[1mdiff --git a/app/models/program.rb b/app/models/program.rb[m
[1mindex 0d6f112..80802cb 100644[m
[1m--- a/app/models/program.rb[m
[1m+++ b/app/models/program.rb[m
[36m@@ -3,5 +3,7 @@[m [mclass Program < ActiveRecord::Base[m
 	validates :descripcion, presence: true[m
 	validates :dias, presence: true [m
 	validates :hora, presence: true[m
[31m-	validates :portada, presence: true[m
[32m+[m
[32m+[m	[32mhas_attached_file :cover, styles: {medium: "1280x720", tumb: "800x600"}[m
[32m+[m	[32mvalidates_attachment_content_type :cover, content_type: /\Aimage\/.*\z/ , presence: true[m
 end[m
[1mdiff --git a/app/views/layouts/_form.html.erb b/app/views/layouts/_form.html.erb[m
[1mindex 0ce0496..8af39fb 100644[m
[1m--- a/app/views/layouts/_form.html.erb[m
[1m+++ b/app/views/layouts/_form.html.erb[m
[36m@@ -1,29 +1,48 @@[m
 [m
[31m-[m
[31m-<div style="background: #eeeeee" class="container row center-xs col-sm-12">[m
   <% if admin_signed_in?%>[m
[31m-    <h2>[m
[31m-      <%= txt1 %>[m
[31m-    </h2>[m
[31m-    <h5>[m
[31m-      <%= txt2%>[m
[31m-    </h5-->[m
[32m+[m[32m  <% txt3 ||= "" %>[m[41m[m
[32m+[m[32m<div style="background: #eeeeee" class="container center-xs">[m[41m[m
 [m
[32m+[m[32m  <div>[m[41m[m
[32m+[m[32m    <h4><%= txt1 %></h4>[m[41m[m
[32m+[m[32m    <h5><%= txt2%></h5>[m[41m[m
[32m+[m[32m    <p><%= txt3%></p>[m[41m[m
[32m+[m[32m  </div>[m[41m[m
 [m
   <div class="card-panel">[m
       <!--Generar el formulario-->[m
[31m-    [m
     <div class="card-content">[m
 [m
     <% if programa == true then %> <!-- Formulario para los programas -->[m
       <%= form_for(@program) do |f| %>[m
[32m+[m[32m      <div>[m[41m[m
         <%= f.text_field :titulo, placeholder: "Título" %>[m
[31m-        <%= f.text_area :descripcion, placeholder: "Descripcion", style:"height: 100px; max-width: 100%; max-height:150px"%>[m
[32m+[m[32m      </div>[m[41m[m
[32m+[m[41m[m
[32m+[m[32m      <div>[m[41m[m
[32m+[m[32m        <%= f.text_area :descripcion, placeholder: "Descripcion", style:"max-width:100%; height: 100px; max-height:150px;"%>[m[41m[m
[32m+[m[32m      </div>[m[41m[m
         <!--Generar text fields solo si se requieren-->[m
             <%= f.text_field :hora, placeholder: "Hora en la que se transmite" %>[m
             <%= f.text_field :dias, placeholder: "Dias en los que se transmite" %>[m
         <!--Generar text fields solo si se requieren-->[m
[31m-        <%= f.text_field :portada, placeholder: "URL de la portada"%>[m
[32m+[m[41m[m
[32m+[m[32m        <div style="margin-bottom: 3%">[m[41m[m
[32m+[m[32m          <h5>Imagen de portada</h5>[m[41m[m
[32m+[m[41m[m
[32m+[m[32m              <div class="file-field input-field">[m[41m[m
[32m+[m[32m                <div class="btn">[m[41m[m
[32m+[m[32m                  <span>Abrir</span>[m[41m[m
[32m+[m[32m                  <input type="file">[m[41m[m
[32m+[m[32m                  <%= f.file_field :cover, input_html: { hidden: true }%>[m[41m[m
[32m+[m[32m                </div>[m[41m[m
[32m+[m[32m                <div class="file-path-wrapper">[m[41m[m
[32m+[m[32m                  <input class="file-path validate" type="text">[m[41m[m
[32m+[m[32m                </div>[m[41m[m
[32m+[m[32m              </div>[m[41m[m
[32m+[m[41m[m
[32m+[m[32m        </div>[m[41m[m
[32m+[m[41m[m
                 <div>[m
                   <button class="btn">[m
                       Publicar[m
[36m@@ -33,16 +52,37 @@[m
       <% end %>[m
 [m
     <% elsif programa == false then%> <!-- formulario para las publicaciones -->[m
[32m+[m[41m[m
         <%= form_for(@post) do |f| %>[m
[32m+[m[32m        <div>[m[41m[m
           <%= f.text_field :titulo, placeholder: "Título" %>[m
[31m-          <%= f.text_area :descripcion, placeholder: "Descripcion" %>[m
[31m-          <%= f.text_field :portada, placeholder: "URL de la portada"%>[m
[32m+[m[32m        </div>[m[41m[m
[32m+[m[41m[m
[32m+[m[32m        <div>[m[41m[m
[32m+[m[32m          <%= f.text_area :descripcion, placeholder: "Descripcion", style:"max-width:100%; height: 100px; max-height:150px;" %>[m[41m[m
[32m+[m[32m        </div>[m[41m[m
[32m+[m[41m[m
[32m+[m[32m        <div>[m[41m[m
[32m+[m[32m          <h5>Imagen de portada</h5>[m[41m[m
[32m+[m[41m[m
[32m+[m[32m              <div class="file-field input-field">[m[41m[m
[32m+[m[32m                <div class="btn">[m[41m[m
[32m+[m[32m                  <span>Abrir</span>[m[41m[m
[32m+[m[32m                  <input type="file">[m[41m[m
[32m+[m[32m                  <%= f.file_field :cover, input_html: { hidden: true }%>[m[41m[m
[32m+[m[32m                </div>[m[41m[m
[32m+[m[32m                <div class="file-path-wrapper">[m[41m[m
[32m+[m[32m                  <input class="file-path validate" type="text">[m[41m[m
[32m+[m[32m                </div>[m[41m[m
[32m+[m[32m              </div>[m[41m[m
[32m+[m[41m[m
[32m+[m[32m        </div>[m[41m[m
 [m
                 <div>[m
                   <button class="btn">[m
                       Publicar[m
[31m-                    <%f.submit%>          [m
[31m-                  </button>       [m
[32m+[m[32m                    <% f.submit%>[m[41m          [m
[32m+[m[32m                  </button>[m[41m[m
                 </div>[m
         <% end %>[m
 [m
[1mdiff --git a/app/views/layouts/_popup.html.erb b/app/views/layouts/_popup.html.erb[m
[1mindex 18b12cb..c7bbbf1 100644[m
[1m--- a/app/views/layouts/_popup.html.erb[m
[1m+++ b/app/views/layouts/_popup.html.erb[m
[36m@@ -23,7 +23,7 @@[m
       <p>Tenga en cuenta que una vez eliminado : "<%= titulo %>" no se podrá recuperar </p>[m
     </div>[m
     <div class="modal-footer">[m
[31m-        <%= link_to("Si", post_path, method: :delete, class:" modal-action modal-close waves-effect waves-green blue darken-4 btn") %> [m
[32m+[m[32m        <%= link_to("Si", post_path, method: :delete, class:" modal-action modal-close waves-effect waves-green blue darken-4 btn center-xs") %>[m[41m [m
         <%= delete %>[m
     </div>[m
   </div>[m
[1mdiff --git a/app/views/layouts/application.html.erb b/app/views/layouts/application.html.erb[m
[1mindex 3d47110..71c8dd5 100644[m
[1m--- a/app/views/layouts/application.html.erb[m
[1m+++ b/app/views/layouts/application.html.erb[m
[36m@@ -10,12 +10,13 @@[m
       <meta name="viewport" content="width=device-width, initial-scale=1.0"/>[m
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.2/css/materialize.min.css">[m
     </head>[m
[31m-<body>[m
[32m+[m[32m<body class="blue-grey darken-3">[m
[32m+[m
   <nav>[m
     <div class="nav-wrapper blue-grey darken-1">[m
[31m-      <a style="margin-left: 10px" class="brand-logo"> <%= link_to(image_tag('logo.png', width:"85"), root_path , method: :get) %> </a>[m
[32m+[m[32m      <a href="/" class="right brand-logo"> <%= image_tag("logo.png", style:"max-width:75px") %> </a>[m
       <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>[m
[31m-      <ul class="right hide-on-med-and-down">[m
[32m+[m[32m      <ul class="left hide-on-med-and-down">[m
         <li><a href="/programs">Programas</a></li>[m
         <li><a href="/schedules">Horarios</a></li>[m
         <li><a href="/galleries">Galería</a></li>[m
[1mdiff --git a/app/views/posts/_banner.html.erb b/app/views/posts/_banner.html.erb[m
[1mindex 70704fd..6b14c2d 100644[m
[1m--- a/app/views/posts/_banner.html.erb[m
[1m+++ b/app/views/posts/_banner.html.erb[m
[36m@@ -2,7 +2,7 @@[m
     <ul class="slides">[m
       <% @programs.order("created_at desc").limit(7).each do |program|%>       [m
       <li>[m
[31m-        <img src="<%= program.portada %>"> [m
[32m+[m[32m        <img src="<%= program.cover.url() %>">[m[41m [m
         <div class="caption left-align">[m
           <h3> <%= program.titulo %> </h3>[m
           <h5 class="max-line"><%= program.descripcion %> </h5>[m
[1mdiff --git a/app/views/posts/edit.html.erb b/app/views/posts/edit.html.erb[m
[1mindex acb1654..9931ddf 100644[m
[1m--- a/app/views/posts/edit.html.erb[m
[1m+++ b/app/views/posts/edit.html.erb[m
[36m@@ -1 +1 @@[m
[31m-<%= render "/layouts/form",txt1: "Editar banner",txt2: "Datos generales" %>[m
\ No newline at end of file[m
[32m+[m[32m<%= render "/layouts/form",txt1: "Editar banner",txt2: "Datos generales", post: true, programa: false %>[m
\ No newline at end of file[m
[1mdiff --git a/app/views/posts/index.html.erb b/app/views/posts/index.html.erb[m
[1mindex 19cd563..e2b3847 100644[m
[1m--- a/app/views/posts/index.html.erb[m
[1m+++ b/app/views/posts/index.html.erb[m
[36m@@ -1,8 +1,17 @@[m
 <div class="grey lighten-2  container center-xs col-sm-8">[m
[32m+[m
[32m+[m	[32m<% if admin_signed_in? %> <!--Boton para crear post-->[m
[32m+[m		[32m   <div class="fixed-action-btn" style="bottom: 45px; right: 24px;">[m
[32m+[m		[32m    <a href="/posts/new" class="btn-floating btn-large red  waves-effect waves-light">[m
[32m+[m		[32m      <i  class="large material-icons">add</i>[m
[32m+[m		[32m    </a>[m
[32m+[m		[32m  </div>[m
[32m+[m	[32m<% end %> <!--Boton para crear post-->[m
[32m+[m
 		<% @posts.each do |post| %>[m
 			<div class="card">[m
 		            <div class="card-image">[m
[31m-		              <img src= "<%= post.portada %>" >[m
[32m+[m		[32m              <img src= "<%= post.cover.url() %>" >[m
 		              <span class="card-title"> <%= post.titulo %> </span>[m
 		            </div>[m
 		            <div class="card-content">[m
[1mdiff --git a/app/views/posts/new.html.erb b/app/views/posts/new.html.erb[m
[1mindex 11d9a0c..e042f67 100644[m
[1m--- a/app/views/posts/new.html.erb[m
[1m+++ b/app/views/posts/new.html.erb[m
[36m@@ -1,3 +1,3 @@[m
[31m-<%= render "/layouts/form",txt1: "Agrega una nueva Publicación en el banner superior",txt2: "Datos generales", programa: false%>[m
[32m+[m[32m<%= render "/layouts/form",txt1: "Agrega una nueva Publicación",txt2: "Datos generales", txt3: "Nota: Esta Publicación se verá en el banner de la pagina principal y en el Blog", programa: false%>[m
 [m
 [m
[1mdiff --git a/app/views/posts/show.html.erb b/app/views/posts/show.html.erb[m
[1mindex 53dbbd9..8c46d8c 100644[m
[1m--- a/app/views/posts/show.html.erb[m
[1m+++ b/app/views/posts/show.html.erb[m
[36m@@ -1,13 +1,13 @@[m
 [m
  <% link_edit = edit_post_path(@post)%>[m
 [m
[31m-<div class="container-fixed">[m
[31m-		<h2>[m
[32m+[m[32m<div class="grey lighten-2  container center-xs col-sm-8">[m
[32m+[m		[32m<h4>[m
 			 <%= @post.titulo %>[m
[31m-		</h2>[m
[32m+[m		[32m</h4>[m
 [m
[31m-		<%img = @post.portada%>[m
[31m-		<img src="<%= img %>">[m
[32m+[m		[32m<%img = @post.cover.url()%>[m
[32m+[m		[32m<img style="max-width: 100%" src="<%= img %>">[m
 [m
 		<p>[m
 			<%= @post.descripcion %>[m
[36m@@ -30,4 +30,5 @@[m
 [m
 [m
 <% end %>[m
[32m+[m[32m</div>[m
 [m
[1mdiff --git a/app/views/programs/index.html.erb b/app/views/programs/index.html.erb[m
[1mindex 1e9f01d..90deb0f 100644[m
[1m--- a/app/views/programs/index.html.erb[m
[1m+++ b/app/views/programs/index.html.erb[m
[36m@@ -1,21 +1,21 @@[m
 [m
 	 	[m
[31m-<div class="container center-xs col-sm-8 grey lighten-2 ">[m
[31m-<h1>Programas</h1>[m
[32m+[m[32m<div class="container center-xs col-sm-8 ">[m[41m[m
[32m+[m[32m<h3 class="white-text">Programas</h3>[m[41m[m
   <div style="margin-left: 5%; margin-right: 5%">[m
 [m
[31m-	<% if admin_signed_in? %>[m
[31m-   <div class="fixed-action-btn " style="bottom: 45px; right: 24px;">[m
[32m+[m	[32m<% if admin_signed_in? %> <!--Boton para crear post-->[m[41m[m
[32m+[m[32m   <div class="fixed-action-btn" style="bottom: 45px; right: 24px;">[m[41m[m
     <a href="/programs/new" class="btn-floating btn-large red  waves-effect waves-light">[m
       <i  class="large material-icons">add</i>[m
     </a>[m
   </div>[m
[31m-	<% end %>[m
[32m+[m	[32m<% end %> <!--Boton para crear post-->[m[41m[m
 [m
 <% @programs.each do |program| %>	[m
[31m-<%img = program.portada%>[m
[32m+[m[32m<%img = program.cover.url()%>[m[41m[m
 <div>[m
[31m-  <div class="card medium">[m
[32m+[m[32m  <div class="card medium z-depth-2">[m[41m[m
     <div class="card-image waves-effect waves-block waves-light">[m
       <img class="activator" src="<%= img %>">[m
     </div>[m
[36m@@ -34,7 +34,7 @@[m
       <p> <%= program.descripcion %> </p>[m
 [m
     </div>[m
[31m-      <div class="card-action">[m
[32m+[m[32m      <div  style="padding-top: 10px; padding-bottom: 10px;" class="card-action">[m[41m[m
 [m
           <%= link_to "Ver Mas", program, class:"btn "%>[m
       </div>[m
[1mdiff --git a/app/views/programs/show.html.erb b/app/views/programs/show.html.erb[m
[1mindex d580768..0f024e8 100644[m
[1m--- a/app/views/programs/show.html.erb[m
[1m+++ b/app/views/programs/show.html.erb[m
[36m@@ -6,7 +6,7 @@[m
 			 <%= @program.titulo %>[m
 		</h4>[m
 [m
[31m-		<%img = @program.portada%>[m
[32m+[m		[32m<%img = @program.cover.url()%>[m[41m[m
 		<img class="max-img" src="<%= img %>">[m
 [m
 		<p>[m
[1mdiff --git a/app/views/welcome/index.html.erb b/app/views/welcome/index.html.erb[m
[1mindex 1fe4fac..3dffbbc 100644[m
[1m--- a/app/views/welcome/index.html.erb[m
[1m+++ b/app/views/welcome/index.html.erb[m
[36m@@ -14,9 +14,9 @@[m
 [m
 	<% @posts.order("created_at desc").limit(4).each do |post| %>		[m
 [m
[31m-		<div style="margin-left:1%; margin-rigth:1%; max-width:300px" class="card small z-depth-1">[m
[32m+[m		[32m<div style="margin-left:1%; margin-rigth:1%; max-width:320px" class="card small z-depth-1">[m
 			<div class="card-image">[m
[31m-				<%= image_tag(post.portada) %>	[m
[32m+[m				[32m<%= image_tag(post.cover.url()) %>[m[41m	[m
 			</div>[m
 				<span class"card-title"><strong> <%= post.titulo %> </strong></span>	[m
 			<div style="padding-top:5px" class="card-content">[m
[1mdiff --git a/config/database.yml b/config/database.yml[m
[1mindex 1c1a37c..a0b6e31 100644[m
[1m--- a/config/database.yml[m
[1m+++ b/config/database.yml[m
[36m@@ -10,8 +10,14 @@[m [mdefault: &default[m
   timeout: 5000[m
 [m
 development:[m
[31m-  <<: *default[m
[31m-  database: db/development.sqlite3[m
[32m+[m[32m  adapter: mysql2[m
[32m+[m[32m  username: root[m
[32m+[m[32m  password: ljco1800[m
[32m+[m[32m  host: 127.0.0.1[m
[32m+[m[32m  port: 3306[m
[32m+[m[32m  database: vision_web[m
[32m+[m[32m  pool: 5[m
[32m+[m[32m  timeout: 5000[m
 [m
 # Warning: The database defined as "test" will be erased and[m
 # re-generated from your development database when you run "rake".[m
[1mdiff --git a/db/migrate/20151031042058_devise_create_admins.rb b/db/migrate/20151031042058_devise_create_admins.rb[m
[1mdeleted file mode 100644[m
[1mindex 88bdda7..0000000[m
[1m--- a/db/migrate/20151031042058_devise_create_admins.rb[m
[1m+++ /dev/null[m
[36m@@ -1,45 +0,0 @@[m
[31m-class DeviseCreateAdmins < ActiveRecord::Migration[m
[31m-  def change[m
[31m-    create_table(:admins) do |t|[m
[31m-      ## Database authenticatable[m
[31m-      t.string :email,              null: false, default: ""[m
[31m-      t.string :encrypted_password, null: false, default: ""[m
[31m-[m
[31m-      ## Recoverable[m
[31m-      t.string   :reset_password_token[m
[31m-      t.datetime :reset_password_sent_at[m
[31m-[m
[31m-      ## Rememberable[m
[31m-      t.datetime :remember_created_at[m
[31m-[m
[31m-      ## Trackable[m
[31m-      t.integer  :sign_in_count, default: 0, null: false[m
[31m-      t.datetime :current_sign_in_at[m
[31m-      t.datetime :last_sign_in_at[m
[31m-      t.string   :current_sign_in_ip[m
[31m-      t.string   :last_sign_in_ip[m
[31m-[m
[31m-      ## Confirmable[m
[31m-      # t.string   :confirmation_token[m
[31m-      # t.datetime :confirmed_at[m
[31m-      # t.datetime :confirmation_sent_at[m
[31m-      # t.string   :unconfirmed_email # Only if using reconfirmable[m
[31m-[m
[31m-      ## Lockable[m
[31m-      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts[m
[31m-      # t.string   :unlock_token # Only if unlock strategy is :email or :both[m
[31m-      # t.datetime :locked_at[m
[31m-[m
[31m-[m
[31m-      t.timestamps null: false[m
[31m-    end[m
[31m-[m
[31m-    add_index :admins, :email,                unique: true[m
[31m-    add_index :admins, :reset_password_token, unique: true[m
[31m-    # add_index :admins, :confirmation_token,   unique: true[m
[31m-    # add_index :admins, :unlock_token,         unique: true[m
[31m-[m
[31m-    t.string :name[m
[31m-    t.string :permission_level[m
[31m-  end[m
[31m-end[m
[1mdiff --git a/db/migrate/20151031164031_articles_create.rb b/db/migrate/20151031164031_articles_create.rb[m
[1mdeleted file mode 100644[m
[1mindex 1d08b35..0000000[m
[1m--- a/db/migrate/20151031164031_articles_create.rb[m
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-class ArticlesCreate < ActiveRecord::Migration[m
[31m-  def change[m
[31m-  end[m
[31m-end[m
[1mdiff --git a/db/migrate/20151103044903_add_name_to_admins.rb b/db/migrate/20151103044903_add_name_to_admins.rb[m
[1mdeleted file mode 100644[m
[1mindex 9381194..0000000[m
[1m--- a/db/migrate/20151103044903_add_name_to_admins.rb[m
[1m+++ /dev/null[m
[36m@@ -1,6 +0,0 @@[m
[31m-class AddNameToAdmins < ActiveRecord::Migration[m
[31m-  def change[m
[31m-    add_column :admins, :name, :string[m
[31m-    add_column :admins, :permission_level, :string[m
[31m-  end[m
[31m-end[m
[1mdiff --git a/db/migrate/20151107002428_messges_create.rb b/db/migrate/20151107002428_messges_create.rb[m
[1mdeleted file mode 100644[m
[1mindex e552af9..0000000[m
[1m--- a/db/migrate/20151107002428_messges_create.rb[m
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-class MessgesCreate < ActiveRecord::Migration[m
[31m-  def change[m
[31m-  end[m
[31m-end[m
[1mdiff --git a/db/migrate/20151107052347_create_posts.rb b/db/migrate/20151107052347_create_posts.rb[m
[1mdeleted file mode 100644[m
[1mindex 6cb390d..0000000[m
[1m--- a/db/migrate/20151107052347_create_posts.rb[m
[1m+++ /dev/null[m
[36m@@ -1,11 +0,0 @@[m
[31m-class CreatePosts < ActiveRecord::Migration[m
[31m-  def change[m
[31m-    create_table :posts do |t|[m
[31m-      t.string :titulo[m
[31m-      t.string :descripcion[m
[31m-      t.string :portada[m
[31m-[m
[31m-      t.timestamps[m
[31m-    end[m
[31m-  end[m
[31m-end[m
[1mdiff --git a/db/migrate/20151112164739_add_created_at_to_programs.rb b/db/migrate/20151112164739_add_created_at_to_programs.rb[m
[1mdeleted file mode 100644[m
[1mindex a85d90a..0000000[m
[1m--- a/db/migrate/20151112164739_add_created_at_to_programs.rb[m
[1m+++ /dev/null[m
[36m@@ -1,5 +0,0 @@[m
[31m-class AddCreatedAtToPrograms < ActiveRecord::Migration[m
[31m-  def change[m
[31m-    add_column :programs, :created_at, :datetime[m
[31m-  end[m
[31m-end[m
[1mdiff --git a/db/migrate/20151112164906_add_updated_at_to_programs.rb b/db/migrate/20151112164906_add_updated_at_to_programs.rb[m
[1mdeleted file mode 100644[m
[1mindex a48f0c6..0000000[m
[1m--- a/db/migrate/20151112164906_add_updated_at_to_programs.rb[m
[1m+++ /dev/null[m
[36m@@ -1,5 +0,0 @@[m
[31m-class AddUpdatedAtToPrograms < ActiveRecord::Migration[m
[31m-  def change[m
[31m-    add_column :programs, :updated_at, :datetime[m
[31m-  end[m
[31m-end[m
[1mdiff --git a/db/migrate/20151112200717_add_body_to_posts.rb b/db/migrate/20151112200717_add_body_to_posts.rb[m
[1mdeleted file mode 100644[m
[1mindex eac983f..0000000[m
[1m--- a/db/migrate/20151112200717_add_body_to_posts.rb[m
[1m+++ /dev/null[m
[36m@@ -1,5 +0,0 @@[m
[31m-class AddBodyToPosts < ActiveRecord::Migration[m
[31m-  def change[m
[31m-    add_column :posts, :body, :text[m
[31m-  end[m
[31m-end[m
[1mdiff --git a/db/migrate/20151113154438_add_admin_id_to_posts.rb b/db/migrate/20151113154438_add_admin_id_to_posts.rb[m
[1mdeleted file mode 100644[m
[1mindex 471d667..0000000[m
[1m--- a/db/migrate/20151113154438_add_admin_id_to_posts.rb[m
[1m+++ /dev/null[m
[36m@@ -1,5 +0,0 @@[m
[31m-class AddAdminIdToPosts < ActiveRecord::Migration[m
[31m-  def change[m
[31m-    add_reference :posts, :admin, index: true[m
[31m-  end[m
[31m-end[m
[1mdiff --git a/db/schema.rb b/db/schema.rb[m
[1mindex 808f0f9..bddfcf4 100644[m
[1m--- a/db/schema.rb[m
[1m+++ b/db/schema.rb[m
[36m@@ -11,48 +11,52 @@[m
 #[m
 # It's strongly recommended that you check this file into your version control system.[m
 [m
[31m-ActiveRecord::Schema.define(version: 20151113154438) do[m
[32m+[m[32mActiveRecord::Schema.define(version: 20151121042236) do[m
 [m
[31m-  create_table "admins", force: true do |t|[m
[31m-    t.string   "email",                  default: "", null: false[m
[31m-    t.string   "encrypted_password",     default: "", null: false[m
[31m-    t.string   "reset_password_token"[m
[32m+[m[32m  create_table "admins", force: :cascade do |t|[m
[32m+[m[32m    t.string   "email",                  limit: 255, default: "", null: false[m
[32m+[m[32m    t.string   "encrypted_password",     limit: 255, default: "", null: false[m
[32m+[m[32m    t.string   "reset_password_token",   limit: 255[m
     t.datetime "reset_password_sent_at"[m
     t.datetime "remember_created_at"[m
[31m-    t.integer  "sign_in_count",          default: 0,  null: false[m
[32m+[m[32m    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false[m
     t.datetime "current_sign_in_at"[m
     t.datetime "last_sign_in_at"[m
[31m-    t.string   "current_sign_in_ip"[m
[31m-    t.string   "last_sign_in_ip"[m
[31m-    t.datetime "created_at",                          null: false[m
[31m-    t.datetime "updated_at",                          null: false[m
[31m-    t.string   "name"[m
[31m-    t.string   "permission_level"[m
[32m+[m[32m    t.string   "current_sign_in_ip",     limit: 255[m
[32m+[m[32m    t.string   "last_sign_in_ip",        limit: 255[m
[32m+[m[32m    t.datetime "created_at",                                      null: false[m
[32m+[m[32m    t.datetime "updated_at",                                      null: false[m
   end[m
 [m
[31m-  add_index "admins", ["email"], name: "index_admins_on_email", unique: true[m
[31m-  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true[m
[32m+[m[32m  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree[m
[32m+[m[32m  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree[m
 [m
[31m-  create_table "posts", force: true do |t|[m
[31m-    t.string   "titulo"[m
[31m-    t.string   "descripcion"[m
[31m-    t.string   "portada"[m
[32m+[m[32m  create_table "posts", force: :cascade do |t|[m
[32m+[m[32m    t.string   "titulo",             limit: 255[m
[32m+[m[32m    t.text     "descripcion",        limit: 65535[m
     t.datetime "created_at"[m
     t.datetime "updated_at"[m
[31m-    t.text     "body"[m
[31m-    t.integer  "admin_id"[m
[32m+[m[32m    t.text     "body",               limit: 65535[m
[32m+[m[32m    t.integer  "admin_id",           limit: 4[m
[32m+[m[32m    t.string   "cover_file_name",    limit: 255[m
[32m+[m[32m    t.string   "cover_content_type", limit: 255[m
[32m+[m[32m    t.integer  "cover_file_size",    limit: 4[m
[32m+[m[32m    t.datetime "cover_updated_at"[m
   end[m
 [m
[31m-  add_index "posts", ["admin_id"], name: "index_posts_on_admin_id"[m
[31m-[m
[31m-  create_table "programs", force: true do |t|[m
[31m-    t.string   "titulo"[m
[31m-    t.text     "descripcion"[m
[31m-    t.string   "dias"[m
[31m-    t.string   "hora"[m
[31m-    t.string   "portada"[m
[32m+[m[32m  create_table "programs", force: :cascade do |t|[m
[32m+[m[32m    t.string   "titulo",             limit: 255[m
[32m+[m[32m    t.text     "descripcion",        limit: 65535[m
[32m+[m[32m    t.text     "body",               limit: 65535[m
[32m+[m[32m    t.integer  "admin_id",           limit: 4[m
     t.datetime "created_at"[m
     t.datetime "updated_at"[m
[32m+[m[32m    t.string   "cover_file_name",    limit: 255[m
[32m+[m[32m    t.string   "cover_content_type", limit: 255[m
[32m+[m[32m    t.integer  "cover_file_size",    limit: 4[m
[32m+[m[32m    t.datetime "cover_updated_at"[m
[32m+[m[32m    t.string   "dias",               limit: 255[m
[32m+[m[32m    t.string   "hora",               limit: 255[m
   end[m
 [m
 end[m
