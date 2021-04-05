FROM icepack/firedrake-python3.8:0.5.1

RUN pip3 install jupyter jupyterlab tqdm
RUN rm -rf gmsh-4.5.6* firedrake-install* install-options package-branches
RUN for demo_name in 00-divergence-theorem 01-heat-equation 02-heat-equation-multiphase 03-heat-equation-convection 04-mantle-convection; do \
        curl -O https://raw.githubusercontent.com/danshapero/seths-class-2021-03-30/master/$demo_name.ipynb; \
    done
