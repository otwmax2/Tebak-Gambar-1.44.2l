###### Class com.google.android.gms.internal.ads.zzbib (com.google.android.gms.internal.ads.zzbib)
.class final Lcom/google/android/gms/internal/ads/zzbib;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbic;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzbzs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbid;Lcom/google/android/gms/internal/ads/zzbzs;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbib;->a:Lcom/google/android/gms/internal/ads/zzbzs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->a:Lcom/google/android/gms/internal/ads/zzbzs;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbzs;->c(Ljava/lang/Object;)Z

    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->a:Lcom/google/android/gms/internal/ads/zzbzs;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzblu;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzblu;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbzs;->d(Ljava/lang/Throwable;)Z

    return-void
.end method
