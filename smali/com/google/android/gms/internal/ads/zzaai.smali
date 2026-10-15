###### Class com.google.android.gms.internal.ads.zzaai (com.google.android.gms.internal.ads.zzaai)
.class public Lcom/google/android/gms/internal/ads/zzaai;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzzv;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzzv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzzv;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaai;->a:Lcom/google/android/gms/internal/ads/zzzv;

    return-void
.end method


# virtual methods
.method public final Z(I)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method public b()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->a:Lcom/google/android/gms/internal/ads/zzzv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzzv;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public c()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->a:Lcom/google/android/gms/internal/ads/zzzv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->a:Lcom/google/android/gms/internal/ads/zzzv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzzv;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->a:Lcom/google/android/gms/internal/ads/zzzv;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzzv;->e([BII)I

    move-result p1

    return p1
.end method

.method public final g([BIIZ)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaai;->a:Lcom/google/android/gms/internal/ads/zzzv;

    const/4 p3, 0x0

    const/16 p4, 0x8

    const/4 v0, 0x1

    invoke-interface {p2, p1, p3, p4, v0}, Lcom/google/android/gms/internal/ads/zzzv;->g([BIIZ)Z

    move-result p1

    return p1
.end method

.method public final h()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->a:Lcom/google/android/gms/internal/ads/zzzv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    return-void
.end method

.method public final i([BII)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method public final k([BIIZ)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaai;->a:Lcom/google/android/gms/internal/ads/zzzv;

    const/4 p3, 0x0

    const/16 p4, 0x8

    const/4 v0, 0x1

    invoke-interface {p2, p1, p3, p4, v0}, Lcom/google/android/gms/internal/ads/zzzv;->k([BIIZ)Z

    move-result p1

    return p1
.end method

.method public final l([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->a:Lcom/google/android/gms/internal/ads/zzzv;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzzk;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gms/internal/ads/zzzk;->g([BIIZ)Z

    return-void
.end method

.method public final m([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->a:Lcom/google/android/gms/internal/ads/zzzv;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzzk;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gms/internal/ads/zzzk;->k([BIIZ)Z

    return-void
.end method

.method public final r0(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->a:Lcom/google/android/gms/internal/ads/zzzv;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzzk;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    return-void
.end method

.method public final w(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->a:Lcom/google/android/gms/internal/ads/zzzv;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzzk;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzzk;->n(IZ)Z

    return-void
.end method
