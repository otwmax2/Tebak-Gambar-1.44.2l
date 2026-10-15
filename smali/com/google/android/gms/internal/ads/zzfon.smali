###### Class com.google.android.gms.internal.ads.zzfon (com.google.android.gms.internal.ads.zzfon)
.class public abstract Lcom/google/android/gms/internal/ads/zzfon;
.super Lcom/google/android/gms/internal/ads/zzfsj;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private o:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private p:I


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfsj;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfon;->p:I

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end method

.method protected final b()Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfon;->p:I

    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasNext()Z
    .registers 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfon;->p:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfnu;->h(Z)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfon;->p:I

    add-int/lit8 v4, v0, -0x1

    if-eqz v0, :cond_2a

    if-eqz v4, :cond_29

    const/4 v0, 0x2

    if-eq v4, v0, :cond_28

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfon;->p:I

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfon;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfon;->o:Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfon;->p:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_28

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzfon;->p:I

    return v3

    :cond_28
    return v2

    :cond_29
    return v3

    :cond_2a
    const/4 v0, 0x0

    .line 3
    throw v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfon;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfon;->p:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfon;->o:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfon;->o:Ljava/lang/Object;

    return-object v0

    .line 3
    :cond_f
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 4
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
