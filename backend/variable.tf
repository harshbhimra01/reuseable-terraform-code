variable "config" {
  type = object({
    rg         = string
    l          = string
    st         = string
    ac-tier    = string
    ac-rep     = string
    cn         = string
    con-access = string
  })
  default = {
    rg         = "rg-resources"
    l          = "West Europe"
    st         = "sonirekhachahatshivam"
    ac-tier    = "Standard"
    ac-rep     = "LRS"
    cn         = "vhds"
    con-access = "private"
  }
}