.class Lorg/mozilla/javascript/PolicySecurityController$Loader;
.super Ljava/security/SecureClassLoader;

# interfaces
.implements Lorg/mozilla/javascript/GeneratedClassLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/PolicySecurityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Loader"
.end annotation


# instance fields
.field private final codeSource:Ljava/security/CodeSource;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;Ljava/security/CodeSource;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/security/SecureClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    iput-object p2, p0, Lorg/mozilla/javascript/PolicySecurityController$Loader;->codeSource:Ljava/security/CodeSource;

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

    iget-object v5, p0, Lorg/mozilla/javascript/PolicySecurityController$Loader;->codeSource:Ljava/security/CodeSource;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/PolicySecurityController$Loader;->defineClass(Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;

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

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/PolicySecurityController$Loader;->resolveClass(Ljava/lang/Class;)V

    return-void
.end method
