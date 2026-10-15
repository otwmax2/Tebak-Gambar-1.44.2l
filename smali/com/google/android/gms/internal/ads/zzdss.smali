###### Class com.google.android.gms.internal.ads.zzdss (com.google.android.gms.internal.ads.zzdss)
.class final Lcom/google/android/gms/internal/ads/zzdss;
.super Lcom/google/android/gms/ads/AdListener;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/ads/AdView;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/google/android/gms/internal/ads/zzdsz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdsz;Ljava/lang/String;Lcom/google/android/gms/ads/AdView;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdss;->d:Lcom/google/android/gms/internal/ads/zzdsz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdss;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdss;->b:Lcom/google/android/gms/ads/AdView;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdss;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final m(Lcom/google/android/gms/ads/LoadAdError;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdss;->d:Lcom/google/android/gms/internal/ads/zzdsz;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdsz;->Ta(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdss;->c:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdsz;->Ua(Lcom/google/android/gms/internal/ads/zzdsz;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final o()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdss;->d:Lcom/google/android/gms/internal/ads/zzdsz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdss;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdss;->b:Lcom/google/android/gms/ads/AdView;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdss;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdsz;->Wa(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
