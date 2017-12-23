.class public Lorg/mozilla/javascript/ast/ElementGet;
.super Lorg/mozilla/javascript/ast/AstNode;


# instance fields
.field private element:Lorg/mozilla/javascript/ast/AstNode;

.field private lb:I

.field private rb:I

.field private target:Lorg/mozilla/javascript/ast/AstNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    iput v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->lb:I

    iput v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->rb:I

    const/16 v0, 0x24

    iput v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    iput v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->lb:I

    iput v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->rb:I

    const/16 v0, 0x24

    iput v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->type:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    iput v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->lb:I

    iput v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->rb:I

    const/16 v0, 0x24

    iput v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->type:I

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    iput v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->lb:I

    iput v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->rb:I

    const/16 v0, 0x24

    iput v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->type:I

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ElementGet;->setTarget(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/ast/ElementGet;->setElement(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method


# virtual methods
.method public getElement()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->element:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getLb()I
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->lb:I

    return v0
.end method

.method public getRb()I
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->rb:I

    return v0
.end method

.method public getTarget()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->target:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public setElement(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ElementGet;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mozilla/javascript/ast/ElementGet;->element:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public setLb(I)V
    .locals 0

    iput p1, p0, Lorg/mozilla/javascript/ast/ElementGet;->lb:I

    return-void
.end method

.method public setParens(II)V
    .locals 0

    iput p1, p0, Lorg/mozilla/javascript/ast/ElementGet;->lb:I

    iput p2, p0, Lorg/mozilla/javascript/ast/ElementGet;->rb:I

    return-void
.end method

.method public setRb(I)V
    .locals 0

    iput p1, p0, Lorg/mozilla/javascript/ast/ElementGet;->rb:I

    return-void
.end method

.method public setTarget(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ElementGet;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mozilla/javascript/ast/ElementGet;->target:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ElementGet;->makeIndent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/javascript/ast/ElementGet;->target:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/javascript/ast/ElementGet;->element:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 1

    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->target:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->element:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    :cond_0
    return-void
.end method
