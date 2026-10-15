###### Class w4.d (w4.d)
.class public abstract Lw4/d;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final a:Lv4/a;

.field private final b:Landroid/content/IntentFilter;

.field private final c:Landroid/content/Context;

.field protected final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lw4/a<",
            "TStateT;>;>;"
        }
    .end annotation
.end field

.field private e:Lw4/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw4/c;"
        }
    .end annotation
.end field

.field private volatile f:Z


# direct methods
.method protected constructor <init>(Lv4/a;Landroid/content/IntentFilter;Landroid/content/Context;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lw4/d;->d:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Lw4/d;->e:Lw4/c;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lw4/d;->f:Z

    iput-object p1, p0, Lw4/d;->a:Lv4/a;

    iput-object p2, p0, Lw4/d;->b:Landroid/content/IntentFilter;

    .line 2
    invoke-static {p3}, Lv4/p;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lw4/d;->c:Landroid/content/Context;

    return-void
.end method

.method private final b()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lw4/d;->f:Z

    const/4 v1, 0x0

    if-nez v0, :cond_d

    iget-object v0, p0, Lw4/d;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    :cond_d
    iget-object v0, p0, Lw4/d;->e:Lw4/c;

    if-nez v0, :cond_1f

    new-instance v0, Lw4/c;

    .line 2
    invoke-direct {v0, p0, v1}, Lw4/c;-><init>(Lw4/d;Lw4/b;)V

    iput-object v0, p0, Lw4/d;->e:Lw4/c;

    iget-object v2, p0, Lw4/d;->c:Landroid/content/Context;

    iget-object v3, p0, Lw4/d;->b:Landroid/content/IntentFilter;

    .line 3
    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1f
    iget-boolean v0, p0, Lw4/d;->f:Z

    if-nez v0, :cond_36

    iget-object v0, p0, Lw4/d;->d:Ljava/util/Set;

    .line 4
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lw4/d;->e:Lw4/c;

    if-eqz v0, :cond_36

    iget-object v2, p0, Lw4/d;->c:Landroid/content/Context;

    .line 5
    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lw4/d;->e:Lw4/c;

    :cond_36
    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public final declared-synchronized c(Z)V
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iput-boolean p1, p0, Lw4/d;->f:Z

    invoke-direct {p0}, Lw4/d;->b()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TStateT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lw4/d;->d:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw4/a;

    .line 2
    invoke-interface {v1, p1}, Lw4/a;->a(Ljava/lang/Object;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1e

    goto :goto_c

    :cond_1c
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit p0

    goto :goto_22

    :goto_21
    throw p1

    :goto_22
    goto :goto_21
.end method

.method public final declared-synchronized e()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lw4/d;->e:Lw4/c;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    goto :goto_e

    :goto_d
    throw v0

    :goto_e
    goto :goto_d
.end method
