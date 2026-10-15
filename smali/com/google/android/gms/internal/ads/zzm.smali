###### Class com.google.android.gms.internal.ads.zzm (com.google.android.gms.internal.ads.zzm)
.class public abstract Lcom/google/android/gms/internal/ads/zzm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcg;


# instance fields
.field protected final a:Lcom/google/android/gms/internal/ads/zzcm;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcm;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzm;->a:Lcom/google/android/gms/internal/ads/zzcm;

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 6

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzcg;->r()Lcom/google/android/gms/internal/ads/zzcn;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcn;->o()Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzcg;->e()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzm;->a:Lcom/google/android/gms/internal/ads/zzcm;

    const-wide/16 v3, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcn;->e(ILcom/google/android/gms/internal/ads/zzcm;J)Lcom/google/android/gms/internal/ads/zzcm;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcm;->b()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    return v0

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .registers 6

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzcg;->r()Lcom/google/android/gms/internal/ads/zzcn;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcn;->o()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzcg;->e()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzm;->a:Lcom/google/android/gms/internal/ads/zzcm;

    const-wide/16 v3, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcn;->e(ILcom/google/android/gms/internal/ads/zzcm;J)Lcom/google/android/gms/internal/ads/zzcm;

    move-result-object v0

    .line 4
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzcm;->f:Z

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    return v0

    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public abstract z(IJIZ)V
.end method

.method public final zzb()Z
    .registers 6

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzcg;->r()Lcom/google/android/gms/internal/ads/zzcn;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcn;->o()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzcg;->e()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzm;->a:Lcom/google/android/gms/internal/ads/zzcm;

    const-wide/16 v3, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcn;->e(ILcom/google/android/gms/internal/ads/zzcm;J)Lcom/google/android/gms/internal/ads/zzcm;

    move-result-object v0

    .line 4
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzcm;->g:Z

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    return v0

    :cond_1c
    const/4 v0, 0x0

    return v0
.end method
