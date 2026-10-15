###### Class com.google.android.gms.internal.ads.zzaik (com.google.android.gms.internal.ads.zzaik)
.class final Lcom/google/android/gms/internal/ads/zzaik;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzahn;

.field private final b:Lcom/google/android/gms/internal/ads/zzeu;

.field private final c:Lcom/google/android/gms/internal/ads/zzem;

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzahn;Lcom/google/android/gms/internal/ads/zzeu;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaik;->a:Lcom/google/android/gms/internal/ads/zzahn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaik;->b:Lcom/google/android/gms/internal/ads/zzeu;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzem;

    const/16 p2, 0x40

    new-array v0, p2, [B

    invoke-direct {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzem;-><init>([BI)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaik;->c:Lcom/google/android/gms/internal/ads/zzem;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzen;)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbu;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaik;->c:Lcom/google/android/gms/internal/ads/zzem;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzem;->a:[B

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzen;->b([BII)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaik;->c:Lcom/google/android/gms/internal/ads/zzem;

    .line 2
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzem;->j(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaik;->c:Lcom/google/android/gms/internal/ads/zzem;

    const/16 v5, 0x8

    .line 3
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaik;->c:Lcom/google/android/gms/internal/ads/zzem;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v2

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzaik;->d:Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaik;->c:Lcom/google/android/gms/internal/ads/zzem;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v2

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzaik;->e:Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaik;->c:Lcom/google/android/gms/internal/ads/zzem;

    const/4 v6, 0x6

    .line 6
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaik;->c:Lcom/google/android/gms/internal/ads/zzem;

    .line 7
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v2

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaik;->c:Lcom/google/android/gms/internal/ads/zzem;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzem;->a:[B

    .line 8
    invoke-virtual {v1, v5, v3, v2}, Lcom/google/android/gms/internal/ads/zzen;->b([BII)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaik;->c:Lcom/google/android/gms/internal/ads/zzem;

    .line 9
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzem;->j(I)V

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzaik;->d:Z

    const/4 v3, 0x4

    if-eqz v2, :cond_bf

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaik;->c:Lcom/google/android/gms/internal/ads/zzem;

    .line 10
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaik;->c:Lcom/google/android/gms/internal/ads/zzem;

    .line 11
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v2

    int-to-long v5, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaik;->c:Lcom/google/android/gms/internal/ads/zzem;

    const/4 v7, 0x1

    .line 12
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaik;->c:Lcom/google/android/gms/internal/ads/zzem;

    const/16 v8, 0xf

    .line 13
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v2

    shl-int/2addr v2, v8

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzaik;->c:Lcom/google/android/gms/internal/ads/zzem;

    .line 14
    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzaik;->c:Lcom/google/android/gms/internal/ads/zzem;

    .line 15
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v9

    int-to-long v9, v9

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzaik;->c:Lcom/google/android/gms/internal/ads/zzem;

    .line 16
    invoke-virtual {v11, v7}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzaik;->f:Z

    const/16 v12, 0x1e

    if-nez v11, :cond_b1

    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzaik;->e:Z

    if-eqz v11, :cond_b1

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzaik;->c:Lcom/google/android/gms/internal/ads/zzem;

    .line 17
    invoke-virtual {v11, v3}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzaik;->c:Lcom/google/android/gms/internal/ads/zzem;

    .line 18
    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v4

    int-to-long v13, v4

    shl-long/2addr v13, v12

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaik;->c:Lcom/google/android/gms/internal/ads/zzem;

    .line 19
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaik;->c:Lcom/google/android/gms/internal/ads/zzem;

    .line 20
    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v4

    shl-int/2addr v4, v8

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzaik;->c:Lcom/google/android/gms/internal/ads/zzem;

    .line 21
    invoke-virtual {v11, v7}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzaik;->c:Lcom/google/android/gms/internal/ads/zzem;

    .line 22
    invoke-virtual {v11, v8}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v8

    move-wide v15, v13

    int-to-long v12, v8

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzaik;->c:Lcom/google/android/gms/internal/ads/zzem;

    .line 23
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzaik;->b:Lcom/google/android/gms/internal/ads/zzeu;

    int-to-long v3, v4

    or-long/2addr v3, v15

    or-long/2addr v3, v12

    .line 24
    invoke-virtual {v8, v3, v4}, Lcom/google/android/gms/internal/ads/zzeu;->b(J)J

    iput-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzaik;->f:Z

    :cond_b1
    const/16 v3, 0x1e

    shl-long v3, v5, v3

    int-to-long v5, v2

    or-long/2addr v3, v5

    or-long/2addr v3, v9

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaik;->b:Lcom/google/android/gms/internal/ads/zzeu;

    .line 25
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzeu;->b(J)J

    move-result-wide v2

    goto :goto_c1

    :cond_bf
    const-wide/16 v2, 0x0

    :goto_c1
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaik;->a:Lcom/google/android/gms/internal/ads/zzahn;

    const/4 v5, 0x4

    .line 26
    invoke-interface {v4, v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzahn;->e(JI)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaik;->a:Lcom/google/android/gms/internal/ads/zzahn;

    .line 27
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzahn;->c(Lcom/google/android/gms/internal/ads/zzen;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaik;->a:Lcom/google/android/gms/internal/ads/zzahn;

    .line 28
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzahn;->a()V

    return-void
.end method

.method public final b()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaik;->f:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaik;->a:Lcom/google/android/gms/internal/ads/zzahn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzahn;->b()V

    return-void
.end method
