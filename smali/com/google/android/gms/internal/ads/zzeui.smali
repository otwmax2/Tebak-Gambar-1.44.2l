###### Class com.google.android.gms.internal.ads.zzeui (com.google.android.gms.internal.ads.zzeui)
.class public final Lcom/google/android/gms/internal/ads/zzeui;
.super Lcom/google/android/gms/ads/internal/client/zzbt;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzo;
.implements Lcom/google/android/gms/internal/ads/zzaus;


# instance fields
.field private final o:Lcom/google/android/gms/internal/ads/zzcgd;

.field private final p:Landroid/content/Context;

.field private q:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final r:Ljava/lang/String;

.field private final s:Lcom/google/android/gms/internal/ads/zzeuc;

.field private final t:Lcom/google/android/gms/internal/ads/zzeua;

.field private final u:Lcom/google/android/gms/internal/ads/zzbzg;

.field private v:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private w:Lcom/google/android/gms/internal/ads/zzcns;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field protected x:Lcom/google/android/gms/internal/ads/zzcoe;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcgd;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeuc;Lcom/google/android/gms/internal/ads/zzeua;Lcom/google/android/gms/internal/ads/zzbzg;)V
    .registers 9

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzbt;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeui;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzeui;->v:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeui;->o:Lcom/google/android/gms/internal/ads/zzcgd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeui;->p:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeui;->r:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeui;->s:Lcom/google/android/gms/internal/ads/zzeuc;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeui;->t:Lcom/google/android/gms/internal/ads/zzeua;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzeui;->u:Lcom/google/android/gms/internal/ads/zzbzg;

    .line 3
    invoke-virtual {p5, p0}, Lcom/google/android/gms/internal/ads/zzeua;->o(Lcom/google/android/gms/ads/internal/overlay/zzo;)V

    return-void
.end method

.method static bridge synthetic Ta(Lcom/google/android/gms/internal/ads/zzeui;)Lcom/google/android/gms/internal/ads/zzeua;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeui;->t:Lcom/google/android/gms/internal/ads/zzeua;

    return-object p0
.end method

.method private final declared-synchronized Ua(I)V
    .registers 7

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeui;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeui;->t:Lcom/google/android/gms/internal/ads/zzeua;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeua;->m()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeui;->w:Lcom/google/android/gms/internal/ads/zzcns;

    if-eqz v0, :cond_1b

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->d()Lcom/google/android/gms/internal/ads/zzatz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzatz;->e(Lcom/google/android/gms/internal/ads/zzaty;)V

    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeui;->x:Lcom/google/android/gms/internal/ads/zzcoe;

    if-eqz v0, :cond_39

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzeui;->v:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_28

    goto :goto_34

    .line 4
    :cond_28
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzeui;->v:J

    sub-long v2, v0, v2

    .line 5
    :goto_34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeui;->x:Lcom/google/android/gms/internal/ads/zzcoe;

    .line 6
    invoke-virtual {v0, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzcoe;->k(JI)V

    .line 7
    :cond_39
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeui;->y()V
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_40

    monitor-exit p0

    return-void

    .line 8
    :cond_3e
    monitor-exit p0

    return-void

    :catchall_40
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final A4(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final declared-synchronized B()V
    .registers 1

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final D3(Lcom/google/android/gms/ads/internal/client/zzl;Lcom/google/android/gms/ads/internal/client/zzbk;)V
    .registers 3

    return-void
.end method

.method public final declared-synchronized D7(Lcom/google/android/gms/ads/internal/client/zzcf;)V
    .registers 2

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final D8(Z)V
    .registers 2

    return-void
.end method

.method public final declared-synchronized Da(Z)V
    .registers 2

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final E7(Lcom/google/android/gms/ads/internal/client/zzw;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeui;->s:Lcom/google/android/gms/internal/ads/zzeuc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzetk;->k(Lcom/google/android/gms/ads/internal/client/zzw;)V

    return-void
.end method

.method public final declared-synchronized F0()V
    .registers 1

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final G(I)V
    .registers 4

    if-eqz p1, :cond_1f

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x2

    if-eqz p1, :cond_1b

    const/4 v1, 0x1

    if-eq p1, v1, :cond_16

    if-eq p1, v0, :cond_11

    const/4 p1, 0x6

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeui;->Ua(I)V

    return-void

    :cond_11
    const/4 p1, 0x3

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeui;->Ua(I)V

    return-void

    :cond_16
    const/4 p1, 0x4

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeui;->Ua(I)V

    return-void

    .line 4
    :cond_1b
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzeui;->Ua(I)V

    return-void

    :cond_1f
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public final G6(Lcom/google/android/gms/internal/ads/zzbuj;)V
    .registers 2

    return-void
.end method

.method public final Ha(Lcom/google/android/gms/internal/ads/zzbro;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public final K7(Lcom/google/android/gms/ads/internal/client/zzby;)V
    .registers 2

    return-void
.end method

.method public final M3(Lcom/google/android/gms/ads/internal/client/zzbe;)V
    .registers 2

    return-void
.end method

.method public final declared-synchronized N()V
    .registers 2

    monitor-enter p0

    :try_start_1
    const-string v0, "pause must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final O1(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final P0()V
    .registers 1

    return-void
.end method

.method public final declared-synchronized P9(Lcom/google/android/gms/ads/internal/client/zzl;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->d:Lcom/google/android/gms/internal/ads/zzbbw;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->w9:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeui;->u:Lcom/google/android/gms/internal/ads/zzbzg;

    .line 5
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbzg;->q:I

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbar;->x9:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v3

    .line 7
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v2, v3, :cond_3d

    if-nez v0, :cond_42

    :cond_3d
    const-string v0, "loadAd must be called on the main UI thread."

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    .line 9
    :cond_42
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeui;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_64

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/zzl;->G:Lcom/google/android/gms/ads/internal/client/zzc;

    if-eqz v0, :cond_52

    goto :goto_64

    :cond_52
    const-string p1, "Failed to load the ad because app ID is missing."

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeui;->t:Lcom/google/android/gms/internal/ads/zzeua;

    const/4 v0, 0x4

    const/4 v2, 0x0

    .line 11
    invoke-static {v0, v2, v2}, Lcom/google/android/gms/internal/ads/zzezx;->d(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzeua;->v(Lcom/google/android/gms/ads/internal/client/zze;)V
    :try_end_62
    .catchall {:try_start_1 .. :try_end_62} :catchall_87

    monitor-exit p0

    return v1

    .line 13
    :cond_64
    :goto_64
    :try_start_64
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeui;->n1()Z

    move-result v0
    :try_end_68
    .catchall {:try_start_64 .. :try_end_68} :catchall_87

    if-eqz v0, :cond_6c

    monitor-exit p0

    return v1

    :cond_6c
    :try_start_6c
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeui;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeug;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeug;-><init>(Lcom/google/android/gms/internal/ads/zzeui;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeui;->s:Lcom/google/android/gms/internal/ads/zzeuc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeui;->r:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzeuh;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzeuh;-><init>(Lcom/google/android/gms/internal/ads/zzeui;)V

    .line 15
    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzetk;->a(Lcom/google/android/gms/ads/internal/client/zzl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzeiq;)Z

    move-result p1
    :try_end_85
    .catchall {:try_start_6c .. :try_end_85} :catchall_87

    monitor-exit p0

    return p1

    :catchall_87
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final Q4()V
    .registers 1

    return-void
.end method

.method public final declared-synchronized R()V
    .registers 2

    monitor-enter p0

    :try_start_1
    const-string v0, "resume must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final X0()V
    .registers 1

    return-void
.end method

.method public final Z9()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final aa(Lcom/google/android/gms/internal/ads/zzavb;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeui;->t:Lcom/google/android/gms/internal/ads/zzeua;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeua;->C(Lcom/google/android/gms/internal/ads/zzavb;)V

    return-void
.end method

.method public final declared-synchronized b()V
    .registers 6

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeui;->x:Lcom/google/android/gms/internal/ads/zzcoe;

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzeui;->v:J

    sub-long/2addr v1, v3

    const/4 v3, 0x1

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcoe;->k(JI)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_18

    monitor-exit p0

    return-void

    :cond_16
    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()Landroid/os/Bundle;
    .registers 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final d6(Lcom/google/android/gms/ads/internal/client/zzcb;)V
    .registers 2

    return-void
.end method

.method public final declared-synchronized e()Lcom/google/android/gms/ads/internal/client/zzq;
    .registers 2

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized e8(Lcom/google/android/gms/ads/internal/client/zzq;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    const-string p1, "setAdSize must be called on the main UI thread."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final g()Lcom/google/android/gms/ads/internal/client/zzbh;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final h()Lcom/google/android/gms/ads/internal/client/zzcb;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized i()Lcom/google/android/gms/ads/internal/client/zzdn;
    .registers 2

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized j()Lcom/google/android/gms/ads/internal/client/zzdq;
    .registers 2

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final k()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method final synthetic l()V
    .registers 2

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzeui;->Ua(I)V

    return-void
.end method

.method public final declared-synchronized l5(Lcom/google/android/gms/internal/ads/zzbbp;)V
    .registers 2

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final m()V
    .registers 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeui;->o:Lcom/google/android/gms/internal/ads/zzcgd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgd;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeue;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzeue;-><init>(Lcom/google/android/gms/internal/ads/zzeui;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final m3(Lcom/google/android/gms/ads/internal/client/zzdu;)V
    .registers 2

    return-void
.end method

.method public final declared-synchronized n1()Z
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeui;->s:Lcom/google/android/gms/internal/ads/zzeuc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzetk;->zza()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final o6(Lcom/google/android/gms/ads/internal/client/zzbh;)V
    .registers 2

    return-void
.end method

.method public final declared-synchronized p()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeui;->r:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized q()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final q2(Lcom/google/android/gms/ads/internal/client/zzci;)V
    .registers 2

    return-void
.end method

.method public final s3(Lcom/google/android/gms/ads/internal/client/zzdg;)V
    .registers 2

    return-void
.end method

.method public final declared-synchronized t6(Lcom/google/android/gms/ads/internal/client/zzfl;)V
    .registers 2

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final v2(Lcom/google/android/gms/internal/ads/zzbrl;)V
    .registers 2

    return-void
.end method

.method public final declared-synchronized x()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized y()V
    .registers 2

    monitor-enter p0

    :try_start_1
    const-string v0, "destroy must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeui;->x:Lcom/google/android/gms/internal/ads/zzcoe;

    if-eqz v0, :cond_f

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqm;->a()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_11

    monitor-exit p0

    return-void

    :cond_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final y4(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 2

    return-void
.end method

.method public final zza()V
    .registers 2

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzeui;->Ua(I)V

    return-void
.end method

.method public final declared-synchronized zzb()V
    .registers 5

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeui;->x:Lcom/google/android/gms/internal/ads/zzcoe;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_36

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzeui;->v:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeui;->x:Lcom/google/android/gms/internal/ads/zzcoe;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcoe;->h()I

    move-result v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_36

    if-gtz v0, :cond_1b

    monitor-exit p0

    return-void

    :cond_1b
    :try_start_1b
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcns;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeui;->o:Lcom/google/android/gms/internal/ads/zzcgd;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcgd;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcns;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/common/util/Clock;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzeui;->w:Lcom/google/android/gms/internal/ads/zzcns;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeuf;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzeuf;-><init>(Lcom/google/android/gms/internal/ads/zzeui;)V

    .line 4
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzcns;->c(ILjava/lang/Runnable;)V
    :try_end_34
    .catchall {:try_start_1b .. :try_end_34} :catchall_36

    monitor-exit p0

    return-void

    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method

###### Class com.google.android.gms.internal.ads.zzeue (com.google.android.gms.internal.ads.zzeue)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzeue;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzeui;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeui;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeue;->o:Lcom/google/android/gms/internal/ads/zzeui;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeue;->o:Lcom/google/android/gms/internal/ads/zzeui;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeui;->l()V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzeuf (com.google.android.gms.internal.ads.zzeuf)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzeuf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzeui;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeui;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeuf;->o:Lcom/google/android/gms/internal/ads/zzeui;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeuf;->o:Lcom/google/android/gms/internal/ads/zzeui;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeui;->m()V

    return-void
.end method
