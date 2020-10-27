module AccountsHelper

    def profile_picture account, width = 100
        image_path = account.image.present? ? account.image.thumb.url : "default.jpg"
        image_tag(image_path, width: width, class: "img-circle  m-r-10")
    end

    def profile_pic account, width = 100
        image_path = account.image.present? ? account.image.prof.url : "default.jpg"
        image_tag(image_path, width: width, class: "img-circle img-prof  m-r-10")
    end

    def profile_pi account, width = 100, height = 100
        image_path = account.image.present? ? account.image.prof.url : "default.jpg"
        image_tag(image_path, width: width, height: height, class: "img-circle img-pro m-r-10")
    end
    def profile_p account, width = 80, height = 80
        image_path = account.image.present? ? account.image.prof.url : "default.jpg"
        image_tag(image_path, width: width, height: height, class: "img-circle img-pro float-left m-r-15")
    end

    def profile_pict account, width = 40, height = 40
        image_path = account.image.present? ? account.image.prof.url : "default.jpg"
        image_tag(image_path, width: width, height: height, class: "img-circle img-p float-left m-r-15")
    end

    def can_edit_profile? profile_id
        account_signed_in? && current_account.id == profile_id
    end
end
