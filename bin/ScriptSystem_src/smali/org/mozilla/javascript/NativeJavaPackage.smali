.class public Lorg/mozilla/javascript/NativeJavaPackage;
.super Lorg/mozilla/javascript/ScriptableObject;


# static fields
.field static final serialVersionUID:J = 0x67522583d936a423L


# instance fields
.field private transient classLoader:Ljava/lang/ClassLoader;

.field private negativeCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/javascript/Context;->getApplicationClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lorg/mozilla/javascript/NativeJavaPackage;-><init>(ZLjava/lang/String;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/mozilla/javascript/NativeJavaPackage;-><init>(ZLjava/lang/String;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method constructor <init>(ZLjava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/javascript/NativeJavaPackage;->negativeCache:Ljava/util/Set;

    iput-object p2, p0, Lorg/mozilla/javascript/NativeJavaPackage;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lorg/mozilla/javascript/NativeJavaPackage;->classLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->getApplicationClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/NativeJavaPackage;->classLoader:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/mozilla/javascript/NativeJavaPackage;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/mozilla/javascript/NativeJavaPackage;

    iget-object v1, p0, Lorg/mozilla/javascript/NativeJavaPackage;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lorg/mozilla/javascript/NativeJavaPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/NativeJavaPackage;->classLoader:Ljava/lang/ClassLoader;

    iget-object v2, p1, Lorg/mozilla/javascript/NativeJavaPackage;->classLoader:Ljava/lang/ClassLoader;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method forcePackage(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/NativeJavaPackage;
    .locals 4

    invoke-super {p0, p1, p0}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/mozilla/javascript/NativeJavaPackage;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/mozilla/javascript/NativeJavaPackage;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p1

    :goto_1
    new-instance v1, Lorg/mozilla/javascript/NativeJavaPackage;

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/mozilla/javascript/NativeJavaPackage;->classLoader:Ljava/lang/ClassLoader;

    invoke-direct {v1, v2, v0, v3}, Lorg/mozilla/javascript/NativeJavaPackage;-><init>(ZLjava/lang/String;Ljava/lang/ClassLoader;)V

    invoke-static {v1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;)V

    invoke-super {p0, p1, p0, v1}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/mozilla/javascript/NativeJavaPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/mozilla/javascript/NativeJavaPackage;->NOT_FOUND:Ljava/lang/Object;

    return-object v0
.end method

.method public get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/mozilla/javascript/NativeJavaPackage;->getPkgProperty(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "JavaPackage"

    return-object v0
.end method

.method public getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeJavaPackage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized getPkgProperty(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Z)Ljava/lang/Object;
    .locals 5

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lorg/mozilla/javascript/NativeJavaPackage;->NOT_FOUND:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaPackage;->negativeCache:Ljava/util/Set;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaPackage;->negativeCache:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    move-object v2, p1

    :goto_1
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mozilla/javascript/Context;->getClassShutter()Lorg/mozilla/javascript/ClassShutter;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0, v2}, Lorg/mozilla/javascript/ClassShutter;->visibleToScripts(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_3
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaPackage;->classLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaPackage;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v2}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_9

    invoke-virtual {v3}, Lorg/mozilla/javascript/Context;->getWrapFactory()Lorg/mozilla/javascript/WrapFactory;

    move-result-object v1

    invoke-static {p0}, Lorg/mozilla/javascript/NativeJavaPackage;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v0}, Lorg/mozilla/javascript/WrapFactory;->wrapJavaClass(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeJavaPackage;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/mozilla/javascript/Scriptable;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    move-object v0, v1

    :goto_3
    if-nez v0, :cond_4

    if-eqz p3, :cond_7

    new-instance v0, Lorg/mozilla/javascript/NativeJavaPackage;

    const/4 v1, 0x1

    iget-object v3, p0, Lorg/mozilla/javascript/NativeJavaPackage;->classLoader:Ljava/lang/ClassLoader;

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/NativeJavaPackage;-><init>(ZLjava/lang/String;Ljava/lang/ClassLoader;)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeJavaPackage;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;)V

    :cond_4
    :goto_4
    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, v0}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/mozilla/javascript/NativeJavaPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    :cond_6
    invoke-static {v2}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lorg/mozilla/javascript/NativeJavaPackage;->negativeCache:Ljava/util/Set;

    if-nez v1, :cond_8

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/mozilla/javascript/NativeJavaPackage;->negativeCache:Ljava/util/Set;

    :cond_8
    iget-object v1, p0, Lorg/mozilla/javascript/NativeJavaPackage;->negativeCache:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :cond_9
    move-object v0, v1

    goto :goto_3
.end method

.method public has(ILorg/mozilla/javascript/Scriptable;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaPackage;->classLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaPackage;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "msg.pkg.int"

    invoke-static {v0}, Lorg/mozilla/javascript/Context;->reportRuntimeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0
.end method

.method public put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[JavaPackage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/NativeJavaPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
