.class public Lorg/mozilla/javascript/ast/Comment;
.super Lorg/mozilla/javascript/ast/AstNode;


# instance fields
.field private commentType:Lorg/mozilla/javascript/Token$CommentType;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILorg/mozilla/javascript/Token$CommentType;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    const/16 v0, 0xa1

    iput v0, p0, Lorg/mozilla/javascript/ast/Comment;->type:I

    iput-object p3, p0, Lorg/mozilla/javascript/ast/Comment;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    iput-object p4, p0, Lorg/mozilla/javascript/ast/Comment;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCommentType()Lorg/mozilla/javascript/Token$CommentType;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/ast/Comment;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/ast/Comment;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setCommentType(Lorg/mozilla/javascript/Token$CommentType;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/ast/Comment;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/Comment;->getLength()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/Comment;->makeIndent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/javascript/ast/Comment;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    return-void
.end method
