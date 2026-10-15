###### Class com.google.android.gms.internal.ads.zzaig (com.google.android.gms.internal.ads.zzaig)
.class final Lcom/google/android/gms/internal/ads/zzaig;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzzf;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzeu;

.field private final b:Lcom/google/android/gms/internal/ads/zzen;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeu;Lcom/google/android/gms/internal/ads/zzaif;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaig;->a:Lcom/google/android/gms/internal/ads/zzeu;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzen;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzen;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaig;->b:Lcom/google/android/gms/internal/ads/zzen;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzzv;J)Lcom/google/android/gms/internal/ads/zzze;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v1

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->d()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v5, 0x4e20

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaig;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 2
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzen;->c(I)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaig;->b:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v3

    move-object/from16 v5, p1

    check-cast v5, Lcom/google/android/gms/internal/ads/zzzk;

    const/4 v6, 0x0

    .line 3
    invoke-virtual {v5, v3, v6, v4, v6}, Lcom/google/android/gms/internal/ads/zzzk;->k([BIIZ)Z

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaig;->b:Lcom/google/android/gms/internal/ads/zzen;

    const/4 v4, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v8, v5

    const/4 v7, -0x1

    :goto_2f
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v10

    const/4 v11, 0x4

    if-lt v10, v11, :cond_124

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v10

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v12

    .line 4
    invoke-static {v10, v12}, Lcom/google/android/gms/internal/ads/zzaih;->h([BI)I

    move-result v10

    const/4 v12, 0x1

    const/16 v13, 0x1ba

    if-eq v10, v13, :cond_4b

    .line 5
    invoke-virtual {v3, v12}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    goto :goto_2f

    .line 6
    :cond_4b
    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 7
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaii;->c(Lcom/google/android/gms/internal/ads/zzen;)J

    move-result-wide v14

    cmp-long v4, v14, v5

    if-eqz v4, :cond_86

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaig;->a:Lcom/google/android/gms/internal/ads/zzeu;

    .line 8
    invoke-virtual {v4, v14, v15}, Lcom/google/android/gms/internal/ads/zzeu;->b(J)J

    move-result-wide v14

    cmp-long v4, v14, p2

    if-lez v4, :cond_6c

    cmp-long v3, v8, v5

    if-nez v3, :cond_6a

    invoke-static {v14, v15, v1, v2}, Lcom/google/android/gms/internal/ads/zzze;->d(JJ)Lcom/google/android/gms/internal/ads/zzze;

    move-result-object v1

    goto/16 :goto_131

    :cond_6a
    int-to-long v3, v7

    goto :goto_79

    :cond_6c
    const-wide/32 v7, 0x186a0

    add-long/2addr v7, v14

    cmp-long v4, v7, p2

    if-lez v4, :cond_80

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v3

    int-to-long v3, v3

    :goto_79
    add-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzze;->e(J)Lcom/google/android/gms/internal/ads/zzze;

    move-result-object v1

    goto/16 :goto_131

    :cond_80
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v4

    move v7, v4

    move-wide v8, v14

    :cond_86
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v10

    const/16 v14, 0xa

    if-ge v10, v14, :cond_97

    .line 9
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    goto/16 :goto_11e

    :cond_97
    const/16 v10, 0x9

    .line 10
    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 11
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v10

    and-int/lit8 v10, v10, 0x7

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v14

    if-ge v14, v10, :cond_ad

    .line 12
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    goto/16 :goto_11e

    .line 13
    :cond_ad
    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v10

    if-ge v10, v11, :cond_ba

    .line 14
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    goto :goto_11e

    :cond_ba
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v10

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v14

    .line 15
    invoke-static {v10, v14}, Lcom/google/android/gms/internal/ads/zzaih;->h([BI)I

    move-result v10

    const/16 v14, 0x1bb

    if-eq v10, v14, :cond_cb

    goto :goto_df

    .line 16
    :cond_cb
    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 17
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->w()I

    move-result v10

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v14

    if-ge v14, v10, :cond_dc

    .line 18
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    goto :goto_11e

    .line 19
    :cond_dc
    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 20
    :goto_df
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v10

    if-lt v10, v11, :cond_11e

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v10

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v14

    .line 21
    invoke-static {v10, v14}, Lcom/google/android/gms/internal/ads/zzaih;->h([BI)I

    move-result v10

    if-eq v10, v13, :cond_11e

    const/16 v14, 0x1b9

    if-eq v10, v14, :cond_11e

    ushr-int/lit8 v10, v10, 0x8

    if-ne v10, v12, :cond_11e

    .line 22
    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v10

    const/4 v14, 0x2

    if-ge v10, v14, :cond_109

    .line 23
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    goto :goto_11e

    .line 24
    :cond_109
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->w()I

    move-result v10

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v14

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v15

    add-int/2addr v15, v10

    .line 25
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 26
    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    goto :goto_df

    .line 27
    :cond_11e
    :goto_11e
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v4

    goto/16 :goto_2f

    :cond_124
    cmp-long v3, v8, v5

    if-eqz v3, :cond_12f

    int-to-long v3, v4

    add-long/2addr v1, v3

    .line 28
    invoke-static {v8, v9, v1, v2}, Lcom/google/android/gms/internal/ads/zzze;->f(JJ)Lcom/google/android/gms/internal/ads/zzze;

    move-result-object v1

    goto :goto_131

    :cond_12f
    sget-object v1, Lcom/google/android/gms/internal/ads/zzze;->d:Lcom/google/android/gms/internal/ads/zzze;

    :goto_131
    return-object v1
.end method

.method public final zzb()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaig;->b:Lcom/google/android/gms/internal/ads/zzen;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzew;->f:[B

    .line 2
    array-length v2, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzen;->d([BI)V

    return-void
.end method
