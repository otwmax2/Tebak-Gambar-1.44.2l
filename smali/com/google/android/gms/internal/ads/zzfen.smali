###### Class com.google.android.gms.internal.ads.zzfen (com.google.android.gms.internal.ads.zzfen)
.class public final Lcom/google/android/gms/internal/ads/zzfen;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final o:Ljava/util/List;

.field private final p:Lcom/google/android/gms/internal/ads/zzfep;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Lcom/google/android/gms/internal/ads/zzeyn;

.field private t:Lcom/google/android/gms/ads/internal/client/zze;

.field private u:Ljava/util/concurrent/Future;

.field private v:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfep;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfen;->o:Ljava/util/List;

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfen;->v:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfen;->p:Lcom/google/android/gms/internal/ads/zzfep;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/zzfec;)Lcom/google/android/gms/internal/ads/zzfen;
    .registers 5

    monitor-enter p0

    .line 1
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcd;->c:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfen;->o:Ljava/util/List;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfec;->g()Lcom/google/android/gms/internal/ads/zzfec;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfen;->u:Ljava/util/concurrent/Future;

    if-eqz p1, :cond_1f

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 4
    :cond_1f
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbzn;->d:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->Z7:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    invoke-interface {p1, p0, v0, v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfen;->u:Ljava/util/concurrent/Future;
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_3c

    :cond_3a
    monitor-exit p0

    return-object p0

    :catchall_3c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfen;
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcd;->c:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfem;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfen;->q:Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    :cond_17
    monitor-exit p0

    return-object p0

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/internal/ads/zzfen;
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcd;->c:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfen;->t:Lcom/google/android/gms/ads/internal/client/zze;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    :cond_11
    monitor-exit p0

    return-object p0

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/zzfen;
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcd;->c:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_98

    const-string v0, "banner"

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    sget-object v0, Lcom/google/android/gms/ads/AdFormat;->o:Lcom/google/android/gms/ads/AdFormat;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto/16 :goto_95

    :cond_25
    const-string v0, "interstitial"

    .line 3
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_91

    sget-object v0, Lcom/google/android/gms/ads/AdFormat;->p:Lcom/google/android/gms/ads/AdFormat;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    goto :goto_91

    :cond_3a
    const-string v0, "native"

    .line 5
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8c

    sget-object v0, Lcom/google/android/gms/ads/AdFormat;->s:Lcom/google/android/gms/ads/AdFormat;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    goto :goto_8c

    :cond_4f
    const-string v0, "rewarded"

    .line 6
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_88

    sget-object v0, Lcom/google/android/gms/ads/AdFormat;->q:Lcom/google/android/gms/ads/AdFormat;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    goto :goto_88

    :cond_64
    const-string v0, "app_open_ad"

    .line 7
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    const/4 p1, 0x7

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfen;->v:I

    goto :goto_98

    :cond_70
    const-string v0, "rewarded_interstitial"

    .line 8
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_84

    sget-object v0, Lcom/google/android/gms/ads/AdFormat;->r:Lcom/google/android/gms/ads/AdFormat;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_98

    :cond_84
    const/4 p1, 0x6

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfen;->v:I

    goto :goto_98

    :cond_88
    :goto_88
    const/4 p1, 0x5

    .line 10
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfen;->v:I

    goto :goto_98

    :cond_8c
    :goto_8c
    const/16 p1, 0x8

    .line 11
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfen;->v:I

    goto :goto_98

    :cond_91
    :goto_91
    const/4 p1, 0x4

    .line 12
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfen;->v:I

    goto :goto_98

    :cond_95
    :goto_95
    const/4 p1, 0x3

    .line 13
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfen;->v:I
    :try_end_98
    .catchall {:try_start_1 .. :try_end_98} :catchall_9a

    :cond_98
    :goto_98
    monitor-exit p0

    return-object p0

    :catchall_9a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfen;
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcd;->c:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfen;->r:Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    :cond_11
    monitor-exit p0

    return-object p0

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized f(Lcom/google/android/gms/internal/ads/zzeyn;)Lcom/google/android/gms/internal/ads/zzfen;
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcd;->c:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfen;->s:Lcom/google/android/gms/internal/ads/zzeyn;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    :cond_11
    monitor-exit p0

    return-object p0

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized g()V
    .registers 5

    monitor-enter p0

    .line 1
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcd;->c:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_73

    if-nez v0, :cond_11

    monitor-exit p0

    return-void

    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfen;->u:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_19

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfen;->o:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfec;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfen;->v:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_33

    .line 4
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzfec;->l0(I)Lcom/google/android/gms/internal/ads/zzfec;

    :cond_33
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfen;->q:Ljava/lang/String;

    .line 5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_40

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfen;->q:Ljava/lang/String;

    .line 6
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzfec;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfec;

    :cond_40
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfen;->r:Ljava/lang/String;

    .line 7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_53

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzfec;->i()Z

    move-result v2

    if-nez v2, :cond_53

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfen;->r:Ljava/lang/String;

    .line 8
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzfec;->O(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfec;

    :cond_53
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfen;->s:Lcom/google/android/gms/internal/ads/zzeyn;

    if-eqz v2, :cond_5b

    .line 9
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzfec;->a(Lcom/google/android/gms/internal/ads/zzeyn;)Lcom/google/android/gms/internal/ads/zzfec;

    goto :goto_62

    .line 10
    :cond_5b
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfen;->t:Lcom/google/android/gms/ads/internal/client/zze;

    if-eqz v2, :cond_62

    .line 11
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzfec;->v(Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/internal/ads/zzfec;

    .line 12
    :cond_62
    :goto_62
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfen;->p:Lcom/google/android/gms/internal/ads/zzfep;

    .line 13
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzfec;->j()Lcom/google/android/gms/internal/ads/zzfeg;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzfep;->b(Lcom/google/android/gms/internal/ads/zzfeg;)V

    goto :goto_1f

    .line 14
    :cond_6c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfen;->o:Ljava/util/List;

    .line 15
    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_71
    .catchall {:try_start_11 .. :try_end_71} :catchall_73

    monitor-exit p0

    return-void

    :catchall_73
    move-exception v0

    monitor-exit p0

    goto :goto_77

    :goto_76
    throw v0

    :goto_77
    goto :goto_76
.end method

.method public final declared-synchronized h(I)Lcom/google/android/gms/internal/ads/zzfen;
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcd;->c:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfen;->v:I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    :cond_11
    monitor-exit p0

    return-object p0

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized run()V
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfen;->g()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
