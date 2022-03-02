# Container that builds and runs the WARio benchmarks used in the paper
#   * Builds the benchmarks using WARio and runs them using ICEmu (in one script)
#   * Analyze the results and generate the figures and tables in the paper

FROM wario-compiler

ARG DEBIAN_FRONTEND=noninteractive

# Change the working directory
WORKDIR /root

# Build and run the benchmarks (can take a long time)
RUN ["/bin/bash", "-c", "source $HOME/.env && cd $HOME/WARio/benchmarks && ./build-run.sh"]

# Plot the results.
# This will install Jupyter Notebook and LaTeX which take quite a bit of space
# Only run this if you want to regenerate the figures and tables in the paper
RUN apt-get install -y texlive-latex-extra fonts-linuxlibertine \
    python3-tabulate python3-pip cm-super dvipng

RUN pip install jupyterlab==3.2.9

# Generate the figures and tables as seen in the paper
RUN ["/bin/bash", "-c", "source $HOME/.env && cd $HOME/WARio/plotting && ./build.sh"]
