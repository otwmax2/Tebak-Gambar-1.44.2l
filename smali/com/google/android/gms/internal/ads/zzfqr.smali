###### Class com.google.android.gms.internal.ads.zzfqr (com.google.android.gms.internal.ads.zzfqr)
.class final Lcom/google/android/gms/internal/ads/zzfqr;
.super Lcom/google/android/gms/internal/ads/zzfon;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final synthetic q:Ljava/util/Iterator;

.field final synthetic r:Lcom/google/android/gms/internal/ads/zzfnv;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Lcom/google/android/gms/internal/ads/zzfnv;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfqr;->q:Ljava/util/Iterator;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfqr;->r:Lcom/google/android/gms/internal/ads/zzfnv;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfon;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Object;
    .registers 3
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqr;->q:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqr;->q:Ljava/util/Iterator;

    .line 2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfqr;->r:Lcom/google/android/gms/internal/ads/zzfnv;

    .line 3
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzfnv;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 4
    :cond_17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfon;->b()Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method
