###### Class com.google.android.gms.internal.ads.zzgbr (com.google.android.gms.internal.ads.zzgbr)
.class final Lcom/google/android/gms/internal/ads/zzgbr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfvv;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzgbv;

.field private final b:Lcom/google/android/gms/internal/ads/zzgbt;

.field private final c:Lcom/google/android/gms/internal/ads/zzgbp;

.field private final d:Lcom/google/android/gms/internal/ads/zzgbo;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzgbv;Lcom/google/android/gms/internal/ads/zzgbt;Lcom/google/android/gms/internal/ads/zzgbo;Lcom/google/android/gms/internal/ads/zzgbp;I[B)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbr;->a:Lcom/google/android/gms/internal/ads/zzgbv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgbr;->b:Lcom/google/android/gms/internal/ads/zzgbt;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgbr;->d:Lcom/google/android/gms/internal/ads/zzgbo;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgbr;->c:Lcom/google/android/gms/internal/ads/zzgbp;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/zzgkq;)Lcom/google/android/gms/internal/ads/zzgbr;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkq;->R()Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkq;->M()Lcom/google/android/gms/internal/ads/zzgkt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgkt;->S()Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkq;->N()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgpe;->j()Z

    move-result v0

    if-nez v0, :cond_b9

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkq;->M()Lcom/google/android/gms/internal/ads/zzgkt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgkt;->J()Lcom/google/android/gms/internal/ads/zzgkn;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgbw;->b(Lcom/google/android/gms/internal/ads/zzgkn;)Lcom/google/android/gms/internal/ads/zzgbt;

    move-result-object v3

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgbw;->c(Lcom/google/android/gms/internal/ads/zzgkn;)Lcom/google/android/gms/internal/ads/zzgbo;

    move-result-object v4

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgbw;->a(Lcom/google/android/gms/internal/ads/zzgkn;)Lcom/google/android/gms/internal/ads/zzgbp;

    move-result-object v5

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgkn;->N()I

    move-result v0

    add-int/lit8 v1, v0, -0x2

    const/4 v2, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v1, v8, :cond_59

    if-eq v1, v7, :cond_56

    if-eq v1, v6, :cond_53

    if-ne v1, v2, :cond_43

    const/16 v0, 0x85

    goto :goto_5b

    .line 9
    :cond_43
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgkh;->a(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to determine KEM-encoding length for "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_53
    const/16 v0, 0x61

    goto :goto_5b

    :cond_56
    const/16 v0, 0x41

    goto :goto_5b

    :cond_59
    const/16 v0, 0x20

    .line 11
    :goto_5b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkq;->M()Lcom/google/android/gms/internal/ads/zzgkt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgkt;->J()Lcom/google/android/gms/internal/ads/zzgkn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgkn;->N()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-eq v1, v8, :cond_a3

    if-eq v1, v7, :cond_7a

    if-eq v1, v6, :cond_7a

    if-ne v1, v2, :cond_72

    goto :goto_7a

    .line 12
    :cond_72
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Unrecognized HPKE KEM identifier"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_7a
    :goto_7a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkq;->N()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgpe;->k()[B

    move-result-object v1

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkq;->M()Lcom/google/android/gms/internal/ads/zzgkt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgkt;->O()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgpe;->k()[B

    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkq;->M()Lcom/google/android/gms/internal/ads/zzgkt;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkt;->J()Lcom/google/android/gms/internal/ads/zzgkn;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkn;->N()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgcc;->g(I)I

    move-result p0

    .line 16
    invoke-static {v1, v2, p0}, Lcom/google/android/gms/internal/ads/zzgce;->a([B[BI)Lcom/google/android/gms/internal/ads/zzgce;

    move-result-object p0

    goto :goto_af

    .line 17
    :cond_a3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkq;->N()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpe;->k()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgcg;->a([B)Lcom/google/android/gms/internal/ads/zzgcg;

    move-result-object p0

    :goto_af
    move-object v2, p0

    .line 18
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgbr;

    const/4 v7, 0x0

    move-object v1, p0

    move v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzgbr;-><init>(Lcom/google/android/gms/internal/ads/zzgbv;Lcom/google/android/gms/internal/ads/zzgbt;Lcom/google/android/gms/internal/ads/zzgbo;Lcom/google/android/gms/internal/ads/zzgbp;I[B)V

    return-object p0

    .line 19
    :cond_b9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "HpkePrivateKey.private_key is empty."

    .line 20
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_c1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "HpkePrivateKey.public_key is missing params field."

    .line 22
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 23
    :cond_c9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "HpkePrivateKey is missing public_key field."

    .line 24
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
