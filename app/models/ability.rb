class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
      user ||= User.new # guest user (not logged in)
      if user.rol=='admin'
        can :manage, :all
      elsif user.rol =='odontologo'
          alias_action :create, :read, :to => :cru
          can :read, Patient
          can :update , Patient
          can :destroy , Patient
          can :read,Treatment
          can :cru , Procedure
          can :create , Procedure
          can :read , Procedure
          can :update , Procedure do |procedure|
            procedure.try(:user) == user
            end
      
      elsif user.rol =='secretaria'
          alias_action :create, :read,:update, :to => :cru
          can :cru , Patient
          can :manage,Patient
          can :read,Treatment
          can :read,Procedure
        end 
    #  can :read, :all
    #  if 
    # The first argument to `can` is the action you are giving the user 
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. 
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
