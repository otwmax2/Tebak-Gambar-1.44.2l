###### Class com.google.android.gms.internal.ads.zzfl (com.google.android.gms.internal.ads.zzfl)
.class public final Lcom/google/android/gms/internal/ads/zzfl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:I

.field public final c:[B

.field public final d:Ljava/util/Map;

.field public final e:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final f:J

.field public final g:J

.field public final h:Ljava/lang/String;

.field public final i:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "media3.datasource"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbh;->b(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .registers 16

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 2
    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/ads/zzfl;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V
    .registers 26

    move-object v0, p0

    move-wide/from16 v1, p7

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-long v3, p2, v1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    cmp-long v9, v3, v6

    if-ltz v9, :cond_12

    const/4 v9, 0x1

    goto :goto_13

    :cond_12
    const/4 v9, 0x0

    :goto_13
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzdl;->d(Z)V

    cmp-long v9, v1, v6

    if-ltz v9, :cond_1c

    const/4 v9, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v9, 0x0

    .line 6
    :goto_1d
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzdl;->d(Z)V

    const-wide/16 v9, -0x1

    cmp-long v11, p9, v6

    if-gtz v11, :cond_2e

    cmp-long v6, p9, v9

    if-nez v6, :cond_2b

    goto :goto_30

    :cond_2b
    move-wide/from16 v9, p9

    goto :goto_31

    :cond_2e
    move-wide/from16 v9, p9

    :goto_30
    const/4 v5, 0x1

    .line 7
    :goto_31
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdl;->d(Z)V

    move-object v5, p1

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzfl;->a:Landroid/net/Uri;

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzfl;->b:I

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzfl;->c:[B

    new-instance v6, Ljava/util/HashMap;

    move-object/from16 v7, p6

    .line 8
    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzfl;->d:Ljava/util/Map;

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzfl;->f:J

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzfl;->e:J

    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/zzfl;->g:J

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzfl;->h:Ljava/lang/String;

    move/from16 v1, p12

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzfl;->i:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzfk;)V
    .registers 29

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move/from16 v12, p12

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/ads/zzfl;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V
    .registers 25
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sub-long v2, p3, p5

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move/from16 v12, p10

    .line 4
    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/ads/zzfl;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .registers 1

    const-string p0, "GET"

    return-object p0
.end method


# virtual methods
.method public final b(I)Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfl;->i:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 p1, 0x1

    return p1

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfl;->a:Landroid/net/Uri;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzfl;->f:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzfl;->g:J

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzfl;->i:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DataSpec["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "GET"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", null, "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
