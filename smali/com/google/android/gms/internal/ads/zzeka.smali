###### Class com.google.android.gms.internal.ads.zzeka (com.google.android.gms.internal.ads.zzeka)
.class public final Lcom/google/android/gms/internal/ads/zzeka;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepn;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzfuu;

.field private final b:Lcom/google/android/gms/internal/ads/zzdnd;

.field private final c:Lcom/google/android/gms/internal/ads/zzdrk;

.field private final d:Lcom/google/android/gms/internal/ads/zzekd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfuu;Lcom/google/android/gms/internal/ads/zzdnd;Lcom/google/android/gms/internal/ads/zzdrk;Lcom/google/android/gms/internal/ads/zzekd;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeka;->a:Lcom/google/android/gms/internal/ads/zzfuu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeka;->b:Lcom/google/android/gms/internal/ads/zzdnd;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeka;->c:Lcom/google/android/gms/internal/ads/zzdrk;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeka;->d:Lcom/google/android/gms/internal/ads/zzekd;

    return-void
.end method


# virtual methods
.method final synthetic a()Lcom/google/android/gms/internal/ads/zzekc;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->k1:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    .line 5
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_2b
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeka;->b:Lcom/google/android/gms/internal/ads/zzdnd;

    .line 7
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 8
    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzdnd;->c(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzezs;

    move-result-object v3

    .line 9
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzezs;->c()Z

    new-instance v4, Landroid/os/Bundle;

    .line 10
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V
    :try_end_3e
    .catch Lcom/google/android/gms/internal/ads/zzezc; {:try_start_2b .. :try_end_3e} :catch_60

    .line 11
    :try_start_3e
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzezs;->k()Lcom/google/android/gms/internal/ads/zzbpq;

    move-result-object v5

    if-eqz v5, :cond_4d

    const-string v6, "sdk_version"

    .line 12
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbpq;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catch Lcom/google/android/gms/internal/ads/zzezc; {:try_start_3e .. :try_end_4d} :catch_4d

    .line 13
    :catch_4d
    :cond_4d
    :try_start_4d
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzezs;->j()Lcom/google/android/gms/internal/ads/zzbpq;

    move-result-object v3

    if-eqz v3, :cond_5c

    const-string v5, "adapter_version"

    .line 14
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbpq;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catch Lcom/google/android/gms/internal/ads/zzezc; {:try_start_4d .. :try_end_5c} :catch_5c

    .line 15
    :catch_5c
    :cond_5c
    :try_start_5c
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_5f
    .catch Lcom/google/android/gms/internal/ads/zzezc; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_1f

    :catch_60
    nop

    goto :goto_1f

    :cond_62
    new-instance v0, Lcom/google/android/gms/internal/ads/zzekc;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzekc;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzekb;)V

    return-object v0
.end method

.method public final zza()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfut;
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->k1:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfoj;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeka;->d:Lcom/google/android/gms/internal/ads/zzekd;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzekd;->b()Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeka;->c:Lcom/google/android/gms/internal/ads/zzdrk;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdrk;->t()Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_35

    .line 6
    :cond_23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeka;->d:Lcom/google/android/gms/internal/ads/zzekd;

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzekd;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeka;->a:Lcom/google/android/gms/internal/ads/zzfuu;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzejz;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzejz;-><init>(Lcom/google/android/gms/internal/ads/zzeka;)V

    .line 8
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfuu;->e(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    return-object v0

    .line 9
    :cond_35
    :goto_35
    new-instance v0, Lcom/google/android/gms/internal/ads/zzekc;

    new-instance v1, Landroid/os/Bundle;

    .line 10
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzekc;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzekb;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfuj;->h(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzejz (com.google.android.gms.internal.ads.zzejz)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzejz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzeka;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeka;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzejz;->a:Lcom/google/android/gms/internal/ads/zzeka;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejz;->a:Lcom/google/android/gms/internal/ads/zzeka;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeka;->a()Lcom/google/android/gms/internal/ads/zzekc;

    move-result-object v0

    return-object v0
.end method
