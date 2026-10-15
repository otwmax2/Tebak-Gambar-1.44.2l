###### Class com.google.android.gms.internal.ads.zzfxy (com.google.android.gms.internal.ads.zzfxy)
.class final Lcom/google/android/gms/internal/ads/zzfxy;
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
    check-cast p1, Lcom/google/android/gms/internal/ads/zzghu;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgms;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzghu;->N()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgpe;->k()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzghu;->M()Lcom/google/android/gms/internal/ads/zzgia;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgia;->I()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgms;-><init>([BI)V

    return-object v0
.end method
