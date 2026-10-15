###### Class com.google.android.gms.internal.ads.zzfvs (com.google.android.gms.internal.ads.zzfvs)
.class public final Lcom/google/android/gms/internal/ads/zzfvs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method public static a(Lcom/google/android/gms/internal/ads/zzfvp;)Lcom/google/android/gms/internal/ads/zzfwp;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfvp;->a()Lcom/google/android/gms/internal/ads/zzgll;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfwp;->a(Lcom/google/android/gms/internal/ads/zzgll;)Lcom/google/android/gms/internal/ads/zzfwp;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/google/android/gms/internal/ads/zzfwp;Lcom/google/android/gms/internal/ads/zzfvq;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfwp;->c()Lcom/google/android/gms/internal/ads/zzgll;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzfvq;->a(Lcom/google/android/gms/internal/ads/zzgll;)V

    return-void
.end method
