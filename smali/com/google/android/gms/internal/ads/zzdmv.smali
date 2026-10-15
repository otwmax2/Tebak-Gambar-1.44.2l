###### Class com.google.android.gms.internal.ads.zzdmv (com.google.android.gms.internal.ads.zzdmv)
.class public final Lcom/google/android/gms/internal/ads/zzdmv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcvj;


# instance fields
.field private final o:Lcom/google/android/gms/internal/ads/zzcei;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcei;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmv;->o:Lcom/google/android/gms/internal/ads/zzcei;

    return-void
.end method


# virtual methods
.method public final c(Landroid/content/Context;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmv;->o:Lcom/google/android/gms/internal/ads/zzcei;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcei;->onResume()V

    :cond_7
    return-void
.end method

.method public final o(Landroid/content/Context;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmv;->o:Lcom/google/android/gms/internal/ads/zzcei;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcei;->destroy()V

    :cond_7
    return-void
.end method

.method public final p(Landroid/content/Context;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmv;->o:Lcom/google/android/gms/internal/ads/zzcei;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcei;->onPause()V

    :cond_7
    return-void
.end method
