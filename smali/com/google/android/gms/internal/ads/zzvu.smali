###### Class com.google.android.gms.internal.ads.zzvu (com.google.android.gms.internal.ads.zzvu)
.class final Lcom/google/android/gms/internal/ads/zzvu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Landroid/media/Spatializer$OnSpatializerStateChangedListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzwc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzvv;Lcom/google/android/gms/internal/ads/zzwc;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvu;->a:Lcom/google/android/gms/internal/ads/zzwc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSpatializerAvailableChanged(Landroid/media/Spatializer;Z)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvu;->a:Lcom/google/android/gms/internal/ads/zzwc;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzwc;->o(Lcom/google/android/gms/internal/ads/zzwc;)V

    return-void
.end method

.method public final onSpatializerEnabledChanged(Landroid/media/Spatializer;Z)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvu;->a:Lcom/google/android/gms/internal/ads/zzwc;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzwc;->o(Lcom/google/android/gms/internal/ads/zzwc;)V

    return-void
.end method
