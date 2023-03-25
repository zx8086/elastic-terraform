provider "elasticstack" {
  elasticsearch {
    api_key  = "TzZMNkQ0WUJQY2x5X2NfdmdwOHQ6V0c3ZGlfY1FUREtlOUx0eFlNelJ2UQ=="
    endpoints = ["https://elastic-europe.pvhcorp.com"]
  }
}

resource "elasticstack_elasticsearch_security_role_mapping" "developer" {
  name    = "developer"
  enabled = true
  roles = [
    "developer",
    "monitoring_user"
  ]
  rules = jsonencode({
    any = [
      # { field = { groups = "cn=admins,dc=example,dc=com" } },
      { field = { username = "pvhcorp\\sowusu" } },
      { field = { username = "pvhcorp\\aivkov" } },
      { field = { username = "pvhcorp\\dbiser" } },
      { field = { username = "pvhcorp\\agarci89" } },
      { field = { username = "pvhcorp\\nranga" } },
      { field = { username = "pvhcorp\\vkneze" } },
      { field = { username = "pvhcorp\\bperic" } },
      { field = { username = "pvhcorp\\drpopi" } },
      { field = { username = "pvhcorp\\mgrozd" } },
      { field = { username = "pvhcorp\\dvukan" } },
      { field = { username = "pvhcorp\\mracko" } },
      { field = { username = "pvhcorp\\nskriv" } },
      { field = { username = "pvhcorp\\mmilos" } },
      { field = { username = "pvhcorp\\mradov" } },
      { field = { username = "pvhcorp\\mamand" } },
      { field = { username = "pvhcorp\\aivkov" } },
      { field = { username = "pvhcorp\\vunova" } },
      { field = { username = "pvhcorp\\jmilos" } },
      { field = { username = "pvhcorp\\dculib" } },
      { field = { username = "pvhcorp\\jmilev" } },
      { field = { username = "pvhcorp\\bpuska" } },
      { field = { username = "pvhcorp\\lmagal" } },
      { field = { username = "pvhcorp\\aattar" } },
      { field = { username = "pvhcorp\\dzlata" } },
      { field = { username = "pvhcorp\\dveenm" } },
      { field = { username = "pvhcorp\\jbrass" } },
      { field = { username = "pvhcorp\\ugmizi" } },
      { field = { username = "pvhcorp\\forelj" } },
      { field = { username = "pvhcorp\\asfran" } },
      { field = { username = "pvhcorp\\hbronj" } },
      { field = { username = "pvhcorp\\a-tlazic" } },
      { field = { username = "pvhcorp\\tradem" } },
      { field = { username = "pvhcorp\\sbazel" } },
      { field = { username = "pvhcorp\\ocimen" } },
      { field = { username = "pvhcorp\\rkreso" } },
      { field = { username = "pvhcorp\\tgogic" } },
      { field = { username = "pvhcorp\\aozmen1" } },
      { field = { username = "pvhcorp\\ajoksi" } },
      { field = { username = "pvhcorp\\dkasal" } },
      { field = { username = "pvhcorp\\ugmizi" } },
      { field = { username = "pvhcorp\\narsen" } },
      { field = { username = "pvhcorp\\vlasic" } },
      { field = { username = "pvhcorp\\dskilj" } },
      { field = { username = "pvhcorp\\iarsen" } },
      { field = { username = "pvhcorp\\mkajga" } },
      { field = { username = "pvhcorp\\dkrsto" } },
      { field = { username = "pvhcorp\\zeurba" } },
      { field = { username = "pvhcorp\\ddjord" } },
      { field = { username = "pvhcorp\\nretna" } },
      { field = { username = "pvhcorp\\mmarco1" } },
      { field = { username = "pvhcorp\\ttosic" } },
      { field = { username = "pvhcorp\\rpenma" } },
      { field = { username = "pvhcorp\\aberdn" } },
      { field = { username = "pvhcorp\\presen1" } },
      { field = { username = "pvhcorp\\vvajda" } },
      { field = { username = "pvhcorp\\cdossa" } },
      { field = { username = "pvhcorp\\mecopu" } },
      { field = { username = "pvhcorp\\alstef" } },
      { field = { username = "pvhcorp\\mbican" } },
      { field = { username = "pvhcorp\\dcacic" } },
      { field = { username = "pvhcorp\\nkovac" } },
      { field = { username = "pvhcorp\\mrajic" } },
      { field = { username = "pvhcorp\\drmomci" } },
      { field = { username = "pvhcorp\\uvesic" } },
      { field = { username = "pvhcorp\\drmihai" } },
      { field = { username = "pvhcorp\\dbiser" } },
      { field = { username = "pvhcorp\\nglado" } },
      { field = { username = "pvhcorp\\rschul2" } },
      { field = { username = "pvhcorp\\ajandr" } },
      { field = { username = "pvhcorp\\mmilos" } },
      { field = { username = "pvhcorp\\dstoja" } },
      { field = { username = "pvhcorp\\jmacki" } },
      { field = { username = "pvhcorp\\tcorko" } },
      { field = { username = "pvhcorp\\tmacki" } },
      { field = { username = "pvhcorp\\c-jsteva" } },
      { field = { username = "pvhcorp\\mastan" } }
    ]
  })
}

output "role" {
  value = elasticstack_elasticsearch_security_role_mapping.developer.name
}
