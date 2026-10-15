###### Class com.google.android.gms.internal.ads.zzwk (com.google.android.gms.internal.ads.zzwk)
.class public abstract Lcom/google/android/gms/internal/ads/zzwk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/zzwj;

.field private b:Lcom/google/android/gms/internal/ads/zzws;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwk;->a:Lcom/google/android/gms/internal/ads/zzwj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwk;->b:Lcom/google/android/gms/internal/ads/zzws;

    return-void
.end method

.method public b(Lcom/google/android/gms/internal/ads/zzk;)V
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public abstract d([Lcom/google/android/gms/internal/ads/zzko;Lcom/google/android/gms/internal/ads/zzur;Lcom/google/android/gms/internal/ads/zzss;Lcom/google/android/gms/internal/ads/zzcn;)Lcom/google/android/gms/internal/ads/zzwl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation
.end method

.method public abstract e(Ljava/lang/Object;)V
.end method

.method protected final f()Lcom/google/android/gms/internal/ads/zzws;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwk;->b:Lcom/google/android/gms/internal/ads/zzws;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final g(Lcom/google/android/gms/internal/ads/zzwj;Lcom/google/android/gms/internal/ads/zzws;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwk;->a:Lcom/google/android/gms/internal/ads/zzwj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwk;->b:Lcom/google/android/gms/internal/ads/zzws;

    return-void
.end method

.method protected final h()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwk;->a:Lcom/google/android/gms/internal/ads/zzwj;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwj;->h()V

    :cond_7
    return-void
.end method
