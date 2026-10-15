###### Class com.google.android.gms.internal.ads.zzbpv (com.google.android.gms.internal.ads.zzbpv)
.class final Lcom/google/android/gms/internal/ads/zzbpv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic o:Lcom/google/android/gms/internal/ads/zzbpx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbpx;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpv;->o:Lcom/google/android/gms/internal/ads/zzbpx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpv;->o:Lcom/google/android/gms/internal/ads/zzbpx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbpx;->i()Landroid/content/Intent;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbpv;->o:Lcom/google/android/gms/internal/ads/zzbpx;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbpx;->h(Lcom/google/android/gms/internal/ads/zzbpx;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzs;->q(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
