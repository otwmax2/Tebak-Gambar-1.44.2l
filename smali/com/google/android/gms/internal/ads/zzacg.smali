###### Class com.google.android.gms.internal.ads.zzacg (com.google.android.gms.internal.ads.zzacg)
.class abstract Lcom/google/android/gms/internal/ads/zzacg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field protected final a:Lcom/google/android/gms/internal/ads/zzabb;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzabb;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacg;->a:Lcom/google/android/gms/internal/ads/zzabb;

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/google/android/gms/internal/ads/zzen;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbu;
        }
    .end annotation
.end method

.method protected abstract b(Lcom/google/android/gms/internal/ads/zzen;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbu;
        }
    .end annotation
.end method

.method public final c(Lcom/google/android/gms/internal/ads/zzen;J)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbu;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzacg;->a(Lcom/google/android/gms/internal/ads/zzen;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzacg;->b(Lcom/google/android/gms/internal/ads/zzen;J)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method
