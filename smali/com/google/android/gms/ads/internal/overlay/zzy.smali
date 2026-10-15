###### Class com.google.android.gms.ads.internal.overlay.zzy (com.google.android.gms.ads.internal.overlay.zzy)
.class public final Lcom/google/android/gms/ads/internal/overlay/zzy;
.super Lcom/google/android/gms/internal/ads/zzbrb;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final o:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field private final p:Landroid/app/Activity;

.field private q:Z

.field private r:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbrb;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->q:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->r:Z

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->o:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->p:Landroid/app/Activity;

    return-void
.end method

.method private final declared-synchronized zzb()V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->r:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->o:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->q:Lcom/google/android/gms/ads/internal/overlay/zzo;

    if-eqz v0, :cond_f

    const/4 v1, 0x4

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzo;->G(I)V

    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->r:Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_16

    monitor-exit p0

    return-void

    :cond_14
    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final H()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final V7(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->d8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->p:Landroid/app/Activity;

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    :cond_18
    const/4 v0, 0x0

    if-eqz p1, :cond_24

    const-string v2, "com.google.android.gms.ads.internal.overlay.hasResumed"

    .line 5
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v0, 0x1

    :cond_24
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->o:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-nez v2, :cond_2e

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->p:Landroid/app/Activity;

    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2e
    if-eqz v0, :cond_36

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->p:Landroid/app/Activity;

    .line 7
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_36
    if-nez p1, :cond_67

    iget-object p1, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->p:Lcom/google/android/gms/ads/internal/client/zza;

    if-eqz p1, :cond_3f

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/client/zza;->w0()V

    :cond_3f
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->o:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 9
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->M:Lcom/google/android/gms/internal/ads/zzdcc;

    if-eqz p1, :cond_48

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdcc;->p()V

    :cond_48
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->p:Landroid/app/Activity;

    .line 11
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_67

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->p:Landroid/app/Activity;

    .line 12
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "shouldCallOnOverlayOpened"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_67

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->o:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 13
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->q:Lcom/google/android/gms/ads/internal/overlay/zzo;

    if-eqz p1, :cond_67

    .line 14
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/overlay/zzo;->zzb()V

    .line 15
    :cond_67
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->j()Lcom/google/android/gms/ads/internal/overlay/zza;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->p:Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->o:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->o:Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->w:Lcom/google/android/gms/ads/internal/overlay/zzz;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->w:Lcom/google/android/gms/ads/internal/overlay/zzx;

    .line 16
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/ads/internal/overlay/zza;->b(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/ads/internal/overlay/zzz;Lcom/google/android/gms/ads/internal/overlay/zzx;)Z

    move-result p1

    if-nez p1, :cond_7f

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->p:Landroid/app/Activity;

    .line 17
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_7f
    return-void
.end method

.method public final e0(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final f()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final i0(Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->q:Z

    const-string v1, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final j()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->p:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzb()V

    :cond_b
    return-void
.end method

.method public final k()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->o:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->q:Lcom/google/android/gms/ads/internal/overlay/zzo;

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzo;->X0()V

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->p:Landroid/app/Activity;

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzb()V

    :cond_14
    return-void
.end method

.method public final m()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final m5(IILandroid/content/Intent;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final n()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->q:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->p:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->q:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->o:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->q:Lcom/google/android/gms/ads/internal/overlay/zzo;

    if-eqz v0, :cond_16

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzo;->Q4()V

    :cond_16
    return-void
.end method

.method public final p()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final q()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->p:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzb()V

    :cond_b
    return-void
.end method

.method public final t()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final x()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->o:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->q:Lcom/google/android/gms/ads/internal/overlay/zzo;

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzo;->b()V

    :cond_9
    return-void
.end method
