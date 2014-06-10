class Ability
  include CanCan::Ability
  def initalize usuario
    if usuario && usuario.admin?
      can :manage, :all
      can :dashboard
    elsif usuario
      can :read, :all
    end
  end
end