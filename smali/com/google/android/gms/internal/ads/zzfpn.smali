###### Class com.google.android.gms.internal.ads.zzfpn (com.google.android.gms.internal.ads.zzfpn)
.class final Lcom/google/android/gms/internal/ads/zzfpn;
.super Lcom/google/android/gms/internal/ads/zzfpq;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final synthetic s:Lcom/google/android/gms/internal/ads/zzfpu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfpu;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfpn;->s:Lcom/google/android/gms/internal/ads/zzfpu;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzfpq;-><init>(Lcom/google/android/gms/internal/ads/zzfpu;Lcom/google/android/gms/internal/ads/zzfpm;)V

    return-void
.end method


# virtual methods
.method final bridge synthetic a(I)Ljava/lang/Object;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfps;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfpn;->s:Lcom/google/android/gms/internal/ads/zzfpu;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfps;-><init>(Lcom/google/android/gms/internal/ads/zzfpu;I)V

    return-object v0
.end method
