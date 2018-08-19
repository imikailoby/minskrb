module Admin
  class EventMediaPartnersController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # you can overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = EventMediaPartner.
    #     page(params[:page]).
    #     per(10)
    # end

    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   EventMediaPartner.find_by!(slug: param)
    # end

    # See https://administrate-prototype.herokuapp.com/customizing_controller_actions
    # for more information

    def remove_logo
      partner = EventMediaPartner.find(params[:event_media_partner_id])
      partner.logo.purge
      redirect_back(fallback_location: admin_root_path)
    end
  end
end
