###### Class com.google.android.gms.internal.ads.zzeij (com.google.android.gms.internal.ads.zzeij)
.class public final Lcom/google/android/gms/internal/ads/zzeij;
.super Lcom/google/android/gms/ads/internal/client/zzbt;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final o:Lcom/google/android/gms/ads/internal/client/zzq;

.field private final p:Landroid/content/Context;

.field private final q:Lcom/google/android/gms/internal/ads/zzewf;

.field private final r:Ljava/lang/String;

.field private final s:Lcom/google/android/gms/internal/ads/zzbzg;

.field private final t:Lcom/google/android/gms/internal/ads/zzeib;

.field private final u:Lcom/google/android/gms/internal/ads/zzexf;

.field private final v:Lcom/google/android/gms/internal/ads/zzapw;

.field private w:Lcom/google/android/gms/internal/ads/zzdcv;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private x:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzewf;Lcom/google/android/gms/internal/ads/zzeib;Lcom/google/android/gms/internal/ads/zzexf;Lcom/google/android/gms/internal/ads/zzbzg;Lcom/google/android/gms/internal/ads/zzapw;)V
    .registers 9

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzbt;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeij;->o:Lcom/google/android/gms/ads/internal/client/zzq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeij;->r:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeij;->p:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeij;->q:Lcom/google/android/gms/internal/ads/zzewf;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeij;->t:Lcom/google/android/gms/internal/ads/zzeib;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzeij;->u:Lcom/google/android/gms/internal/ads/zzexf;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzeij;->s:Lcom/google/android/gms/internal/ads/zzbzg;

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->A0:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzeij;->x:Z

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzeij;->v:Lcom/google/android/gms/internal/ads/zzapw;

    return-void
.end method

.method static bridge synthetic Ta(Lcom/google/android/gms/internal/ads/zzeij;)Lcom/google/android/gms/internal/ads/zzdcv;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeij;->w:Lcom/google/android/gms/internal/ads/zzdcv;

    return-object p0
.end method

.method static bridge synthetic Ua(Lcom/google/android/gms/internal/ads/zzeij;Lcom/google/android/gms/internal/ads/zzdcv;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeij;->w:Lcom/google/android/gms/internal/ads/zzdcv;

    return-void
.end method

.method private final declared-synchronized Va()Z
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeij;->w:Lcom/google/android/gms/internal/ads/zzdcv;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdcv;->h()Z

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_10

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_c
    monitor-exit p0

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    :catchall_10
    move-exception v0

    monitor-exit p0

    goto :goto_14

    :goto_13
    throw v0

    :goto_14
    goto :goto_13
.end method


# virtual methods
.method public final A4(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final B()V
    .registers 1

    return-void
.end method

.method public final D3(Lcom/google/android/gms/ads/internal/client/zzl;Lcom/google/android/gms/ads/internal/client/zzbk;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeij;->t:Lcom/google/android/gms/internal/ads/zzeib;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzeib;->o(Lcom/google/android/gms/ads/internal/client/zzbk;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzeij;->P9(Lcom/google/android/gms/ads/internal/client/zzl;)Z

    return-void
.end method

.method public final D7(Lcom/google/android/gms/ads/internal/client/zzcf;)V
    .registers 2

    return-void
.end method

.method public final declared-synchronized D8(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "setImmersiveMode must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzeij;->x:Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final Da(Z)V
    .registers 2

    return-void
.end method

.method public final E7(Lcom/google/android/gms/ads/internal/client/zzw;)V
    .registers 2

    return-void
.end method

.method public final declared-synchronized F0()V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "showInterstitial must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeij;->w:Lcom/google/android/gms/internal/ads/zzdcv;

    const/4 v1, 0x0

    if-nez v0, :cond_1d

    const-string v0, "Interstitial can not be shown before loaded."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeij;->t:Lcom/google/android/gms/internal/ads/zzeib;

    const/16 v2, 0x9

    .line 3
    invoke-static {v2, v1, v1}, Lcom/google/android/gms/internal/ads/zzezx;->d(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeib;->W0(Lcom/google/android/gms/ads/internal/client/zze;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_4a

    monitor-exit p0

    return-void

    .line 5
    :cond_1d
    :try_start_1d
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->n2:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeij;->v:Lcom/google/android/gms/internal/ads/zzapw;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapw;->c()Lcom/google/android/gms/internal/ads/zzaps;

    move-result-object v0

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzaps;->b([Ljava/lang/StackTraceElement;)V

    :cond_41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeij;->w:Lcom/google/android/gms/internal/ads/zzdcv;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzeij;->x:Z

    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdcv;->i(ZLandroid/app/Activity;)Z
    :try_end_48
    .catchall {:try_start_1d .. :try_end_48} :catchall_4a

    monitor-exit p0

    return-void

    :catchall_4a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final G6(Lcom/google/android/gms/internal/ads/zzbuj;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeij;->u:Lcom/google/android/gms/internal/ads/zzexf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzexf;->C(Lcom/google/android/gms/internal/ads/zzbuj;)V

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
    .registers 2

    return-void
.end method

.method public final declared-synchronized N()V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "pause must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeij;->w:Lcom/google/android/gms/internal/ads/zzdcv;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqm;->d()Lcom/google/android/gms/internal/ads/zzcvn;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcvn;->c1(Landroid/content/Context;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_16

    monitor-exit p0

    return-void

    :cond_14
    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final O1(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final declared-synchronized P9(Lcom/google/android/gms/ads/internal/client/zzl;)Z
    .registers 7

    monitor-enter p0

    .line 1
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->i:Lcom/google/android/gms/internal/ads/zzbbw;

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
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeij;->s:Lcom/google/android/gms/internal/ads/zzbzg;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeij;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->d(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_65

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/zzl;->G:Lcom/google/android/gms/ads/internal/client/zzc;

    if-nez v0, :cond_65

    const-string p1, "Failed to load the ad because app ID is missing."

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeij;->t:Lcom/google/android/gms/internal/ads/zzeib;

    if-eqz p1, :cond_63

    const/4 v0, 0x4

    .line 11
    invoke-static {v0, v2, v2}, Lcom/google/android/gms/internal/ads/zzezx;->d(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzeib;->v(Lcom/google/android/gms/ads/internal/client/zze;)V
    :try_end_63
    .catchall {:try_start_1 .. :try_end_63} :catchall_8c

    :cond_63
    monitor-exit p0

    return v1

    .line 13
    :cond_65
    :try_start_65
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeij;->Va()Z

    move-result v0
    :try_end_69
    .catchall {:try_start_65 .. :try_end_69} :catchall_8c

    if-eqz v0, :cond_6d

    monitor-exit p0

    return v1

    :cond_6d
    :try_start_6d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeij;->p:Landroid/content/Context;

    .line 14
    iget-boolean v1, p1, Lcom/google/android/gms/ads/internal/client/zzl;->t:Z

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzezr;->a(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzeij;->w:Lcom/google/android/gms/internal/ads/zzdcv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeij;->q:Lcom/google/android/gms/internal/ads/zzewf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeij;->r:Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzevy;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeij;->o:Lcom/google/android/gms/ads/internal/client/zzq;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzevy;-><init>(Lcom/google/android/gms/ads/internal/client/zzq;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzeii;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzeii;-><init>(Lcom/google/android/gms/internal/ads/zzeij;)V

    .line 15
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzewf;->a(Lcom/google/android/gms/ads/internal/client/zzl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzeiq;)Z

    move-result p1
    :try_end_8a
    .catchall {:try_start_6d .. :try_end_8a} :catchall_8c

    monitor-exit p0

    return p1

    :catchall_8c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized R()V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "resume must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeij;->w:Lcom/google/android/gms/internal/ads/zzdcv;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqm;->d()Lcom/google/android/gms/internal/ads/zzcvn;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcvn;->d1(Landroid/content/Context;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_16

    monitor-exit p0

    return-void

    :cond_14
    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized Z9()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    const-string v0, "isLoaded must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeij;->Va()Z

    move-result v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
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

    const-string v0, "setAppEventListener must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeij;->t:Lcom/google/android/gms/internal/ads/zzeib;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeib;->C(Lcom/google/android/gms/ads/internal/client/zzcb;)V

    return-void
.end method

.method public final e()Lcom/google/android/gms/ads/internal/client/zzq;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final e8(Lcom/google/android/gms/ads/internal/client/zzq;)V
    .registers 2

    return-void
.end method

.method public final g()Lcom/google/android/gms/ads/internal/client/zzbh;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeij;->t:Lcom/google/android/gms/internal/ads/zzeib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeib;->a()Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lcom/google/android/gms/ads/internal/client/zzcb;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeij;->t:Lcom/google/android/gms/internal/ads/zzeib;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeij;->w:Lcom/google/android/gms/internal/ads/zzdcv;
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

.method public final j()Lcom/google/android/gms/ads/internal/client/zzdq;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final k()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized l5(Lcom/google/android/gms/internal/ads/zzbbp;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "setOnCustomRenderedAdLoadedListener must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeij;->q:Lcom/google/android/gms/internal/ads/zzewf;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzewf;->h(Lcom/google/android/gms/internal/ads/zzbbp;)V
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeij;->q:Lcom/google/android/gms/internal/ads/zzewf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzewf;->zza()Z

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

    const-string v0, "setAdListener must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeij;->t:Lcom/google/android/gms/internal/ads/zzeib;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeib;->e(Lcom/google/android/gms/ads/internal/client/zzbh;)V

    return-void
.end method

.method public final declared-synchronized p()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeij;->r:Ljava/lang/String;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeij;->w:Lcom/google/android/gms/internal/ads/zzdcv;

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
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeij;->t:Lcom/google/android/gms/internal/ads/zzeib;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeib;->D(Lcom/google/android/gms/ads/internal/client/zzci;)V

    return-void
.end method

.method public final s3(Lcom/google/android/gms/ads/internal/client/zzdg;)V
    .registers 3

    const-string v0, "setPaidEventListener must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeij;->t:Lcom/google/android/gms/internal/ads/zzeib;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeib;->w(Lcom/google/android/gms/ads/internal/client/zzdg;)V

    return-void
.end method

.method public final t6(Lcom/google/android/gms/ads/internal/client/zzfl;)V
    .registers 2

    return-void
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeij;->w:Lcom/google/android/gms/internal/ads/zzdcv;

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
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "destroy must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeij;->w:Lcom/google/android/gms/internal/ads/zzdcv;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqm;->d()Lcom/google/android/gms/internal/ads/zzcvn;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcvn;->Y0(Landroid/content/Context;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_16

    monitor-exit p0

    return-void

    :cond_14
    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized y4(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeij;->w:Lcom/google/android/gms/internal/ads/zzdcv;

    if-nez v0, :cond_18

    const-string p1, "Interstitial can not be shown before loaded."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeij;->t:Lcom/google/android/gms/internal/ads/zzeib;

    const/16 v0, 0x9

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzezx;->d(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v0

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzeib;->W0(Lcom/google/android/gms/ads/internal/client/zze;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_4b

    monitor-exit p0

    return-void

    .line 4
    :cond_18
    :try_start_18
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->n2:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeij;->v:Lcom/google/android/gms/internal/ads/zzapw;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapw;->c()Lcom/google/android/gms/internal/ads/zzaps;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzaps;->b([Ljava/lang/StackTraceElement;)V

    .line 8
    :cond_3c
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->t1(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeij;->w:Lcom/google/android/gms/internal/ads/zzdcv;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzeij;->x:Z

    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdcv;->i(ZLandroid/app/Activity;)Z
    :try_end_49
    .catchall {:try_start_18 .. :try_end_49} :catchall_4b

    monitor-exit p0

    return-void

    :catchall_4b
    move-exception p1

    monitor-exit p0

    throw p1
.end method
