###### Class com.google.android.gms.internal.ads.zzajh (com.google.android.gms.internal.ads.zzajh)
.class public final Lcom/google/android/gms/internal/ads/zzajh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzzu;


# static fields
.field public static final h:Lcom/google/android/gms/internal/ads/zzaab;


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/zzzx;

.field private b:Lcom/google/android/gms/internal/ads/zzabb;

.field private c:I

.field private d:J

.field private e:Lcom/google/android/gms/internal/ads/zzajf;

.field private f:I

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzajd;->b:Lcom/google/android/gms/internal/ads/zzajd;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzajh;->h:Lcom/google/android/gms/internal/ads/zzaab;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->c:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->d:J

    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzajh;->f:I

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->g:J

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzzv;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzajk;->c(Lcom/google/android/gms/internal/ads/zzzv;)Z

    move-result p1

    return p1
.end method

.method public final e(Lcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/internal/ads/zzaau;)I
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->b:Lcom/google/android/gms/internal/ads/zzabb;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget v2, Lcom/google/android/gms/internal/ads/zzew;->a:I

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->c:I

    const/4 v3, -0x1

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_159

    const/4 v7, 0x2

    const-wide/16 v8, -0x1

    if-eq v2, v5, :cond_124

    const/4 v10, 0x3

    if-eq v2, v7, :cond_a2

    if-eq v2, v10, :cond_3c

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzajh;->g:J

    cmp-long v2, v10, v8

    if-eqz v2, :cond_24

    goto :goto_25

    :cond_24
    const/4 v5, 0x0

    .line 3
    :goto_25
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->g:J

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v7

    sub-long/2addr v4, v7

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->e:Lcom/google/android/gms/internal/ads/zzajf;

    .line 4
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {v2, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzajf;->b(Lcom/google/android/gms/internal/ads/zzzv;J)Z

    move-result v1

    if-eqz v1, :cond_3b

    return v3

    :cond_3b
    return v6

    .line 6
    :cond_3c
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzajk;->a(Lcom/google/android/gms/internal/ads/zzzv;)Landroid/util/Pair;

    move-result-object v2

    .line 7
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzajh;->f:I

    .line 8
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzajh;->d:J

    cmp-long v5, v10, v8

    if-eqz v5, :cond_62

    const-wide v12, 0xffffffffL

    cmp-long v5, v2, v12

    if-nez v5, :cond_62

    move-wide v2, v10

    :cond_62
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzajh;->f:I

    int-to-long v10, v5

    add-long/2addr v10, v2

    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/zzajh;->g:J

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->d()J

    move-result-wide v1

    cmp-long v3, v1, v8

    if-eqz v3, :cond_95

    cmp-long v3, v10, v1

    if-lez v3, :cond_95

    new-instance v3, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data exceeds input length: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "WavExtractor"

    invoke-static {v5, v3}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->g:J

    move-wide v10, v1

    :cond_95
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->e:Lcom/google/android/gms/internal/ads/zzajf;

    .line 10
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->f:I

    .line 11
    invoke-interface {v1, v2, v10, v11}, Lcom/google/android/gms/internal/ads/zzajf;->a(IJ)V

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->c:I

    return v6

    .line 12
    :cond_a2
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzajk;->b(Lcom/google/android/gms/internal/ads/zzzv;)Lcom/google/android/gms/internal/ads/zzaji;

    move-result-object v15

    iget v1, v15, Lcom/google/android/gms/internal/ads/zzaji;->a:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_b8

    .line 13
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaje;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->a:Lcom/google/android/gms/internal/ads/zzzx;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajh;->b:Lcom/google/android/gms/internal/ads/zzabb;

    invoke-direct {v1, v2, v3, v15}, Lcom/google/android/gms/internal/ads/zzaje;-><init>(Lcom/google/android/gms/internal/ads/zzzx;Lcom/google/android/gms/internal/ads/zzabb;Lcom/google/android/gms/internal/ads/zzaji;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->e:Lcom/google/android/gms/internal/ads/zzajf;

    goto :goto_10b

    :cond_b8
    const/4 v2, 0x6

    if-ne v1, v2, :cond_cc

    new-instance v1, Lcom/google/android/gms/internal/ads/zzajg;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzajh;->a:Lcom/google/android/gms/internal/ads/zzzx;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzajh;->b:Lcom/google/android/gms/internal/ads/zzabb;

    const/16 v17, -0x1

    const-string v16, "audio/g711-alaw"

    move-object v12, v1

    .line 14
    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/ads/zzajg;-><init>(Lcom/google/android/gms/internal/ads/zzzx;Lcom/google/android/gms/internal/ads/zzabb;Lcom/google/android/gms/internal/ads/zzaji;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->e:Lcom/google/android/gms/internal/ads/zzajf;

    goto :goto_10b

    :cond_cc
    const/4 v2, 0x7

    if-ne v1, v2, :cond_e0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzajg;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzajh;->a:Lcom/google/android/gms/internal/ads/zzzx;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzajh;->b:Lcom/google/android/gms/internal/ads/zzabb;

    const/16 v17, -0x1

    const-string v16, "audio/g711-mlaw"

    move-object v12, v1

    .line 15
    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/ads/zzajg;-><init>(Lcom/google/android/gms/internal/ads/zzzx;Lcom/google/android/gms/internal/ads/zzabb;Lcom/google/android/gms/internal/ads/zzaji;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->e:Lcom/google/android/gms/internal/ads/zzajf;

    goto :goto_10b

    :cond_e0
    iget v2, v15, Lcom/google/android/gms/internal/ads/zzaji;->e:I

    if-eq v1, v5, :cond_f5

    if-eq v1, v10, :cond_ee

    const v3, 0xfffe

    if-eq v1, v3, :cond_f5

    :cond_eb
    const/16 v17, 0x0

    goto :goto_fb

    :cond_ee
    const/16 v3, 0x20

    if-ne v2, v3, :cond_eb

    const/16 v17, 0x4

    goto :goto_fb

    .line 16
    :cond_f5
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzew;->Y(I)I

    move-result v4

    move/from16 v17, v4

    :goto_fb
    if-eqz v17, :cond_10e

    .line 17
    new-instance v1, Lcom/google/android/gms/internal/ads/zzajg;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzajh;->a:Lcom/google/android/gms/internal/ads/zzzx;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzajh;->b:Lcom/google/android/gms/internal/ads/zzabb;

    const-string v16, "audio/raw"

    move-object v12, v1

    .line 18
    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/ads/zzajg;-><init>(Lcom/google/android/gms/internal/ads/zzzx;Lcom/google/android/gms/internal/ads/zzabb;Lcom/google/android/gms/internal/ads/zzaji;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->e:Lcom/google/android/gms/internal/ads/zzajf;

    .line 19
    :goto_10b
    iput v10, v0, Lcom/google/android/gms/internal/ads/zzajh;->c:I

    return v6

    .line 20
    :cond_10e
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported WAV format type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbu;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v1

    throw v1

    .line 22
    :cond_124
    new-instance v2, Lcom/google/android/gms/internal/ads/zzen;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    .line 23
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzajj;->a(Lcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzajj;

    move-result-object v4

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzajj;->a:I

    const v10, 0x64733634

    if-eq v5, v10, :cond_13a

    .line 24
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    goto :goto_154

    :cond_13a
    check-cast v1, Lcom/google/android/gms/internal/ads/zzzk;

    .line 25
    invoke-virtual {v1, v3, v6}, Lcom/google/android/gms/internal/ads/zzzk;->n(IZ)Z

    .line 26
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v5

    .line 27
    invoke-virtual {v1, v5, v6, v3, v6}, Lcom/google/android/gms/internal/ads/zzzk;->k([BIIZ)Z

    .line 28
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->x()J

    move-result-wide v8

    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/zzajj;->b:J

    long-to-int v2, v4

    add-int/2addr v2, v3

    .line 29
    invoke-virtual {v1, v2, v6}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    .line 30
    :goto_154
    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzajh;->d:J

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzajh;->c:I

    return v6

    .line 31
    :cond_159
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-nez v2, :cond_165

    const/4 v2, 0x1

    goto :goto_166

    :cond_165
    const/4 v2, 0x0

    .line 32
    :goto_166
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->f:I

    if-eq v2, v3, :cond_175

    check-cast v1, Lcom/google/android/gms/internal/ads/zzzk;

    .line 33
    invoke-virtual {v1, v2, v6}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->c:I

    goto :goto_18c

    .line 34
    :cond_175
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzajk;->c(Lcom/google/android/gms/internal/ads/zzzv;)Z

    move-result v2

    if-eqz v2, :cond_18d

    .line 35
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->b()J

    move-result-wide v2

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v7

    sub-long/2addr v2, v7

    check-cast v1, Lcom/google/android/gms/internal/ads/zzzk;

    long-to-int v3, v2

    .line 36
    invoke-virtual {v1, v3, v6}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzajh;->c:I

    :goto_18c
    return v6

    :cond_18d
    const/4 v1, 0x0

    const-string v2, "Unsupported or unrecognized wav file type."

    .line 37
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v1

    goto :goto_196

    :goto_195
    throw v1

    :goto_196
    goto :goto_195
.end method

.method public final g(Lcom/google/android/gms/internal/ads/zzzx;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->a:Lcom/google/android/gms/internal/ads/zzzx;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzzx;->q(II)Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->b:Lcom/google/android/gms/internal/ads/zzabb;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzx;->f0()V

    return-void
.end method

.method public final h(JJ)V
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_8

    const/4 p1, 0x0

    goto :goto_9

    :cond_8
    const/4 p1, 0x4

    .line 1
    :goto_9
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->c:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->e:Lcom/google/android/gms/internal/ads/zzajf;

    if-eqz p1, :cond_12

    invoke-interface {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzajf;->W(J)V

    :cond_12
    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzajd (com.google.android.gms.internal.ads.zzajd)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzajd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaab;


# static fields
.field public static final synthetic b:Lcom/google/android/gms/internal/ads/zzajd;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzajd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzajd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzajd;->b:Lcom/google/android/gms/internal/ads/zzajd;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/zzzu;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaaa;->a(Lcom/google/android/gms/internal/ads/zzaab;Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/zzzu;

    move-result-object p1

    return-object p1
.end method

.method public final zza()[Lcom/google/android/gms/internal/ads/zzzu;
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzajh;->h:Lcom/google/android/gms/internal/ads/zzaab;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzzu;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzajh;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzajh;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method
