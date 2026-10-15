###### Class com.google.android.gms.internal.ads.zzfzw (com.google.android.gms.internal.ads.zzfzw)
.class final Lcom/google/android/gms/internal/ads/zzfzw;
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
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzglt;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzglt;->M()Lcom/google/android/gms/internal/ads/zzglw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzglw;->L()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfwr;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfwq;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfwq;->zzb()Lcom/google/android/gms/internal/ads/zzfvo;

    move-result-object p1

    return-object p1
.end method
