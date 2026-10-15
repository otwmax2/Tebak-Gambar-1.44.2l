###### Class com.google.android.gms.ads.internal.client.zzh (com.google.android.gms.ads.internal.client.zzh)
.class public final Lcom/google/android/gms/ads/internal/client/zzh;
.super Lcom/google/android/gms/ads/internal/client/zzbj;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# instance fields
.field private final o:Lcom/google/android/gms/ads/AdLoadCallback;

.field private final p:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/AdLoadCallback;Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzbj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzh;->o:Lcom/google/android/gms/ads/AdLoadCallback;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzh;->p:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzh;->o:Lcom/google/android/gms/ads/AdLoadCallback;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzh;->p:Ljava/lang/Object;

    if-eqz v1, :cond_b

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoadCallback;->b(Ljava/lang/Object;)V

    :cond_b
    return-void
.end method

.method public final b1(Lcom/google/android/gms/ads/internal/client/zze;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzh;->o:Lcom/google/android/gms/ads/AdLoadCallback;

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/client/zze;->W3()Lcom/google/android/gms/ads/LoadAdError;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdLoadCallback;->a(Lcom/google/android/gms/ads/LoadAdError;)V

    :cond_b
    return-void
.end method
