###### Class com.google.android.gms.internal.ads.zzddt (com.google.android.gms.internal.ads.zzddt)
.class public final Lcom/google/android/gms/internal/ads/zzddt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzo;


# instance fields
.field private final o:Lcom/google/android/gms/internal/ads/zzcwu;

.field private final p:Lcom/google/android/gms/internal/ads/zzdbs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcwu;Lcom/google/android/gms/internal/ads/zzdbs;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzddt;->o:Lcom/google/android/gms/internal/ads/zzcwu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzddt;->p:Lcom/google/android/gms/internal/ads/zzdbs;

    return-void
.end method


# virtual methods
.method public final G(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddt;->o:Lcom/google/android/gms/internal/ads/zzcwu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcwu;->G(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzddt;->p:Lcom/google/android/gms/internal/ads/zzdbs;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdbs;->zza()V

    return-void
.end method

.method public final P0()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddt;->o:Lcom/google/android/gms/internal/ads/zzcwu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwu;->P0()V

    return-void
.end method

.method public final Q4()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddt;->o:Lcom/google/android/gms/internal/ads/zzcwu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwu;->Q4()V

    return-void
.end method

.method public final X0()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddt;->o:Lcom/google/android/gms/internal/ads/zzcwu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwu;->X0()V

    return-void
.end method

.method public final b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddt;->o:Lcom/google/android/gms/internal/ads/zzcwu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwu;->b()V

    return-void
.end method

.method public final zzb()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddt;->o:Lcom/google/android/gms/internal/ads/zzcwu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwu;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddt;->p:Lcom/google/android/gms/internal/ads/zzdbs;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdbs;->zzb()V

    return-void
.end method
