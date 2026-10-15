###### Class com.google.android.gms.internal.ads.zzaqz (com.google.android.gms.internal.ads.zzaqz)
.class final Lcom/google/android/gms/internal/ads/zzaqz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field static a:Lcom/google/android/gms/internal/ads/zzfvw;


# direct methods
.method static a(Lcom/google/android/gms/internal/ads/zzaqx;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaqz;->a:Lcom/google/android/gms/internal/ads/zzfvw;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->N2:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_35

    :cond_1b
    const/4 v0, 0x0

    if-nez p0, :cond_1f

    goto :goto_33

    :cond_1f
    const-string v3, "L2vZ2OO3rwdvrPw7w8gxoc6uBumpVgtFZaDCD4UMQe7ip3FstmhcWfdbGlrdar2/"

    const-string v4, "ZBu/zDVJcH0s7e1wI2CAP7CbHihYO+AvFuVQbZgL9s8="

    .line 4
    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/internal/ads/zzaqx;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-nez p0, :cond_2a

    goto :goto_33

    :cond_2a
    new-array v3, v2, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p0, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    :goto_33
    if-eqz v0, :cond_11e

    .line 6
    :cond_35
    :try_start_35
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaoh;->b(Ljava/lang/String;Z)[B

    move-result-object p0
    :try_end_39
    .catch Ljava/lang/IllegalArgumentException; {:try_start_35 .. :try_end_39} :catch_11e

    .line 7
    :try_start_39
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfwt;->a([B)Lcom/google/android/gms/internal/ads/zzfwp;

    move-result-object p0

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgbf;->a:Lcom/google/android/gms/internal/ads/zzgmh;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgmh;->K()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_47
    :goto_47
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzglg;

    .line 10
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzglg;->M()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_106

    .line 11
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzglg;->L()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_fe

    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzglg;->K()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f6

    .line 13
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzglg;->K()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TinkAead"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_47

    .line 14
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzglg;->K()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TinkMac"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_47

    .line 15
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzglg;->K()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TinkHybridDecrypt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_47

    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzglg;->K()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TinkHybridEncrypt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_47

    .line 17
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzglg;->K()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TinkPublicKeySign"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_47

    .line 18
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzglg;->K()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TinkPublicKeyVerify"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_47

    .line 19
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzglg;->K()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TinkStreamingAead"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_47

    .line 20
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzglg;->K()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TinkDeterministicAead"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_47

    .line 21
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzglg;->K()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfxf;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfvr;

    move-result-object v4

    .line 22
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzfvr;->zza()Lcom/google/android/gms/internal/ads/zzfxc;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzfxf;->p(Lcom/google/android/gms/internal/ads/zzfxc;)V

    .line 23
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzglg;->M()Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzglg;->L()Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzglg;->I()I

    .line 24
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzfvr;->zzb()Lcom/google/android/gms/internal/ads/zzfvy;

    move-result-object v4

    .line 25
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzglg;->N()Z

    move-result v3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zzfxf;->n(Lcom/google/android/gms/internal/ads/zzfvy;Z)V

    goto/16 :goto_47

    :cond_f6
    const-string p0, "Missing catalogue_name."

    .line 26
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_fe
    const-string p0, "Missing primitive_name."

    .line 27
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_106
    const-string p0, "Missing type_url."

    .line 28
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_10e
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgbj;->b()V

    const-class v0, Lcom/google/android/gms/internal/ads/zzfvw;

    .line 30
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfwp;->d(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzfvw;

    sput-object p0, Lcom/google/android/gms/internal/ads/zzaqz;->a:Lcom/google/android/gms/internal/ads/zzfvw;
    :try_end_11b
    .catch Ljava/security/GeneralSecurityException; {:try_start_39 .. :try_end_11b} :catch_11e

    if-eqz p0, :cond_11e

    return v1

    :catch_11e
    :cond_11e
    return v2
.end method
