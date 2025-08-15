ibrary(bnlearn)


net_h2pc <- h2pc(data)

viewer(net_h2pc,
       bayesianNetwork.width = "100%",
       bayesianNetwork.height = "80vh",
       bayesianNetwork.layout = "layout_with_sugiyama",
       bayesianNetwork.title="Discrete Bayesian Network - ",
       bayesianNetwork.subtitle = "Monitoring of emergency care patients",
       bayesianNetwork.footer = "Fig. 1 - Layout with Sugiyama")

)


net_h2pc_verbose <- h2pc(data, debug = TRUE)


graphviz.plot(net_h2pc)


fitted_net <- bn.fit(net_h2pc, data)


cpquery(fitted_net, event = (target == "1"), evidence = (age > 50))

