.class public final enum Lorg/mozilla/javascript/Token$CommentType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CommentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/mozilla/javascript/Token$CommentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/javascript/Token$CommentType;

.field public static final enum BLOCK_COMMENT:Lorg/mozilla/javascript/Token$CommentType;

.field public static final enum HTML:Lorg/mozilla/javascript/Token$CommentType;

.field public static final enum JSDOC:Lorg/mozilla/javascript/Token$CommentType;

.field public static final enum LINE:Lorg/mozilla/javascript/Token$CommentType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/mozilla/javascript/Token$CommentType;

    const-string v1, "LINE"

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/Token$CommentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/Token$CommentType;->LINE:Lorg/mozilla/javascript/Token$CommentType;

    new-instance v0, Lorg/mozilla/javascript/Token$CommentType;

    const-string v1, "BLOCK_COMMENT"

    invoke-direct {v0, v1, v3}, Lorg/mozilla/javascript/Token$CommentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/Token$CommentType;->BLOCK_COMMENT:Lorg/mozilla/javascript/Token$CommentType;

    new-instance v0, Lorg/mozilla/javascript/Token$CommentType;

    const-string v1, "JSDOC"

    invoke-direct {v0, v1, v4}, Lorg/mozilla/javascript/Token$CommentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/Token$CommentType;->JSDOC:Lorg/mozilla/javascript/Token$CommentType;

    new-instance v0, Lorg/mozilla/javascript/Token$CommentType;

    const-string v1, "HTML"

    invoke-direct {v0, v1, v5}, Lorg/mozilla/javascript/Token$CommentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/Token$CommentType;->HTML:Lorg/mozilla/javascript/Token$CommentType;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/mozilla/javascript/Token$CommentType;

    sget-object v1, Lorg/mozilla/javascript/Token$CommentType;->LINE:Lorg/mozilla/javascript/Token$CommentType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/mozilla/javascript/Token$CommentType;->BLOCK_COMMENT:Lorg/mozilla/javascript/Token$CommentType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/mozilla/javascript/Token$CommentType;->JSDOC:Lorg/mozilla/javascript/Token$CommentType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/mozilla/javascript/Token$CommentType;->HTML:Lorg/mozilla/javascript/Token$CommentType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/mozilla/javascript/Token$CommentType;->$VALUES:[Lorg/mozilla/javascript/Token$CommentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/javascript/Token$CommentType;
    .locals 1

    const-class v0, Lorg/mozilla/javascript/Token$CommentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/Token$CommentType;

    return-object v0
.end method

.method public static values()[Lorg/mozilla/javascript/Token$CommentType;
    .locals 1

    sget-object v0, Lorg/mozilla/javascript/Token$CommentType;->$VALUES:[Lorg/mozilla/javascript/Token$CommentType;

    invoke-virtual {v0}, [Lorg/mozilla/javascript/Token$CommentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/javascript/Token$CommentType;

    return-object v0
.end method
