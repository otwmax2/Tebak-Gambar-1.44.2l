###### Class com.google.android.gms.internal.ads.zzatd (com.google.android.gms.internal.ads.zzatd)
.class final Lcom/google/android/gms/internal/ads/zzatd;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzatg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzatg;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatd;->a:Lcom/google/android/gms/internal/ads/zzatg;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzatd;->a:Lcom/google/android/gms/internal/ads/zzatg;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzatg;->b(Lcom/google/android/gms/internal/ads/zzatg;I)V

    return-void
.end method
