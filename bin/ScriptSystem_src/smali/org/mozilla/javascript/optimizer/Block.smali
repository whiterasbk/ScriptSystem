.class Lorg/mozilla/javascript/optimizer/Block;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/optimizer/Block$1;,
        Lorg/mozilla/javascript/optimizer/Block$FatBlock;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static debug_blockCount:I


# instance fields
.field private itsBlockID:I

.field private itsEndNodeIndex:I

.field private itsLiveOnEntrySet:Ljava/util/BitSet;

.field private itsLiveOnExitSet:Ljava/util/BitSet;

.field private itsNotDefSet:Ljava/util/BitSet;

.field private itsPredecessors:[Lorg/mozilla/javascript/optimizer/Block;

.field private itsStartNodeIndex:I

.field private itsSuccessors:[Lorg/mozilla/javascript/optimizer/Block;

.field private itsUseBeforeDefSet:Ljava/util/BitSet;


# direct methods
.method constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/mozilla/javascript/optimizer/Block;->itsStartNodeIndex:I

    iput p2, p0, Lorg/mozilla/javascript/optimizer/Block;->itsEndNodeIndex:I

    return-void
.end method

.method private static assignType([III)Z
    .locals 2

    aget v0, p0, p1

    aget v1, p0, p1

    or-int/2addr v1, p2

    aput v1, p0, p1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static buildBlocks([Lorg/mozilla/javascript/Node;)[Lorg/mozilla/javascript/optimizer/Block;
    .locals 10

    const/4 v9, 0x6

    const/4 v8, 0x5

    const/16 v7, 0x83

    const/4 v3, 0x0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v6}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    move v0, v3

    move v1, v3

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    aget-object v2, p0, v0

    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    if-eq v0, v1, :cond_0

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v2}, Lorg/mozilla/javascript/optimizer/Block;->newFatBlock(II)Lorg/mozilla/javascript/optimizer/Block$FatBlock;

    move-result-object v2

    aget-object v4, p0, v1

    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v4

    if-ne v4, v7, :cond_1

    aget-object v1, p0, v1

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v6, v2}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    move v1, v0

    goto :goto_1

    :sswitch_1
    invoke-static {v1, v0}, Lorg/mozilla/javascript/optimizer/Block;->newFatBlock(II)Lorg/mozilla/javascript/optimizer/Block$FatBlock;

    move-result-object v2

    aget-object v4, p0, v1

    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v4

    if-ne v4, v7, :cond_2

    aget-object v1, p0, v1

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v6, v2}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v0, 0x1

    goto :goto_1

    :cond_3
    array-length v0, p0

    if-eq v1, v0, :cond_5

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Lorg/mozilla/javascript/optimizer/Block;->newFatBlock(II)Lorg/mozilla/javascript/optimizer/Block$FatBlock;

    move-result-object v0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    if-ne v2, v7, :cond_4

    aget-object v1, p0, v1

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v6, v0}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    :cond_5
    move v4, v3

    :goto_2
    invoke-virtual {v6}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v0

    if-ge v4, v0, :cond_9

    invoke-virtual {v6, v4}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/optimizer/Block$FatBlock;

    check-cast v0, Lorg/mozilla/javascript/optimizer/Block$FatBlock;

    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->realBlock:Lorg/mozilla/javascript/optimizer/Block;

    iget v1, v1, Lorg/mozilla/javascript/optimizer/Block;->itsEndNodeIndex:I

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v7

    if-eq v7, v8, :cond_6

    invoke-virtual {v6}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v4, v1, :cond_6

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {v6, v1}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/optimizer/Block$FatBlock;

    check-cast v1, Lorg/mozilla/javascript/optimizer/Block$FatBlock;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->addSuccessor(Lorg/mozilla/javascript/optimizer/Block$FatBlock;)V

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->addPredecessor(Lorg/mozilla/javascript/optimizer/Block$FatBlock;)V

    :cond_6
    const/4 v1, 0x7

    if-eq v7, v1, :cond_7

    if-eq v7, v9, :cond_7

    if-ne v7, v8, :cond_8

    :cond_7
    move-object v1, v2

    check-cast v1, Lorg/mozilla/javascript/ast/Jump;

    iget-object v2, v1, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/optimizer/Block$FatBlock;

    iget-object v7, v1, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->realBlock:Lorg/mozilla/javascript/optimizer/Block;

    invoke-virtual {v2, v9, v7}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->addSuccessor(Lorg/mozilla/javascript/optimizer/Block$FatBlock;)V

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->addPredecessor(Lorg/mozilla/javascript/optimizer/Block$FatBlock;)V

    :cond_8
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :cond_9
    invoke-virtual {v6}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v0

    new-array v1, v0, [Lorg/mozilla/javascript/optimizer/Block;

    :goto_3
    invoke-virtual {v6}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v0

    if-ge v3, v0, :cond_a

    invoke-virtual {v6, v3}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/optimizer/Block$FatBlock;

    check-cast v0, Lorg/mozilla/javascript/optimizer/Block$FatBlock;

    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->realBlock:Lorg/mozilla/javascript/optimizer/Block;

    invoke-virtual {v0}, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->getSuccessors()[Lorg/mozilla/javascript/optimizer/Block;

    move-result-object v4

    iput-object v4, v2, Lorg/mozilla/javascript/optimizer/Block;->itsSuccessors:[Lorg/mozilla/javascript/optimizer/Block;

    invoke-virtual {v0}, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->getPredecessors()[Lorg/mozilla/javascript/optimizer/Block;

    move-result-object v0

    iput-object v0, v2, Lorg/mozilla/javascript/optimizer/Block;->itsPredecessors:[Lorg/mozilla/javascript/optimizer/Block;

    iput v3, v2, Lorg/mozilla/javascript/optimizer/Block;->itsBlockID:I

    aput-object v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_a
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0x6 -> :sswitch_1
        0x7 -> :sswitch_1
        0x83 -> :sswitch_0
    .end sparse-switch
.end method

.method private doReachedUseDataFlow()Z
    .locals 4

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/Block;->itsLiveOnExitSet:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/Block;->itsSuccessors:[Lorg/mozilla/javascript/optimizer/Block;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/Block;->itsSuccessors:[Lorg/mozilla/javascript/optimizer/Block;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/Block;->itsLiveOnExitSet:Ljava/util/BitSet;

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/Block;->itsSuccessors:[Lorg/mozilla/javascript/optimizer/Block;

    aget-object v2, v2, v0

    iget-object v2, v2, Lorg/mozilla/javascript/optimizer/Block;->itsLiveOnEntrySet:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/Block;->itsLiveOnEntrySet:Ljava/util/BitSet;

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/Block;->itsLiveOnExitSet:Ljava/util/BitSet;

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/Block;->itsUseBeforeDefSet:Ljava/util/BitSet;

    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/Block;->itsNotDefSet:Ljava/util/BitSet;

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/mozilla/javascript/optimizer/Block;->updateEntrySet(Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/BitSet;)Z

    move-result v0

    return v0
.end method

.method private doTypeFlow(Lorg/mozilla/javascript/optimizer/OptFunctionNode;[Lorg/mozilla/javascript/Node;[I)Z
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lorg/mozilla/javascript/optimizer/Block;->itsStartNodeIndex:I

    :goto_0
    iget v2, p0, Lorg/mozilla/javascript/optimizer/Block;->itsEndNodeIndex:I

    if-gt v0, v2, :cond_1

    aget-object v2, p2, v0

    if-eqz v2, :cond_0

    invoke-static {p1, v2, p3}, Lorg/mozilla/javascript/optimizer/Block;->findDefPoints(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;[I)Z

    move-result v2

    or-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static findDefPoints(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;[I)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v2

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_0

    invoke-static {p0, v1, p2}, Lorg/mozilla/javascript/optimizer/Block;->findDefPoints(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;[I)Z

    move-result v3

    or-int/2addr v3, v0

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    move-object v1, v0

    move v0, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    :goto_1
    return v0

    :sswitch_0
    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    const/16 v3, 0x37

    if-ne v1, v3, :cond_1

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p2, v1, v2}, Lorg/mozilla/javascript/optimizer/Block;->assignType([III)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_1

    :sswitch_1
    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lorg/mozilla/javascript/optimizer/Block;->findExpressionType(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;[I)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result v2

    invoke-static {p2, v2, v1}, Lorg/mozilla/javascript/optimizer/Block;->assignType([III)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x38 -> :sswitch_1
        0x6a -> :sswitch_0
        0x6b -> :sswitch_0
    .end sparse-switch
.end method

.method private static findExpressionType(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;[I)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    move v0, v1

    goto :goto_0

    :sswitch_2
    move v0, v1

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result v0

    aget v0, p2, v0

    goto :goto_0

    :sswitch_4
    move v0, v1

    goto :goto_0

    :sswitch_5
    move v0, v1

    goto :goto_0

    :sswitch_6
    move v0, v1

    goto :goto_0

    :sswitch_7
    move v0, v1

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/mozilla/javascript/optimizer/Block;->findExpressionType(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;[I)I

    move-result v1

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/mozilla/javascript/optimizer/Block;->findExpressionType(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;[I)I

    move-result v0

    or-int/2addr v0, v1

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-static {p0, v0, p2}, Lorg/mozilla/javascript/optimizer/Block;->findExpressionType(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;[I)I

    move-result v0

    invoke-static {p0, v1, p2}, Lorg/mozilla/javascript/optimizer/Block;->findExpressionType(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;[I)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/mozilla/javascript/optimizer/Block;->findExpressionType(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;[I)I

    move-result v0

    goto :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/mozilla/javascript/optimizer/Block;->findExpressionType(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;[I)I

    move-result v1

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/mozilla/javascript/optimizer/Block;->findExpressionType(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;[I)I

    move-result v0

    or-int/2addr v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_a
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_5
        0xd -> :sswitch_5
        0xe -> :sswitch_5
        0xf -> :sswitch_5
        0x10 -> :sswitch_5
        0x11 -> :sswitch_5
        0x12 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_8
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_5
        0x1b -> :sswitch_0
        0x1c -> :sswitch_0
        0x1d -> :sswitch_0
        0x1e -> :sswitch_1
        0x1f -> :sswitch_5
        0x20 -> :sswitch_6
        0x21 -> :sswitch_2
        0x23 -> :sswitch_a
        0x24 -> :sswitch_2
        0x25 -> :sswitch_a
        0x26 -> :sswitch_1
        0x27 -> :sswitch_2
        0x28 -> :sswitch_0
        0x29 -> :sswitch_6
        0x2a -> :sswitch_7
        0x2b -> :sswitch_2
        0x2c -> :sswitch_5
        0x2d -> :sswitch_5
        0x2e -> :sswitch_5
        0x2f -> :sswitch_5
        0x30 -> :sswitch_7
        0x34 -> :sswitch_5
        0x35 -> :sswitch_5
        0x37 -> :sswitch_3
        0x38 -> :sswitch_a
        0x41 -> :sswitch_7
        0x42 -> :sswitch_7
        0x45 -> :sswitch_5
        0x46 -> :sswitch_1
        0x59 -> :sswitch_a
        0x66 -> :sswitch_9
        0x68 -> :sswitch_b
        0x69 -> :sswitch_b
        0x6a -> :sswitch_0
        0x6b -> :sswitch_0
        0x7e -> :sswitch_4
        0x89 -> :sswitch_6
        0x9d -> :sswitch_7
    .end sparse-switch
.end method

.method private initLiveOnEntrySets(Lorg/mozilla/javascript/optimizer/OptFunctionNode;[Lorg/mozilla/javascript/Node;)V
    .locals 3

    invoke-virtual {p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarCount()I

    move-result v1

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lorg/mozilla/javascript/optimizer/Block;->itsUseBeforeDefSet:Ljava/util/BitSet;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lorg/mozilla/javascript/optimizer/Block;->itsNotDefSet:Ljava/util/BitSet;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lorg/mozilla/javascript/optimizer/Block;->itsLiveOnEntrySet:Ljava/util/BitSet;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lorg/mozilla/javascript/optimizer/Block;->itsLiveOnExitSet:Ljava/util/BitSet;

    iget v0, p0, Lorg/mozilla/javascript/optimizer/Block;->itsStartNodeIndex:I

    :goto_0
    iget v2, p0, Lorg/mozilla/javascript/optimizer/Block;->itsEndNodeIndex:I

    if-gt v0, v2, :cond_0

    aget-object v2, p2, v0

    invoke-direct {p0, p1, v2}, Lorg/mozilla/javascript/optimizer/Block;->lookForVariableAccess(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/Block;->itsNotDefSet:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/BitSet;->flip(II)V

    return-void
.end method

.method private lookForVariableAccess(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;)V
    .locals 3

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/optimizer/Block;->lookForVariableAccess(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto :goto_0

    :sswitch_0
    iget-object v0, p1, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v0, p2}, Lorg/mozilla/javascript/ast/FunctionNode;->getIndexForNameNode(Lorg/mozilla/javascript/Node;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/Block;->itsNotDefSet:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/Block;->itsUseBeforeDefSet:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    :cond_0
    :goto_1
    return-void

    :sswitch_1
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    const/16 v2, 0x37

    if-ne v1, v2, :cond_2

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/Block;->itsNotDefSet:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/Block;->itsUseBeforeDefSet:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    :cond_1
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/Block;->itsNotDefSet:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/optimizer/Block;->lookForVariableAccess(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;)V

    goto :goto_1

    :sswitch_2
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/optimizer/Block;->lookForVariableAccess(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/Block;->itsNotDefSet:Ljava/util/BitSet;

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_1

    :sswitch_3
    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/Block;->itsNotDefSet:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/Block;->itsUseBeforeDefSet:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x37 -> :sswitch_3
        0x38 -> :sswitch_2
        0x6a -> :sswitch_1
        0x6b -> :sswitch_1
        0x89 -> :sswitch_0
    .end sparse-switch
.end method

.method private markAnyTypeVariables([I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/Block;->itsLiveOnEntrySet:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    invoke-static {p1, v0, v1}, Lorg/mozilla/javascript/optimizer/Block;->assignType([III)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static newFatBlock(II)Lorg/mozilla/javascript/optimizer/Block$FatBlock;
    .locals 2

    new-instance v0, Lorg/mozilla/javascript/optimizer/Block$FatBlock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/Block$FatBlock;-><init>(Lorg/mozilla/javascript/optimizer/Block$1;)V

    new-instance v1, Lorg/mozilla/javascript/optimizer/Block;

    invoke-direct {v1, p0, p1}, Lorg/mozilla/javascript/optimizer/Block;-><init>(II)V

    iput-object v1, v0, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->realBlock:Lorg/mozilla/javascript/optimizer/Block;

    return-object v0
.end method

.method private printLiveOnEntrySet(Lorg/mozilla/javascript/optimizer/OptFunctionNode;)V
    .locals 0

    return-void
.end method

.method private static reachingDefDataFlow(Lorg/mozilla/javascript/optimizer/OptFunctionNode;[Lorg/mozilla/javascript/Node;[Lorg/mozilla/javascript/optimizer/Block;[I)V
    .locals 9

    const/4 v5, 0x1

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    aget-object v2, p2, v0

    invoke-direct {v2, p0, p1}, Lorg/mozilla/javascript/optimizer/Block;->initLiveOnEntrySets(Lorg/mozilla/javascript/optimizer/OptFunctionNode;[Lorg/mozilla/javascript/Node;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v0, p2

    new-array v6, v0, [Z

    array-length v0, p2

    new-array v7, v0, [Z

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aput-boolean v5, v6, v0

    move v2, v0

    move v0, v1

    :goto_1
    aget-boolean v3, v6, v2

    if-nez v3, :cond_1

    aget-boolean v3, v7, v2

    if-nez v3, :cond_4

    :cond_1
    aput-boolean v5, v7, v2

    aput-boolean v1, v6, v2

    aget-object v3, p2, v2

    invoke-direct {v3}, Lorg/mozilla/javascript/optimizer/Block;->doReachedUseDataFlow()Z

    move-result v3

    if-eqz v3, :cond_4

    aget-object v3, p2, v2

    iget-object v8, v3, Lorg/mozilla/javascript/optimizer/Block;->itsPredecessors:[Lorg/mozilla/javascript/optimizer/Block;

    if-eqz v8, :cond_4

    move v3, v0

    move v0, v1

    :goto_2
    array-length v4, v8

    if-ge v0, v4, :cond_3

    aget-object v4, v8, v0

    iget v4, v4, Lorg/mozilla/javascript/optimizer/Block;->itsBlockID:I

    aput-boolean v5, v6, v4

    if-le v4, v2, :cond_2

    move v4, v5

    :goto_3
    or-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v4, v1

    goto :goto_3

    :cond_3
    move v0, v3

    :cond_4
    if-nez v2, :cond_5

    if-eqz v0, :cond_6

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move v0, v1

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_6
    aget-object v0, p2, v1

    invoke-direct {v0, p3}, Lorg/mozilla/javascript/optimizer/Block;->markAnyTypeVariables([I)V

    return-void
.end method

.method static runFlowAnalyzes(Lorg/mozilla/javascript/optimizer/OptFunctionNode;[Lorg/mozilla/javascript/Node;)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->getParamCount()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/FunctionNode;->getParamAndVarCount()I

    move-result v3

    new-array v4, v3, [I

    move v1, v2

    :goto_0
    if-eq v1, v0, :cond_0

    const/4 v5, 0x3

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    if-eq v1, v3, :cond_1

    aput v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/mozilla/javascript/optimizer/Block;->buildBlocks([Lorg/mozilla/javascript/Node;)[Lorg/mozilla/javascript/optimizer/Block;

    move-result-object v1

    invoke-static {p0, p1, v1, v4}, Lorg/mozilla/javascript/optimizer/Block;->reachingDefDataFlow(Lorg/mozilla/javascript/optimizer/OptFunctionNode;[Lorg/mozilla/javascript/Node;[Lorg/mozilla/javascript/optimizer/Block;[I)V

    invoke-static {p0, p1, v1, v4}, Lorg/mozilla/javascript/optimizer/Block;->typeFlow(Lorg/mozilla/javascript/optimizer/OptFunctionNode;[Lorg/mozilla/javascript/Node;[Lorg/mozilla/javascript/optimizer/Block;[I)V

    :goto_2
    if-eq v0, v3, :cond_3

    aget v1, v4, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->setIsNumberVar(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private static toString([Lorg/mozilla/javascript/optimizer/Block;[Lorg/mozilla/javascript/Node;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static typeFlow(Lorg/mozilla/javascript/optimizer/OptFunctionNode;[Lorg/mozilla/javascript/Node;[Lorg/mozilla/javascript/optimizer/Block;[I)V
    .locals 9

    const/4 v5, 0x1

    const/4 v1, 0x0

    array-length v0, p2

    new-array v6, v0, [Z

    array-length v0, p2

    new-array v7, v0, [Z

    aput-boolean v5, v6, v1

    move v0, v1

    move v2, v1

    :goto_0
    aget-boolean v3, v6, v2

    if-nez v3, :cond_0

    aget-boolean v3, v7, v2

    if-nez v3, :cond_3

    :cond_0
    aput-boolean v5, v7, v2

    aput-boolean v1, v6, v2

    aget-object v3, p2, v2

    invoke-direct {v3, p0, p1, p3}, Lorg/mozilla/javascript/optimizer/Block;->doTypeFlow(Lorg/mozilla/javascript/optimizer/OptFunctionNode;[Lorg/mozilla/javascript/Node;[I)Z

    move-result v3

    if-eqz v3, :cond_3

    aget-object v3, p2, v2

    iget-object v8, v3, Lorg/mozilla/javascript/optimizer/Block;->itsSuccessors:[Lorg/mozilla/javascript/optimizer/Block;

    if-eqz v8, :cond_3

    move v3, v0

    move v0, v1

    :goto_1
    array-length v4, v8

    if-ge v0, v4, :cond_2

    aget-object v4, v8, v0

    iget v4, v4, Lorg/mozilla/javascript/optimizer/Block;->itsBlockID:I

    aput-boolean v5, v6, v4

    if-ge v4, v2, :cond_1

    move v4, v5

    :goto_2
    or-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v4, v1

    goto :goto_2

    :cond_2
    move v0, v3

    :cond_3
    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_4

    if-eqz v0, :cond_5

    move v0, v1

    move v2, v1

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private updateEntrySet(Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/BitSet;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    invoke-virtual {p1, p4}, Ljava/util/BitSet;->and(Ljava/util/BitSet;)V

    invoke-virtual {p1, p3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
