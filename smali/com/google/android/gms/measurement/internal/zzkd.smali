###### Class com.google.android.gms.measurement.internal.zzkd (com.google.android.gms.measurement.internal.zzkd)
.class public final Lcom/google/android/gms/measurement/internal/zzkd;
.super Lcom/google/android/gms/measurement/internal/r3;
.source "com.google.android.gms:play-services-measurement@@20.1.2"


# instance fields
.field private final d:Ljava/util/Map;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:J

.field public final h:Lcom/google/android/gms/measurement/internal/zzfj;

.field public final i:Lcom/google/android/gms/measurement/internal/zzfj;

.field public final j:Lcom/google/android/gms/measurement/internal/zzfj;

.field public final k:Lcom/google/android/gms/measurement/internal/zzfj;

.field public final l:Lcom/google/android/gms/measurement/internal/zzfj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzli;)V
    .registers 6

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/r3;-><init>(Lcom/google/android/gms/measurement/internal/zzli;)V

    new-instance p1, Ljava/util/HashMap;

    .line 2
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->d:Ljava/util/Map;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzfj;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->D()Lcom/google/android/gms/measurement/internal/x;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "last_delete_stale"

    const-wide/16 v2, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzfj;-><init>(Lcom/google/android/gms/measurement/internal/x;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->h:Lcom/google/android/gms/measurement/internal/zzfj;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzfj;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->D()Lcom/google/android/gms/measurement/internal/x;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "backoff"

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzfj;-><init>(Lcom/google/android/gms/measurement/internal/x;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->i:Lcom/google/android/gms/measurement/internal/zzfj;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzfj;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->D()Lcom/google/android/gms/measurement/internal/x;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "last_upload"

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzfj;-><init>(Lcom/google/android/gms/measurement/internal/x;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->j:Lcom/google/android/gms/measurement/internal/zzfj;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzfj;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->D()Lcom/google/android/gms/measurement/internal/x;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "last_upload_attempt"

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzfj;-><init>(Lcom/google/android/gms/measurement/internal/x;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->k:Lcom/google/android/gms/measurement/internal/zzfj;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzfj;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->D()Lcom/google/android/gms/measurement/internal/x;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "midnight_offset"

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzfj;-><init>(Lcom/google/android/gms/measurement/internal/x;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->l:Lcom/google/android/gms/measurement/internal/zzfj;

    return-void
.end method


# virtual methods
.method protected final g()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final h(Ljava/lang/String;)Landroid/util/Pair;
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->x()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v0

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzne;->b()Z

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->v()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    .line 6
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzel;->t0:Lcom/google/android/gms/measurement/internal/zzek;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v2

    const-string v3, "Unable to get advertising id"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, ""

    if-eqz v2, :cond_ab

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkd;->d:Ljava/util/Map;

    .line 7
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/f3;

    if-eqz v2, :cond_44

    iget-wide v7, v2, Lcom/google/android/gms/measurement/internal/f3;->c:J

    cmp-long v9, v0, v7

    if-ltz v9, :cond_36

    goto :goto_44

    .line 8
    :cond_36
    new-instance p1, Landroid/util/Pair;

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/f3;->a:Ljava/lang/String;

    iget-boolean v1, v2, Lcom/google/android/gms/measurement/internal/f3;->b:Z

    .line 9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 10
    :cond_44
    :goto_44
    invoke-static {v4}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->d(Z)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->v()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzel;->c:Lcom/google/android/gms/measurement/internal/zzek;

    .line 12
    invoke-virtual {v2, p1, v4}, Lcom/google/android/gms/measurement/internal/zzaf;->m(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)J

    move-result-wide v7

    add-long/2addr v0, v7

    :try_start_54
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->N0()Landroid/content/Context;

    move-result-object v2

    .line 14
    invoke-static {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v2

    if-nez v2, :cond_68

    new-instance v2, Landroid/util/Pair;

    .line 15
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v2, v6, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 16
    :cond_68
    invoke-virtual {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->a()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_78

    new-instance v7, Lcom/google/android/gms/measurement/internal/f3;

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->b()Z

    move-result v2

    invoke-direct {v7, v4, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/f3;-><init>(Ljava/lang/String;ZJ)V

    goto :goto_95

    .line 18
    :cond_78
    new-instance v7, Lcom/google/android/gms/measurement/internal/f3;

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->b()Z

    move-result v2

    invoke-direct {v7, v6, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/f3;-><init>(Ljava/lang/String;ZJ)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_81} :catch_82

    goto :goto_95

    :catch_82
    move-exception v2

    .line 20
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 21
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v4

    .line 22
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzey;->l()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v7, Lcom/google/android/gms/measurement/internal/f3;

    .line 23
    invoke-direct {v7, v6, v5, v0, v1}, Lcom/google/android/gms/measurement/internal/f3;-><init>(Ljava/lang/String;ZJ)V

    .line 24
    :goto_95
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->d:Ljava/util/Map;

    .line 25
    invoke-interface {v0, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {v5}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->d(Z)V

    new-instance p1, Landroid/util/Pair;

    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/f3;->a:Ljava/lang/String;

    iget-boolean v1, v7, Lcom/google/android/gms/measurement/internal/f3;->b:Z

    .line 27
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 28
    :cond_ab
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkd;->e:Ljava/lang/String;

    if-eqz v2, :cond_c2

    iget-wide v7, p0, Lcom/google/android/gms/measurement/internal/zzkd;->g:J

    cmp-long v9, v0, v7

    if-ltz v9, :cond_b6

    goto :goto_c2

    .line 29
    :cond_b6
    new-instance p1, Landroid/util/Pair;

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->f:Z

    .line 30
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 31
    :cond_c2
    :goto_c2
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 32
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->v()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzel;->c:Lcom/google/android/gms/measurement/internal/zzek;

    .line 33
    invoke-virtual {v2, p1, v7}, Lcom/google/android/gms/measurement/internal/zzaf;->m(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)J

    move-result-wide v7

    add-long/2addr v0, v7

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->g:J

    .line 34
    invoke-static {v4}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->d(Z)V

    :try_start_d4
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 35
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->N0()Landroid/content/Context;

    move-result-object p1

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p1

    if-nez p1, :cond_e8

    new-instance p1, Landroid/util/Pair;

    .line 37
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v6, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_e8
    iput-object v6, p0, Lcom/google/android/gms/measurement/internal/zzkd;->e:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f2

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->e:Ljava/lang/String;

    .line 39
    :cond_f2
    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->b()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->f:Z
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_f8} :catch_f9

    goto :goto_109

    :catch_f9
    move-exception p1

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->l()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0, v3, p1}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v6, p0, Lcom/google/android/gms/measurement/internal/zzkd;->e:Ljava/lang/String;

    .line 43
    :goto_109
    invoke-static {v5}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->d(Z)V

    new-instance p1, Landroid/util/Pair;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->e:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->f:Z

    .line 44
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method final i(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzah;)Landroid/util/Pair;
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzag;->p:Lcom/google/android/gms/measurement/internal/zzag;

    .line 2
    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzah;->i(Lcom/google/android/gms/measurement/internal/zzag;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkd;->h(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_d
    new-instance p1, Landroid/util/Pair;

    .line 4
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v0, ""

    invoke-direct {p1, v0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method final j(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkd;->h(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzlp;->o()Ljava/security/MessageDigest;

    move-result-object v0

    if-nez v0, :cond_13

    const/4 p1, 0x0

    return-object p1

    :cond_13
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/math/BigInteger;

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-direct {v4, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 p1, 0x0

    aput-object v4, v3, p1

    const-string p1, "%032X"

    invoke-static {v1, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
