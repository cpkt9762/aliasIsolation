-- Qt-specific environment additions

module(..., package.seeall)

function apply(env, options)
  env:set_many {
    ["QTMOC"] = "moc",
    ["QTMOCOPTS"] = "",
    ["QTMOCCMD"] = "$(QTMOC) $(QTMOCOPTS) $(CPPPATH:P-I) -o $(@) $(<)",
  }
end

