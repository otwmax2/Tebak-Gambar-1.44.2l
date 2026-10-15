###### Class com.google.android.gms.internal.ads.zzgfm (com.google.android.gms.internal.ads.zzgfm)
.class final Lcom/google/android/gms/internal/ads/zzgfm;
.super Lcom/google/android/gms/internal/ads/zzgds;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgds;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/internal/ads/zzgrw;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgjz;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgjz;->N()Lcom/google/android/gms/internal/ads/zzgkf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgkf;->N()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgjz;->O()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgpe;->k()[B

    move-result-object v1

    .line 4
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "HMAC"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgjz;->N()Lcom/google/android/gms/internal/ads/zzgkf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgkf;->I()I

    move-result p1

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_61

    const/4 v1, 0x3

    if-eq v0, v1, :cond_54

    const/4 v1, 0x4

    if-eq v0, v1, :cond_47

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3f

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgoc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgob;

    const-string v3, "HMACSHA224"

    .line 7
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzgob;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgoc;-><init>(Lcom/google/android/gms/internal/ads/zzggt;I)V

    goto :goto_7a

    .line 8
    :cond_3f
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown hash"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_47
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgoc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgob;

    const-string v3, "HMACSHA512"

    .line 10
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzgob;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgoc;-><init>(Lcom/google/android/gms/internal/ads/zzggt;I)V

    goto :goto_7a

    .line 11
    :cond_54
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgoc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgob;

    const-string v3, "HMACSHA256"

    .line 12
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzgob;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgoc;-><init>(Lcom/google/android/gms/internal/ads/zzggt;I)V

    goto :goto_7a

    .line 13
    :cond_61
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgoc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgob;

    const-string v3, "HMACSHA384"

    .line 14
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzgob;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgoc;-><init>(Lcom/google/android/gms/internal/ads/zzggt;I)V

    goto :goto_7a

    .line 15
    :cond_6e
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgoc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgob;

    const-string v3, "HMACSHA1"

    .line 16
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzgob;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgoc;-><init>(Lcom/google/android/gms/internal/ads/zzggt;I)V

    :goto_7a
    return-object v0
.end method
