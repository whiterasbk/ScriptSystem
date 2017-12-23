.class public Lwhiter/script/base/BaseService;
.super Lwhiter/script/test/TestService;
.source "BaseService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lwhiter/script/test/TestService;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateTest()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 11
    invoke-super {p0}, Lwhiter/script/test/TestService;->onCreateTest()V

    return-void
.end method
