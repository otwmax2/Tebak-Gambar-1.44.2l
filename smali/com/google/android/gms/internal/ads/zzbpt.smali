###### Class com.google.android.gms.internal.ads.zzbpt (com.google.android.gms.internal.ads.zzbpt)
.class final Lcom/google/android/gms/internal/ads/zzbpt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field final synthetic p:Lcom/google/android/gms/internal/ads/zzbpu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbpu;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpt;->p:Lcom/google/android/gms/internal/ads/zzbpu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbpt;->o:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->k()Lcom/google/android/gms/ads/internal/overlay/zzm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpt;->p:Lcom/google/android/gms/internal/ads/zzbpu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbpu;->a(Lcom/google/android/gms/internal/ads/zzbpu;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbpt;->o:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v2, 0x1

    .line 2
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/ads/internal/overlay/zzm;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    return-void
.end method
