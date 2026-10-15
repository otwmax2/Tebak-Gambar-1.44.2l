###### Class com.google.android.gms.internal.ads.zzi (com.google.android.gms.internal.ads.zzi)
.class public final Lcom/google/android/gms/internal/ads/zzi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field public final a:Landroid/media/AudioAttributes;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzk;Lcom/google/android/gms/internal/ads/zzh;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p2}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 5
    sget v1, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1f

    .line 6
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzf;->a(Landroid/media/AudioAttributes$Builder;I)V

    :cond_1f
    const/16 v0, 0x20

    if-lt v1, v0, :cond_26

    .line 7
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzg;->a(Landroid/media/AudioAttributes$Builder;I)V

    .line 8
    :cond_26
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzi;->a:Landroid/media/AudioAttributes;

    return-void
.end method
