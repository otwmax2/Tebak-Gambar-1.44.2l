###### Class com.google.android.gms.ads.internal.util.l (com.google.android.gms.ads.internal.util.l)
.class final Lcom/google/android/gms/ads/internal/util/l;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/util/zzcg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/zzcg;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/l;->a:Lcom/google/android/gms/ads/internal/util/zzcg;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/l;->a:Lcom/google/android/gms/ads/internal/util/zzcg;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/ads/internal/util/zzcg;->a(Lcom/google/android/gms/ads/internal/util/zzcg;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
