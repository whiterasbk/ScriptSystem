.class Lorg/mozilla/javascript/regexp/RECompiled;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = -0x554745732fcce675L


# instance fields
.field anchorCh:I

.field classCount:I

.field classList:[Lorg/mozilla/javascript/regexp/RECharSet;

.field flags:I

.field parenCount:I

.field program:[B

.field final source:[C


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/regexp/RECompiled;->anchorCh:I

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    return-void
.end method
