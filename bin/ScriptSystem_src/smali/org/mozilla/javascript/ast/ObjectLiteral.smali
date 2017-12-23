.class public Lorg/mozilla/javascript/ast/ObjectLiteral;
.super Lorg/mozilla/javascript/ast/AstNode;

# interfaces
.implements Lorg/mozilla/javascript/ast/DestructuringForm;


# static fields
.field private static final NO_ELEMS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/ObjectProperty;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/ObjectProperty;",
            ">;"
        }
    .end annotation
.end field

.field isDestructuring:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ast/ObjectLiteral;->NO_ELEMS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    const/16 v0, 0x42

    iput v0, p0, Lorg/mozilla/javascript/ast/ObjectLiteral;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    const/16 v0, 0x42

    iput v0, p0, Lorg/mozilla/javascript/ast/ObjectLiteral;->type:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    const/16 v0, 0x42

    iput v0, p0, Lorg/mozilla/javascript/ast/ObjectLiteral;->type:I

    return-void
.end method


# virtual methods
.method public addElement(Lorg/mozilla/javascript/ast/ObjectProperty;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ObjectLiteral;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ObjectLiteral;->elements:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/ast/ObjectLiteral;->elements:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ObjectLiteral;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/ObjectProperty;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public getElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/ObjectProperty;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ObjectLiteral;->elements:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ObjectLiteral;->elements:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/mozilla/javascript/ast/ObjectLiteral;->NO_ELEMS:Ljava/util/List;

    goto :goto_0
.end method

.method public isDestructuring()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/javascript/ast/ObjectLiteral;->isDestructuring:Z

    return v0
.end method

.method public setElements(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/ObjectProperty;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/javascript/ast/ObjectLiteral;->elements:Ljava/util/List;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ObjectLiteral;->elements:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ObjectLiteral;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/ObjectProperty;

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ast/ObjectLiteral;->addElement(Lorg/mozilla/javascript/ast/ObjectProperty;)V

    goto :goto_0
.end method

.method public setIsDestructuring(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mozilla/javascript/ast/ObjectLiteral;->isDestructuring:Z

    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ObjectLiteral;->makeIndent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/javascript/ast/ObjectLiteral;->elements:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/ast/ObjectLiteral;->elements:Ljava/util/List;

    invoke-virtual {p0, v1, v0}, Lorg/mozilla/javascript/ast/ObjectLiteral;->printList(Ljava/util/List;Ljava/lang/StringBuilder;)V

    :cond_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 2

    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/ObjectLiteral;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/ObjectProperty;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/ObjectProperty;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    goto :goto_0

    :cond_0
    return-void
.end method
