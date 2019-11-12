class Item < ApplicationRecord
  belongs_to :user
  mount_uploader :main_picture, PhotoUploader
  mount_uploader :second_picture, PhotoUploader
  mount_uploader :third_picture, PhotoUploader

  CATEGORIES = ["Occasions habillées", "Grossesse", "Sport", "Déguisements", "Voyages", "Tous les jours"].freeze
  TYPES = ["Robes", "Jupes", "Hauts et T-shirts", "Pantalon", "Chaussures", "Pulls et sweats"]
  GENDERS = ["Femme", "Homme", "Enfant", "Pour tout le monde"]
  COLORS = ["Noir", "Gris", "Blanc", "Rouge", "Rose", "Bleu", "Vert", "Jaune", "Orange", "Violet", "Multicolor"]
  SIZES = ["XXS/32", "XS/34", "S/36", "M/38", "L/40", "XL/42", "XXL/44 et +"]
  ACCESSIBILITIES = ["Mes ami(e)s uniquement", "Mes ami(e)s et leurs ami(e)s", "Tout le monde"]
  EXCHANGES = ["d'un sourire", "d'un poème", "d'un diner", "d'une soirée babysitting"]
  CAUTIONS = ["Non", "Oui, 10€", "Oui, 20€", "Oui, 30€"]
end
