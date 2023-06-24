# should be in ~/.ipython/profile_default/startup/

try:
    import arviz as az
    az.style.use("arviz-darkgrid")
    del az
except ImportError:
    pass