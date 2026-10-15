###### Class com.twitter.sdk.android.core.p (com.twitter.sdk.android.core.p)
.class public Lcom/twitter/sdk/android/core/p;
.super Ljava/lang/Object;
.source "TwitterApiClient.java"


# instance fields
.field final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lwa/m;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/twitter/sdk/android/core/x;->h()Lcom/twitter/sdk/android/core/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/x;->f()Lcom/twitter/sdk/android/core/f;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ld9/e;->d(Lcom/twitter/sdk/android/core/f;)Lja/x;

    move-result-object v0

    new-instance v1, Lc9/j;

    invoke-direct {v1}, Lc9/j;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/twitter/sdk/android/core/p;-><init>(Lja/x;Lc9/j;)V

    return-void
.end method

.method public constructor <init>(Lcom/twitter/sdk/android/core/a0;)V
    .registers 3

    .line 3
    invoke-static {}, Lcom/twitter/sdk/android/core/x;->h()Lcom/twitter/sdk/android/core/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/x;->e()Lcom/twitter/sdk/android/core/r;

    move-result-object v0

    .line 4
    invoke-static {p1, v0}, Ld9/e;->e(Lcom/twitter/sdk/android/core/m;Lcom/twitter/sdk/android/core/r;)Lja/x;

    move-result-object p1

    new-instance v0, Lc9/j;

    invoke-direct {v0}, Lc9/j;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/twitter/sdk/android/core/p;-><init>(Lja/x;Lc9/j;)V

    return-void
.end method

.method constructor <init>(Lja/x;Lc9/j;)V
    .registers 4

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/p;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/p;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/twitter/sdk/android/core/p;->c(Lja/x;Lc9/j;)Lwa/m;

    move-result-object p1

    iput-object p1, p0, Lcom/twitter/sdk/android/core/p;->b:Lwa/m;

    return-void
.end method

.method private a()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v0
.end method

.method private b()Lcom/google/gson/f;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/gson/g;

    invoke-direct {v0}, Lcom/google/gson/g;-><init>()V

    new-instance v1, Lf9/l;

    invoke-direct {v1}, Lf9/l;-><init>()V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/gson/g;->d(Lcom/google/gson/x;)Lcom/google/gson/g;

    move-result-object v0

    new-instance v1, Lf9/m;

    invoke-direct {v1}, Lf9/m;-><init>()V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/gson/g;->d(Lcom/google/gson/x;)Lcom/google/gson/g;

    move-result-object v0

    const-class v1, Lf9/c;

    new-instance v2, Lf9/d;

    invoke-direct {v2}, Lf9/d;-><init>()V

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/g;->c(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/g;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/gson/g;->b()Lcom/google/gson/f;

    move-result-object v0

    return-object v0
.end method

.method private c(Lja/x;Lc9/j;)Lwa/m;
    .registers 4

    .line 1
    new-instance v0, Lwa/m$b;

    invoke-direct {v0}, Lwa/m$b;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lwa/m$b;->f(Lja/x;)Lwa/m$b;

    move-result-object p1

    .line 3
    invoke-virtual {p2}, Lc9/j;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lwa/m$b;->c(Ljava/lang/String;)Lwa/m$b;

    move-result-object p1

    .line 4
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/p;->b()Lcom/google/gson/f;

    move-result-object p2

    invoke-static {p2}, Lxa/a;->e(Lcom/google/gson/f;)Lxa/a;

    move-result-object p2

    invoke-virtual {p1, p2}, Lwa/m$b;->a(Lwa/e$a;)Lwa/m$b;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lwa/m$b;->d()Lwa/m;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public d()Lcom/twitter/sdk/android/core/services/AccountService;
    .registers 2

    .line 1
    const-class v0, Lcom/twitter/sdk/android/core/services/AccountService;

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/p;->f(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/services/AccountService;

    return-object v0
.end method

.method public e()Lcom/twitter/sdk/android/core/services/MediaService;
    .registers 2

    .line 1
    const-class v0, Lcom/twitter/sdk/android/core/services/MediaService;

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/p;->f(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/services/MediaService;

    return-object v0
.end method

.method protected f(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/p;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/core/p;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/p;->b:Lwa/m;

    invoke-virtual {v1, p1}, Lwa/m;->d(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_13
    iget-object v0, p0, Lcom/twitter/sdk/android/core/p;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g()Lcom/twitter/sdk/android/core/services/StatusesService;
    .registers 2

    .line 1
    const-class v0, Lcom/twitter/sdk/android/core/services/StatusesService;

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/p;->f(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/services/StatusesService;

    return-object v0
.end method
