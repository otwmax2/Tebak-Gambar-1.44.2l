###### Class com.google.firebase.installations.FirebaseInstallationsRegistrar (com.google.firebase.installations.FirebaseInstallationsRegistrar)
.class public Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;
.super Ljava/lang/Object;
.source "FirebaseInstallationsRegistrar.java"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-installations"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lk5/e;)Ll6/e;
    .registers 1

    invoke-static {p0}, Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;->lambda$getComponents$0(Lk5/e;)Ll6/e;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(Lk5/e;)Ll6/e;
    .registers 7

    .line 1
    new-instance v0, Lcom/google/firebase/installations/c;

    const-class v1, Lb5/g;

    .line 2
    invoke-interface {p0, v1}, Lk5/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb5/g;

    const-class v2, Li6/i;

    .line 3
    invoke-interface {p0, v2}, Lk5/e;->c(Ljava/lang/Class;)Lk6/b;

    move-result-object v2

    const-class v3, Lf5/a;

    const-class v4, Ljava/util/concurrent/ExecutorService;

    .line 4
    invoke-static {v3, v4}, Lk5/f0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lk5/f0;

    move-result-object v3

    invoke-interface {p0, v3}, Lk5/e;->e(Lk5/f0;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ExecutorService;

    const-class v4, Lf5/b;

    const-class v5, Ljava/util/concurrent/Executor;

    .line 5
    invoke-static {v4, v5}, Lk5/f0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lk5/f0;

    move-result-object v4

    invoke-interface {p0, v4}, Lk5/e;->e(Lk5/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    .line 6
    invoke-static {p0}, Ll5/i;->a(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/firebase/installations/c;-><init>(Lb5/g;Lk6/b;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk5/c<",
            "*>;>;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Lk5/c;

    .line 1
    const-class v1, Ll6/e;

    .line 2
    invoke-static {v1}, Lk5/c;->c(Ljava/lang/Class;)Lk5/c$b;

    move-result-object v1

    const-string v2, "fire-installations"

    .line 3
    invoke-virtual {v1, v2}, Lk5/c$b;->h(Ljava/lang/String;)Lk5/c$b;

    move-result-object v1

    const-class v3, Lb5/g;

    .line 4
    invoke-static {v3}, Lk5/r;->j(Ljava/lang/Class;)Lk5/r;

    move-result-object v3

    invoke-virtual {v1, v3}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v1

    const-class v3, Li6/i;

    .line 5
    invoke-static {v3}, Lk5/r;->i(Ljava/lang/Class;)Lk5/r;

    move-result-object v3

    invoke-virtual {v1, v3}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v1

    const-class v3, Lf5/a;

    const-class v4, Ljava/util/concurrent/ExecutorService;

    .line 6
    invoke-static {v3, v4}, Lk5/f0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lk5/f0;

    move-result-object v3

    invoke-static {v3}, Lk5/r;->k(Lk5/f0;)Lk5/r;

    move-result-object v3

    invoke-virtual {v1, v3}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v1

    const-class v3, Lf5/b;

    const-class v4, Ljava/util/concurrent/Executor;

    .line 7
    invoke-static {v3, v4}, Lk5/f0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lk5/f0;

    move-result-object v3

    invoke-static {v3}, Lk5/r;->k(Lk5/f0;)Lk5/r;

    move-result-object v3

    invoke-virtual {v1, v3}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v1

    sget-object v3, Ll6/f;->a:Ll6/f;

    .line 8
    invoke-virtual {v1, v3}, Lk5/c$b;->f(Lk5/h;)Lk5/c$b;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lk5/c$b;->d()Lk5/c;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 10
    invoke-static {}, Li6/h;->a()Lk5/c;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "17.2.0"

    .line 11
    invoke-static {v2, v1}, Lt6/h;->b(Ljava/lang/String;Ljava/lang/String;)Lk5/c;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 12
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

###### Class l6.f (l6.f)
.class public final synthetic Ll6/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk5/h;


# static fields
.field public static final synthetic a:Ll6/f;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Ll6/f;

    invoke-direct {v0}, Ll6/f;-><init>()V

    sput-object v0, Ll6/f;->a:Ll6/f;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lk5/e;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;->a(Lk5/e;)Ll6/e;

    move-result-object p1

    return-object p1
.end method
