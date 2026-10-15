###### Class com.google.android.gms.ads.internal.overlay.zzm (com.google.android.gms.ads.internal.overlay.zzm)
.class public final Lcom/google/android/gms/ads/internal/overlay/zzm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V
    .registers 6

    .line 1
    iget v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->y:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_39

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->q:Lcom/google/android/gms/ads/internal/overlay/zzo;

    if-nez v0, :cond_39

    .line 2
    iget-object p2, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->p:Lcom/google/android/gms/ads/internal/client/zza;

    if-eqz p2, :cond_10

    .line 3
    invoke-interface {p2}, Lcom/google/android/gms/ads/internal/client/zza;->w0()V

    .line 4
    :cond_10
    iget-object p2, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->M:Lcom/google/android/gms/internal/ads/zzdcc;

    if-eqz p2, :cond_17

    .line 5
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdcc;->p()V

    .line 6
    :cond_17
    iget-object p2, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->r:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzcei;->g()Landroid/app/Activity;

    move-result-object p2

    .line 7
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->o:Lcom/google/android/gms/ads/internal/overlay/zzc;

    if-eqz v0, :cond_28

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->x:Z

    if-eqz v0, :cond_28

    if-eqz p2, :cond_28

    move-object p0, p2

    .line 8
    :cond_28
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->j()Lcom/google/android/gms/ads/internal/overlay/zza;

    iget-object p2, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->o:Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->w:Lcom/google/android/gms/ads/internal/overlay/zzz;

    if-eqz p2, :cond_34

    iget-object v0, p2, Lcom/google/android/gms/ads/internal/overlay/zzc;->w:Lcom/google/android/gms/ads/internal/overlay/zzx;

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    .line 9
    :goto_35
    invoke-static {p0, p2, p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zza;->b(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/ads/internal/overlay/zzz;Lcom/google/android/gms/ads/internal/overlay/zzx;)Z

    return-void

    :cond_39
    new-instance v0, Landroid/content/Intent;

    .line 10
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.gms.ads.AdActivity"

    .line 11
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    iget-object v1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->A:Lcom/google/android/gms/internal/ads/zzbzg;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzbzg;->r:Z

    const-string v2, "com.google.android.gms.ads.internal.overlay.useClientJar"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "shouldCallOnOverlayOpened"

    .line 13
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance p2, Landroid/os/Bundle;

    const/4 v1, 0x1

    .line 14
    invoke-direct {p2, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "com.google.android.gms.ads.inernal.overlay.AdOverlayInfo"

    .line 15
    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 16
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 17
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->g()Z

    move-result p1

    if-nez p1, :cond_6a

    const/high16 p1, 0x80000

    .line 18
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 19
    :cond_6a
    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_73

    const/high16 p1, 0x10000000

    .line 20
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 21
    :cond_73
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {p0, v0}, Lcom/google/android/gms/ads/internal/util/zzs;->q(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
