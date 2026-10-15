###### Class com.google.android.gms.internal.ads.zzkx (com.google.android.gms.internal.ads.zzkx)
.class final Lcom/google/android/gms/internal/ads/zzkx;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzky;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzky;Lcom/google/android/gms/internal/ads/zzkw;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkx;->a:Lcom/google/android/gms/internal/ads/zzky;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkx;->a:Lcom/google/android/gms/internal/ads/zzky;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzky;->c(Lcom/google/android/gms/internal/ads/zzky;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzkv;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzkv;-><init>(Lcom/google/android/gms/internal/ads/zzky;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzkv (com.google.android.gms.internal.ads.zzkv)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzkv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzky;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzky;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkv;->o:Lcom/google/android/gms/internal/ads/zzky;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkv;->o:Lcom/google/android/gms/internal/ads/zzky;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzky;->d(Lcom/google/android/gms/internal/ads/zzky;)V

    return-void
.end method
