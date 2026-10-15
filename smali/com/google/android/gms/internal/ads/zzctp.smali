###### Class com.google.android.gms.internal.ads.zzctp (com.google.android.gms.internal.ads.zzctp)
.class final Lcom/google/android/gms/internal/ads/zzctp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcwc;
.implements Lcom/google/android/gms/internal/ads/zzcvj;


# instance fields
.field private final o:Landroid/content/Context;

.field private final p:Lcom/google/android/gms/internal/ads/zzeyc;

.field private final q:Lcom/google/android/gms/internal/ads/zzbrh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzeyc;Lcom/google/android/gms/internal/ads/zzbrh;[B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctp;->o:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzctp;->p:Lcom/google/android/gms/internal/ads/zzeyc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzctp;->q:Lcom/google/android/gms/internal/ads/zzbrh;

    return-void
.end method


# virtual methods
.method public final c(Landroid/content/Context;)V
    .registers 2

    return-void
.end method

.method public final k()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctp;->p:Lcom/google/android/gms/internal/ads/zzeyc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeyc;->e0:Lcom/google/android/gms/internal/ads/zzbri;

    if-eqz v0, :cond_25

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzbri;->a:Z

    if-nez v0, :cond_b

    goto :goto_25

    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzctp;->p:Lcom/google/android/gms/internal/ads/zzeyc;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzeyc;->e0:Lcom/google/android/gms/internal/ads/zzbri;

    .line 2
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbri;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_25

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzctp;->p:Lcom/google/android/gms/internal/ads/zzeyc;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzeyc;->e0:Lcom/google/android/gms/internal/ads/zzbri;

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbri;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    :goto_25
    return-void
.end method

.method public final o(Landroid/content/Context;)V
    .registers 2

    return-void
.end method

.method public final p(Landroid/content/Context;)V
    .registers 2

    return-void
.end method
