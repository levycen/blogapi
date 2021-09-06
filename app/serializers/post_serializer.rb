# Especificamos los atributos en los que estamos interesados que se incluyan en la serialización

class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :published, :author     #este author es el método definido abajo "def author"

  def author
    user = self.object.user # hace referencia al objeto Post  que está siendo serializado
    {
      name: user.name,
      email: user.email,
      id: user.id
    }
  end
end
