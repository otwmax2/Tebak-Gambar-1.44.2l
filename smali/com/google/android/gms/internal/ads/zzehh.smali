###### Class com.google.android.gms.internal.ads.zzehh (com.google.android.gms.internal.ads.zzehh)
.class public final Lcom/google/android/gms/internal/ads/zzehh;
.super Lcom/google/android/gms/ads/internal/client/zzbt;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcxe;


# instance fields
.field private final o:Landroid/content/Context;

.field private final p:Lcom/google/android/gms/internal/ads/zzeuo;

.field private final q:Ljava/lang/String;

.field private final r:Lcom/google/android/gms/internal/ads/zzeib;

.field private s:Lcom/google/android/gms/ads/internal/client/zzq;

.field private final t:Lcom/google/android/gms/internal/ads/zzeyv;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final u:Lcom/google/android/gms/internal/ads/zzbzg;

.field private v:Lcom/google/android/gms/internal/ads/zzcok;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeuo;Lcom/google/android/gms/internal/ads/zzeib;Lcom/google/android/gms/internal/ads/zzbzg;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzbt;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehh;->o:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzehh;->p:Lcom/google/android/gms/internal/ads/zzeuo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzehh;->s:Lcom/google/android/gms/ads/internal/client/zzq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzehh;->q:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzehh;->r:Lcom/google/android/gms/internal/ads/zzeib;

    .line 2
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzeuo;->h()Lcom/google/android/gms/internal/ads/zzeyv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehh;->t:Lcom/google/android/gms/internal/ads/zzeyv;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzehh;->u:Lcom/google/android/gms/internal/ads/zzbzg;

    .line 3
    invoke-virtual {p4, p0}, Lcom/google/android/gms/internal/ads/zzeuo;->o(Lcom/google/android/gms/internal/ads/zzcxe;)V

    return-void
.end method

.method static bridge synthetic Ta(Lcom/google/android/gms/internal/ads/zzehh;)Lcom/google/android/gms/internal/ads/zzcok;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzehh;->v:Lcom/google/android/gms/internal/ads/zzcok;

    return-object p0
.end method

.method static bridge synthetic Ua(Lcom/google/android/gms/internal/ads/zzehh;Lcom/google/android/gms/internal/ads/zzcok;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehh;->v:Lcom/google/android/gms/internal/ads/zzcok;

    return-void
.end method

.method private final declared-synchronized Va(Lcom/google/android/gms/ads/internal/client/zzq;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehh;->t:Lcom/google/android/gms/internal/ads/zzeyv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeyv;->I(Lcom/google/android/gms/ads/internal/client/zzq;)Lcom/google/android/gms/internal/ads/zzeyv;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzehh;->t:Lcom/google/android/gms/internal/ads/zzeyv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehh;->s:Lcom/google/android/gms/ads/internal/client/zzq;

    .line 2
    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/client/zzq;->B:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzeyv;->N(Z)Lcom/google/android/gms/internal/ads/zzeyv;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized Wa(Lcom/google/android/gms/ads/internal/client/zzl;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzehh;->Xa()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "loadAd must be called on the main UI thread."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    .line 3
    :cond_c
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehh;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->d(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/zzl;->G:Lcom/google/android/gms/ads/internal/client/zzc;

    if-nez v0, :cond_30

    const-string p1, "Failed to load the ad because app ID is missing."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzehh;->r:Lcom/google/android/gms/internal/ads/zzeib;

    if-eqz p1, :cond_2d

    const/4 v0, 0x4

    .line 5
    invoke-static {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzezx;->d(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v0

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzeib;->v(Lcom/google/android/gms/ads/internal/client/zze;)V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_46

    :cond_2d
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :cond_30
    :try_start_30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehh;->o:Landroid/content/Context;

    .line 7
    iget-boolean v2, p1, Lcom/google/android/gms/ads/internal/client/zzl;->t:Z

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzezr;->a(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehh;->p:Lcom/google/android/gms/internal/ads/zzeuo;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehh;->q:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzehg;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzehg;-><init>(Lcom/google/android/gms/internal/ads/zzehh;)V

    .line 8
    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzeuo;->a(Lcom/google/android/gms/ads/internal/client/zzl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzeiq;)Z

    move-result p1
    :try_end_44
    .catchall {:try_start_30 .. :try_end_44} :catchall_46

    monitor-exit p0

    return p1

    :catchall_46
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final Xa()Z
    .registers 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->f:Lcom/google/android/gms/internal/ads/zzbbw;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_24

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->w9:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

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
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzehh;->u:Lcom/google/android/gms/internal/ads/zzbzg;

    .line 5
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzbzg;->q:I

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbar;->x9:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v4

    .line 7
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v3, v4, :cond_3f

    if-nez v0, :cond_3e

    goto :goto_3f

    :cond_3e
    return v2

    :cond_3f
    :goto_3f
    return v1
.end method


# virtual methods
.method public final A4(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final declared-synchronized B()V
    .registers 2

    monitor-enter p0

    :try_start_1
    const-string v0, "recordManualImpression must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehh;->v:Lcom/google/android/gms/internal/ads/zzcok;

    if-eqz v0, :cond_f

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcok;->m()V
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

.method public final D3(Lcom/google/android/gms/ads/internal/client/zzl;Lcom/google/android/gms/ads/internal/client/zzbk;)V
    .registers 3

    return-void
.end method

.method public final declared-synchronized D7(Lcom/google/android/gms/ads/internal/client/zzcf;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "setCorrelationIdProvider must be called on the main UI thread"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehh;->t:Lcom/google/android/gms/internal/ads/zzeyv;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeyv;->q(Lcom/google/android/gms/ads/internal/client/zzcf;)Lcom/google/android/gms/internal/ads/zzeyv;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final D8(Z)V
    .registers 2

    return-void
.end method

.method public final declared-synchronized Da(Z)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzehh;->Xa()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "setManualImpressionsEnabled must be called from the main thread."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehh;->t:Lcom/google/android/gms/internal/ads/zzeyv;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeyv;->P(Z)Lcom/google/android/gms/internal/ads/zzeyv;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final E7(Lcom/google/android/gms/ads/internal/client/zzw;)V
    .registers 2

    return-void
.end method

.method public final F0()V
    .registers 1

    return-void
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

    const-string p1, "setAdMetadataListener must be called on the main UI thread."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final M3(Lcom/google/android/gms/ads/internal/client/zzbe;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzehh;->Xa()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "setAdListener must be called on the main UI thread."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehh;->p:Lcom/google/android/gms/internal/ads/zzeuo;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeuo;->n(Lcom/google/android/gms/ads/internal/client/zzbe;)V

    return-void
.end method

.method public final declared-synchronized N()V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->g:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_37

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->u9:Lcom/google/android/gms/internal/ads/zzbaj;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehh;->u:Lcom/google/android/gms/internal/ads/zzbzg;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbzg;->q:I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->y9:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_3c

    :cond_37
    const-string v0, "pause must be called on the main UI thread."

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    :cond_3c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehh;->v:Lcom/google/android/gms/internal/ads/zzcok;

    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqm;->d()Lcom/google/android/gms/internal/ads/zzcvn;

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcvn;->c1(Landroid/content/Context;)V
    :try_end_48
    .catchall {:try_start_1 .. :try_end_48} :catchall_4c

    monitor-exit p0

    return-void

    :cond_4a
    monitor-exit p0

    return-void

    :catchall_4c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final O1(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final declared-synchronized P9(Lcom/google/android/gms/ads/internal/client/zzl;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehh;->s:Lcom/google/android/gms/ads/internal/client/zzq;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzehh;->Va(Lcom/google/android/gms/ads/internal/client/zzq;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzehh;->Wa(Lcom/google/android/gms/ads/internal/client/zzl;)Z

    move-result p1
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return p1

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized R()V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->h:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_37

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->s9:Lcom/google/android/gms/internal/ads/zzbaj;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehh;->u:Lcom/google/android/gms/internal/ads/zzbzg;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbzg;->q:I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->y9:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_3c

    :cond_37
    const-string v0, "resume must be called on the main UI thread."

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    :cond_3c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehh;->v:Lcom/google/android/gms/internal/ads/zzcok;

    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqm;->d()Lcom/google/android/gms/internal/ads/zzcvn;

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcvn;->d1(Landroid/content/Context;)V
    :try_end_48
    .catchall {:try_start_1 .. :try_end_48} :catchall_4c

    monitor-exit p0

    return-void

    :cond_4a
    monitor-exit p0

    return-void

    :catchall_4c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final Z9()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final aa(Lcom/google/android/gms/internal/ads/zzavb;)V
    .registers 2

    return-void
.end method

.method public final d()Landroid/os/Bundle;
    .registers 2

    const-string v0, "getAdMetadata must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    .line 2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final d6(Lcom/google/android/gms/ads/internal/client/zzcb;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzehh;->Xa()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "setAppEventListener must be called on the main UI thread."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehh;->r:Lcom/google/android/gms/internal/ads/zzeib;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeib;->C(Lcom/google/android/gms/ads/internal/client/zzcb;)V

    return-void
.end method

.method public final declared-synchronized e()Lcom/google/android/gms/ads/internal/client/zzq;
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "getAdSize must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehh;->v:Lcom/google/android/gms/internal/ads/zzcok;

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehh;->o:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcok;->k()Lcom/google/android/gms/internal/ads/zzeyd;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzezb;->a(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_22

    monitor-exit p0

    return-object v0

    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehh;->t:Lcom/google/android/gms/internal/ads/zzeyv;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeyv;->x()Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v0
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_22

    monitor-exit p0

    return-object v0

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e8(Lcom/google/android/gms/ads/internal/client/zzq;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "setAdSize must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehh;->t:Lcom/google/android/gms/internal/ads/zzeyv;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeyv;->I(Lcom/google/android/gms/ads/internal/client/zzq;)Lcom/google/android/gms/internal/ads/zzeyv;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehh;->s:Lcom/google/android/gms/ads/internal/client/zzq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehh;->v:Lcom/google/android/gms/internal/ads/zzcok;

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehh;->p:Lcom/google/android/gms/internal/ads/zzeuo;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeuo;->c()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcok;->n(Landroid/view/ViewGroup;Lcom/google/android/gms/ads/internal/client/zzq;)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1e

    monitor-exit p0

    return-void

    :cond_1c
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final g()Lcom/google/android/gms/ads/internal/client/zzbh;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehh;->r:Lcom/google/android/gms/internal/ads/zzeib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeib;->a()Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lcom/google/android/gms/ads/internal/client/zzcb;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehh;->r:Lcom/google/android/gms/internal/ads/zzeib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeib;->b()Lcom/google/android/gms/ads/internal/client/zzcb;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized i()Lcom/google/android/gms/ads/internal/client/zzdn;
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->p6:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_22

    const/4 v1, 0x0

    if-nez v0, :cond_16

    monitor-exit p0

    return-object v1

    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehh;->v:Lcom/google/android/gms/internal/ads/zzcok;
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_22

    if-nez v0, :cond_1c

    monitor-exit p0

    return-object v1

    :cond_1c
    :try_start_1c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqm;->c()Lcom/google/android/gms/internal/ads/zzcuh;

    move-result-object v0
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_22

    monitor-exit p0

    return-object v0

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized j()Lcom/google/android/gms/ads/internal/client/zzdq;
    .registers 2

    monitor-enter p0

    :try_start_1
    const-string v0, "getVideoController must be called from the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehh;->v:Lcom/google/android/gms/internal/ads/zzcok;

    if-eqz v0, :cond_10

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcok;->j()Lcom/google/android/gms/ads/internal/client/zzdq;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_13

    monitor-exit p0

    return-object v0

    :cond_10
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final k()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzehh;->Xa()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "getAdFrame must be called on the main UI thread."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehh;->p:Lcom/google/android/gms/internal/ads/zzeuo;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeuo;->c()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized l5(Lcom/google/android/gms/internal/ads/zzbbp;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "setOnCustomRenderedAdLoadedListener must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehh;->p:Lcom/google/android/gms/internal/ads/zzeuo;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeuo;->p(Lcom/google/android/gms/internal/ads/zzbbp;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehh;->p:Lcom/google/android/gms/internal/ads/zzeuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeuo;->zza()Z

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
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzehh;->Xa()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "setAdListener must be called on the main UI thread."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehh;->r:Lcom/google/android/gms/internal/ads/zzeib;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeib;->e(Lcom/google/android/gms/ads/internal/client/zzbh;)V

    return-void
.end method

.method public final declared-synchronized p()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehh;->q:Ljava/lang/String;
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
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehh;->v:Lcom/google/android/gms/internal/ads/zzcok;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqm;->c()Lcom/google/android/gms/internal/ads/zzcuh;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqm;->c()Lcom/google/android/gms/internal/ads/zzcuh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcuh;->e()Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_18

    monitor-exit p0

    return-object v0

    :cond_15
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final q2(Lcom/google/android/gms/ads/internal/client/zzci;)V
    .registers 2

    return-void
.end method

.method public final s3(Lcom/google/android/gms/ads/internal/client/zzdg;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzehh;->Xa()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "setPaidEventListener must be called on the main UI thread."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehh;->r:Lcom/google/android/gms/internal/ads/zzeib;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeib;->w(Lcom/google/android/gms/ads/internal/client/zzdg;)V

    return-void
.end method

.method public final declared-synchronized t6(Lcom/google/android/gms/ads/internal/client/zzfl;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzehh;->Xa()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "setVideoOptions must be called on the main UI thread."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehh;->t:Lcom/google/android/gms/internal/ads/zzeyv;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeyv;->f(Lcom/google/android/gms/ads/internal/client/zzfl;)Lcom/google/android/gms/internal/ads/zzeyv;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final v2(Lcom/google/android/gms/internal/ads/zzbrl;)V
    .registers 2

    return-void
.end method

.method public final declared-synchronized x()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehh;->v:Lcom/google/android/gms/internal/ads/zzcok;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqm;->c()Lcom/google/android/gms/internal/ads/zzcuh;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqm;->c()Lcom/google/android/gms/internal/ads/zzcuh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcuh;->e()Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_18

    monitor-exit p0

    return-object v0

    :cond_15
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized y()V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->e:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_37

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->t9:Lcom/google/android/gms/internal/ads/zzbaj;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehh;->u:Lcom/google/android/gms/internal/ads/zzbzg;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbzg;->q:I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->y9:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_3c

    :cond_37
    const-string v0, "destroy must be called on the main UI thread."

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    :cond_3c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehh;->v:Lcom/google/android/gms/internal/ads/zzcok;

    if-eqz v0, :cond_45

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqm;->a()V
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_47

    monitor-exit p0

    return-void

    :cond_45
    monitor-exit p0

    return-void

    :catchall_47
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final y4(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 2

    return-void
.end method

.method public final declared-synchronized zza()V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehh;->p:Lcom/google/android/gms/internal/ads/zzeuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeuo;->q()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehh;->t:Lcom/google/android/gms/internal/ads/zzeyv;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeyv;->x()Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehh;->v:Lcom/google/android/gms/internal/ads/zzcok;

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcok;->l()Lcom/google/android/gms/internal/ads/zzeyd;

    move-result-object v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehh;->t:Lcom/google/android/gms/internal/ads/zzeyv;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeyv;->o()Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehh;->o:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehh;->v:Lcom/google/android/gms/internal/ads/zzcok;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcok;->l()Lcom/google/android/gms/internal/ads/zzeyd;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzezb;->a(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v0

    .line 6
    :cond_31
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzehh;->Va(Lcom/google/android/gms/ads/internal/client/zzq;)V
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_4d

    :try_start_34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehh;->t:Lcom/google/android/gms/internal/ads/zzeyv;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeyv;->v()Lcom/google/android/gms/ads/internal/client/zzl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzehh;->Wa(Lcom/google/android/gms/ads/internal/client/zzl;)Z
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_3d} :catch_3f
    .catchall {:try_start_34 .. :try_end_3d} :catchall_4d

    monitor-exit p0

    return-void

    :catch_3f
    :try_start_3f
    const-string v0, "Failed to refresh the banner ad."

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_4d

    monitor-exit p0

    return-void

    .line 9
    :cond_46
    :try_start_46
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehh;->p:Lcom/google/android/gms/internal/ads/zzeuo;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeuo;->m()V
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_4d

    monitor-exit p0

    return-void

    :catchall_4d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
