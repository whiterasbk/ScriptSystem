.class public Lorg/mozilla/javascript/regexp/SubString;
.super Ljava/lang/Object;


# static fields
.field public static final emptySubString:Lorg/mozilla/javascript/regexp/SubString;


# instance fields
.field index:I

.field length:I

.field str:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/mozilla/javascript/regexp/SubString;

    invoke-direct {v0}, Lorg/mozilla/javascript/regexp/SubString;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/regexp/SubString;->emptySubString:Lorg/mozilla/javascript/regexp/SubString;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/regexp/SubString;->str:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/regexp/SubString;->index:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/regexp/SubString;->str:Ljava/lang/String;

    iput p2, p0, Lorg/mozilla/javascript/regexp/SubString;->index:I

    iput p3, p0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/SubString;->str:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/SubString;->str:Ljava/lang/String;

    iget v1, p0, Lorg/mozilla/javascript/regexp/SubString;->index:I

    iget v2, p0, Lorg/mozilla/javascript/regexp/SubString;->index:I

    iget v3, p0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
