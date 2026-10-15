###### Class com.google.android.gms.ads.internal.client.zzfd (com.google.android.gms.ads.internal.client.zzfd)
.class public final Lcom/google/android/gms/ads/internal/client/zzfd;
.super Lcom/google/android/gms/ads/internal/client/zzdc;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# instance fields
.field private final o:Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;


# virtual methods
.method public final b()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzfd;->o:Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;->o()V

    :cond_7
    return-void
.end method
