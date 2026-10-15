###### Class com.google.android.gms.internal.ads.zzgba (com.google.android.gms.internal.ads.zzgba)
.class final Lcom/google/android/gms/internal/ads/zzgba;
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
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgjm;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgjm;->M()Lcom/google/android/gms/internal/ads/zzgjp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgjp;->J()Lcom/google/android/gms/internal/ads/zzgjj;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgjj;->M()Lcom/google/android/gms/internal/ads/zzgjs;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgjs;->N()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgbk;->c(I)I

    move-result v2

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgjm;->N()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpe;->k()[B

    move-result-object p1

    .line 6
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzgne;->f(I[B)Ljava/security/interfaces/ECPrivateKey;

    move-result-object v4

    new-instance v8, Lcom/google/android/gms/internal/ads/zzgbl;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgjj;->I()Lcom/google/android/gms/internal/ads/zzgjd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgjd;->L()Lcom/google/android/gms/internal/ads/zzgld;

    move-result-object p1

    invoke-direct {v8, p1}, Lcom/google/android/gms/internal/ads/zzgbl;-><init>(Lcom/google/android/gms/internal/ads/zzgld;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgmz;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgjs;->L()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgpe;->k()[B

    move-result-object v5

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgjs;->O()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgbk;->b(I)Ljava/lang/String;

    move-result-object v6

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgjj;->P()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgbk;->d(I)I

    move-result v7

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzgmz;-><init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;ILcom/google/android/gms/internal/ads/zzgmy;)V

    return-object p1
.end method
