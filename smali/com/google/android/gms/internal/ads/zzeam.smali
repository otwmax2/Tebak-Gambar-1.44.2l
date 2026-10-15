###### Class com.google.android.gms.internal.ads.zzeam (com.google.android.gms.internal.ads.zzeam)
.class final Lcom/google/android/gms/internal/ads/zzeam;
.super Ljava/util/TimerTask;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final synthetic o:Landroid/app/AlertDialog;

.field final synthetic p:Ljava/util/Timer;

.field final synthetic q:Lcom/google/android/gms/ads/internal/overlay/zzl;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;Ljava/util/Timer;Lcom/google/android/gms/ads/internal/overlay/zzl;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeam;->o:Landroid/app/AlertDialog;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeam;->p:Ljava/util/Timer;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeam;->q:Lcom/google/android/gms/ads/internal/overlay/zzl;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeam;->o:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeam;->p:Ljava/util/Timer;

    .line 2
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeam;->q:Lcom/google/android/gms/ads/internal/overlay/zzl;

    if-eqz v0, :cond_11

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzl;->zzb()V

    :cond_11
    return-void
.end method
