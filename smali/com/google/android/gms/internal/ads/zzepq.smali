###### Class com.google.android.gms.internal.ads.zzepq (com.google.android.gms.internal.ads.zzepq)
.class public final Lcom/google/android/gms/internal/ads/zzepq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/Set;

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Lcom/google/android/gms/internal/ads/zzfen;

.field private final e:Lcom/google/android/gms/internal/ads/zzdpi;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/Set;Lcom/google/android/gms/internal/ads/zzfen;Lcom/google/android/gms/internal/ads/zzdpi;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzepq;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzepq;->c:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzepq;->b:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzepq;->d:Lcom/google/android/gms/internal/ads/zzfen;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzepq;->e:Lcom/google/android/gms/internal/ads/zzdpi;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepq;->a:Landroid/content/Context;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfeb;->a(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfec;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfec;->f()Lcom/google/android/gms/internal/ads/zzfec;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzepq;->b:Ljava/util/Set;

    .line 2
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzepq;->b:Ljava/util/Set;

    .line 3
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzepn;

    .line 4
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzepn;->zzb()Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v4

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v5

    new-instance v7, Lcom/google/android/gms/internal/ads/zzepo;

    invoke-direct {v7, p0, v5, v6, v3}, Lcom/google/android/gms/internal/ads/zzepo;-><init>(Lcom/google/android/gms/internal/ads/zzepq;JLcom/google/android/gms/internal/ads/zzepn;)V

    .line 6
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbzn;->f:Lcom/google/android/gms/internal/ads/zzfuu;

    invoke-interface {v4, v7, v3}, Lcom/google/android/gms/internal/ads/zzfut;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 7
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 8
    :cond_42
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfuj;->b(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfui;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzepp;

    invoke-direct {v3, v1, p1}, Lcom/google/android/gms/internal/ads/zzepp;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzepq;->c:Ljava/util/concurrent/Executor;

    .line 9
    invoke-virtual {v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzfui;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object p1

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfep;->a()Z

    move-result v1

    if-eqz v1, :cond_5c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzepq;->d:Lcom/google/android/gms/internal/ads/zzfen;

    .line 11
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzfem;->a(Lcom/google/android/gms/internal/ads/zzfut;Lcom/google/android/gms/internal/ads/zzfen;Lcom/google/android/gms/internal/ads/zzfec;)V

    :cond_5c
    return-object p1
.end method

.method public final b(JLcom/google/android/gms/internal/ads/zzepn;)V
    .registers 7

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbco;->a:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 3
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfoj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signal runtime (ms) : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    .line 5
    :cond_3f
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->Q1:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_52

    return-void

    :cond_52
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzepq;->e:Lcom/google/android/gms/internal/ads/zzdpi;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdpi;->a()Lcom/google/android/gms/internal/ads/zzdph;

    move-result-object p1

    const-string p2, "action"

    const-string v2, "lat_ms"

    .line 9
    invoke-virtual {p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzdph;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdph;

    const-string p2, "lat_grp"

    const-string v2, "sig_lat_grp"

    .line 10
    invoke-virtual {p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzdph;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdph;

    .line 11
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzepn;->zza()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "lat_id"

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzdph;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdph;

    .line 12
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "clat_ms"

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzdph;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdph;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdph;->h()V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzepo (com.google.android.gms.internal.ads.zzepo)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzepo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzepq;

.field public final synthetic p:J

.field public final synthetic q:Lcom/google/android/gms/internal/ads/zzepn;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzepq;JLcom/google/android/gms/internal/ads/zzepn;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzepo;->o:Lcom/google/android/gms/internal/ads/zzepq;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzepo;->p:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzepo;->q:Lcom/google/android/gms/internal/ads/zzepn;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepo;->o:Lcom/google/android/gms/internal/ads/zzepq;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzepo;->p:J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzepo;->q:Lcom/google/android/gms/internal/ads/zzepn;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzepq;->b(JLcom/google/android/gms/internal/ads/zzepn;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzepp (com.google.android.gms.internal.ads.zzepp)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzepp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzepp;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzepp;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepp;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzepp;->b:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfut;

    .line 2
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzepm;

    if-eqz v2, :cond_8

    .line 3
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzepm;->a(Ljava/lang/Object;)V

    goto :goto_8

    :cond_20
    return-object v1
.end method
