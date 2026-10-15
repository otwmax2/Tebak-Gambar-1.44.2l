###### Class com.google.android.gms.internal.ads.zzpv (com.google.android.gms.internal.ads.zzpv)
.class final Lcom/google/android/gms/internal/ads/zzpv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzpz;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final N0(Lcom/google/android/gms/internal/ads/zzaf;)I
    .registers 2

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaf;->o:Lcom/google/android/gms/internal/ads/zzx;

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method
