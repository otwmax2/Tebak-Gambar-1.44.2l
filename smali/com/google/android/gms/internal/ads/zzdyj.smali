###### Class com.google.android.gms.internal.ads.zzdyj (com.google.android.gms.internal.ads.zzdyj)
.class public final Lcom/google/android/gms/internal/ads/zzdyj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzczg;
.implements Lcom/google/android/gms/ads/internal/client/zza;
.implements Lcom/google/android/gms/internal/ads/zzcvi;
.implements Lcom/google/android/gms/internal/ads/zzcus;


# instance fields
.field private final o:Landroid/content/Context;

.field private final p:Lcom/google/android/gms/internal/ads/zzezm;

.field private final q:Lcom/google/android/gms/internal/ads/zzeyo;

.field private final r:Lcom/google/android/gms/internal/ads/zzeyc;

.field private final s:Lcom/google/android/gms/internal/ads/zzeaf;

.field private t:Ljava/lang/Boolean;

.field private final u:Z

.field private final v:Lcom/google/android/gms/internal/ads/zzfdk;

.field private final w:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzezm;Lcom/google/android/gms/internal/ads/zzeyo;Lcom/google/android/gms/internal/ads/zzeyc;Lcom/google/android/gms/internal/ads/zzeaf;Lcom/google/android/gms/internal/ads/zzfdk;Ljava/lang/String;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyj;->o:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdyj;->p:Lcom/google/android/gms/internal/ads/zzezm;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdyj;->q:Lcom/google/android/gms/internal/ads/zzeyo;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdyj;->r:Lcom/google/android/gms/internal/ads/zzeyc;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdyj;->s:Lcom/google/android/gms/internal/ads/zzeaf;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->t6:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdyj;->u:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdyj;->v:Lcom/google/android/gms/internal/ads/zzfdk;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdyj;->w:Ljava/lang/String;

    return-void
.end method

.method private final a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;
    .registers 5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfdj;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyj;->q:Lcom/google/android/gms/internal/ads/zzeyo;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfdj;->h(Lcom/google/android/gms/internal/ads/zzeyo;Lcom/google/android/gms/internal/ads/zzbyn;)Lcom/google/android/gms/internal/ads/zzfdj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyj;->r:Lcom/google/android/gms/internal/ads/zzeyc;

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfdj;->f(Lcom/google/android/gms/internal/ads/zzeyc;)Lcom/google/android/gms/internal/ads/zzfdj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyj;->w:Ljava/lang/String;

    const-string v1, "request_id"

    .line 4
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzfdj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyj;->r:Lcom/google/android/gms/internal/ads/zzeyc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeyc;->u:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyj;->r:Lcom/google/android/gms/internal/ads/zzeyc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeyc;->u:Ljava/util/List;

    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "ancn"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzfdj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyj;->r:Lcom/google/android/gms/internal/ads/zzeyc;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzeyc;->j0:Z

    if-eqz v0, :cond_65

    const/4 v0, 0x1

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdyj;->o:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbyj;->x(Landroid/content/Context;)Z

    move-result v1

    if-eq v0, v1, :cond_46

    const-string v0, "offline"

    goto :goto_48

    :cond_46
    const-string v0, "online"

    :goto_48
    const-string v1, "device_connectivity"

    .line 8
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzfdj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "event_timestamp"

    .line 10
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzfdj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    const-string v0, "offline_ad"

    const-string v1, "1"

    .line 11
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfdj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    :cond_65
    return-object p1
.end method

.method private final c(Lcom/google/android/gms/internal/ads/zzfdj;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyj;->r:Lcom/google/android/gms/internal/ads/zzeyc;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzeyc;->j0:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyj;->v:Lcom/google/android/gms/internal/ads/zzfdk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzfdk;->b(Lcom/google/android/gms/internal/ads/zzfdj;)Ljava/lang/String;

    move-result-object v5

    new-instance p1, Lcom/google/android/gms/internal/ads/zzeah;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyj;->q:Lcom/google/android/gms/internal/ads/zzeyo;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeyo;->b:Lcom/google/android/gms/internal/ads/zzeyn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeyn;->b:Lcom/google/android/gms/internal/ads/zzeyf;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzeyf;->b:Ljava/lang/String;

    const/4 v6, 0x2

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzeah;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyj;->s:Lcom/google/android/gms/internal/ads/zzeaf;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeaf;->e(Lcom/google/android/gms/internal/ads/zzeah;)V

    return-void

    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyj;->v:Lcom/google/android/gms/internal/ads/zzfdk;

    .line 4
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzfdk;->a(Lcom/google/android/gms/internal/ads/zzfdj;)V

    return-void
.end method

.method private final e()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyj;->t:Ljava/lang/Boolean;

    if-nez v0, :cond_3e

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyj;->t:Ljava/lang/Boolean;

    if-nez v0, :cond_39

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->m1:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdyj;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzs;->M(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_3b

    const/4 v2, 0x0

    if-eqz v0, :cond_33

    if-nez v1, :cond_24

    goto :goto_33

    .line 5
    :cond_24
    :try_start_24
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_28} :catch_29
    .catchall {:try_start_24 .. :try_end_28} :catchall_3b

    goto :goto_33

    :catch_29
    move-exception v0

    .line 6
    :try_start_2a
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v1

    const-string v3, "CsiActionsListener.isPatternMatched"

    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/internal/ads/zzbyj;->u(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 7
    :cond_33
    :goto_33
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyj;->t:Ljava/lang/Boolean;

    .line 8
    :cond_39
    monitor-exit p0

    goto :goto_3e

    :catchall_3b
    move-exception v0

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_2a .. :try_end_3d} :catchall_3b

    throw v0

    :cond_3e
    :goto_3e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyj;->t:Ljava/lang/Boolean;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final C(Lcom/google/android/gms/internal/ads/zzded;)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdyj;->u:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "ifts"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdyj;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    move-result-object v0

    const-string v1, "reason"

    const-string v2, "exception"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfdj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "msg"

    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfdj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    :cond_25
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyj;->v:Lcom/google/android/gms/internal/ads/zzfdk;

    .line 6
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzfdk;->a(Lcom/google/android/gms/internal/ads/zzfdj;)V

    return-void
.end method

.method public final b()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdyj;->e()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyj;->v:Lcom/google/android/gms/internal/ads/zzfdk;

    const-string v1, "adapter_impression"

    .line 2
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzdyj;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfdk;->a(Lcom/google/android/gms/internal/ads/zzfdj;)V

    return-void
.end method

.method public final d()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdyj;->e()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyj;->v:Lcom/google/android/gms/internal/ads/zzfdk;

    const-string v1, "adapter_shown"

    .line 2
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzdyj;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfdk;->a(Lcom/google/android/gms/internal/ads/zzfdj;)V

    return-void
.end method

.method public final j()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdyj;->e()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyj;->r:Lcom/google/android/gms/internal/ads/zzeyc;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzeyc;->j0:Z

    if-nez v0, :cond_d

    return-void

    :cond_d
    const-string v0, "impression"

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdyj;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdyj;->c(Lcom/google/android/gms/internal/ads/zzfdj;)V

    return-void
.end method

.method public final v(Lcom/google/android/gms/ads/internal/client/zze;)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdyj;->u:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/zze;->o:I

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/zze;->p:Ljava/lang/String;

    .line 3
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/client/zze;->q:Ljava/lang/String;

    const-string v3, "com.google.android.gms.ads"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/client/zze;->r:Lcom/google/android/gms/ads/internal/client/zze;

    if-eqz v2, :cond_25

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/client/zze;->q:Ljava/lang/String;

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 5
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/client/zze;->r:Lcom/google/android/gms/ads/internal/client/zze;

    iget v0, p1, Lcom/google/android/gms/ads/internal/client/zze;->o:I

    .line 6
    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/zze;->p:Ljava/lang/String;

    :cond_25
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyj;->p:Lcom/google/android/gms/internal/ads/zzezm;

    .line 7
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzezm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ifts"

    .line 8
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzdyj;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    move-result-object v1

    const-string v2, "reason"

    const-string v3, "adapter"

    .line 9
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfdj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    if-ltz v0, :cond_43

    .line 10
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "arec"

    .line 11
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzfdj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    :cond_43
    if-eqz p1, :cond_4a

    const-string v0, "areec"

    .line 12
    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzfdj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    :cond_4a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyj;->v:Lcom/google/android/gms/internal/ads/zzfdk;

    .line 13
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzfdk;->a(Lcom/google/android/gms/internal/ads/zzfdj;)V

    return-void
.end method

.method public final w0()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyj;->r:Lcom/google/android/gms/internal/ads/zzeyc;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzeyc;->j0:Z

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "click"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdyj;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdyj;->c(Lcom/google/android/gms/internal/ads/zzfdj;)V

    return-void
.end method

.method public final zzb()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdyj;->u:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyj;->v:Lcom/google/android/gms/internal/ads/zzfdk;

    const-string v1, "ifts"

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzdyj;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    move-result-object v1

    const-string v2, "reason"

    const-string v3, "blocked"

    .line 2
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfdj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    .line 3
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfdk;->a(Lcom/google/android/gms/internal/ads/zzfdj;)V

    return-void
.end method
