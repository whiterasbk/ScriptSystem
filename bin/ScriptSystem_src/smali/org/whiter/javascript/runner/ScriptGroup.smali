.class public abstract Lorg/whiter/javascript/runner/ScriptGroup;
.super Ljava/lang/Object;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/whiter/javascript/runner/ScriptGroup$ScriptItem;
    }
.end annotation


# instance fields
.field protected items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/whiter/javascript/runner/ScriptGroup$ScriptItem;",
            ">;"
        }
    .end annotation
.end field

.field protected runParams:Lorg/whiter/javascript/params/RunParams;

.field protected scriptRunners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/whiter/javascript/runner/ScriptRunner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/whiter/javascript/params/RunParams;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/whiter/javascript/runner/ScriptGroup;->scriptRunners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/whiter/javascript/runner/ScriptGroup;->items:Ljava/util/List;

    const/4 v0, 0x0

    check-cast v0, Lorg/whiter/javascript/params/RunParams;

    iput-object v0, p0, Lorg/whiter/javascript/runner/ScriptGroup;->runParams:Lorg/whiter/javascript/params/RunParams;

    .line 22
    iput-object p1, p0, Lorg/whiter/javascript/runner/ScriptGroup;->runParams:Lorg/whiter/javascript/params/RunParams;

    return-void
.end method


# virtual methods
.method public addAll(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/whiter/javascript/runner/ScriptGroup$ScriptItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    iput-object p1, p0, Lorg/whiter/javascript/runner/ScriptGroup;->items:Ljava/util/List;

    return-void
.end method

.method public addAll([Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            ")V^",
            "Ljava/io/FileNotFoundException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 68
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    return-void

    .line 70
    :cond_0
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/whiter/javascript/runner/ScriptGroup;->addScript(Ljava/io/File;)V

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public addAll([Ljava/io/InputStream;[Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/InputStream;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    return-void

    .line 78
    :cond_0
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/whiter/javascript/runner/ScriptGroup;->addScript(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public addAll([Ljava/io/Reader;[Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/Reader;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    return-void

    .line 62
    :cond_0
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/whiter/javascript/runner/ScriptGroup;->addScript(Ljava/io/Reader;Ljava/lang/String;)V

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public addAll([Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V^",
            "Ljava/io/FileNotFoundException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    return-void

    .line 54
    :cond_0
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/whiter/javascript/runner/ScriptGroup;->addScript(Ljava/lang/String;)V

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public addScript(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")V^",
            "Ljava/io/FileNotFoundException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lorg/whiter/javascript/runner/ScriptGroup;->items:Ljava/util/List;

    new-instance v1, Lorg/whiter/javascript/runner/ScriptGroup$ScriptItem;

    invoke-direct {v1, p0, p1}, Lorg/whiter/javascript/runner/ScriptGroup$ScriptItem;-><init>(Lorg/whiter/javascript/runner/ScriptGroup;Ljava/io/File;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addScript(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lorg/whiter/javascript/runner/ScriptGroup;->items:Ljava/util/List;

    new-instance v1, Lorg/whiter/javascript/runner/ScriptGroup$ScriptItem;

    invoke-direct {v1, p0, p1, p2}, Lorg/whiter/javascript/runner/ScriptGroup$ScriptItem;-><init>(Lorg/whiter/javascript/runner/ScriptGroup;Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addScript(Ljava/io/Reader;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lorg/whiter/javascript/runner/ScriptGroup;->items:Ljava/util/List;

    new-instance v1, Lorg/whiter/javascript/runner/ScriptGroup$ScriptItem;

    invoke-direct {v1, p0, p1, p2}, Lorg/whiter/javascript/runner/ScriptGroup$ScriptItem;-><init>(Lorg/whiter/javascript/runner/ScriptGroup;Ljava/io/Reader;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addScript(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V^",
            "Ljava/io/FileNotFoundException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lorg/whiter/javascript/runner/ScriptGroup;->items:Ljava/util/List;

    new-instance v1, Lorg/whiter/javascript/runner/ScriptGroup$ScriptItem;

    invoke-direct {v1, p0, p1}, Lorg/whiter/javascript/runner/ScriptGroup$ScriptItem;-><init>(Lorg/whiter/javascript/runner/ScriptGroup;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected initScriptRunners()V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lorg/whiter/javascript/runner/ScriptGroup;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 85
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/whiter/javascript/runner/ScriptGroup$ScriptItem;

    .line 88
    invoke-virtual {v0}, Lorg/whiter/javascript/runner/ScriptGroup$ScriptItem;->getReader()Ljava/io/Reader;

    move-result-object v2

    .line 89
    invoke-virtual {v0}, Lorg/whiter/javascript/runner/ScriptGroup$ScriptItem;->getSourceName()Ljava/lang/String;

    move-result-object v0

    .line 90
    iget-object v3, p0, Lorg/whiter/javascript/runner/ScriptGroup;->scriptRunners:Ljava/util/List;

    new-instance v4, Lorg/whiter/javascript/runner/ScriptRunner;

    iget-object v5, p0, Lorg/whiter/javascript/runner/ScriptGroup;->runParams:Lorg/whiter/javascript/params/RunParams;

    invoke-direct {v4, v2, v0, v5}, Lorg/whiter/javascript/runner/ScriptRunner;-><init>(Ljava/io/Reader;Ljava/lang/String;Lorg/whiter/javascript/params/RunParams;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
