###### Class com.google.android.gms.internal.ads.zzezj (com.google.android.gms.internal.ads.zzezj)
.class public final Lcom/google/android/gms/internal/ads/zzezj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxi;->a()V
    :try_end_6
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_6} :catch_7

    return-void

    :catch_7
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to Configure Aead. "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v1

    const-string v2, "CryptoUtils.registerAead"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbyj;->u(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static final a()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgpe;->H()Lcom/google/android/gms/internal/ads/zzgpb;

    move-result-object v0

    :try_start_4
    const-string v1, "AES128_GCM"

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfwi;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfwh;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfwp;->b(Lcom/google/android/gms/internal/ads/zzfwh;)Lcom/google/android/gms/internal/ads/zzfwp;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfvq;->b(Ljava/io/OutputStream;)Lcom/google/android/gms/internal/ads/zzfvq;

    move-result-object v2

    .line 3
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzfvs;->b(Lcom/google/android/gms/internal/ads/zzfwp;Lcom/google/android/gms/internal/ads/zzfvq;)V
    :try_end_15
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_15} :catch_18
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_15} :catch_16

    goto :goto_2f

    :catch_16
    move-exception v1

    goto :goto_19

    :catch_18
    move-exception v1

    .line 4
    :goto_19
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to generate key"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v2

    const-string v3, "CryptoUtils.generateKey"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzbyj;->u(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 6
    :goto_2f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgpb;->c()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgpe;->k()[B

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgpb;->d()V

    return-object v1
.end method

.method public static final b([B[BLjava/lang/String;Lcom/google/android/gms/internal/ads/zzdpd;)Ljava/lang/String;
    .registers 6
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzezj;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfwp;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_8

    return-object v0

    :cond_8
    :try_start_8
    const-class v1, Lcom/google/android/gms/internal/ads/zzfvo;

    .line 2
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzfwp;->d(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzfvo;

    .line 3
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzfvo;->a([B[B)[B

    move-result-object p0

    .line 4
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdpd;->a()Ljava/util/Map;

    move-result-object p1

    const-string p2, "ds"

    const-string v1, "1"

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/String;

    const-string p2, "UTF-8"

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_26
    .catch Ljava/security/GeneralSecurityException; {:try_start_8 .. :try_end_26} :catch_29
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_26} :catch_27

    return-object p1

    :catch_27
    move-exception p0

    goto :goto_2a

    :catch_29
    move-exception p0

    .line 5
    :goto_2a
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Failed to decrypt "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object p1

    const-string p2, "CryptoUtils.decrypt"

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/internal/ads/zzbyj;->u(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdpd;->a()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "dsf"

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static final c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfwp;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/16 v0, 0xb

    .line 1
    :try_start_2
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfvp;->b([B)Lcom/google/android/gms/internal/ads/zzfvp;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfvs;->a(Lcom/google/android/gms/internal/ads/zzfvp;)Lcom/google/android/gms/internal/ads/zzfwp;

    move-result-object p0
    :try_end_e
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_e} :catch_11
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_e} :catch_f

    goto :goto_29

    :catch_f
    move-exception p0

    goto :goto_12

    :catch_11
    move-exception p0

    .line 3
    :goto_12
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to get keysethandle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v0

    const-string v1, "CryptoUtils.getHandle"

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzbyj;->u(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_29
    return-object p0
.end method
