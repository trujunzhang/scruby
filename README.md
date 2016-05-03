rails generate scaffold itunes guid updateAt name url thumbnail appLastUpdated developer website ofReviews ofReviewsCurrent starts startsCurrent version

rails generate scaffold googleplay url cluster category price thumbnail title reviewsNum datePublished website email address

rails generate scaffold job guid title jobtype url customer description linkto startdate enddate price status ceatedat updatedat

rails generate scaffold socialmedia facebook twitter google linkedin ofFacebookLikes	 

rails generate scaffold proposal job-id content created-at updated-at	 
    
* rake secret
* Once these are added, run bundle --binstubs and then cap install STAGES=production to generate your capistrano configuration.
* cap production deploy