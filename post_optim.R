param_optim = optim(c(1,0,1,1,1,0,1,1), function(x) mae(x[1]*((train$xgb)*x[4]+x[2])^x[3] +
                                                          x[5]*((train$keras)*x[8]+x[6])^x[7],train$loss)
                    , control=list(trace=3,reltol=1e-15,maxit=1e6))

param_optim = optim(c(param_optim$par,0,0,0,0), function(x) mae(x[1]*((train$xgb)*x[4]+x[2])^x[3] +
                                                                  x[5]*((train$keras)*x[8]+x[6])^x[7] +
                                                                  x[9]*((train$keras2)*x[12]+x[10])^x[11],train$loss)
                    , control=list(trace=3,reltol=1e-15,maxit=1e6))


param_optim = optim(c(param_optim$par,0,0,0,0), function(x) mae(x[1]*((train$xgb)*x[4]+x[2])^x[3] +
                                                                  x[5]*((train$keras)*x[8]+x[6])^x[7] +
                                                                  x[9]*((train$keras2)*x[12]+x[10])^x[11] +
                                                                  x[13]*((train$xgb2)*x[16]+x[14])^x[15],train$loss)
                    , control=list(trace=3,reltol=1e-15,maxit=1e6))



param_optim = optim(c(param_optim$par,0,0,0,0), function(x) mae(x[1]*((train$xgb)*x[4]+x[2])^x[3]+
                                                                  x[5]*((train$keras)*x[8]+x[6])^x[7]+
                                                                  x[9]*((train$keras2)*x[12]+x[10])^x[11]+
                                                                  x[13]*((train$xgb2)*x[16]+x[14])^x[15]+
                                                                  x[17]*((train$keras3)*x[20]+x[18])^x[19],train$loss)
                    , control=list(trace=3,reltol=1e-15,maxit=1e6))


param_optim = optim(c(param_optim$par,0,0,0,0), function(x) mae(x[1]*((train$xgb)*x[4]+x[2])^x[3]+
                                                                  x[5]*((train$keras)*x[8]+x[6])^x[7]+
                                                                  x[9]*((train$keras2)*x[12]+x[10])^x[11]+
                                                                  x[13]*((train$xgb2)*x[16]+x[14])^x[15]+
                                                                  x[17]*((train$keras3)*x[20]+x[18])^x[19]+
                                                                  x[21]*((train$xgb3)*x[24]+x[22])^x[23],train$loss)
                    , control=list(trace=3,reltol=1e-15,maxit=1e6))