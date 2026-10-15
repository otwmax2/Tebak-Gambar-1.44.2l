###### Class com.google.android.gms.internal.ads.zztq (com.google.android.gms.internal.ads.zztq)
.class final Lcom/google/android/gms/internal/ads/zztq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzxc;
.implements Lcom/google/android/gms/internal/ads/zzsh;


# instance fields
.field private final a:J

.field private final b:Landroid/net/Uri;

.field private final c:Lcom/google/android/gms/internal/ads/zzgh;

.field private final d:Lcom/google/android/gms/internal/ads/zztl;

.field private final e:Lcom/google/android/gms/internal/ads/zzzx;

.field private final f:Lcom/google/android/gms/internal/ads/zzdo;

.field private final g:Lcom/google/android/gms/internal/ads/zzaau;

.field private volatile h:Z

.field private i:Z

.field private j:J

.field private k:Lcom/google/android/gms/internal/ads/zzfl;

.field private l:Lcom/google/android/gms/internal/ads/zzabb;

.field private m:Z

.field final synthetic n:Lcom/google/android/gms/internal/ads/zztv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zztv;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzfg;Lcom/google/android/gms/internal/ads/zztl;Lcom/google/android/gms/internal/ads/zzzx;Lcom/google/android/gms/internal/ads/zzdo;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztq;->n:Lcom/google/android/gms/internal/ads/zztv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zztq;->b:Landroid/net/Uri;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgh;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzgh;-><init>(Lcom/google/android/gms/internal/ads/zzfg;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztq;->c:Lcom/google/android/gms/internal/ads/zzgh;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zztq;->d:Lcom/google/android/gms/internal/ads/zztl;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zztq;->e:Lcom/google/android/gms/internal/ads/zzzx;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zztq;->f:Lcom/google/android/gms/internal/ads/zzdo;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaau;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaau;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztq;->g:Lcom/google/android/gms/internal/ads/zzaau;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zztq;->i:Z

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzsj;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zztq;->a:J

    const-wide/16 p1, 0x0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zztq;->i(J)Lcom/google/android/gms/internal/ads/zzfl;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztq;->k:Lcom/google/android/gms/internal/ads/zzfl;

    return-void
.end method

.method static bridge synthetic a(Lcom/google/android/gms/internal/ads/zztq;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zztq;->a:J

    return-wide v0
.end method

.method static bridge synthetic b(Lcom/google/android/gms/internal/ads/zztq;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zztq;->j:J

    return-wide v0
.end method

.method static bridge synthetic d(Lcom/google/android/gms/internal/ads/zztq;)Lcom/google/android/gms/internal/ads/zzfl;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zztq;->k:Lcom/google/android/gms/internal/ads/zzfl;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/google/android/gms/internal/ads/zztq;)Lcom/google/android/gms/internal/ads/zzgh;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zztq;->c:Lcom/google/android/gms/internal/ads/zzgh;

    return-object p0
.end method

.method static bridge synthetic h(Lcom/google/android/gms/internal/ads/zztq;JJ)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztq;->g:Lcom/google/android/gms/internal/ads/zzaau;

    iput-wide p1, v0, Lcom/google/android/gms/internal/ads/zzaau;->a:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zztq;->j:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zztq;->i:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zztq;->m:Z

    return-void
.end method

.method private final i(J)Lcom/google/android/gms/internal/ads/zzfl;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfj;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztq;->b:Landroid/net/Uri;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfj;->d(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzfj;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfj;->c(J)Lcom/google/android/gms/internal/ads/zzfj;

    const/4 p1, 0x6

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfj;->a(I)Lcom/google/android/gms/internal/ads/zzfj;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zztv;->V()Ljava/util/Map;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfj;->b(Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzfj;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfj;->e()Lcom/google/android/gms/internal/ads/zzfl;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final c(Lcom/google/android/gms/internal/ads/zzen;)V
    .registers 13

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztq;->m:Z

    const/4 v1, 0x1

    if-nez v0, :cond_8

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zztq;->j:J

    goto :goto_14

    .line 2
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztq;->n:Lcom/google/android/gms/internal/ads/zztv;

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zztv;->P(Lcom/google/android/gms/internal/ads/zztv;Z)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zztq;->j:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :goto_14
    move-wide v5, v2

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v8

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zztq;->l:Lcom/google/android/gms/internal/ads/zzabb;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {v4, p1, v8}, Lcom/google/android/gms/internal/ads/zzaaz;->b(Lcom/google/android/gms/internal/ads/zzabb;Lcom/google/android/gms/internal/ads/zzen;I)V

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 6
    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzabb;->f(JIIILcom/google/android/gms/internal/ads/zzaba;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zztq;->m:Z

    return-void
.end method

.method public final e()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztq;->h:Z

    return-void
.end method

.method public final f()V
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "Invalid metadata interval: "

    .line 1
    :cond_4
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zztq;->h:Z

    if-nez v2, :cond_20b

    const-wide/16 v2, -0x1

    const/4 v5, 0x0

    :try_start_b
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zztq;->g:Lcom/google/android/gms/internal/ads/zzaau;

    iget-wide v13, v6, Lcom/google/android/gms/internal/ads/zzaau;->a:J

    invoke-direct {v1, v13, v14}, Lcom/google/android/gms/internal/ads/zztq;->i(J)Lcom/google/android/gms/internal/ads/zzfl;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zztq;->k:Lcom/google/android/gms/internal/ads/zzfl;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zztq;->c:Lcom/google/android/gms/internal/ads/zzgh;

    .line 2
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzgh;->j(Lcom/google/android/gms/internal/ads/zzfl;)J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-eqz v8, :cond_25

    add-long/2addr v6, v13

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zztq;->n:Lcom/google/android/gms/internal/ads/zztv;

    .line 3
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zztv;->t(Lcom/google/android/gms/internal/ads/zztv;)V

    :cond_25
    move-wide v15, v6

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zztq;->n:Lcom/google/android/gms/internal/ads/zztv;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zztq;->c:Lcom/google/android/gms/internal/ads/zzgh;

    .line 4
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzgh;->b()Ljava/util/Map;

    move-result-object v7

    const-string v8, "icy-br"

    .line 5
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;
    :try_end_36
    .catchall {:try_start_b .. :try_end_36} :catchall_1eb

    const-string v9, "IcyHeaders"

    const/4 v10, -0x1

    if-eqz v8, :cond_74

    .line 6
    :try_start_3b
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_1eb

    .line 7
    :try_start_41
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_45
    .catch Ljava/lang/NumberFormatException; {:try_start_41 .. :try_end_45} :catch_62
    .catchall {:try_start_41 .. :try_end_45} :catchall_1eb

    mul-int/lit16 v11, v11, 0x3e8

    if-lez v11, :cond_4d

    move/from16 v18, v11

    const/4 v2, 0x1

    goto :goto_77

    .line 8
    :cond_4d
    :try_start_4d
    new-instance v12, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid bitrate: "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/NumberFormatException; {:try_start_4d .. :try_end_61} :catch_63
    .catchall {:try_start_4d .. :try_end_61} :catchall_1eb

    goto :goto_74

    :catch_62
    const/4 v11, -0x1

    :catch_63
    :try_start_63
    const-string v2, "Invalid bitrate header: "

    .line 10
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-static {v9, v2}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v18, v11

    const/4 v2, 0x0

    goto :goto_77

    :cond_74
    :goto_74
    const/4 v2, 0x0

    const/16 v18, -0x1

    :goto_77
    const-string v3, "icy-genre"

    .line 12
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v8, 0x0

    if-eqz v3, :cond_8c

    .line 13
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v19, v2

    const/4 v2, 0x1

    goto :goto_8e

    :cond_8c
    move-object/from16 v19, v8

    :goto_8e
    const-string v3, "icy-name"

    .line 14
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_a2

    .line 15
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v20, v2

    const/4 v2, 0x1

    goto :goto_a4

    :cond_a2
    move-object/from16 v20, v8

    :goto_a4
    const-string v3, "icy-url"

    .line 16
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_b8

    .line 17
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v21, v2

    const/4 v2, 0x1

    goto :goto_ba

    :cond_b8
    move-object/from16 v21, v8

    :goto_ba
    const-string v3, "icy-pub"

    .line 18
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_d4

    .line 19
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move/from16 v22, v2

    const/4 v2, 0x1

    goto :goto_d6

    :cond_d4
    const/16 v22, 0x0

    :goto_d6
    const-string v3, "icy-metaint"

    .line 20
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_112

    .line 21
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_e6
    .catchall {:try_start_63 .. :try_end_e6} :catchall_1eb

    .line 22
    :try_start_e6
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_ea
    .catch Ljava/lang/NumberFormatException; {:try_start_e6 .. :try_end_ea} :catch_103
    .catchall {:try_start_e6 .. :try_end_ea} :catchall_1eb

    if-lez v7, :cond_f0

    move/from16 v23, v7

    const/4 v2, 0x1

    goto :goto_114

    .line 23
    :cond_f0
    :try_start_f0
    new-instance v11, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_102
    .catch Ljava/lang/NumberFormatException; {:try_start_f0 .. :try_end_102} :catch_104
    .catchall {:try_start_f0 .. :try_end_102} :catchall_1eb

    goto :goto_112

    :catch_103
    const/4 v7, -0x1

    .line 25
    :catch_104
    :try_start_104
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 26
    invoke-static {v9, v3}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v23, v7

    goto :goto_114

    :cond_112
    :goto_112
    const/16 v23, -0x1

    :goto_114
    if-eqz v2, :cond_11d

    .line 27
    new-instance v8, Lcom/google/android/gms/internal/ads/zzacy;

    move-object/from16 v17, v8

    .line 28
    invoke-direct/range {v17 .. v23}, Lcom/google/android/gms/internal/ads/zzacy;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 29
    :cond_11d
    invoke-static {v6, v8}, Lcom/google/android/gms/internal/ads/zztv;->r(Lcom/google/android/gms/internal/ads/zztv;Lcom/google/android/gms/internal/ads/zzacy;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zztq;->c:Lcom/google/android/gms/internal/ads/zzgh;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zztq;->n:Lcom/google/android/gms/internal/ads/zztv;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zztv;->T(Lcom/google/android/gms/internal/ads/zztv;)Lcom/google/android/gms/internal/ads/zzacy;

    move-result-object v6

    if-eqz v6, :cond_14e

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zztv;->T(Lcom/google/android/gms/internal/ads/zztv;)Lcom/google/android/gms/internal/ads/zzacy;

    move-result-object v6

    .line 30
    iget v6, v6, Lcom/google/android/gms/internal/ads/zzacy;->t:I

    if-eq v6, v10, :cond_14e

    new-instance v6, Lcom/google/android/gms/internal/ads/zzsi;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zztv;->T(Lcom/google/android/gms/internal/ads/zztv;)Lcom/google/android/gms/internal/ads/zzacy;

    move-result-object v3

    .line 31
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzacy;->t:I

    invoke-direct {v6, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzsi;-><init>(Lcom/google/android/gms/internal/ads/zzfg;ILcom/google/android/gms/internal/ads/zzsh;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zztq;->n:Lcom/google/android/gms/internal/ads/zztv;

    .line 32
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zztv;->S()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zztq;->l:Lcom/google/android/gms/internal/ads/zzabb;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zztv;->R()Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object v3

    .line 33
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzabb;->e(Lcom/google/android/gms/internal/ads/zzaf;)V

    move-object v8, v6

    goto :goto_14f

    :cond_14e
    move-object v8, v2

    :goto_14f
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zztq;->d:Lcom/google/android/gms/internal/ads/zztl;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zztq;->b:Landroid/net/Uri;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zztq;->c:Lcom/google/android/gms/internal/ads/zzgh;

    .line 34
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgh;->b()Ljava/util/Map;

    move-result-object v10

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zztq;->e:Lcom/google/android/gms/internal/ads/zzzx;

    move-wide v11, v13

    move-wide v4, v13

    move-wide v13, v15

    move-object v15, v2

    .line 35
    invoke-interface/range {v7 .. v15}, Lcom/google/android/gms/internal/ads/zztl;->d(Lcom/google/android/gms/internal/ads/zzr;Landroid/net/Uri;Ljava/util/Map;JJLcom/google/android/gms/internal/ads/zzzx;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zztq;->n:Lcom/google/android/gms/internal/ads/zztv;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zztv;->T(Lcom/google/android/gms/internal/ads/zztv;)Lcom/google/android/gms/internal/ads/zzacy;

    move-result-object v2

    if-eqz v2, :cond_16f

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zztq;->d:Lcom/google/android/gms/internal/ads/zztl;

    .line 36
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zztl;->a()V

    :cond_16f
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zztq;->i:Z

    if-eqz v2, :cond_181

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zztq;->d:Lcom/google/android/gms/internal/ads/zztl;

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zztq;->j:J

    .line 37
    invoke-interface {v2, v4, v5, v7, v8}, Lcom/google/android/gms/internal/ads/zztl;->e(JJ)V
    :try_end_17a
    .catchall {:try_start_104 .. :try_end_17a} :catchall_1eb

    const/4 v2, 0x0

    :try_start_17b
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zztq;->i:Z
    :try_end_17d
    .catchall {:try_start_17b .. :try_end_17d} :catchall_17e

    goto :goto_182

    :catchall_17e
    move-exception v0

    goto/16 :goto_1ed

    :cond_181
    const/4 v2, 0x0

    :goto_182
    move-wide v13, v4

    const/4 v4, 0x0

    :cond_184
    :goto_184
    if-nez v4, :cond_1c9

    :try_start_186
    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/zztq;->h:Z
    :try_end_188
    .catchall {:try_start_186 .. :try_end_188} :catchall_1c5

    if-nez v5, :cond_1c2

    :try_start_18a
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zztq;->f:Lcom/google/android/gms/internal/ads/zzdo;

    .line 38
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdo;->a()V
    :try_end_18f
    .catch Ljava/lang/InterruptedException; {:try_start_18a .. :try_end_18f} :catch_1bc
    .catchall {:try_start_18a .. :try_end_18f} :catchall_1c5

    :try_start_18f
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zztq;->d:Lcom/google/android/gms/internal/ads/zztl;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zztq;->g:Lcom/google/android/gms/internal/ads/zzaau;

    .line 39
    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/ads/zztl;->c(Lcom/google/android/gms/internal/ads/zzaau;)I

    move-result v4

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zztq;->d:Lcom/google/android/gms/internal/ads/zztl;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zztl;->zzb()J

    move-result-wide v5

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zztq;->n:Lcom/google/android/gms/internal/ads/zztv;

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zztv;->O(Lcom/google/android/gms/internal/ads/zztv;)J

    move-result-wide v7

    add-long/2addr v7, v13

    cmp-long v9, v5, v7

    if-lez v9, :cond_184

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zztq;->f:Lcom/google/android/gms/internal/ads/zzdo;

    .line 40
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzdo;->c()Z

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zztq;->n:Lcom/google/android/gms/internal/ads/zztv;

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zztv;->Q(Lcom/google/android/gms/internal/ads/zztv;)Landroid/os/Handler;

    move-result-object v8

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zztv;->U(Lcom/google/android/gms/internal/ads/zztv;)Ljava/lang/Runnable;

    move-result-object v7

    .line 41
    invoke-virtual {v8, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-wide v13, v5

    goto :goto_184

    .line 42
    :catch_1bc
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_1c2
    .catchall {:try_start_18f .. :try_end_1c2} :catchall_1c5

    :cond_1c2
    const/4 v3, 0x1

    const/4 v4, 0x0

    goto :goto_1ca

    :catchall_1c5
    move-exception v0

    move v5, v4

    const/4 v2, 0x1

    goto :goto_1ef

    :cond_1c9
    const/4 v3, 0x1

    :goto_1ca
    if-ne v4, v3, :cond_1ce

    const/4 v5, 0x0

    goto :goto_1e3

    .line 43
    :cond_1ce
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zztq;->d:Lcom/google/android/gms/internal/ads/zztl;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zztl;->zzb()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v3, v5, v7

    if-eqz v3, :cond_1e2

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zztq;->g:Lcom/google/android/gms/internal/ads/zzaau;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zztl;->zzb()J

    move-result-wide v5

    iput-wide v5, v3, Lcom/google/android/gms/internal/ads/zzaau;->a:J

    :cond_1e2
    move v5, v4

    .line 44
    :goto_1e3
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zztq;->c:Lcom/google/android/gms/internal/ads/zzgh;

    .line 45
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfi;->a(Lcom/google/android/gms/internal/ads/zzfg;)V

    if-eqz v5, :cond_4

    goto :goto_20b

    :catchall_1eb
    move-exception v0

    const/4 v2, 0x0

    :goto_1ed
    const/4 v2, 0x1

    const/4 v5, 0x0

    :goto_1ef
    if-eq v5, v2, :cond_205

    .line 46
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zztq;->d:Lcom/google/android/gms/internal/ads/zztl;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zztl;->zzb()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_205

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zztq;->g:Lcom/google/android/gms/internal/ads/zzaau;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zztl;->zzb()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/gms/internal/ads/zzaau;->a:J

    .line 47
    :cond_205
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zztq;->c:Lcom/google/android/gms/internal/ads/zzgh;

    .line 48
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfi;->a(Lcom/google/android/gms/internal/ads/zzfg;)V

    .line 49
    throw v0

    :cond_20b
    :goto_20b
    return-void
.end method
