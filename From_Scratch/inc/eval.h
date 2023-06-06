#ifndef EVAL_H
#define EVAL_H

#include "ast.h"
#include "basic.h"
#include "symtab.h"

double eval(struct ast *a);
void displayAst(struct ast *a, int level);

#endif
