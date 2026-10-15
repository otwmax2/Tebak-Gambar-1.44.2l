###### Class com.google.android.gms.internal.ads.zzbmh (com.google.android.gms.internal.ads.zzbmh)
.class final Lcom/google/android/gms/internal/ads/zzbmh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbzu;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzbzs;

.field final synthetic b:Lcom/google/android/gms/internal/ads/zzbll;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbmj;Lcom/google/android/gms/internal/ads/zzbzs;Lcom/google/android/gms/internal/ads/zzbll;)V
    .registers 4

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbmh;->a:Lcom/google/android/gms/internal/ads/zzbzs;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbmh;->b:Lcom/google/android/gms/internal/ads/zzbll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmh;->a:Lcom/google/android/gms/internal/ads/zzbzs;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzblu;

    const-string v2, "Unable to obtain a JavascriptEngine."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzblu;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbzs;->d(Ljava/lang/Throwable;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmh;->b:Lcom/google/android/gms/internal/ads/zzbll;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbll;->g()V

    return-void
.end method
