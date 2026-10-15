###### Class com.google.android.gms.internal.ads.zzgeq (com.google.android.gms.internal.ads.zzgeq)
.class final Lcom/google/android/gms/internal/ads/zzgeq;
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
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzggw;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgoc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgnz;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzggw;->N()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgpe;->k()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzgnz;-><init>([B)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzggw;->M()Lcom/google/android/gms/internal/ads/zzghc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzghc;->I()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgoc;-><init>(Lcom/google/android/gms/internal/ads/zzggt;I)V

    return-object v0
.end method
