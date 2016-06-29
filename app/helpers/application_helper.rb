module ApplicationHelper
 
 def profile_img_mn(user)
    if user_signed_in?
      if user.avatar?
        img_url = user.avatar.thumb_mn.url
      else
        img_url="/assets/sample-64x64.png"
      end
      image_tag(img_url, alt: user.name, width: "33", height: "33")
    else
      "dropdown"
    end
  end
  
 def profile_img_sm(user)
    if user_signed_in?
      if user.avatar?
        img_url = user.avatar.thumb_sm.url
      else
        img_url="/assets/sample-64x64.png"
      end
      image_tag(img_url, alt: user.name)
    end
  end
  
 def profile_img_bg(user)
    if user_signed_in?
      if user.avatar?
        img_url = user.avatar.thumb_bg.url
      else
        img_url="/assets/sample-64x64.png"
      end
      image_tag(img_url, alt: user.name)
    end
  end
  
end
