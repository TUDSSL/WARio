#include "printf.h"
#include <stdlib.h>
#include "input.h"

#define NUM_NODES                          100
#define NONE                               9999

struct _NODE
{
  int iDist;
  int iPrev;
};
typedef struct _NODE NODE;

struct _QITEM
{
  int iNode;
  int iDist;
  int iPrev;
  struct _QITEM *qNext;
  char is_allocated;
};
typedef struct _QITEM QITEM;

// Custom block allocator because we don't have malloc
QITEM allocated[500];

void *customBlockAlloc(size_t size)
{
    (void)size;

    for (size_t i=0; i<sizeof(allocated)/sizeof(QITEM); i++) {
        if (allocated[i].is_allocated == 0) {
            allocated[i].is_allocated = 1;
            return &allocated[i];
        }
    }
    return NULL;
}

void customBlockFree(QITEM *block_ptr)
{
    block_ptr->is_allocated = 0;
}

#define malloc  customBlockAlloc
#define free    customBlockFree

QITEM *qHead = NULL;

int g_qCount = 0;
NODE rgnNodes[NUM_NODES];
int ch;
int iPrev, iNode;
int i, iCost, iDist;


void print_path (NODE *rgnNodes, int chNode)
{
  if (rgnNodes[chNode].iPrev != NONE)
    {
      print_path(rgnNodes, rgnNodes[chNode].iPrev);
    }
  printf (" %d", chNode);
  //fflush(stdout);
}

void enqueue (int iNode, int iDist, int iPrev)
{
  static int notAll = 0;
  //QITEM *qNew = &allocated[notAll]; Ratchet
  QITEM *qNew = malloc(sizeof(QITEM)); // custom allocator
  notAll++;
  QITEM *qLast = qHead;

  if (!qNew)
    {
      printf("Out of memory.\n");
      exit(1);
    }
  qNew->iNode = iNode;
  qNew->iDist = iDist;
  qNew->iPrev = iPrev;
  qNew->qNext = NULL;

  if (!qLast)
    {
      qHead = qNew;
    }
  else
    {
      //qLast = &allocated[notAll-2]; Ratchet
      while (qLast->qNext) qLast = qLast->qNext; // Actual MiBench
      qLast->qNext = qNew;
    }
  g_qCount++;
  //               ASSERT(g_qCount);
}


void dequeue (int *piNode, int *piDist, int *piPrev)
{
  QITEM *qKill = qHead;

  if (qHead)
    {
      //                 ASSERT(g_qCount);
      *piNode = qHead->iNode;
      *piDist = qHead->iDist;
      *piPrev = qHead->iPrev;
      qHead = qHead->qNext;
      free(qKill); // custom allocator (Ratchet had no free)
      g_qCount--;
    }
}


int qcount (void)
{
  return(g_qCount);
}

int dijkstra(int chStart, int chEnd)
{


  for (ch = 0; ch < NUM_NODES; ch++)
    {
      rgnNodes[ch].iDist = NONE;
      rgnNodes[ch].iPrev = NONE;
    }
  if (chStart == chEnd)
    {
      printf("Shortest path is 0 in cost. Just stay where you are.\n");
    }
  else
    {
      rgnNodes[chStart].iDist = 0;
      rgnNodes[chStart].iPrev = NONE;
      enqueue (chStart, 0, NONE);

     while (qcount() > 0)
	{
	  dequeue (&iNode, &iDist, &iPrev);
	  for (i = 0; i < NUM_NODES; i++)
	    {
	      if ((iCost = AdjMatrix[iNode][i]) != NONE)
		{
		  if ((NONE == rgnNodes[i].iDist) ||
		      (rgnNodes[i].iDist > (iCost + iDist)))
		    {
		      rgnNodes[i].iDist = iDist + iCost;
		      rgnNodes[i].iPrev = iNode;
		      enqueue (i, iDist + iCost, iNode);
		    }
		}
	    }
	}

      printf("Shortest path is %d in cost. ", rgnNodes[chEnd].iDist);
      printf("Path is: ");
      print_path(rgnNodes, chEnd);
      printf("\n");
    }
    return 0;
}

int main(int argc, char *argv[]) {
  int i,j;
  //initLED();
  //LED(1);
   /* make a fully connected matrix */
   // see input.h
  /* finds 10 shortest paths between nodes */
  for (i=0,j=NUM_NODES/2;i<20;i++,j++) {
			j=j%NUM_NODES;
      dijkstra(i,j);
  }
  //LED(1);
  return 0;
}
