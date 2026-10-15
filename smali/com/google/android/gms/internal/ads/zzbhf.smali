###### Class com.google.android.gms.internal.ads.zzbhf (com.google.android.gms.internal.ads.zzbhf)
.class final Lcom/google/android/gms/internal/ads/zzbhf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfuf;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzcei;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcei;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->a:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .registers 2

    return-void
.end method

.method public final bridge synthetic c(Ljava/lang/Object;)V
    .registers 5

    .line 1
    check-cast p1, Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzby;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->a:Lcom/google/android/gms/internal/ads/zzcei;

    .line 2
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcei;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbhf;->a:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcei;->k()Lcom/google/android/gms/internal/ads/zzbzg;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbzg;->o:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/ads/internal/util/zzby;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzb;->b()Lcom/google/android/gms/internal/ads/zzfut;

    return-void
.end method
