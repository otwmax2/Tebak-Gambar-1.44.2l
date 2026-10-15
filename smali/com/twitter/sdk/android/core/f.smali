###### Class com.twitter.sdk.android.core.f (com.twitter.sdk.android.core.f)
.class public Lcom/twitter/sdk/android/core/f;
.super Ljava/lang/Object;
.source "GuestSessionProvider.java"


# instance fields
.field private final a:Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;

.field private final b:Lcom/twitter/sdk/android/core/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/n<",
            "Lcom/twitter/sdk/android/core/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;Lcom/twitter/sdk/android/core/n;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;",
            "Lcom/twitter/sdk/android/core/n<",
            "Lcom/twitter/sdk/android/core/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/twitter/sdk/android/core/f;->a:Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;

    .line 3
    iput-object p2, p0, Lcom/twitter/sdk/android/core/f;->b:Lcom/twitter/sdk/android/core/n;

    return-void
.end method

.method static synthetic a(Lcom/twitter/sdk/android/core/f;)Lcom/twitter/sdk/android/core/n;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/twitter/sdk/android/core/f;->b:Lcom/twitter/sdk/android/core/n;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized b()Lcom/twitter/sdk/android/core/e;
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/f;->b:Lcom/twitter/sdk/android/core/n;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/n;->c()Lcom/twitter/sdk/android/core/m;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/e;

    .line 2
    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/f;->c(Lcom/twitter/sdk/android/core/e;)Z

    move-result v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1e

    if-eqz v1, :cond_11

    .line 3
    monitor-exit p0

    return-object v0

    .line 4
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/f;->e()V

    .line 5
    iget-object v0, p0, Lcom/twitter/sdk/android/core/f;->b:Lcom/twitter/sdk/android/core/n;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/n;->c()Lcom/twitter/sdk/android/core/m;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/e;
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_1e

    monitor-exit p0

    return-object v0

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method c(Lcom/twitter/sdk/android/core/e;)Z
    .registers 3

    if-eqz p1, :cond_16

    .line 1
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/m;->a()Lcom/twitter/sdk/android/core/a;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 2
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/m;->a()Lcom/twitter/sdk/android/core/a;

    move-result-object p1

    check-cast p1, Lcom/twitter/sdk/android/core/internal/oauth/a;

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/internal/oauth/a;->w()Z

    move-result p1

    if-nez p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method

.method public declared-synchronized d(Lcom/twitter/sdk/android/core/e;)Lcom/twitter/sdk/android/core/e;
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/f;->b:Lcom/twitter/sdk/android/core/n;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/n;->c()Lcom/twitter/sdk/android/core/m;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/e;

    if-eqz p1, :cond_14

    .line 2
    invoke-virtual {p1, v0}, Lcom/twitter/sdk/android/core/m;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 3
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/f;->e()V

    .line 4
    :cond_14
    iget-object p1, p0, Lcom/twitter/sdk/android/core/f;->b:Lcom/twitter/sdk/android/core/n;

    invoke-interface {p1}, Lcom/twitter/sdk/android/core/n;->c()Lcom/twitter/sdk/android/core/m;

    move-result-object p1

    check-cast p1, Lcom/twitter/sdk/android/core/e;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    monitor-exit p0

    return-object p1

    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method e()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/twitter/sdk/android/core/o;->g()Lcom/twitter/sdk/android/core/h;

    move-result-object v0

    const-string v1, "GuestSessionProvider"

    const-string v2, "Refreshing expired guest session."

    invoke-interface {v0, v1, v2}, Lcom/twitter/sdk/android/core/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 3
    iget-object v1, p0, Lcom/twitter/sdk/android/core/f;->a:Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;

    new-instance v2, Lcom/twitter/sdk/android/core/f$a;

    invoke-direct {v2, p0, v0}, Lcom/twitter/sdk/android/core/f$a;-><init>(Lcom/twitter/sdk/android/core/f;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;->j(Lcom/twitter/sdk/android/core/c;)V

    .line 4
    :try_start_1b
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1e} :catch_1f

    goto :goto_26

    .line 5
    :catch_1f
    iget-object v0, p0, Lcom/twitter/sdk/android/core/f;->b:Lcom/twitter/sdk/android/core/n;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/twitter/sdk/android/core/n;->b(J)V

    :goto_26
    return-void
.end method

###### Class com.twitter.sdk.android.core.f.a (com.twitter.sdk.android.core.f$a)
.class Lcom/twitter/sdk/android/core/f$a;
.super Lcom/twitter/sdk/android/core/c;
.source "GuestSessionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/core/f;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/c<",
        "Lcom/twitter/sdk/android/core/internal/oauth/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/CountDownLatch;

.field final synthetic b:Lcom/twitter/sdk/android/core/f;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/f;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/twitter/sdk/android/core/f$a;->b:Lcom/twitter/sdk/android/core/f;

    iput-object p2, p0, Lcom/twitter/sdk/android/core/f$a;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/c;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/twitter/sdk/android/core/y;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/twitter/sdk/android/core/f$a;->b:Lcom/twitter/sdk/android/core/f;

    invoke-static {p1}, Lcom/twitter/sdk/android/core/f;->a(Lcom/twitter/sdk/android/core/f;)Lcom/twitter/sdk/android/core/n;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-interface {p1, v0, v1}, Lcom/twitter/sdk/android/core/n;->b(J)V

    .line 2
    iget-object p1, p0, Lcom/twitter/sdk/android/core/f$a;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public d(Lcom/twitter/sdk/android/core/l;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/l<",
            "Lcom/twitter/sdk/android/core/internal/oauth/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/f$a;->b:Lcom/twitter/sdk/android/core/f;

    invoke-static {v0}, Lcom/twitter/sdk/android/core/f;->a(Lcom/twitter/sdk/android/core/f;)Lcom/twitter/sdk/android/core/n;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/core/e;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/l;->a:Ljava/lang/Object;

    check-cast p1, Lcom/twitter/sdk/android/core/internal/oauth/a;

    invoke-direct {v1, p1}, Lcom/twitter/sdk/android/core/e;-><init>(Lcom/twitter/sdk/android/core/internal/oauth/a;)V

    invoke-interface {v0, v1}, Lcom/twitter/sdk/android/core/n;->d(Lcom/twitter/sdk/android/core/m;)V

    .line 2
    iget-object p1, p0, Lcom/twitter/sdk/android/core/f$a;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
