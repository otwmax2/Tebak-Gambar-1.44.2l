###### Class com.google.android.gms.internal.ads.zzdif (com.google.android.gms.internal.ads.zzdif)
.class public final Lcom/google/android/gms/internal/ads/zzdif;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcvi;


# instance fields
.field private final o:Lcom/google/android/gms/internal/ads/zzdgi;

.field private final p:Lcom/google/android/gms/internal/ads/zzdgn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdgi;Lcom/google/android/gms/internal/ads/zzdgn;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdif;->o:Lcom/google/android/gms/internal/ads/zzdgi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdif;->p:Lcom/google/android/gms/internal/ads/zzdgn;

    return-void
.end method


# virtual methods
.method public final j()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdif;->o:Lcom/google/android/gms/internal/ads/zzdgi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgi;->e0()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    if-nez v1, :cond_9

    return-void

    :cond_9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgi;->a0()Lcom/google/android/gms/internal/ads/zzcei;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgi;->b0()Lcom/google/android/gms/internal/ads/zzcei;

    move-result-object v0

    if-eqz v1, :cond_14

    goto :goto_19

    :cond_14
    if-nez v0, :cond_18

    const/4 v1, 0x0

    goto :goto_19

    :cond_18
    move-object v1, v0

    :goto_19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdif;->p:Lcom/google/android/gms/internal/ads/zzdgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgn;->d()Z

    move-result v0

    if-eqz v0, :cond_2d

    if-eqz v1, :cond_2d

    new-instance v0, Lo/a;

    invoke-direct {v0}, Lo/a;-><init>()V

    const-string v2, "onSdkImpression"

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbki;->v0(Ljava/lang/String;Ljava/util/Map;)V

    :cond_2d
    return-void
.end method
