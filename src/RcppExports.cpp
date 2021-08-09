// Generated by using Rcpp::compileAttributes() -> do not edit by hand
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <RcppArmadillo.h>
#include <Rcpp.h>

using namespace Rcpp;

#ifdef RCPP_USE_GLOBAL_ROSTREAM
Rcpp::Rostream<true>&  Rcpp::Rcout = Rcpp::Rcpp_cout_get();
Rcpp::Rostream<false>& Rcpp::Rcerr = Rcpp::Rcpp_cerr_get();
#endif

// cxx_mean
List cxx_mean(const arma::cube& x1, const arma::cube& x2, const LogicalMatrix& flag);
RcppExport SEXP _PLFD_cxx_mean(SEXP x1SEXP, SEXP x2SEXP, SEXP flagSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< const arma::cube& >::type x1(x1SEXP);
    Rcpp::traits::input_parameter< const arma::cube& >::type x2(x2SEXP);
    Rcpp::traits::input_parameter< const LogicalMatrix& >::type flag(flagSEXP);
    rcpp_result_gen = Rcpp::wrap(cxx_mean(x1, x2, flag));
    return rcpp_result_gen;
END_RCPP
}
// cxx_prec
List cxx_prec(arma::cube x1, arma::cube x2, LogicalMatrix flag);
RcppExport SEXP _PLFD_cxx_prec(SEXP x1SEXP, SEXP x2SEXP, SEXP flagSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< arma::cube >::type x1(x1SEXP);
    Rcpp::traits::input_parameter< arma::cube >::type x2(x2SEXP);
    Rcpp::traits::input_parameter< LogicalMatrix >::type flag(flagSEXP);
    rcpp_result_gen = Rcpp::wrap(cxx_prec(x1, x2, flag));
    return rcpp_result_gen;
END_RCPP
}

static const R_CallMethodDef CallEntries[] = {
    {"_PLFD_cxx_mean", (DL_FUNC) &_PLFD_cxx_mean, 3},
    {"_PLFD_cxx_prec", (DL_FUNC) &_PLFD_cxx_prec, 3},
    {NULL, NULL, 0}
};

RcppExport void R_init_PLFD(DllInfo *dll) {
    R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}