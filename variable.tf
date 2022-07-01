variable "name" {
    default     = "chillo"
    type        = string
    description = "Nom de l'utilisateur"
}

variable "person" {
    description = "user profil as an object"
    type = object({
        civ = string
        name = string
        firstname = string
        experience = tuple([number,string])
        domain = string
    })
      default = {
        civ = "Ms"
        name = "Green"
        firstname = "Emily"
        experience = [3,"months"]
        domain = "IT"
    }
}