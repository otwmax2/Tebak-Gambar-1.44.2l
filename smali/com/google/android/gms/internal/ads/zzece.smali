###### Class com.google.android.gms.internal.ads.zzece (com.google.android.gms.internal.ads.zzece)
.class final Lcom/google/android/gms/internal/ads/zzece;
.super Lcom/google/android/gms/internal/ads/zzbop;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final o:Lcom/google/android/gms/internal/ads/zzeaw;

.field final synthetic p:Lcom/google/android/gms/internal/ads/zzecf;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzecf;Lcom/google/android/gms/internal/ads/zzeaw;Lcom/google/android/gms/internal/ads/zzecd;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzece;->p:Lcom/google/android/gms/internal/ads/zzecf;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbop;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzece;->o:Lcom/google/android/gms/internal/ads/zzeaw;

    return-void
.end method


# virtual methods
.method public final A(Lcom/google/android/gms/ads/internal/client/zze;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzece;->o:Lcom/google/android/gms/internal/ads/zzeaw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeaw;->c:Lcom/google/android/gms/internal/ads/zzcvy;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzecq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzecq;->Y2(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

.method public final G5(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzece;->p:Lcom/google/android/gms/internal/ads/zzecf;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->t1(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzecf;->e(Lcom/google/android/gms/internal/ads/zzecf;Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzece;->o:Lcom/google/android/gms/internal/ads/zzeaw;

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeaw;->c:Lcom/google/android/gms/internal/ads/zzcvy;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzecq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzecq;->m()V

    return-void
.end method

.method public final c2(Lcom/google/android/gms/internal/ads/zzbno;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzece;->p:Lcom/google/android/gms/internal/ads/zzecf;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzecf;->d(Lcom/google/android/gms/internal/ads/zzecf;Lcom/google/android/gms/internal/ads/zzbno;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzece;->o:Lcom/google/android/gms/internal/ads/zzeaw;

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeaw;->c:Lcom/google/android/gms/internal/ads/zzcvy;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzecq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzecq;->m()V

    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzece;->o:Lcom/google/android/gms/internal/ads/zzeaw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeaw;->c:Lcom/google/android/gms/internal/ads/zzcvy;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzecq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzecq;->C2(ILjava/lang/String;)V

    return-void
.end method
