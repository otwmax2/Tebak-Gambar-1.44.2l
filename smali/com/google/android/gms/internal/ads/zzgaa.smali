###### Class com.google.android.gms.internal.ads.zzgaa (com.google.android.gms.internal.ads.zzgaa)
.class final Lcom/google/android/gms/internal/ads/zzgaa;
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
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzglz;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzglz;->M()Lcom/google/android/gms/internal/ads/zzgmc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgmc;->M()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfwr;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfwq;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfwq;->zzb()Lcom/google/android/gms/internal/ads/zzfvo;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfzz;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzglz;->M()Lcom/google/android/gms/internal/ads/zzgmc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgmc;->I()Lcom/google/android/gms/internal/ads/zzgld;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzfzz;-><init>(Lcom/google/android/gms/internal/ads/zzgld;Lcom/google/android/gms/internal/ads/zzfvo;)V

    return-object v1
.end method
