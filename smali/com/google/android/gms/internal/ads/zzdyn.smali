###### Class com.google.android.gms.internal.ads.zzdyn (com.google.android.gms.internal.ads.zzdyn)
.class public final Lcom/google/android/gms/internal/ads/zzdyn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdbh;


# instance fields
.field private o:Z

.field private p:Z

.field private final q:Ljava/lang/String;

.field private final r:Lcom/google/android/gms/internal/ads/zzfdk;

.field private final s:Lcom/google/android/gms/ads/internal/util/zzg;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfdk;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdyn;->o:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdyn;->p:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyn;->q:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdyn;->r:Lcom/google/android/gms/internal/ads/zzfdk;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbyj;->h()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyn;->s:Lcom/google/android/gms/ads/internal/util/zzg;

    return-void
.end method

.method private final a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyn;->s:Lcom/google/android/gms/ads/internal/util/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzg;->g0()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    goto :goto_d

    .line 2
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyn;->q:Ljava/lang/String;

    .line 3
    :goto_d
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfdj;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    move-result-object p1

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v1

    const/16 v3, 0xa

    invoke-static {v1, v2, v3}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tms"

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzfdj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    const-string v1, "tid"

    .line 5
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzfdj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    return-object p1
.end method


# virtual methods
.method public final D(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyn;->r:Lcom/google/android/gms/internal/ads/zzfdk;

    const-string v1, "adapter_init_started"

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzdyn;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    move-result-object v1

    const-string v2, "ancn"

    .line 2
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzfdj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    .line 3
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfdk;->a(Lcom/google/android/gms/internal/ads/zzfdj;)V

    return-void
.end method

.method public final O(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyn;->r:Lcom/google/android/gms/internal/ads/zzfdk;

    const-string v1, "adapter_init_finished"

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzdyn;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    move-result-object v1

    const-string v2, "ancn"

    .line 2
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzfdj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    .line 3
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfdk;->a(Lcom/google/android/gms/internal/ads/zzfdj;)V

    return-void
.end method

.method public final declared-synchronized b()V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdyn;->p:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyn;->r:Lcom/google/android/gms/internal/ads/zzfdk;

    const-string v1, "init_finished"

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzdyn;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfdk;->a(Lcom/google/android/gms/internal/ads/zzfdj;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdyn;->p:Z
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_17

    monitor-exit p0

    return-void

    :cond_15
    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdyn;->o:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyn;->r:Lcom/google/android/gms/internal/ads/zzfdk;

    const-string v1, "init_started"

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzdyn;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfdk;->a(Lcom/google/android/gms/internal/ads/zzfdj;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdyn;->o:Z
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_17

    monitor-exit p0

    return-void

    :cond_15
    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final n(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyn;->r:Lcom/google/android/gms/internal/ads/zzfdk;

    const-string v1, "adapter_init_finished"

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzdyn;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    move-result-object v1

    const-string v2, "ancn"

    .line 2
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzfdj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    const-string p1, "rqe"

    .line 3
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzfdj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    .line 4
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfdk;->a(Lcom/google/android/gms/internal/ads/zzfdj;)V

    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyn;->r:Lcom/google/android/gms/internal/ads/zzfdk;

    const-string v0, "aaia"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdyn;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    move-result-object v0

    const-string v1, "aair"

    const-string v2, "MalformedJson"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfdj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    .line 3
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzfdk;->a(Lcom/google/android/gms/internal/ads/zzfdj;)V

    return-void
.end method
