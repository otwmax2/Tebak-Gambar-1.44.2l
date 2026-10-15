###### Class com.twitter.sdk.android.core.x (com.twitter.sdk.android.core.x)
.class public Lcom/twitter/sdk/android/core/x;
.super Ljava/lang/Object;
.source "TwitterCore.java"


# static fields
.field static volatile i:Lcom/twitter/sdk/android/core/x;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field a:Lcom/twitter/sdk/android/core/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/n<",
            "Lcom/twitter/sdk/android/core/a0;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/twitter/sdk/android/core/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/n<",
            "Lcom/twitter/sdk/android/core/e;",
            ">;"
        }
    .end annotation
.end field

.field c:Lc9/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc9/g<",
            "Lcom/twitter/sdk/android/core/a0;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/twitter/sdk/android/core/r;

.field private final e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/twitter/sdk/android/core/m;",
            "Lcom/twitter/sdk/android/core/p;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/content/Context;

.field private volatile g:Lcom/twitter/sdk/android/core/p;

.field private volatile h:Lcom/twitter/sdk/android/core/f;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/r;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/twitter/sdk/android/core/x;-><init>(Lcom/twitter/sdk/android/core/r;Ljava/util/concurrent/ConcurrentHashMap;Lcom/twitter/sdk/android/core/p;)V

    return-void
.end method

.method constructor <init>(Lcom/twitter/sdk/android/core/r;Ljava/util/concurrent/ConcurrentHashMap;Lcom/twitter/sdk/android/core/p;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/r;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/twitter/sdk/android/core/m;",
            "Lcom/twitter/sdk/android/core/p;",
            ">;",
            "Lcom/twitter/sdk/android/core/p;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/twitter/sdk/android/core/x;->d:Lcom/twitter/sdk/android/core/r;

    .line 4
    iput-object p2, p0, Lcom/twitter/sdk/android/core/x;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    iput-object p3, p0, Lcom/twitter/sdk/android/core/x;->g:Lcom/twitter/sdk/android/core/p;

    .line 6
    invoke-static {}, Lcom/twitter/sdk/android/core/o;->f()Lcom/twitter/sdk/android/core/o;

    move-result-object p1

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/x;->g()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/twitter/sdk/android/core/o;->d(Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/twitter/sdk/android/core/x;->f:Landroid/content/Context;

    .line 7
    new-instance p2, Lcom/twitter/sdk/android/core/i;

    new-instance p3, Le9/b;

    const-string v0, "session_store"

    invoke-direct {p3, p1, v0}, Le9/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/twitter/sdk/android/core/a0$a;

    invoke-direct {v1}, Lcom/twitter/sdk/android/core/a0$a;-><init>()V

    const-string v2, "active_twittersession"

    const-string v3, "twittersession"

    invoke-direct {p2, p3, v1, v2, v3}, Lcom/twitter/sdk/android/core/i;-><init>(Le9/a;Le9/d;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/twitter/sdk/android/core/x;->a:Lcom/twitter/sdk/android/core/n;

    .line 8
    new-instance p2, Lcom/twitter/sdk/android/core/i;

    new-instance p3, Le9/b;

    invoke-direct {p3, p1, v0}, Le9/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Lcom/twitter/sdk/android/core/e$a;

    invoke-direct {p1}, Lcom/twitter/sdk/android/core/e$a;-><init>()V

    const-string v0, "active_guestsession"

    const-string v1, "guestsession"

    invoke-direct {p2, p3, p1, v0, v1}, Lcom/twitter/sdk/android/core/i;-><init>(Le9/a;Le9/d;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/twitter/sdk/android/core/x;->b:Lcom/twitter/sdk/android/core/n;

    .line 9
    new-instance p1, Lc9/g;

    iget-object p2, p0, Lcom/twitter/sdk/android/core/x;->a:Lcom/twitter/sdk/android/core/n;

    .line 10
    invoke-static {}, Lcom/twitter/sdk/android/core/o;->f()Lcom/twitter/sdk/android/core/o;

    move-result-object p3

    invoke-virtual {p3}, Lcom/twitter/sdk/android/core/o;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object p3

    new-instance v0, Lc9/k;

    invoke-direct {v0}, Lc9/k;-><init>()V

    invoke-direct {p1, p2, p3, v0}, Lc9/g;-><init>(Lcom/twitter/sdk/android/core/n;Ljava/util/concurrent/ExecutorService;Lc9/h;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/core/x;->c:Lc9/g;

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/twitter/sdk/android/core/x;->k()V

    return-void
.end method

.method private declared-synchronized b()V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/x;->h:Lcom/twitter/sdk/android/core/f;

    if-nez v0, :cond_18

    .line 2
    new-instance v0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;

    new-instance v1, Lc9/j;

    invoke-direct {v1}, Lc9/j;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;-><init>(Lcom/twitter/sdk/android/core/x;Lc9/j;)V

    .line 3
    new-instance v1, Lcom/twitter/sdk/android/core/f;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/x;->b:Lcom/twitter/sdk/android/core/n;

    invoke-direct {v1, v0, v2}, Lcom/twitter/sdk/android/core/f;-><init>(Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;Lcom/twitter/sdk/android/core/n;)V

    iput-object v1, p0, Lcom/twitter/sdk/android/core/x;->h:Lcom/twitter/sdk/android/core/f;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 4
    :cond_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static h()Lcom/twitter/sdk/android/core/x;
    .registers 3

    .line 1
    sget-object v0, Lcom/twitter/sdk/android/core/x;->i:Lcom/twitter/sdk/android/core/x;

    if-nez v0, :cond_2c

    .line 2
    const-class v0, Lcom/twitter/sdk/android/core/x;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lcom/twitter/sdk/android/core/x;->i:Lcom/twitter/sdk/android/core/x;

    if-nez v1, :cond_27

    .line 4
    new-instance v1, Lcom/twitter/sdk/android/core/x;

    invoke-static {}, Lcom/twitter/sdk/android/core/o;->f()Lcom/twitter/sdk/android/core/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/sdk/android/core/o;->h()Lcom/twitter/sdk/android/core/r;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/twitter/sdk/android/core/x;-><init>(Lcom/twitter/sdk/android/core/r;)V

    sput-object v1, Lcom/twitter/sdk/android/core/x;->i:Lcom/twitter/sdk/android/core/x;

    .line 5
    invoke-static {}, Lcom/twitter/sdk/android/core/o;->f()Lcom/twitter/sdk/android/core/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/o;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sget-object v2, Lcom/twitter/sdk/android/core/w;->o:Lcom/twitter/sdk/android/core/w;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 6
    :cond_27
    monitor-exit v0

    goto :goto_2c

    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw v1

    .line 7
    :cond_2c
    :goto_2c
    sget-object v0, Lcom/twitter/sdk/android/core/x;->i:Lcom/twitter/sdk/android/core/x;

    return-object v0
.end method

.method private static synthetic k()V
    .registers 1

    .line 1
    sget-object v0, Lcom/twitter/sdk/android/core/x;->i:Lcom/twitter/sdk/android/core/x;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/x;->c()V

    return-void
.end method


# virtual methods
.method c()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/x;->a:Lcom/twitter/sdk/android/core/n;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/n;->c()Lcom/twitter/sdk/android/core/m;

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/core/x;->b:Lcom/twitter/sdk/android/core/n;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/n;->c()Lcom/twitter/sdk/android/core/m;

    .line 3
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/x;->f()Lcom/twitter/sdk/android/core/f;

    .line 4
    iget-object v0, p0, Lcom/twitter/sdk/android/core/x;->c:Lc9/g;

    .line 5
    invoke-static {}, Lcom/twitter/sdk/android/core/o;->f()Lcom/twitter/sdk/android/core/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/o;->c()Lc9/a;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Lc9/g;->a(Lc9/a;)V

    return-void
.end method

.method public d(Lcom/twitter/sdk/android/core/a0;)Lcom/twitter/sdk/android/core/p;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/x;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/core/x;->e:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/twitter/sdk/android/core/p;

    invoke-direct {v1, p1}, Lcom/twitter/sdk/android/core/p;-><init>(Lcom/twitter/sdk/android/core/a0;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_12
    iget-object v0, p0, Lcom/twitter/sdk/android/core/x;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/twitter/sdk/android/core/p;

    return-object p1
.end method

.method public e()Lcom/twitter/sdk/android/core/r;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/x;->d:Lcom/twitter/sdk/android/core/r;

    return-object v0
.end method

.method public f()Lcom/twitter/sdk/android/core/f;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/x;->h:Lcom/twitter/sdk/android/core/f;

    if-nez v0, :cond_7

    .line 2
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/x;->b()V

    .line 3
    :cond_7
    iget-object v0, p0, Lcom/twitter/sdk/android/core/x;->h:Lcom/twitter/sdk/android/core/f;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    const-string v0, "com.twitter.sdk.android:twitter-core"

    return-object v0
.end method

.method public i()Lcom/twitter/sdk/android/core/n;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/sdk/android/core/n<",
            "Lcom/twitter/sdk/android/core/a0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/x;->a:Lcom/twitter/sdk/android/core/n;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    const-string v0, "3.3.0.12"

    return-object v0
.end method

###### Class com.twitter.sdk.android.core.w (com.twitter.sdk.android.core.w)
.class public final synthetic Lcom/twitter/sdk/android/core/w;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic o:Lcom/twitter/sdk/android/core/w;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/twitter/sdk/android/core/w;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/w;-><init>()V

    sput-object v0, Lcom/twitter/sdk/android/core/w;->o:Lcom/twitter/sdk/android/core/w;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-static {}, Lcom/twitter/sdk/android/core/x;->a()V

    return-void
.end method
