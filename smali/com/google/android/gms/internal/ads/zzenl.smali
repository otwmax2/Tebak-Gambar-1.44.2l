###### Class com.google.android.gms.internal.ads.zzenl (com.google.android.gms.internal.ads.zzenl)
.class public final Lcom/google/android/gms/internal/ads/zzenl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepn;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()I
    .registers 2

    const/16 v0, 0x34

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfut;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzenm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzenm;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfuj;->h(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    return-object v0
.end method
