###### Class com.google.android.gms.internal.ads.zzebm (com.google.android.gms.internal.ads.zzebm)
.class final Lcom/google/android/gms/internal/ads/zzebm;
.super Lcom/google/android/gms/internal/ads/zzbom;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final o:Lcom/google/android/gms/internal/ads/zzeaw;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeaw;Lcom/google/android/gms/internal/ads/zzebl;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbom;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzebm;->o:Lcom/google/android/gms/internal/ads/zzeaw;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzebm;->o:Lcom/google/android/gms/internal/ads/zzeaw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeaw;->c:Lcom/google/android/gms/internal/ads/zzcvy;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzecq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzecq;->Y2(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

.method public final e()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzebm;->o:Lcom/google/android/gms/internal/ads/zzeaw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeaw;->c:Lcom/google/android/gms/internal/ads/zzcvy;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzecq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzecq;->m()V

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzebm;->o:Lcom/google/android/gms/internal/ads/zzeaw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeaw;->c:Lcom/google/android/gms/internal/ads/zzcvy;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzecq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzecq;->C2(ILjava/lang/String;)V

    return-void
.end method
