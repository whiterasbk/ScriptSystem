.class public Lorg/mozilla/javascript/Synchronizer;
.super Lorg/mozilla/javascript/Delegator;


# instance fields
.field private syncObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Delegator;-><init>(Lorg/mozilla/javascript/Scriptable;)V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Delegator;-><init>(Lorg/mozilla/javascript/Scriptable;)V

    iput-object p2, p0, Lorg/mozilla/javascript/Synchronizer;->syncObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/Synchronizer;->syncObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/Synchronizer;->syncObject:Ljava/lang/Object;

    :goto_0
    instance-of v1, v0, Lorg/mozilla/javascript/Wrapper;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {v0}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    :goto_1
    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/javascript/Synchronizer;->obj:Lorg/mozilla/javascript/Scriptable;

    check-cast v0, Lorg/mozilla/javascript/Function;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_0
    move-object v0, p3

    goto :goto_0

    :cond_1
    move-object v1, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
