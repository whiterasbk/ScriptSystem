.class Lorg/mozilla/javascript/NativeIterator$StopIteration;
.super Lorg/mozilla/javascript/NativeObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/NativeIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StopIteration"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x227d07bedda89dbfL


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "StopIteration"

    return-object v0
.end method

.method public hasInstance(Lorg/mozilla/javascript/Scriptable;)Z
    .locals 1

    instance-of v0, p1, Lorg/mozilla/javascript/NativeIterator$StopIteration;

    return v0
.end method
