###### Class com.google.android.gms.internal.ads.zzdpp (com.google.android.gms.internal.ads.zzdpp)
.class public Lcom/google/android/gms/internal/ads/zzdpp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Ljava/util/Map;

.field protected final c:Ljava/util/concurrent/Executor;

.field protected final d:Lcom/google/android/gms/internal/ads/zzbzf;

.field protected final e:Z

.field private final f:Lcom/google/android/gms/internal/ads/zzfdu;

.field private final g:Z

.field private final h:Z


# direct methods
.method protected constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzbzf;Lcom/google/android/gms/internal/ads/zzfdu;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbce;->b:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpp;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpp;->b:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpp;->c:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdpp;->d:Lcom/google/android/gms/internal/ads/zzbzf;

    .line 3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->N1:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdpp;->e:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdpp;->f:Lcom/google/android/gms/internal/ads/zzfdu;

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

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdpp;->g:Z

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->D6:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 9
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdpp;->h:Z

    return-void
.end method

.method private final a(Ljava/util/Map;Z)V
    .registers 5

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpp;->f:Lcom/google/android/gms/internal/ads/zzfdu;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfdu;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    const-string v1, "scar"

    .line 4
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdpp;->e:Z

    if-eqz v1, :cond_36

    if-eqz p2, :cond_25

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzdpp;->g:Z

    if-eqz p2, :cond_36

    :cond_25
    if-eqz p1, :cond_2c

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdpp;->h:Z

    if-nez p1, :cond_2c

    goto :goto_36

    :cond_2c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpp;->c:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdpo;

    invoke-direct {p2, p0, v0}, Lcom/google/android/gms/internal/ads/zzdpo;-><init>(Lcom/google/android/gms/internal/ads/zzdpp;Ljava/lang/String;)V

    .line 5
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_36
    :goto_36
    return-void

    :cond_37
    const-string p1, "Empty paramMap."

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final b(Ljava/util/Map;)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpp;->f:Lcom/google/android/gms/internal/ads/zzfdu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfdu;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final c()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 3

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpp;->b:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final d(Ljava/util/Map;)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdpp;->a(Ljava/util/Map;Z)V

    return-void
.end method

.method public final e(Ljava/util/Map;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdpp;->a(Ljava/util/Map;Z)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzdpo (com.google.android.gms.internal.ads.zzdpo)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzdpo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzdpp;

.field public final synthetic p:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdpp;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpo;->o:Lcom/google/android/gms/internal/ads/zzdpp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdpo;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpo;->o:Lcom/google/android/gms/internal/ads/zzdpp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpo;->p:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdpp;->d:Lcom/google/android/gms/internal/ads/zzbzf;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbzf;->o(Ljava/lang/String;)Z

    return-void
.end method
