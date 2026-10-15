###### Class com.google.android.gms.internal.ads.zzcdj (com.google.android.gms.internal.ads.zzcdj)
.class final Lcom/google/android/gms/internal/ads/zzcdj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfg;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzfg;

.field private final b:J

.field private final c:Lcom/google/android/gms/internal/ads/zzfg;

.field private d:J

.field private e:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfg;ILcom/google/android/gms/internal/ads/zzfg;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdj;->a:Lcom/google/android/gms/internal/ads/zzfg;

    int-to-long p1, p2

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzcdj;->b:J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcdj;->c:Lcom/google/android/gms/internal/ads/zzfg;

    return-void
.end method


# virtual methods
.method public final a()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdj;->e:Landroid/net/Uri;

    return-object v0
.end method

.method public final b()Ljava/util/Map;
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqn;->d()Lcom/google/android/gms/internal/ads/zzfqn;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdj;->a:Lcom/google/android/gms/internal/ads/zzfg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfg;->d()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdj;->c:Lcom/google/android/gms/internal/ads/zzfg;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfg;->d()V

    return-void
.end method

.method public final e([BII)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcdj;->d:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcdj;->b:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1f

    int-to-long v4, p3

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdj;->a:Lcom/google/android/gms/internal/ads/zzfg;

    .line 2
    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzr;->e([BII)I

    move-result v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzcdj;->d:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzcdj;->d:J

    move-wide v6, v1

    move v2, v0

    move-wide v0, v6

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzcdj;->b:J

    cmp-long v5, v0, v3

    if-ltz v5, :cond_35

    sub-int/2addr p3, v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdj;->c:Lcom/google/android/gms/internal/ads/zzfg;

    add-int/2addr p2, v2

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzr;->e([BII)I

    move-result p1

    add-int/2addr v2, p1

    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzcdj;->d:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzcdj;->d:J

    :cond_35
    return v2
.end method

.method public final f(Lcom/google/android/gms/internal/ads/zzgi;)V
    .registers 2

    return-void
.end method

.method public final j(Lcom/google/android/gms/internal/ads/zzfl;)J
    .registers 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzfl;->a:Landroid/net/Uri;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzcdj;->e:Landroid/net/Uri;

    .line 2
    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzfl;->f:J

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzcdj;->b:J

    const/4 v14, 0x0

    const-wide/16 v15, -0x1

    cmp-long v4, v8, v2

    if-ltz v4, :cond_15

    move-object v2, v14

    goto :goto_2f

    .line 3
    :cond_15
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzfl;->g:J

    cmp-long v6, v4, v15

    if-eqz v6, :cond_21

    sub-long/2addr v2, v8

    .line 4
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_22

    :cond_21
    sub-long/2addr v2, v8

    :goto_22
    move-wide v10, v2

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfl;

    .line 5
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzfl;->a:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v3, v2

    move-wide v6, v8

    .line 6
    invoke-direct/range {v3 .. v13}, Lcom/google/android/gms/internal/ads/zzfl;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    .line 7
    :goto_2f
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzfl;->g:J

    cmp-long v5, v3, v15

    if-eqz v5, :cond_3f

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzfl;->f:J

    add-long/2addr v5, v3

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzcdj;->b:J

    cmp-long v7, v5, v3

    if-gtz v7, :cond_3f

    goto :goto_6f

    .line 8
    :cond_3f
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzcdj;->b:J

    .line 9
    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzfl;->f:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v22

    .line 10
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzfl;->g:J

    cmp-long v5, v3, v15

    if-eqz v5, :cond_5a

    .line 11
    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzfl;->f:J

    add-long/2addr v5, v3

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzcdj;->b:J

    sub-long/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    move-wide/from16 v24, v3

    goto :goto_5c

    :cond_5a
    move-wide/from16 v24, v15

    :goto_5c
    new-instance v14, Lcom/google/android/gms/internal/ads/zzfl;

    .line 12
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzfl;->a:Landroid/net/Uri;

    const/16 v19, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v17, v14

    move-object/from16 v18, v3

    move-wide/from16 v20, v22

    .line 13
    invoke-direct/range {v17 .. v27}, Lcom/google/android/gms/internal/ads/zzfl;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    :goto_6f
    const-wide/16 v3, 0x0

    if-eqz v2, :cond_7a

    .line 14
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzcdj;->a:Lcom/google/android/gms/internal/ads/zzfg;

    .line 15
    invoke-interface {v5, v2}, Lcom/google/android/gms/internal/ads/zzfg;->j(Lcom/google/android/gms/internal/ads/zzfl;)J

    move-result-wide v5

    goto :goto_7b

    :cond_7a
    move-wide v5, v3

    :goto_7b
    if-eqz v14, :cond_83

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzcdj;->c:Lcom/google/android/gms/internal/ads/zzfg;

    .line 16
    invoke-interface {v2, v14}, Lcom/google/android/gms/internal/ads/zzfg;->j(Lcom/google/android/gms/internal/ads/zzfl;)J

    move-result-wide v3

    .line 17
    :cond_83
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzfl;->f:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzcdj;->d:J

    cmp-long v1, v5, v15

    if-eqz v1, :cond_92

    cmp-long v1, v3, v15

    if-nez v1, :cond_90

    goto :goto_92

    :cond_90
    add-long/2addr v5, v3

    return-wide v5

    :cond_92
    :goto_92
    return-wide v15
.end method
