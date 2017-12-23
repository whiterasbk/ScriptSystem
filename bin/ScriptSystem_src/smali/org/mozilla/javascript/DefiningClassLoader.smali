.class public Lorg/mozilla/javascript/DefiningClassLoader;
.super Ljava/lang/ClassLoader;

# interfaces
.implements Lorg/mozilla/javascript/GeneratedClassLoader;


# instance fields
.field private final parentLoader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/DefiningClassLoader;->parentLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/DefiningClassLoader;->parentLoader:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public defineClass(Ljava/lang/String;[B)Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/4 v3, 0x0

    array-length v4, p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/SecurityUtilities;->getProtectionDomain(Ljava/lang/Class;)Ljava/security/ProtectionDomain;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-super/range {v0 .. v5}, Ljava/lang/ClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public linkClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/DefiningClassLoader;->resolveClass(Ljava/lang/Class;)V

    return-void
.end method

.method public loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/DefiningClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/DefiningClassLoader;->parentLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mozilla/javascript/DefiningClassLoader;->parentLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/DefiningClassLoader;->resolveClass(Ljava/lang/Class;)V

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/DefiningClassLoader;->findSystemClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method