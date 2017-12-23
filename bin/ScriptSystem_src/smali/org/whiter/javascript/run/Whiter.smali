.class public Lorg/whiter/javascript/run/Whiter;
.super Ljava/lang/Object;
.source "Whiter.java"


# static fields
.field public static object:Ljava/lang/Object;


# direct methods
.method static final constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    sput-object v0, Lorg/whiter/javascript/run/Whiter;->object:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lorg/whiter/javascript/run/Whiter;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public static setObject(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 9
    sput-object p0, Lorg/whiter/javascript/run/Whiter;->object:Ljava/lang/Object;

    return-void
.end method
