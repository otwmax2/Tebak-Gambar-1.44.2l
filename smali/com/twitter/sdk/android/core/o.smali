###### Class com.twitter.sdk.android.core.o (com.twitter.sdk.android.core.o)
.class public Lcom/twitter/sdk/android/core/o;
.super Ljava/lang/Object;
.source "Twitter.java"


# static fields
.field static final g:Lcom/twitter/sdk/android/core/h;

.field static volatile h:Lcom/twitter/sdk/android/core/o;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Lcom/twitter/sdk/android/core/r;

.field private final d:Lc9/a;

.field private final e:Lcom/twitter/sdk/android/core/h;

.field private final f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/twitter/sdk/android/core/d;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/d;-><init>()V

    sput-object v0, Lcom/twitter/sdk/android/core/o;->g:Lcom/twitter/sdk/android/core/h;

    return-void
.end method

.method private constructor <init>(Lcom/twitter/sdk/android/core/u;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/twitter/sdk/android/core/u;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/o;->a:Landroid/content/Context;

    .line 3
    new-instance v1, Lc9/a;

    invoke-direct {v1, v0}, Lc9/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/twitter/sdk/android/core/o;->d:Lc9/a;

    .line 4
    iget-object v1, p1, Lcom/twitter/sdk/android/core/u;->c:Lcom/twitter/sdk/android/core/r;

    if-nez v1, :cond_28

    const-string v1, "com.twitter.sdk.android.CONSUMER_KEY"

    const-string v2, ""

    .line 5
    invoke-static {v0, v1, v2}, Lc9/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.twitter.sdk.android.CONSUMER_SECRET"

    .line 6
    invoke-static {v0, v3, v2}, Lc9/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v2, Lcom/twitter/sdk/android/core/r;

    invoke-direct {v2, v1, v0}, Lcom/twitter/sdk/android/core/r;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/twitter/sdk/android/core/o;->c:Lcom/twitter/sdk/android/core/r;

    goto :goto_2a

    .line 8
    :cond_28
    iput-object v1, p0, Lcom/twitter/sdk/android/core/o;->c:Lcom/twitter/sdk/android/core/r;

    .line 9
    :goto_2a
    iget-object v0, p1, Lcom/twitter/sdk/android/core/u;->d:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_37

    const-string v0, "twitter-worker"

    .line 10
    invoke-static {v0}, Lc9/e;->e(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/o;->b:Ljava/util/concurrent/ExecutorService;

    goto :goto_39

    .line 11
    :cond_37
    iput-object v0, p0, Lcom/twitter/sdk/android/core/o;->b:Ljava/util/concurrent/ExecutorService;

    .line 12
    :goto_39
    iget-object v0, p1, Lcom/twitter/sdk/android/core/u;->b:Lcom/twitter/sdk/android/core/h;

    if-nez v0, :cond_42

    .line 13
    sget-object v0, Lcom/twitter/sdk/android/core/o;->g:Lcom/twitter/sdk/android/core/h;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/o;->e:Lcom/twitter/sdk/android/core/h;

    goto :goto_44

    .line 14
    :cond_42
    iput-object v0, p0, Lcom/twitter/sdk/android/core/o;->e:Lcom/twitter/sdk/android/core/h;

    .line 15
    :goto_44
    iget-object p1, p1, Lcom/twitter/sdk/android/core/u;->e:Ljava/lang/Boolean;

    if-nez p1, :cond_4c

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/twitter/sdk/android/core/o;->f:Z

    goto :goto_52

    .line 17
    :cond_4c
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/twitter/sdk/android/core/o;->f:Z

    :goto_52
    return-void
.end method

.method static a()V
    .registers 2

    .line 1
    sget-object v0, Lcom/twitter/sdk/android/core/o;->h:Lcom/twitter/sdk/android/core/o;

    if-eqz v0, :cond_5

    return-void

    .line 2
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must initialize Twitter before using getInstance()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static declared-synchronized b(Lcom/twitter/sdk/android/core/u;)Lcom/twitter/sdk/android/core/o;
    .registers 3

    const-class v0, Lcom/twitter/sdk/android/core/o;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/twitter/sdk/android/core/o;->h:Lcom/twitter/sdk/android/core/o;

    if-nez v1, :cond_12

    .line 2
    new-instance v1, Lcom/twitter/sdk/android/core/o;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/core/o;-><init>(Lcom/twitter/sdk/android/core/u;)V

    sput-object v1, Lcom/twitter/sdk/android/core/o;->h:Lcom/twitter/sdk/android/core/o;

    .line 3
    sget-object p0, Lcom/twitter/sdk/android/core/o;->h:Lcom/twitter/sdk/android/core/o;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_16

    monitor-exit v0

    return-object p0

    .line 4
    :cond_12
    :try_start_12
    sget-object p0, Lcom/twitter/sdk/android/core/o;->h:Lcom/twitter/sdk/android/core/o;
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_16

    monitor-exit v0

    return-object p0

    :catchall_16
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static f()Lcom/twitter/sdk/android/core/o;
    .registers 1

    .line 1
    invoke-static {}, Lcom/twitter/sdk/android/core/o;->a()V

    .line 2
    sget-object v0, Lcom/twitter/sdk/android/core/o;->h:Lcom/twitter/sdk/android/core/o;

    return-object v0
.end method

.method public static g()Lcom/twitter/sdk/android/core/h;
    .registers 1

    .line 1
    sget-object v0, Lcom/twitter/sdk/android/core/o;->h:Lcom/twitter/sdk/android/core/o;

    if-nez v0, :cond_7

    .line 2
    sget-object v0, Lcom/twitter/sdk/android/core/o;->g:Lcom/twitter/sdk/android/core/h;

    return-object v0

    .line 3
    :cond_7
    sget-object v0, Lcom/twitter/sdk/android/core/o;->h:Lcom/twitter/sdk/android/core/o;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/o;->e:Lcom/twitter/sdk/android/core/h;

    return-object v0
.end method

.method public static i(Lcom/twitter/sdk/android/core/u;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/twitter/sdk/android/core/o;->b(Lcom/twitter/sdk/android/core/u;)Lcom/twitter/sdk/android/core/o;

    return-void
.end method


# virtual methods
.method public c()Lc9/a;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/o;->d:Lc9/a;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Landroid/content/Context;
    .registers 6

    .line 1
    new-instance v0, Lcom/twitter/sdk/android/core/v;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/o;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".TwitterKit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/twitter/sdk/android/core/v;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public e()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/o;->b:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public h()Lcom/twitter/sdk/android/core/r;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/o;->c:Lcom/twitter/sdk/android/core/r;

    return-object v0
.end method
