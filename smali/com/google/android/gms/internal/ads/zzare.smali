###### Class com.google.android.gms.internal.ads.zzare (com.google.android.gms.internal.ads.zzare)
.class final Lcom/google/android/gms/internal/ads/zzare;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzarf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzarf;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzare;->a:Lcom/google/android/gms/internal/ads/zzarf;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzare;->a:Lcom/google/android/gms/internal/ads/zzarf;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzarf;->c(Lcom/google/android/gms/internal/ads/zzarf;)V

    return-void
.end method
