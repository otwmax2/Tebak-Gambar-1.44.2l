###### Class com.google.android.gms.internal.ads.zzdqv (com.google.android.gms.internal.ads.zzdqv)
.class final Lcom/google/android/gms/internal/ads/zzdqv;
.super Lcom/google/android/gms/internal/ads/zzbvc;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final synthetic o:Lcom/google/android/gms/internal/ads/zzdqx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdqx;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqv;->o:Lcom/google/android/gms/internal/ads/zzdqx;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbvc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A(Lcom/google/android/gms/ads/internal/client/zze;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqv;->o:Lcom/google/android/gms/internal/ads/zzdqx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdqx;->d(Lcom/google/android/gms/internal/ads/zzdqx;)Lcom/google/android/gms/internal/ads/zzdqm;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdqx;->c(Lcom/google/android/gms/internal/ads/zzdqx;)J

    move-result-wide v2

    iget p1, p1, Lcom/google/android/gms/ads/internal/client/zze;->o:I

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzdqm;->m(JI)V

    return-void
.end method

.method public final F(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqv;->o:Lcom/google/android/gms/internal/ads/zzdqx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdqx;->d(Lcom/google/android/gms/internal/ads/zzdqx;)Lcom/google/android/gms/internal/ads/zzdqm;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdqx;->c(Lcom/google/android/gms/internal/ads/zzdqx;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzdqm;->m(JI)V

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqv;->o:Lcom/google/android/gms/internal/ads/zzdqx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdqx;->d(Lcom/google/android/gms/internal/ads/zzdqx;)Lcom/google/android/gms/internal/ads/zzdqm;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdqx;->c(Lcom/google/android/gms/internal/ads/zzdqx;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdqm;->p(J)V

    return-void
.end method
