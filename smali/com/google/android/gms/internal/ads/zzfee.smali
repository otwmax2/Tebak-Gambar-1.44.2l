###### Class com.google.android.gms.internal.ads.zzfee (com.google.android.gms.internal.ads.zzfee)
.class public final Lcom/google/android/gms/internal/ads/zzfee;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfec;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:J

.field private c:J

.field private d:Z

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Z

.field private final o:I

.field private p:I

.field private q:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfee;->b:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfee;->c:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfee;->d:Z

    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfee;->p:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfee;->q:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfee;->e:I

    const-string v1, ""

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfee;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfee;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfee;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfee;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfee;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfee;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfee;->l:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfee;->m:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfee;->n:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfee;->a:Landroid/content/Context;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfee;->o:I

    return-void
.end method

.method static bridge synthetic H(Lcom/google/android/gms/internal/ads/zzfee;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfee;->g:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/google/android/gms/internal/ads/zzfee;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfee;->l:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/google/android/gms/internal/ads/zzfee;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfee;->f:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/google/android/gms/internal/ads/zzfee;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfee;->h:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic k(Lcom/google/android/gms/internal/ads/zzfee;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfee;->i:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic l(Lcom/google/android/gms/internal/ads/zzfee;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfee;->k:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic m(Lcom/google/android/gms/internal/ads/zzfee;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfee;->j:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic n(Lcom/google/android/gms/internal/ads/zzfee;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzfee;->d:Z

    return p0
.end method

.method static bridge synthetic p(Lcom/google/android/gms/internal/ads/zzfee;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzfee;->o:I

    return p0
.end method

.method static bridge synthetic q(Lcom/google/android/gms/internal/ads/zzfee;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzfee;->p:I

    return p0
.end method

.method static bridge synthetic r(Lcom/google/android/gms/internal/ads/zzfee;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzfee;->q:I

    return p0
.end method

.method static bridge synthetic t(Lcom/google/android/gms/internal/ads/zzfee;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzfee;->e:I

    return p0
.end method

.method static bridge synthetic u(Lcom/google/android/gms/internal/ads/zzfee;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfee;->b:J

    return-wide v0
.end method

.method static bridge synthetic w(Lcom/google/android/gms/internal/ads/zzfee;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfee;->c:J

    return-wide v0
.end method


# virtual methods
.method public final declared-synchronized A(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfee;
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfee;->h:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object p0

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized B(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfee;
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfee;->i:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object p0

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized C(Z)Lcom/google/android/gms/internal/ads/zzfee;
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfee;->d:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object p0

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final bridge synthetic D(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfec;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfee;->z(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfee;

    return-object p0
.end method

.method public final declared-synchronized E(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfee;
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->b8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbsf;->f(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfee;->k:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbsf;->e(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfng;->c(C)Lcom/google/android/gms/internal/ads/zzfng;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfoh;->c(Lcom/google/android/gms/internal/ads/zzfng;)Lcom/google/android/gms/internal/ads/zzfoh;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfoh;->d(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfee;->j:Ljava/lang/String;
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_39

    :cond_37
    monitor-exit p0

    return-object p0

    :catchall_39
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized F()Lcom/google/android/gms/internal/ads/zzfee;
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->s()Lcom/google/android/gms/ads/internal/util/zzaa;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfee;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/util/zzaa;->k(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfee;->e:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfee;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_17

    goto :goto_25

    .line 3
    :cond_17
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-nez v0, :cond_1e

    goto :goto_25

    .line 4
    :cond_1e
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_24

    const/4 v1, 0x4

    goto :goto_25

    :cond_24
    const/4 v1, 0x3

    .line 5
    :goto_25
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfee;->q:I

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfee;->b:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfee;->n:Z
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_36

    monitor-exit p0

    return-object p0

    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized G()Lcom/google/android/gms/internal/ads/zzfee;
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfee;->c:J
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object p0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final bridge synthetic O(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfec;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfee;->A(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfee;

    return-object p0
.end method

.method public final bridge synthetic a(Lcom/google/android/gms/internal/ads/zzeyn;)Lcom/google/android/gms/internal/ads/zzfec;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfee;->y(Lcom/google/android/gms/internal/ads/zzeyn;)Lcom/google/android/gms/internal/ads/zzfee;

    return-object p0
.end method

.method public final bridge synthetic b(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfec;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfee;->E(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfee;

    return-object p0
.end method

.method public final bridge synthetic f()Lcom/google/android/gms/internal/ads/zzfec;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfee;->F()Lcom/google/android/gms/internal/ads/zzfee;

    return-object p0
.end method

.method public final bridge synthetic g()Lcom/google/android/gms/internal/ads/zzfec;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfee;->G()Lcom/google/android/gms/internal/ads/zzfee;

    return-object p0
.end method

.method public final declared-synchronized h()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfee;->n:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final i()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfee;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized j()Lcom/google/android/gms/internal/ads/zzfeg;
    .registers 7

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfee;->m:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_24

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    monitor-exit p0

    return-object v1

    :cond_8
    const/4 v0, 0x1

    :try_start_9
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfee;->m:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfee;->n:Z

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfee;->F()Lcom/google/android/gms/internal/ads/zzfee;

    :cond_12
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzfee;->c:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1d

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfee;->G()Lcom/google/android/gms/internal/ads/zzfee;

    :cond_1d
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfeg;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzfeg;-><init>(Lcom/google/android/gms/internal/ads/zzfee;Lcom/google/android/gms/internal/ads/zzfef;)V
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_24

    monitor-exit p0

    return-object v0

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final bridge synthetic l0(I)Lcom/google/android/gms/internal/ads/zzfec;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfee;->o(I)Lcom/google/android/gms/internal/ads/zzfee;

    return-object p0
.end method

.method public final declared-synchronized o(I)Lcom/google/android/gms/internal/ads/zzfee;
    .registers 2

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfee;->p:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object p0

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final bridge synthetic s(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfec;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfee;->B(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfee;

    return-object p0
.end method

.method public final bridge synthetic v(Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/internal/ads/zzfec;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfee;->x(Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/internal/ads/zzfee;

    return-object p0
.end method

.method public final declared-synchronized x(Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/internal/ads/zzfee;
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/client/zze;->s:Landroid/os/IBinder;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_23

    if-nez p1, :cond_7

    monitor-exit p0

    return-object p0

    .line 2
    :cond_7
    :try_start_7
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcuh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcuh;->i()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfee;->f:Ljava/lang/String;

    :cond_15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcuh;->g()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfee;->g:Ljava/lang/String;
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_23

    :cond_21
    monitor-exit p0

    return-object p0

    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized y(Lcom/google/android/gms/internal/ads/zzeyn;)Lcom/google/android/gms/internal/ads/zzfee;
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzeyn;->b:Lcom/google/android/gms/internal/ads/zzeyf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeyf;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzeyn;->b:Lcom/google/android/gms/internal/ads/zzeyf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeyf;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfee;->f:Ljava/lang/String;

    :cond_11
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeyn;->a:Ljava/util/List;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzeyc;

    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzeyc;->c0:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 4
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzeyc;->c0:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfee;->g:Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_31

    :cond_2f
    monitor-exit p0

    return-object p0

    :catchall_31
    move-exception p1

    monitor-exit p0

    goto :goto_35

    :goto_34
    throw p1

    :goto_35
    goto :goto_34
.end method

.method public final bridge synthetic y0(Z)Lcom/google/android/gms/internal/ads/zzfec;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfee;->C(Z)Lcom/google/android/gms/internal/ads/zzfee;

    return-object p0
.end method

.method public final declared-synchronized z(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfee;
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->b8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfee;->l:Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    :cond_15
    monitor-exit p0

    return-object p0

    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method
