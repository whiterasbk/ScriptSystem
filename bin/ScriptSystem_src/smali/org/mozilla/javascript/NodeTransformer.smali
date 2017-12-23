.class public Lorg/mozilla/javascript/NodeTransformer;
.super Ljava/lang/Object;


# instance fields
.field private hasFinally:Z

.field private loopEnds:Lorg/mozilla/javascript/ObjArray;

.field private loops:Lorg/mozilla/javascript/ObjArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addBeforeCurrent(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    if-eq p2, v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    :goto_0
    return-object p3

    :cond_1
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    if-eq p2, v0, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_2
    invoke-virtual {p0, p3, p1}, Lorg/mozilla/javascript/Node;->addChildAfter(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_0
.end method

.method private static replaceCurrent(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    if-eq p2, v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    invoke-virtual {p0, p2, p3}, Lorg/mozilla/javascript/Node;->replaceChild(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    :goto_0
    return-object p3

    :cond_1
    iget-object v0, p1, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    if-ne v0, p2, :cond_2

    invoke-virtual {p0, p1, p3}, Lorg/mozilla/javascript/Node;->replaceChildAfter(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2, p3}, Lorg/mozilla/javascript/Node;->replaceChild(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_0
.end method

.method private transformCompilationUnit(Lorg/mozilla/javascript/ast/ScriptNode;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/NodeTransformer;->loops:Lorg/mozilla/javascript/ObjArray;

    new-instance v0, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/NodeTransformer;->loopEnds:Lorg/mozilla/javascript/ObjArray;

    iput-boolean v2, p0, Lorg/mozilla/javascript/NodeTransformer;->hasFinally:Z

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ScriptNode;->getType()I

    move-result v0

    const/16 v3, 0x6d

    if-ne v0, v3, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->requiresActivation()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v4, v1

    :goto_0
    if-nez v4, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ast/ScriptNode;->flattenSymbolTable(Z)V

    instance-of v0, p1, Lorg/mozilla/javascript/ast/AstRoot;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/ast/AstRoot;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstRoot;->isInStrictMode()Z

    move-result v0

    if-eqz v0, :cond_3

    move v5, v1

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/NodeTransformer;->transformCompilationUnit_r(Lorg/mozilla/javascript/ast/ScriptNode;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/Scope;ZZ)V

    return-void

    :cond_1
    move v4, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v5, v2

    goto :goto_2
.end method

.method private transformCompilationUnit_r(Lorg/mozilla/javascript/ast/ScriptNode;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/Scope;ZZ)V
    .locals 9

    const/4 v0, 0x0

    :goto_0
    const/4 v5, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_1

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    move-object v5, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    if-eqz p4, :cond_30

    const/16 v0, 0x81

    if-eq v2, v0, :cond_2

    const/16 v0, 0x84

    if-eq v2, v0, :cond_2

    const/16 v0, 0x9d

    if-ne v2, v0, :cond_30

    :cond_2
    instance-of v0, v1, Lorg/mozilla/javascript/ast/Scope;

    if-eqz v0, :cond_30

    move-object v0, v1

    check-cast v0, Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/Scope;->getSymbolTable()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_30

    new-instance v3, Lorg/mozilla/javascript/Node;

    const/16 v4, 0x9d

    if-ne v2, v4, :cond_3

    const/16 v2, 0x9e

    :goto_2
    invoke-direct {v3, v2}, Lorg/mozilla/javascript/Node;-><init>(I)V

    new-instance v4, Lorg/mozilla/javascript/Node;

    const/16 v2, 0x99

    invoke-direct {v4, v2}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/Scope;->getSymbolTable()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v7, 0x27

    invoke-static {v7, v2}, Lorg/mozilla/javascript/Node;->newString(ILjava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_3

    :cond_3
    const/16 v2, 0x99

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/ast/Scope;->setSymbolTable(Ljava/util/Map;)V

    invoke-static {p2, v5, v1, v3}, Lorg/mozilla/javascript/NodeTransformer;->replaceCurrent(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    invoke-virtual {v3, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    move v6, v0

    move-object v1, v2

    :goto_4
    sparse-switch v6, :sswitch_data_0

    :cond_5
    move-object v2, v1

    :goto_5
    instance-of v0, v2, Lorg/mozilla/javascript/ast/Scope;

    if-eqz v0, :cond_2c

    move-object v0, v2

    check-cast v0, Lorg/mozilla/javascript/ast/Scope;

    move-object v3, v0

    :goto_6
    move-object v0, p0

    move-object v1, p1

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/NodeTransformer;->transformCompilationUnit_r(Lorg/mozilla/javascript/ast/ScriptNode;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/Scope;ZZ)V

    move-object v0, v2

    goto/16 :goto_0

    :sswitch_0
    iget-object v0, p0, Lorg/mozilla/javascript/NodeTransformer;->loops:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ObjArray;->push(Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/mozilla/javascript/NodeTransformer;->loopEnds:Lorg/mozilla/javascript/ObjArray;

    move-object v0, v1

    check-cast v0, Lorg/mozilla/javascript/ast/Jump;

    iget-object v0, v0, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/ObjArray;->push(Ljava/lang/Object;)V

    move-object v2, v1

    goto :goto_5

    :sswitch_1
    iget-object v0, p0, Lorg/mozilla/javascript/NodeTransformer;->loops:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ObjArray;->push(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_6

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_6
    iget-object v2, p0, Lorg/mozilla/javascript/NodeTransformer;->loopEnds:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/ObjArray;->push(Ljava/lang/Object;)V

    move-object v2, v1

    goto :goto_5

    :sswitch_2
    move-object v0, v1

    check-cast v0, Lorg/mozilla/javascript/ast/Jump;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/Jump;->getFinally()Lorg/mozilla/javascript/Node;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/mozilla/javascript/NodeTransformer;->hasFinally:Z

    iget-object v2, p0, Lorg/mozilla/javascript/NodeTransformer;->loops:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/ObjArray;->push(Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/mozilla/javascript/NodeTransformer;->loopEnds:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/ObjArray;->push(Ljava/lang/Object;)V

    move-object v2, v1

    goto :goto_5

    :sswitch_3
    iget-object v0, p0, Lorg/mozilla/javascript/NodeTransformer;->loopEnds:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ObjArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/mozilla/javascript/NodeTransformer;->loopEnds:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ObjArray;->peek()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lorg/mozilla/javascript/NodeTransformer;->loopEnds:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ObjArray;->pop()Ljava/lang/Object;

    iget-object v0, p0, Lorg/mozilla/javascript/NodeTransformer;->loops:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ObjArray;->pop()Ljava/lang/Object;

    move-object v2, v1

    goto :goto_5

    :sswitch_4
    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/FunctionNode;->addResumptionPoint(Lorg/mozilla/javascript/Node;)V

    move-object v2, v1

    goto :goto_5

    :sswitch_5
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ScriptNode;->getType()I

    move-result v0

    const/16 v2, 0x6d

    if-ne v0, v2, :cond_8

    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->isGenerator()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    move v6, v0

    :goto_7
    if-eqz v6, :cond_7

    const/16 v0, 0x14

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    :cond_7
    iget-boolean v0, p0, Lorg/mozilla/javascript/NodeTransformer;->hasFinally:Z

    if-nez v0, :cond_9

    move-object v2, v1

    goto/16 :goto_5

    :cond_8
    const/4 v0, 0x0

    move v6, v0

    goto :goto_7

    :cond_9
    const/4 v3, 0x0

    iget-object v0, p0, Lorg/mozilla/javascript/NodeTransformer;->loops:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_8
    if-ltz v4, :cond_d

    iget-object v0, p0, Lorg/mozilla/javascript/NodeTransformer;->loops:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v0, v4}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/Node;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    const/16 v7, 0x51

    if-eq v2, v7, :cond_a

    const/16 v7, 0x7b

    if-ne v2, v7, :cond_b

    :cond_a
    const/16 v7, 0x51

    if-ne v2, v7, :cond_c

    new-instance v2, Lorg/mozilla/javascript/ast/Jump;

    const/16 v7, 0x87

    invoke-direct {v2, v7}, Lorg/mozilla/javascript/ast/Jump;-><init>(I)V

    check-cast v0, Lorg/mozilla/javascript/ast/Jump;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/Jump;->getFinally()Lorg/mozilla/javascript/Node;

    move-result-object v0

    iput-object v0, v2, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    :goto_9
    if-nez v3, :cond_2f

    new-instance v0, Lorg/mozilla/javascript/Node;

    const/16 v3, 0x81

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getLineno()I

    move-result v7

    invoke-direct {v0, v3, v7}, Lorg/mozilla/javascript/Node;-><init>(II)V

    :goto_a
    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    move-object v3, v0

    :cond_b
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_8

    :cond_c
    new-instance v0, Lorg/mozilla/javascript/Node;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Lorg/mozilla/javascript/Node;-><init>(I)V

    move-object v2, v0

    goto :goto_9

    :cond_d
    if-eqz v3, :cond_5

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-static {p2, v5, v1, v3}, Lorg/mozilla/javascript/NodeTransformer;->replaceCurrent(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v7

    if-eqz v0, :cond_e

    if-eqz v6, :cond_f

    :cond_e
    invoke-virtual {v3, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    move-object v0, v7

    goto/16 :goto_0

    :cond_f
    new-instance v2, Lorg/mozilla/javascript/Node;

    const/16 v1, 0x86

    invoke-direct {v2, v1, v0}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {v3, v2}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    new-instance v0, Lorg/mozilla/javascript/Node;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-virtual {v3, v0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/NodeTransformer;->transformCompilationUnit_r(Lorg/mozilla/javascript/ast/ScriptNode;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/Scope;ZZ)V

    move-object v0, v7

    goto/16 :goto_0

    :sswitch_6
    move-object v0, v1

    check-cast v0, Lorg/mozilla/javascript/ast/Jump;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/Jump;->getJumpStatement()Lorg/mozilla/javascript/ast/Jump;

    move-result-object v7

    if-nez v7, :cond_10

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_10
    iget-object v2, p0, Lorg/mozilla/javascript/NodeTransformer;->loops:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v2

    move-object v3, v5

    :goto_b
    if-nez v2, :cond_11

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_11
    add-int/lit8 v4, v2, -0x1

    iget-object v2, p0, Lorg/mozilla/javascript/NodeTransformer;->loops:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/Node;

    if-ne v2, v7, :cond_12

    const/16 v2, 0x78

    if-ne v6, v2, :cond_14

    iget-object v2, v7, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    iput-object v2, v0, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    :goto_c
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/ast/Jump;->setType(I)Lorg/mozilla/javascript/Node;

    move-object v2, v1

    goto/16 :goto_5

    :cond_12
    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v5

    const/16 v8, 0x7b

    if-ne v5, v8, :cond_13

    new-instance v2, Lorg/mozilla/javascript/Node;

    const/4 v5, 0x3

    invoke-direct {v2, v5}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-static {p2, v3, v1, v2}, Lorg/mozilla/javascript/NodeTransformer;->addBeforeCurrent(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    :goto_d
    move-object v3, v2

    move v2, v4

    goto :goto_b

    :cond_13
    const/16 v8, 0x51

    if-ne v5, v8, :cond_2e

    check-cast v2, Lorg/mozilla/javascript/ast/Jump;

    new-instance v5, Lorg/mozilla/javascript/ast/Jump;

    const/16 v8, 0x87

    invoke-direct {v5, v8}, Lorg/mozilla/javascript/ast/Jump;-><init>(I)V

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/Jump;->getFinally()Lorg/mozilla/javascript/Node;

    move-result-object v2

    iput-object v2, v5, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    invoke-static {p2, v3, v1, v5}, Lorg/mozilla/javascript/NodeTransformer;->addBeforeCurrent(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    goto :goto_d

    :cond_14
    invoke-virtual {v7}, Lorg/mozilla/javascript/ast/Jump;->getContinue()Lorg/mozilla/javascript/Node;

    move-result-object v2

    iput-object v2, v0, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    goto :goto_c

    :sswitch_7
    invoke-virtual {p0, v1, p1}, Lorg/mozilla/javascript/NodeTransformer;->visitCall(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/ScriptNode;)V

    move-object v2, v1

    goto/16 :goto_5

    :sswitch_8
    invoke-virtual {p0, v1, p1}, Lorg/mozilla/javascript/NodeTransformer;->visitNew(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/ScriptNode;)V

    move-object v2, v1

    goto/16 :goto_5

    :sswitch_9
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v2, 0x99

    if-ne v0, v2, :cond_17

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ScriptNode;->getType()I

    move-result v0

    const/16 v2, 0x6d

    if-ne v0, v2, :cond_15

    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->requiresActivation()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_15
    const/4 v0, 0x1

    :goto_e
    invoke-virtual {p0, v0, p2, v5, v1}, Lorg/mozilla/javascript/NodeTransformer;->visitLet(ZLorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_5

    :cond_16
    const/4 v0, 0x0

    goto :goto_e

    :cond_17
    :sswitch_a
    new-instance v7, Lorg/mozilla/javascript/Node;

    const/16 v0, 0x81

    invoke-direct {v7, v0}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v3

    :goto_f
    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v4

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v2, 0x27

    if-ne v0, v2, :cond_1a

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->hasChildren()Z

    move-result v0

    if-nez v0, :cond_18

    move-object v3, v4

    goto :goto_f

    :cond_18
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    const/16 v0, 0x31

    invoke-virtual {v3, v0}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    new-instance v2, Lorg/mozilla/javascript/Node;

    const/16 v0, 0x9a

    if-ne v6, v0, :cond_19

    const/16 v0, 0x9b

    :goto_10
    invoke-direct {v2, v0, v3, v8}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    move-object v0, v2

    :goto_11
    new-instance v2, Lorg/mozilla/javascript/Node;

    const/16 v3, 0x85

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getLineno()I

    move-result v8

    invoke-direct {v2, v3, v0, v8}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;I)V

    invoke-virtual {v7, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    move-object v3, v4

    goto :goto_f

    :cond_19
    const/16 v0, 0x8

    goto :goto_10

    :cond_1a
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v2, 0x9e

    if-eq v0, v2, :cond_2d

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1b
    invoke-static {p2, v5, v1, v7}, Lorg/mozilla/javascript/NodeTransformer;->replaceCurrent(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_5

    :sswitch_b
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/ast/Scope;->getDefiningScope(Ljava/lang/String;)Lorg/mozilla/javascript/ast/Scope;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/Node;->setScope(Lorg/mozilla/javascript/ast/Scope;)V

    :cond_1c
    move-object v2, v1

    goto/16 :goto_5

    :sswitch_c
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    const/4 v2, 0x7

    if-ne v6, v2, :cond_1f

    :goto_12
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_1d

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto :goto_12

    :cond_1d
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_1e

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1f

    :cond_1e
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v3

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v4

    const/16 v5, 0x27

    if-ne v4, v5, :cond_20

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "undefined"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    move-object v0, v2

    :cond_1f
    :goto_13
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    const/16 v3, 0x21

    if-ne v2, v3, :cond_5

    const/16 v2, 0x22

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    move-object v2, v1

    goto/16 :goto_5

    :cond_20
    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v4

    const/16 v5, 0x27

    if-ne v4, v5, :cond_1f

    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "undefined"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    move-object v0, v3

    goto :goto_13

    :sswitch_d
    if-eqz p5, :cond_21

    const/16 v0, 0x49

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    :cond_21
    :sswitch_e
    if-eqz p4, :cond_22

    move-object v2, v1

    goto/16 :goto_5

    :cond_22
    const/16 v0, 0x27

    if-ne v6, v0, :cond_24

    move-object v0, v1

    :cond_23
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getScope()Lorg/mozilla/javascript/ast/Scope;

    move-result-object v2

    if-eqz v2, :cond_26

    move-object v2, v1

    goto/16 :goto_5

    :cond_24
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    const/16 v3, 0x31

    if-eq v2, v3, :cond_23

    const/16 v0, 0x1f

    if-ne v6, v0, :cond_25

    move-object v2, v1

    goto/16 :goto_5

    :cond_25
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_26
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lorg/mozilla/javascript/ast/Scope;->getDefiningScope(Ljava/lang/String;)Lorg/mozilla/javascript/ast/Scope;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Node;->setScope(Lorg/mozilla/javascript/ast/Scope;)V

    const/16 v2, 0x27

    if-ne v6, v2, :cond_27

    const/16 v0, 0x37

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    move-object v2, v1

    goto/16 :goto_5

    :cond_27
    const/16 v2, 0x8

    if-eq v6, v2, :cond_28

    const/16 v2, 0x49

    if-ne v6, v2, :cond_29

    :cond_28
    const/16 v2, 0x38

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    move-object v2, v1

    goto/16 :goto_5

    :cond_29
    const/16 v2, 0x9b

    if-ne v6, v2, :cond_2a

    const/16 v2, 0x9c

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    move-object v2, v1

    goto/16 :goto_5

    :cond_2a
    const/16 v0, 0x1f

    if-ne v6, v0, :cond_2b

    new-instance v0, Lorg/mozilla/javascript/Node;

    const/16 v2, 0x2c

    invoke-direct {v0, v2}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-static {p2, v5, v1, v0}, Lorg/mozilla/javascript/NodeTransformer;->replaceCurrent(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_5

    :cond_2b
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_2c
    move-object v3, p3

    goto/16 :goto_6

    :cond_2d
    move-object v0, v3

    goto/16 :goto_11

    :cond_2e
    move-object v2, v3

    goto/16 :goto_d

    :cond_2f
    move-object v0, v3

    goto/16 :goto_a

    :cond_30
    move v6, v2

    goto/16 :goto_4

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x4 -> :sswitch_5
        0x7 -> :sswitch_c
        0x8 -> :sswitch_d
        0x1e -> :sswitch_8
        0x1f -> :sswitch_e
        0x20 -> :sswitch_c
        0x26 -> :sswitch_7
        0x27 -> :sswitch_e
        0x48 -> :sswitch_4
        0x51 -> :sswitch_2
        0x72 -> :sswitch_0
        0x78 -> :sswitch_6
        0x79 -> :sswitch_6
        0x7a -> :sswitch_a
        0x7b -> :sswitch_1
        0x82 -> :sswitch_0
        0x83 -> :sswitch_3
        0x84 -> :sswitch_0
        0x89 -> :sswitch_b
        0x99 -> :sswitch_9
        0x9a -> :sswitch_a
        0x9b -> :sswitch_e
        0x9e -> :sswitch_9
    .end sparse-switch
.end method


# virtual methods
.method public final transform(Lorg/mozilla/javascript/ast/ScriptNode;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/NodeTransformer;->transformCompilationUnit(Lorg/mozilla/javascript/ast/ScriptNode;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionCount()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionNode(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/NodeTransformer;->transform(Lorg/mozilla/javascript/ast/ScriptNode;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected visitCall(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/ScriptNode;)V
    .locals 0

    return-void
.end method

.method protected visitLet(ZLorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 16

    invoke-virtual/range {p4 .. p4}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v4

    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    invoke-virtual/range {p4 .. p4}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v3

    const/16 v6, 0x9e

    if-ne v3, v6, :cond_0

    const/4 v3, 0x1

    move v8, v3

    :goto_0
    if-eqz p1, :cond_8

    new-instance v6, Lorg/mozilla/javascript/Node;

    if-eqz v8, :cond_1

    const/16 v3, 0x9f

    :goto_1
    invoke-direct {v6, v3}, Lorg/mozilla/javascript/Node;-><init>(I)V

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2, v6}, Lorg/mozilla/javascript/NodeTransformer;->replaceCurrent(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v7

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lorg/mozilla/javascript/Node;

    const/16 v3, 0x42

    invoke-direct {v10, v3}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v3

    move-object v4, v5

    move-object v5, v3

    :goto_2
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v3

    const/16 v6, 0x9e

    if-ne v3, v6, :cond_12

    const/16 v3, 0x16

    invoke-virtual {v5, v3}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v11

    invoke-virtual {v11}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v6

    const/16 v12, 0x99

    if-eq v6, v12, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_0
    const/4 v3, 0x0

    move v8, v3

    goto :goto_0

    :cond_1
    const/16 v3, 0x81

    goto :goto_1

    :cond_2
    if-eqz v8, :cond_3

    new-instance v6, Lorg/mozilla/javascript/Node;

    const/16 v12, 0x59

    invoke-virtual {v11}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v13

    invoke-direct {v6, v12, v13, v4}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    :goto_3
    if-eqz v3, :cond_4

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v4, 0x0

    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_4

    new-instance v12, Lorg/mozilla/javascript/Node;

    const/16 v13, 0x7e

    const-wide/16 v14, 0x0

    invoke-static {v14, v15}, Lorg/mozilla/javascript/Node;->newNumber(D)Lorg/mozilla/javascript/Node;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {v10, v12}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_3
    new-instance v6, Lorg/mozilla/javascript/Node;

    const/16 v12, 0x81

    new-instance v13, Lorg/mozilla/javascript/Node;

    const/16 v14, 0x85

    invoke-virtual {v11}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-direct {v6, v12, v13, v4}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v11}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v3

    move-object v4, v6

    :goto_5
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v6

    const/16 v11, 0x27

    if-eq v6, v11, :cond_5

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_5
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/mozilla/javascript/ScriptRuntime;->getIndexObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v3

    if-nez v3, :cond_6

    new-instance v3, Lorg/mozilla/javascript/Node;

    const/16 v6, 0x7e

    const-wide/16 v11, 0x0

    invoke-static {v11, v12}, Lorg/mozilla/javascript/Node;->newNumber(D)Lorg/mozilla/javascript/Node;

    move-result-object v11

    invoke-direct {v3, v6, v11}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    :cond_6
    invoke-virtual {v10, v3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v5

    goto/16 :goto_2

    :cond_7
    const/16 v3, 0xc

    invoke-virtual {v9}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v10, v3, v5}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    new-instance v3, Lorg/mozilla/javascript/Node;

    const/4 v5, 0x2

    invoke-direct {v3, v5, v10}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {v7, v3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    new-instance v3, Lorg/mozilla/javascript/Node;

    const/16 v5, 0x7b

    invoke-direct {v3, v5, v4}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {v7, v3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    new-instance v3, Lorg/mozilla/javascript/Node;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-virtual {v7, v3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    move-object v3, v7

    :goto_6
    return-object v3

    :cond_8
    new-instance v6, Lorg/mozilla/javascript/Node;

    if-eqz v8, :cond_9

    const/16 v3, 0x59

    :goto_7
    invoke-direct {v6, v3}, Lorg/mozilla/javascript/Node;-><init>(I)V

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2, v6}, Lorg/mozilla/javascript/NodeTransformer;->replaceCurrent(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v7

    new-instance v9, Lorg/mozilla/javascript/Node;

    const/16 v3, 0x59

    invoke-direct {v9, v3}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v4

    :goto_8
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v3

    const/16 v6, 0x9e

    if-ne v3, v6, :cond_11

    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v10

    invoke-virtual {v10}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v3

    const/16 v6, 0x99

    if-eq v3, v6, :cond_a

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_9
    const/16 v3, 0x81

    goto :goto_7

    :cond_a
    if-eqz v8, :cond_b

    new-instance v3, Lorg/mozilla/javascript/Node;

    const/16 v6, 0x59

    invoke-virtual {v10}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v11

    invoke-direct {v3, v6, v11, v5}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    move-object v6, v3

    :goto_9
    move-object v3, v4

    check-cast v3, Lorg/mozilla/javascript/ast/Scope;

    move-object/from16 v5, p4

    check-cast v5, Lorg/mozilla/javascript/ast/Scope;

    invoke-static {v3, v5}, Lorg/mozilla/javascript/ast/Scope;->joinScopes(Lorg/mozilla/javascript/ast/Scope;Lorg/mozilla/javascript/ast/Scope;)V

    invoke-virtual {v10}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v3

    move-object v5, v3

    :goto_a
    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v3

    const/16 v10, 0x27

    if-eq v3, v10, :cond_c

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_b
    new-instance v3, Lorg/mozilla/javascript/Node;

    const/16 v6, 0x81

    new-instance v11, Lorg/mozilla/javascript/Node;

    const/16 v12, 0x85

    invoke-virtual {v10}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-direct {v3, v6, v11, v5}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    move-object v6, v3

    goto :goto_9

    :cond_c
    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/mozilla/javascript/Node;->newString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v10

    move-object/from16 v3, p4

    check-cast v3, Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {v10, v3}, Lorg/mozilla/javascript/Node;->setScope(Lorg/mozilla/javascript/ast/Scope;)V

    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v3

    if-nez v3, :cond_d

    new-instance v3, Lorg/mozilla/javascript/Node;

    const/16 v5, 0x7e

    const-wide/16 v11, 0x0

    invoke-static {v11, v12}, Lorg/mozilla/javascript/Node;->newNumber(D)Lorg/mozilla/javascript/Node;

    move-result-object v11

    invoke-direct {v3, v5, v11}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    :cond_d
    new-instance v5, Lorg/mozilla/javascript/Node;

    const/16 v11, 0x38

    invoke-direct {v5, v11, v10, v3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v9, v5}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v4

    move-object v5, v6

    goto/16 :goto_8

    :cond_e
    if-eqz v8, :cond_f

    invoke-virtual {v7, v9}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    const/16 v3, 0x59

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    instance-of v3, v5, Lorg/mozilla/javascript/ast/Scope;

    if-eqz v3, :cond_10

    move-object v3, v5

    check-cast v3, Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/Scope;->getParentScope()Lorg/mozilla/javascript/ast/Scope;

    move-result-object v4

    check-cast v5, Lorg/mozilla/javascript/ast/Scope;

    move-object/from16 v3, p4

    check-cast v3, Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {v5, v3}, Lorg/mozilla/javascript/ast/Scope;->setParentScope(Lorg/mozilla/javascript/ast/Scope;)V

    check-cast p4, Lorg/mozilla/javascript/ast/Scope;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lorg/mozilla/javascript/ast/Scope;->setParentScope(Lorg/mozilla/javascript/ast/Scope;)V

    move-object v3, v7

    goto/16 :goto_6

    :cond_f
    new-instance v3, Lorg/mozilla/javascript/Node;

    const/16 v4, 0x85

    invoke-direct {v3, v4, v9}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {v7, v3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    const/16 v3, 0x81

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lorg/mozilla/javascript/Node;->addChildrenToBack(Lorg/mozilla/javascript/Node;)V

    instance-of v3, v5, Lorg/mozilla/javascript/ast/Scope;

    if-eqz v3, :cond_10

    move-object v3, v5

    check-cast v3, Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/Scope;->getParentScope()Lorg/mozilla/javascript/ast/Scope;

    move-result-object v4

    check-cast v5, Lorg/mozilla/javascript/ast/Scope;

    move-object/from16 v3, p4

    check-cast v3, Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {v5, v3}, Lorg/mozilla/javascript/ast/Scope;->setParentScope(Lorg/mozilla/javascript/ast/Scope;)V

    check-cast p4, Lorg/mozilla/javascript/ast/Scope;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lorg/mozilla/javascript/ast/Scope;->setParentScope(Lorg/mozilla/javascript/ast/Scope;)V

    :cond_10
    move-object v3, v7

    goto/16 :goto_6

    :cond_11
    move-object v6, v5

    move-object v5, v4

    goto/16 :goto_a

    :cond_12
    move-object v3, v5

    goto/16 :goto_5
.end method

.method protected visitNew(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/ScriptNode;)V
    .locals 0

    return-void
.end method
