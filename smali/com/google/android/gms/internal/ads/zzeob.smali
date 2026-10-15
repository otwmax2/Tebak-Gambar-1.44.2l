###### Class com.google.android.gms.internal.ads.zzeob (com.google.android.gms.internal.ads.zzeob)
.class public final Lcom/google/android/gms/internal/ads/zzeob;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepn;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/zzfuu;

.field private final c:Lcom/google/android/gms/internal/ads/zzeyx;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfuu;Lcom/google/android/gms/internal/ads/zzeyx;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeob;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeob;->b:Lcom/google/android/gms/internal/ads/zzfuu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeob;->c:Lcom/google/android/gms/internal/ads/zzeyx;

    return-void
.end method


# virtual methods
.method final synthetic a()Lcom/google/android/gms/internal/ads/zzeoc;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeob;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeob;->c:Lcom/google/android/gms/internal/ads/zzeyx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeyx;->b()Z

    move-result v7

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfks;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzfks;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfks;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzfks;-><init>()V

    const/4 v3, 0x1

    if-eqz v7, :cond_2e

    .line 2
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbar;->C2:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v4

    .line 4
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2e

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeoc;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzeoc;-><init>(Z)V

    goto/16 :goto_dc

    :cond_2e
    if-nez v7, :cond_42

    .line 5
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbar;->y2:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v4

    .line 7
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_56

    :cond_42
    if-eqz v7, :cond_7a

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbar;->A2:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v4

    .line 9
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 10
    :cond_56
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfkv;->k(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfkv;

    move-result-object v1

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbar;->J2:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v4

    .line 12
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzbyj;->h()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/ads/internal/util/zzg;->g0()Z

    move-result v6

    .line 14
    invoke-virtual {v1, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzfkv;->i(JZ)Lcom/google/android/gms/internal/ads/zzfks;

    move-result-object v1

    :cond_7a
    if-nez v7, :cond_8e

    .line 15
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbar;->z2:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v4

    .line 17
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_a2

    :cond_8e
    if-eqz v7, :cond_d2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbar;->B2:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v4

    .line 19
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_d2

    .line 20
    :cond_a2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfkw;->j(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfkw;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbar;->K2:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 23
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbyj;->h()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/ads/internal/util/zzg;->g0()Z

    move-result v4

    .line 24
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfkw;->i(JZ)Lcom/google/android/gms/internal/ads/zzfks;

    move-result-object v2

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfkw;->p()Z

    move-result v3

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfkw;->q()Z

    move-result v0

    move v6, v0

    move-object v4, v2

    move v5, v3

    goto :goto_d5

    :cond_d2
    move-object v4, v2

    const/4 v5, 0x1

    const/4 v6, 0x1

    :goto_d5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeoc;

    move-object v2, v0

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzeoc;-><init>(Lcom/google/android/gms/internal/ads/zzfks;Lcom/google/android/gms/internal/ads/zzfks;ZZZ)V
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_dc} :catch_dd

    :goto_dc
    return-object v0

    :catch_dd
    move-exception v0

    .line 27
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v1

    const-string v2, "PerAppIdSignal"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbyj;->u(Ljava/lang/Throwable;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeoc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeob;->c:Lcom/google/android/gms/internal/ads/zzeyx;

    .line 28
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeyx;->b()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzeoc;-><init>(Z)V

    return-object v0
.end method

.method public final zza()I
    .registers 2

    const/16 v0, 0x35

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfut;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeob;->b:Lcom/google/android/gms/internal/ads/zzfuu;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeoa;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzeoa;-><init>(Lcom/google/android/gms/internal/ads/zzeob;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfuu;->e(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzeoa (com.google.android.gms.internal.ads.zzeoa)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzeoa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzeob;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeob;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeoa;->a:Lcom/google/android/gms/internal/ads/zzeob;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeoa;->a:Lcom/google/android/gms/internal/ads/zzeob;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeob;->a()Lcom/google/android/gms/internal/ads/zzeoc;

    move-result-object v0

    return-object v0
.end method
