rails generate scaffold itunes guid updateAt name url thumbnail appLastUpdated developer website ofReviews ofReviewsCurrent starts startsCurrent version

rails generate scaffold googleplay url cluster category price thumbnail title reviewsNum datePublished website email address

rails generate scaffold job guid title jobtype url customer description linkto startdate enddate price status 

rails generate scaffold socialmedia facebook twitter google linkedin ofFacebookLikes	 

rails generate scaffold proposal jobid content 

rails generate scaffold vpn name vpnid  	
 
rails generate scaffold dealsdirectcategory title href data_category_id data_cid
         
rails generate scaffold dealsdirectnavbar sub1 sub2 sub3 
    
rails generate scaffold dealsdirect sub1 sub2 sub3 url guid brand title new_price label_price rrp_text thumbnail             
    
    
## Task
rails g task vpns auto_connection

whenever --update-crontab
    
* rake secret
* Once these are added, run bundle --binstubs and then cap install STAGES=production to generate your capistrano configuration.
* cap production deploy