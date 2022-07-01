resource "local_file" "identity" {
    filename = "${path.module}/data/identity.txt"
    content = "${random_string.randomCiv.result} ${random_string.randomName.result} ${random_string.randomFirstName.result} has ${random_string.randomExp.result} ${var.person.experience[1]} of experience in ${random_string.randomDomainName.result}."
}

resource "random_string" "randomName" {
    length              = 8
    min_lower           = 3
    special             = true
    numeric             = false
    override_special    = "-' "
}

resource "random_string" "randomFirstName" {
    length              = 8
    min_lower           = 3
    special             = true
    numeric             = false
    override_special    = "-' "
}

resource "random_string" "randomDomainName" {
    length              = 8
    min_lower           = 7
    numeric             = false
}

resource "random_string" "randomCiv" {
    length              = 3
    min_upper           = 1
    min_lower           = 2
    special             = false
    numeric             = false
}

resource "random_string" "randomExp" {
    length              = 2
    min_numeric         = 2
    special             = false
}