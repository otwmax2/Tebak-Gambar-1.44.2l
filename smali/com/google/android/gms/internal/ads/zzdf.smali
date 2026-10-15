###### Class com.google.android.gms.internal.ads.zzdf (com.google.android.gms.internal.ads.zzdf)
.class public abstract Lcom/google/android/gms/internal/ads/zzdf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzde;


# instance fields
.field protected b:Lcom/google/android/gms/internal/ads/zzdc;

.field protected c:Lcom/google/android/gms/internal/ads/zzdc;

.field private d:Lcom/google/android/gms/internal/ads/zzdc;

.field private e:Lcom/google/android/gms/internal/ads/zzdc;

.field private f:Ljava/nio/ByteBuffer;

.field private g:Ljava/nio/ByteBuffer;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzde;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdf;->f:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdf;->g:Ljava/nio/ByteBuffer;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdc;->e:Lcom/google/android/gms/internal/ads/zzdc;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdf;->d:Lcom/google/android/gms/internal/ads/zzdc;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdf;->e:Lcom/google/android/gms/internal/ads/zzdc;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdf;->b:Lcom/google/android/gms/internal/ads/zzdc;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdf;->c:Lcom/google/android/gms/internal/ads/zzdc;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzde;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdf;->g:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdf;->h:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdf;->d:Lcom/google/android/gms/internal/ads/zzdc;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdf;->b:Lcom/google/android/gms/internal/ads/zzdc;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdf;->e:Lcom/google/android/gms/internal/ads/zzdc;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdf;->c:Lcom/google/android/gms/internal/ads/zzdc;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdf;->j()V

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzdc;)Lcom/google/android/gms/internal/ads/zzdc;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdd;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdf;->d:Lcom/google/android/gms/internal/ads/zzdc;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdf;->h(Lcom/google/android/gms/internal/ads/zzdc;)Lcom/google/android/gms/internal/ads/zzdc;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdf;->e:Lcom/google/android/gms/internal/ads/zzdc;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdf;->e()Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdf;->e:Lcom/google/android/gms/internal/ads/zzdc;

    goto :goto_13

    :cond_11
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdc;->e:Lcom/google/android/gms/internal/ads/zzdc;

    :goto_13
    return-object p1
.end method

.method public final c()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdf;->a()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzde;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdf;->f:Ljava/nio/ByteBuffer;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdc;->e:Lcom/google/android/gms/internal/ads/zzdc;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdf;->d:Lcom/google/android/gms/internal/ads/zzdc;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdf;->e:Lcom/google/android/gms/internal/ads/zzdc;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdf;->b:Lcom/google/android/gms/internal/ads/zzdc;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdf;->c:Lcom/google/android/gms/internal/ads/zzdc;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdf;->l()V

    return-void
.end method

.method public final d()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdf;->h:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdf;->k()V

    return-void
.end method

.method public e()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdf;->e:Lcom/google/android/gms/internal/ads/zzdc;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdc;->e:Lcom/google/android/gms/internal/ads/zzdc;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdf;->h:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdf;->g:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzde;->a:Ljava/nio/ByteBuffer;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method protected h(Lcom/google/android/gms/internal/ads/zzdc;)Lcom/google/android/gms/internal/ads/zzdc;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdd;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method protected final i(I)Ljava/nio/ByteBuffer;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdf;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_17

    .line 2
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdf;->f:Ljava/nio/ByteBuffer;

    goto :goto_1c

    :cond_17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdf;->f:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 4
    :goto_1c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdf;->f:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdf;->g:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method protected j()V
    .registers 1

    return-void
.end method

.method protected k()V
    .registers 1

    return-void
.end method

.method protected l()V
    .registers 1

    return-void
.end method

.method protected final m()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdf;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    return v0
.end method

.method public zzb()Ljava/nio/ByteBuffer;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdf;->g:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzde;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdf;->g:Ljava/nio/ByteBuffer;

    return-object v0
.end method
