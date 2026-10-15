###### Class com.google.android.gms.internal.ads.zzgby (com.google.android.gms.internal.ads.zzgby)
.class final Lcom/google/android/gms/internal/ads/zzgby;
.super Lcom/google/android/gms/internal/ads/zzgct;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final synthetic b:Lcom/google/android/gms/internal/ads/zzgbz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgbz;Ljava/lang/Class;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgby;->b:Lcom/google/android/gms/internal/ads/zzgbz;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzgct;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/internal/ads/zzgrw;)Lcom/google/android/gms/internal/ads/zzgrw;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgkk;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgkk;->L()Lcom/google/android/gms/internal/ads/zzgkn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgkn;->N()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_52

    const/4 v2, 0x2

    if-eq v0, v2, :cond_21

    const/4 v2, 0x3

    if-eq v0, v2, :cond_21

    const/4 v2, 0x4

    if-ne v0, v2, :cond_19

    goto :goto_21

    .line 3
    :cond_19
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Invalid KEM"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_21
    :goto_21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgkk;->L()Lcom/google/android/gms/internal/ads/zzgkn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgkn;->N()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgcc;->g(I)I

    move-result v0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgne;->h(I)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgne;->b(Ljava/security/spec/ECParameterSpec;)Ljava/security/KeyPair;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v3

    check-cast v3, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v3}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v3

    .line 7
    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzgne;->i(IILjava/security/spec/ECPoint;)[B

    move-result-object v0

    .line 8
    invoke-virtual {v2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    invoke-interface {v1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    goto :goto_5a

    .line 9
    :cond_52
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgoh;->b()[B

    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgoh;->c([B)[B

    move-result-object v0

    .line 11
    :goto_5a
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgkt;->K()Lcom/google/android/gms/internal/ads/zzgks;

    move-result-object v2

    const/4 v3, 0x0

    .line 12
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzgks;->q(I)Lcom/google/android/gms/internal/ads/zzgks;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgkk;->L()Lcom/google/android/gms/internal/ads/zzgkn;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzgks;->o(Lcom/google/android/gms/internal/ads/zzgkn;)Lcom/google/android/gms/internal/ads/zzgks;

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgpe;->J([B)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzgks;->p(Lcom/google/android/gms/internal/ads/zzgpe;)Lcom/google/android/gms/internal/ads/zzgks;

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgkt;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgkq;->J()Lcom/google/android/gms/internal/ads/zzgkp;

    move-result-object v0

    .line 17
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzgkp;->q(I)Lcom/google/android/gms/internal/ads/zzgkp;

    .line 18
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgkp;->p(Lcom/google/android/gms/internal/ads/zzgkt;)Lcom/google/android/gms/internal/ads/zzgkp;

    .line 19
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgpe;->J([B)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgkp;->o(Lcom/google/android/gms/internal/ads/zzgpe;)Lcom/google/android/gms/internal/ads/zzgkp;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgkq;

    return-object p1
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/ads/zzgpe;)Lcom/google/android/gms/internal/ads/zzgrw;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgqy;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgpy;->a()Lcom/google/android/gms/internal/ads/zzgpy;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgkk;->K(Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgpy;)Lcom/google/android/gms/internal/ads/zzgkk;

    move-result-object p1

    return-object p1
.end method

.method public final c()Ljava/util/Map;
    .registers 9

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x3

    const/4 v2, 0x1

    .line 2
    invoke-static {v1, v1, v1, v2}, Lcom/google/android/gms/internal/ads/zzgbz;->k(IIII)Lcom/google/android/gms/internal/ads/zzgcs;

    move-result-object v3

    const-string v4, "DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_AES_128_GCM"

    .line 3
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {v1, v1, v1, v1}, Lcom/google/android/gms/internal/ads/zzgbz;->k(IIII)Lcom/google/android/gms/internal/ads/zzgcs;

    move-result-object v3

    const-string v4, "DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_AES_128_GCM_RAW"

    .line 5
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x4

    .line 6
    invoke-static {v1, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzgbz;->k(IIII)Lcom/google/android/gms/internal/ads/zzgcs;

    move-result-object v4

    const-string v5, "DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_AES_256_GCM"

    .line 7
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {v1, v1, v3, v1}, Lcom/google/android/gms/internal/ads/zzgbz;->k(IIII)Lcom/google/android/gms/internal/ads/zzgcs;

    move-result-object v4

    const-string v5, "DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_AES_256_GCM_RAW"

    .line 9
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x5

    .line 10
    invoke-static {v1, v1, v4, v2}, Lcom/google/android/gms/internal/ads/zzgbz;->k(IIII)Lcom/google/android/gms/internal/ads/zzgcs;

    move-result-object v5

    const-string v6, "DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_CHACHA20_POLY1305"

    .line 11
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {v1, v1, v4, v1}, Lcom/google/android/gms/internal/ads/zzgbz;->k(IIII)Lcom/google/android/gms/internal/ads/zzgcs;

    move-result-object v5

    const-string v6, "DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_CHACHA20_POLY1305_RAW"

    .line 13
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {v3, v1, v1, v2}, Lcom/google/android/gms/internal/ads/zzgbz;->k(IIII)Lcom/google/android/gms/internal/ads/zzgcs;

    move-result-object v5

    const-string v6, "DHKEM_P256_HKDF_SHA256_HKDF_SHA256_AES_128_GCM"

    .line 15
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {v3, v1, v1, v1}, Lcom/google/android/gms/internal/ads/zzgbz;->k(IIII)Lcom/google/android/gms/internal/ads/zzgcs;

    move-result-object v5

    const-string v6, "DHKEM_P256_HKDF_SHA256_HKDF_SHA256_AES_128_GCM_RAW"

    .line 17
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {v3, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzgbz;->k(IIII)Lcom/google/android/gms/internal/ads/zzgcs;

    move-result-object v5

    const-string v6, "DHKEM_P256_HKDF_SHA256_HKDF_SHA256_AES_256_GCM"

    .line 19
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {v3, v1, v3, v1}, Lcom/google/android/gms/internal/ads/zzgbz;->k(IIII)Lcom/google/android/gms/internal/ads/zzgcs;

    move-result-object v5

    const-string v6, "DHKEM_P256_HKDF_SHA256_HKDF_SHA256_AES_256_GCM_RAW"

    .line 21
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {v4, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzgbz;->k(IIII)Lcom/google/android/gms/internal/ads/zzgcs;

    move-result-object v5

    const-string v6, "DHKEM_P384_HKDF_SHA384_HKDF_SHA384_AES_128_GCM"

    .line 23
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-static {v4, v3, v1, v1}, Lcom/google/android/gms/internal/ads/zzgbz;->k(IIII)Lcom/google/android/gms/internal/ads/zzgcs;

    move-result-object v5

    const-string v6, "DHKEM_P384_HKDF_SHA384_HKDF_SHA384_AES_128_GCM_RAW"

    .line 25
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {v4, v3, v3, v2}, Lcom/google/android/gms/internal/ads/zzgbz;->k(IIII)Lcom/google/android/gms/internal/ads/zzgcs;

    move-result-object v5

    const-string v6, "DHKEM_P384_HKDF_SHA384_HKDF_SHA384_AES_256_GCM"

    .line 27
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-static {v4, v3, v3, v1}, Lcom/google/android/gms/internal/ads/zzgbz;->k(IIII)Lcom/google/android/gms/internal/ads/zzgcs;

    move-result-object v5

    const-string v6, "DHKEM_P384_HKDF_SHA384_HKDF_SHA384_AES_256_GCM_RAW"

    .line 29
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x6

    .line 30
    invoke-static {v5, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzgbz;->k(IIII)Lcom/google/android/gms/internal/ads/zzgcs;

    move-result-object v6

    const-string v7, "DHKEM_P521_HKDF_SHA512_HKDF_SHA512_AES_128_GCM"

    .line 31
    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {v5, v4, v1, v1}, Lcom/google/android/gms/internal/ads/zzgbz;->k(IIII)Lcom/google/android/gms/internal/ads/zzgcs;

    move-result-object v6

    const-string v7, "DHKEM_P521_HKDF_SHA512_HKDF_SHA512_AES_128_GCM_RAW"

    .line 33
    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {v5, v4, v3, v2}, Lcom/google/android/gms/internal/ads/zzgbz;->k(IIII)Lcom/google/android/gms/internal/ads/zzgcs;

    move-result-object v2

    const-string v6, "DHKEM_P521_HKDF_SHA512_HKDF_SHA512_AES_256_GCM"

    .line 35
    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {v5, v4, v3, v1}, Lcom/google/android/gms/internal/ads/zzgbz;->k(IIII)Lcom/google/android/gms/internal/ads/zzgcs;

    move-result-object v1

    const-string v2, "DHKEM_P521_HKDF_SHA512_HKDF_SHA512_AES_256_GCM_RAW"

    .line 37
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/google/android/gms/internal/ads/zzgrw;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgkk;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgkk;->L()Lcom/google/android/gms/internal/ads/zzgkn;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgcc;->a(Lcom/google/android/gms/internal/ads/zzgkn;)V

    return-void
.end method
