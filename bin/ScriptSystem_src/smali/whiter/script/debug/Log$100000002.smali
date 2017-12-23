.class Lwhiter/script/debug/Log$100000002;
.super Ljava/lang/Object;
.source "Log.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwhiter/script/debug/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000002"
.end annotation


# instance fields
.field private final val$icon:I

.field private final val$message:Ljava/lang/String;

.field private final val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwhiter/script/debug/Log$100000002;->val$title:Ljava/lang/String;

    iput-object p2, p0, Lwhiter/script/debug/Log$100000002;->val$message:Ljava/lang/String;

    iput p3, p0, Lwhiter/script/debug/Log$100000002;->val$icon:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lwhiter/script/debug/Log$100000002;->val$title:Ljava/lang/String;

    iget-object v1, p0, Lwhiter/script/debug/Log$100000002;->val$message:Ljava/lang/String;

    iget v2, p0, Lwhiter/script/debug/Log$100000002;->val$icon:I

    invoke-static {v0, v1, v2}, Lwhiter/script/debug/Log;->AlertDialog(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method
