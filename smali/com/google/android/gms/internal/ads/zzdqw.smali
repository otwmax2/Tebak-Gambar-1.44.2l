###### Class com.google.android.gms.internal.ads.zzdqw (com.google.android.gms.internal.ads.zzdqw)
.class final Lcom/google/android/gms/internal/ads/zzdqw;
.super Lcom/google/android/gms/internal/ads/zzbuy;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final synthetic o:Lcom/google/android/gms/internal/ads/zzdqx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdqx;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqw;->o:Lcom/google/android/gms/internal/ads/zzdqx;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbuy;-><init>()V

    return-void
.end method


# virtual methods
.method public final Q8(Lcom/google/android/gms/ads/internal/client/zze;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqw;->o:Lcom/google/android/gms/internal/ads/zzdqx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdqx;->d(Lcom/google/android/gms/internal/ads/zzdqx;)Lcom/google/android/gms/internal/ads/zzdqm;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdqx;->c(Lcom/google/android/gms/internal/ads/zzdqx;)J

    move-result-wide v2

    iget p1, p1, Lcom/google/android/gms/ads/internal/client/zze;->o:I

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzdqm;->n(JI)V

    return-void
.end method

.method public final b()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqw;->o:Lcom/google/android/gms/internal/ads/zzdqx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdqx;->d(Lcom/google/android/gms/internal/ads/zzdqx;)Lcom/google/android/gms/internal/ads/zzdqm;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdqx;->c(Lcom/google/android/gms/internal/ads/zzdqx;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdqm;->j(J)V

    return-void
.end method

.method public final c()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqw;->o:Lcom/google/android/gms/internal/ads/zzdqx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdqx;->d(Lcom/google/android/gms/internal/ads/zzdqx;)Lcom/google/android/gms/internal/ads/zzdqm;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdqx;->c(Lcom/google/android/gms/internal/ads/zzdqx;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdqm;->o(J)V

    return-void
.end method

.method public final e()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqw;->o:Lcom/google/android/gms/internal/ads/zzdqx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdqx;->d(Lcom/google/android/gms/internal/ads/zzdqx;)Lcom/google/android/gms/internal/ads/zzdqm;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdqx;->c(Lcom/google/android/gms/internal/ads/zzdqx;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdqm;->k(J)V

    return-void
.end method

.method public final g8(Lcom/google/android/gms/internal/ads/zzbut;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqw;->o:Lcom/google/android/gms/internal/ads/zzdqx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdqx;->d(Lcom/google/android/gms/internal/ads/zzdqx;)Lcom/google/android/gms/internal/ads/zzdqm;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdqx;->c(Lcom/google/android/gms/internal/ads/zzdqx;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzdqm;->l(JLcom/google/android/gms/internal/ads/zzbut;)V

    return-void
.end method

.method public final h()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqw;->o:Lcom/google/android/gms/internal/ads/zzdqx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdqx;->d(Lcom/google/android/gms/internal/ads/zzdqx;)Lcom/google/android/gms/internal/ads/zzdqm;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdqx;->c(Lcom/google/android/gms/internal/ads/zzdqx;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdqm;->r(J)V

    return-void
.end method

.method public final j0(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqw;->o:Lcom/google/android/gms/internal/ads/zzdqx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdqx;->d(Lcom/google/android/gms/internal/ads/zzdqx;)Lcom/google/android/gms/internal/ads/zzdqm;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdqx;->c(Lcom/google/android/gms/internal/ads/zzdqx;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzdqm;->n(JI)V

    return-void
.end method
