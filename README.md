rails generate scaffold itunes guid updateAt name url thumbnail appLastUpdated developer website ofReviews ofReviewsCurrent starts startsCurrent version

rails generate scaffold googleplay url cluster category price thumbnail title reviewsNum datePublished website email address

rails generate scaffold job guid title jobtype url customer description linkto startdate enddate price status 

rails generate scaffold socialmedia facebook twitter google linkedin ofFacebookLikes	 

rails generate scaffold proposal jobid content 

rails generate scaffold vpn name vpnid  	
 
rails generate scaffold dealsdirectcategory title href data_category_id data_cid
         
rails generate scaffold dealsdirectnavbar sub1 sub2 sub3 
    
rails generate scaffold dealsdirect sub1 sub2 sub3 url guid brand title new_price label_price rrp_text thumbnail             

rails generate scaffold crawler title crawler_name domain 
rails generate scaffold task title crawler_id commander
rails generate scaffold scheduler title crawler_id task_id commander

rails generate scaffold Cat title description
rails generate scaffold type cat_id title key value description 

rails generate scaffold realtor href guid images address price listing_id property_type land_size built_in Info_name Info_phone Info_email description            
    
## Task
rails g task vpns auto_connection

whenever --update-crontab
    
* rake secret
* Once these are added, run bundle --binstubs and then cap install STAGES=production to generate your capistrano configuration.
* cap production deploy