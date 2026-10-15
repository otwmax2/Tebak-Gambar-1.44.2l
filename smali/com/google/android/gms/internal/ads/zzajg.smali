###### Class com.google.android.gms.internal.ads.zzajg (com.google.android.gms.internal.ads.zzajg)
.class final Lcom/google/android/gms/internal/ads/zzajg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzajf;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzzx;

.field private final b:Lcom/google/android/gms/internal/ads/zzabb;

.field private final c:Lcom/google/android/gms/internal/ads/zzaji;

.field private final d:Lcom/google/android/gms/internal/ads/zzaf;

.field private final e:I

.field private f:J

.field private g:I

.field private h:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzzx;Lcom/google/android/gms/internal/ads/zzabb;Lcom/google/android/gms/internal/ads/zzaji;Ljava/lang/String;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbu;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajg;->a:Lcom/google/android/gms/internal/ads/zzzx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzajg;->b:Lcom/google/android/gms/internal/ads/zzabb;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzajg;->c:Lcom/google/android/gms/internal/ads/zzaji;

    iget p1, p3, Lcom/google/android/gms/internal/ads/zzaji;->b:I

    iget p2, p3, Lcom/google/android/gms/internal/ads/zzaji;->e:I

    mul-int p1, p1, p2

    iget p2, p3, Lcom/google/android/gms/internal/ads/zzaji;->d:I

    div-int/lit8 p1, p1, 0x8

    if-ne p2, p1, :cond_48

    iget p2, p3, Lcom/google/android/gms/internal/ads/zzaji;->c:I

    mul-int p2, p2, p1

    mul-int/lit8 v0, p2, 0x8

    div-int/lit8 p2, p2, 0xa

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzajg;->e:I

    new-instance p2, Lcom/google/android/gms/internal/ads/zzad;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzad;-><init>()V

    .line 3
    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/ads/zzad;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    .line 4
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzad;->d0(I)Lcom/google/android/gms/internal/ads/zzad;

    .line 5
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzad;->o(I)Lcom/google/android/gms/internal/ads/zzad;

    .line 6
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzad;->l(I)Lcom/google/android/gms/internal/ads/zzad;

    iget p1, p3, Lcom/google/android/gms/internal/ads/zzaji;->b:I

    .line 7
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzad;->e0(I)Lcom/google/android/gms/internal/ads/zzad;

    iget p1, p3, Lcom/google/android/gms/internal/ads/zzaji;->c:I

    .line 8
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzad;->t(I)Lcom/google/android/gms/internal/ads/zzad;

    .line 9
    invoke-virtual {p2, p5}, Lcom/google/android/gms/internal/ads/zzad;->n(I)Lcom/google/android/gms/internal/ads/zzad;

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzad;->y()Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajg;->d:Lcom/google/android/gms/internal/ads/zzaf;

    return-void

    .line 11
    :cond_48
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Expected block size: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; got: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final W(J)V
    .registers 3

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajg;->f:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzajg;->g:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajg;->h:J

    return-void
.end method

.method public final a(IJ)V
    .registers 12

    int-to-long v3, p1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajg;->a:Lcom/google/android/gms/internal/ads/zzzx;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzajl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajg;->c:Lcom/google/android/gms/internal/ads/zzaji;

    const/4 v2, 0x1

    move-object v0, v7

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzajl;-><init>(Lcom/google/android/gms/internal/ads/zzaji;IJJ)V

    invoke-interface {p1, v7}, Lcom/google/android/gms/internal/ads/zzzx;->e(Lcom/google/android/gms/internal/ads/zzaax;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajg;->b:Lcom/google/android/gms/internal/ads/zzabb;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzajg;->d:Lcom/google/android/gms/internal/ads/zzaf;

    .line 2
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzabb;->e(Lcom/google/android/gms/internal/ads/zzaf;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzzv;J)Z
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    :goto_4
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-lez v6, :cond_2d

    .line 1
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzajg;->g:I

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzajg;->e:I

    if-ge v6, v7, :cond_2d

    sub-int/2addr v7, v6

    int-to-long v6, v7

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v7, v6

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzajg;->b:Lcom/google/android/gms/internal/ads/zzabb;

    move-object/from16 v8, p1

    .line 2
    invoke-static {v6, v8, v7, v3}, Lcom/google/android/gms/internal/ads/zzaaz;->a(Lcom/google/android/gms/internal/ads/zzabb;Lcom/google/android/gms/internal/ads/zzr;IZ)I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_25

    move-wide v1, v4

    goto :goto_4

    :cond_25
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzajg;->g:I

    add-int/2addr v4, v3

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzajg;->g:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    goto :goto_4

    :cond_2d
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzajg;->c:Lcom/google/android/gms/internal/ads/zzaji;

    iget v7, v6, Lcom/google/android/gms/internal/ads/zzaji;->d:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzajg;->g:I

    .line 3
    div-int/2addr v8, v7

    if-lez v8, :cond_65

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzajg;->f:J

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzajg;->h:J

    const-wide/32 v13, 0xf4240

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzaji;->c:I

    int-to-long v3, v6

    move-wide v15, v3

    .line 4
    invoke-static/range {v11 .. v16}, Lcom/google/android/gms/internal/ads/zzew;->h0(JJJ)J

    move-result-wide v3

    add-long v18, v9, v3

    mul-int v21, v8, v7

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajg;->g:I

    sub-int v3, v3, v21

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzajg;->b:Lcom/google/android/gms/internal/ads/zzabb;

    const/16 v20, 0x1

    const/16 v23, 0x0

    move-object/from16 v17, v4

    move/from16 v22, v3

    .line 5
    invoke-interface/range {v17 .. v23}, Lcom/google/android/gms/internal/ads/zzabb;->f(JIIILcom/google/android/gms/internal/ads/zzaba;)V

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzajg;->h:J

    int-to-long v6, v8

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzajg;->h:J

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzajg;->g:I

    const-wide/16 v3, 0x0

    goto :goto_66

    :cond_65
    move-wide v3, v4

    :goto_66
    cmp-long v5, v1, v3

    if-gtz v5, :cond_6c

    const/4 v1, 0x1

    return v1

    :cond_6c
    const/4 v1, 0x0

    return v1
.end method
