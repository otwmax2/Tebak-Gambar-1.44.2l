###### Class com.google.android.gms.internal.ads.zzgt (com.google.android.gms.internal.ads.zzgt)
.class final Lcom/google/android/gms/internal/ads/zzgt;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final o:Lcom/google/android/gms/internal/ads/zzgu;

.field private final p:Landroid/os/Handler;

.field final synthetic q:Lcom/google/android/gms/internal/ads/zzgv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgv;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzgu;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgt;->q:Lcom/google/android/gms/internal/ads/zzgv;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgt;->p:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgt;->o:Lcom/google/android/gms/internal/ads/zzgu;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgt;->p:Landroid/os/Handler;

    .line 2
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_11
    return-void
.end method

.method public final run()V
    .registers 1

    return-void
.end method
