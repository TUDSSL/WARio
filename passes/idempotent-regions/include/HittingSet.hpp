#pragma once

#include "IdempotentRegion.hpp"

class HittingSet {
 private:
   IdempotentRegion::CutsTy Cuts;

 public:
   IdempotentRegion::CutsTy &run(IdempotentRegion::IdempotentPathsTy &IdempotentPaths);
};
