###### Class com.google.android.gms.internal.ads.zzceo (com.google.android.gms.internal.ads.zzceo)
.class final Lcom/google/android/gms/internal/ads/zzceo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzo;


# instance fields
.field private final o:Lcom/google/android/gms/internal/ads/zzcei;

.field private final p:Lcom/google/android/gms/ads/internal/overlay/zzo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcei;Lcom/google/android/gms/ads/internal/overlay/zzo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzceo;->o:Lcom/google/android/gms/internal/ads/zzcei;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzceo;->p:Lcom/google/android/gms/ads/internal/overlay/zzo;

    return-void
.end method


# virtual methods
.method public final G(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzceo;->p:Lcom/google/android/gms/ads/internal/overlay/zzo;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzo;->G(I)V

    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzceo;->o:Lcom/google/android/gms/internal/ads/zzcei;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcei;->m0()V

    return-void
.end method

.method public final P0()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzceo;->p:Lcom/google/android/gms/ads/internal/overlay/zzo;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzo;->P0()V

    :cond_7
    return-void
.end method

.method public final Q4()V
    .registers 1

    return-void
.end method

.method public final X0()V
    .registers 1

    return-void
.end method

.method public final b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzceo;->p:Lcom/google/android/gms/ads/internal/overlay/zzo;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzo;->b()V

    :cond_7
    return-void
.end method

.method public final zzb()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzceo;->p:Lcom/google/android/gms/ads/internal/overlay/zzo;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzo;->zzb()V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzceo;->o:Lcom/google/android/gms/internal/ads/zzcei;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcei;->F0()V

    return-void
.end method
