###### Class com.google.android.gms.internal.ads.zzdqs (com.google.android.gms.internal.ads.zzdqs)
.class final Lcom/google/android/gms/internal/ads/zzdqs;
.super Lcom/google/android/gms/ads/internal/client/zzbg;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final synthetic o:Lcom/google/android/gms/internal/ads/zzdqm;

.field final synthetic p:Lcom/google/android/gms/internal/ads/zzdqt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdqt;Lcom/google/android/gms/internal/ads/zzdqm;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqs;->p:Lcom/google/android/gms/internal/ads/zzdqt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdqs;->o:Lcom/google/android/gms/internal/ads/zzdqm;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzbg;-><init>()V

    return-void
.end method


# virtual methods
.method public final A(Lcom/google/android/gms/ads/internal/client/zze;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqs;->o:Lcom/google/android/gms/internal/ads/zzdqm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqs;->p:Lcom/google/android/gms/internal/ads/zzdqt;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdqt;->c(Lcom/google/android/gms/internal/ads/zzdqt;)J

    move-result-wide v1

    iget p1, p1, Lcom/google/android/gms/ads/internal/client/zze;->o:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdqm;->d(JI)V

    return-void
.end method

.method public final F(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqs;->o:Lcom/google/android/gms/internal/ads/zzdqm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqs;->p:Lcom/google/android/gms/internal/ads/zzdqt;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdqt;->c(Lcom/google/android/gms/internal/ads/zzdqt;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdqm;->d(JI)V

    return-void
.end method

.method public final a()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqs;->o:Lcom/google/android/gms/internal/ads/zzdqm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqs;->p:Lcom/google/android/gms/internal/ads/zzdqt;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdqt;->c(Lcom/google/android/gms/internal/ads/zzdqt;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdqm;->b(J)V

    return-void
.end method

.method public final d()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqs;->o:Lcom/google/android/gms/internal/ads/zzdqm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqs;->p:Lcom/google/android/gms/internal/ads/zzdqt;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdqt;->c(Lcom/google/android/gms/internal/ads/zzdqt;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdqm;->c(J)V

    return-void
.end method

.method public final e()V
    .registers 1

    return-void
.end method

.method public final f()V
    .registers 1

    return-void
.end method

.method public final g()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqs;->o:Lcom/google/android/gms/internal/ads/zzdqm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqs;->p:Lcom/google/android/gms/internal/ads/zzdqt;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdqt;->c(Lcom/google/android/gms/internal/ads/zzdqt;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdqm;->e(J)V

    return-void
.end method

.method public final h()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqs;->o:Lcom/google/android/gms/internal/ads/zzdqm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqs;->p:Lcom/google/android/gms/internal/ads/zzdqt;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdqt;->c(Lcom/google/android/gms/internal/ads/zzdqt;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdqm;->g(J)V

    return-void
.end method

.method public final i()V
    .registers 1

    return-void
.end method
