###### Class com.google.android.gms.internal.ads.zzexr (com.google.android.gms.internal.ads.zzexr)
.class final Lcom/google/android/gms/internal/ads/zzexr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;


# instance fields
.field final synthetic o:Lcom/google/android/gms/ads/internal/client/zzdd;

.field final synthetic p:Lcom/google/android/gms/internal/ads/zzext;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzext;Lcom/google/android/gms/ads/internal/client/zzdd;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzexr;->p:Lcom/google/android/gms/internal/ads/zzext;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzexr;->o:Lcom/google/android/gms/ads/internal/client/zzdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final o()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzexr;->p:Lcom/google/android/gms/internal/ads/zzext;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzext;->Ta(Lcom/google/android/gms/internal/ads/zzext;)Lcom/google/android/gms/internal/ads/zzdlu;

    move-result-object v0

    if-eqz v0, :cond_14

    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzexr;->o:Lcom/google/android/gms/ads/internal/client/zzdd;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzdd;->b()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_14
    return-void
.end method
