###### Class com.google.android.gms.internal.ads.zzbzy (com.google.android.gms.internal.ads.zzbzy)
.class final Lcom/google/android/gms/internal/ads/zzbzy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfuf;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzbzw;

.field final synthetic b:Lcom/google/android/gms/internal/ads/zzbzu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbzz;Lcom/google/android/gms/internal/ads/zzbzw;Lcom/google/android/gms/internal/ads/zzbzu;)V
    .registers 4

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbzy;->a:Lcom/google/android/gms/internal/ads/zzbzw;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbzy;->b:Lcom/google/android/gms/internal/ads/zzbzu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzy;->b:Lcom/google/android/gms/internal/ads/zzbzu;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbzu;->zza()V

    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzy;->a:Lcom/google/android/gms/internal/ads/zzbzw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbzw;->a(Ljava/lang/Object;)V

    return-void
.end method
