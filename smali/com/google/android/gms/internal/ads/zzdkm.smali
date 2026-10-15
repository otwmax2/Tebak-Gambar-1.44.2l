###### Class com.google.android.gms.internal.ads.zzdkm (com.google.android.gms.internal.ads.zzdkm)
.class final Lcom/google/android/gms/internal/ads/zzdkm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbdk;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzdkn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdkn;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkm;->a:Lcom/google/android/gms/internal/ads/zzdkn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkm;->a:Lcom/google/android/gms/internal/ads/zzdkn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdkn;->Ta(Lcom/google/android/gms/internal/ads/zzdkn;)Lcom/google/android/gms/internal/ads/zzdgd;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdkn;->Ta(Lcom/google/android/gms/internal/ads/zzdkn;)Lcom/google/android/gms/internal/ads/zzdgd;

    move-result-object v0

    const-string v1, "_videoMediaView"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdgd;->l(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public final b(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public final zza()Lorg/json/JSONObject;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzb()Lorg/json/JSONObject;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
