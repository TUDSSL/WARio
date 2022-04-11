# WARio: Efficient Code Generation for Intermittent Computing

## Background
This is the official public repository for a compiler-support runtime for **intermittently-powered** platforms called WARio. WARio has been presented first in the following publication.

```
@article{kortbeek:pldi:2022:wario,
  author = {Kortbeek, Vito and Ghosh, Souradip and Hester, Josiah and Campanoni, Simone and Pawe\l{}czak, Przemys\l{}aw},
  title = {WARio: Efficient Code Generation for Intermittent Computing},
  journal = {Proc. ACM Conference on Programming Language Design and Implementation},
  year = {2022},
  month = jun,
  volume = {},
  number = {},
  articleno = {},
  numpages = {},
  publisher = {Association for Computing Machinery},
  address = {New York, NY, USA},
  url = {https://doi.org/10.1145/3519939.3523454}
}
```

## What is WARio
Intermittently-operating embedded computing platforms powered by energy harvesting require software frameworks to protect from errors caused by Write After Read (WAR) dependencies. A powerful method of code protection for systems with non-volatile main memory utilizes compiler analysis to insert a checkpoint inside each WAR violation in the code. However, such software frameworks are oblivious to the code structure—and therefore, inefficient—when many consecutive WAR violations exist. Our insight is that by transforming the input code, i.e., moving individual write operations from unique WARs close to each other, we can significantly reduce the number of checkpoints. This idea is the foundation for WARio: a set of compiler transformations for efficient code generation for intermittent computing. WARio, on average, reduces checkpoint overhead by 58% and up to 88% compared to the state of the art across various benchmarks.

## Using WARio
The easiest way to start using WARio is through Docker containers.
The **[artifact README](artifact/WARio-PLDI-2022-artifact/README.md)** associated with this repository goes through all steps needed to both evaluate and use WARio. Prebuilt Docker images are availible in the [Zenodo artifact](https://zenodo.org/record/6413018).
