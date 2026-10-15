###### Class com.google.android.gms.internal.ads.zzgg (com.google.android.gms.internal.ads.zzgg)
.class public final Lcom/google/android/gms/internal/ads/zzgg;
.super Lcom/google/android/gms/internal/ads/zzfa;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final e:Landroid/content/res/Resources;

.field private final f:Ljava/lang/String;

.field private g:Landroid/net/Uri;

.field private h:Landroid/content/res/AssetFileDescriptor;

.field private i:Ljava/io/InputStream;

.field private j:J

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfa;-><init>(Z)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgg;->e:Landroid/content/res/Resources;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgg;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgg;->g:Landroid/net/Uri;

    return-object v0
.end method

.method public final d()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgf;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgg;->g:Landroid/net/Uri;

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    :try_start_6
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgg;->i:Ljava/io/InputStream;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_39
    .catchall {:try_start_6 .. :try_end_d} :catchall_37

    :cond_d
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgg;->i:Ljava/io/InputStream;

    :try_start_f
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgg;->h:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_16

    .line 2
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_16} :catch_24
    .catchall {:try_start_f .. :try_end_16} :catchall_22

    :cond_16
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgg;->h:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgg;->k:Z

    if-eqz v0, :cond_21

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzgg;->k:Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfa;->n()V

    :cond_21
    return-void

    :catchall_22
    move-exception v1

    goto :goto_2b

    :catch_24
    move-exception v3

    .line 4
    :try_start_25
    new-instance v4, Lcom/google/android/gms/internal/ads/zzgf;

    .line 5
    invoke-direct {v4, v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzgf;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v4
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_22

    :goto_2b
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgg;->h:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgg;->k:Z

    if-eqz v0, :cond_36

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzgg;->k:Z

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfa;->n()V

    .line 7
    :cond_36
    throw v1

    :catchall_37
    move-exception v3

    goto :goto_40

    :catch_39
    move-exception v3

    .line 8
    :try_start_3a
    new-instance v4, Lcom/google/android/gms/internal/ads/zzgf;

    .line 9
    invoke-direct {v4, v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzgf;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v4
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_37

    :goto_40
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgg;->i:Ljava/io/InputStream;

    :try_start_42
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzgg;->h:Landroid/content/res/AssetFileDescriptor;

    if-eqz v4, :cond_49

    .line 10
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_49} :catch_57
    .catchall {:try_start_42 .. :try_end_49} :catchall_55

    :cond_49
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgg;->h:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgg;->k:Z

    if-eqz v0, :cond_54

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzgg;->k:Z

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfa;->n()V

    .line 12
    :cond_54
    throw v3

    :catchall_55
    move-exception v1

    goto :goto_5e

    :catch_57
    move-exception v3

    .line 13
    :try_start_58
    new-instance v4, Lcom/google/android/gms/internal/ads/zzgf;

    .line 14
    invoke-direct {v4, v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzgf;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v4
    :try_end_5e
    .catchall {:try_start_58 .. :try_end_5e} :catchall_55

    :goto_5e
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgg;->h:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgg;->k:Z

    if-nez v0, :cond_65

    goto :goto_6a

    .line 15
    :cond_65
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzgg;->k:Z

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfa;->n()V

    .line 17
    :goto_6a
    throw v1
.end method

.method public final e([BII)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgf;
        }
    .end annotation

    if-nez p3, :cond_4

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_4
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgg;->j:J

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_4f

    const/16 v2, 0x7d0

    const-wide/16 v5, -0x1

    cmp-long v3, v0, v5

    if-eqz v3, :cond_1b

    int-to-long v7, p3

    :try_start_16
    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgg;->i:Ljava/io/InputStream;

    .line 2
    sget v1, Lcom/google/android/gms/internal/ads/zzew;->a:I

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_23} :catch_47

    if-ne p1, v4, :cond_39

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzgg;->j:J

    cmp-long p3, p1, v5

    if-nez p3, :cond_2c

    return v4

    :cond_2c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgf;

    .line 3
    new-instance p2, Ljava/io/EOFException;

    invoke-direct {p2}, Ljava/io/EOFException;-><init>()V

    const-string p3, "End of stream reached having not read sufficient data."

    invoke-direct {p1, p3, p2, v2}, Lcom/google/android/gms/internal/ads/zzgf;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    :cond_39
    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzgg;->j:J

    cmp-long v0, p2, v5

    if-eqz v0, :cond_43

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzgg;->j:J

    .line 4
    :cond_43
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfa;->w(I)V

    return p1

    :catch_47
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzgf;

    const/4 p3, 0x0

    .line 5
    invoke-direct {p2, p3, p1, v2}, Lcom/google/android/gms/internal/ads/zzgf;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p2

    :cond_4f
    return v4
.end method

.method public final j(Lcom/google/android/gms/internal/ads/zzfl;)J
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgf;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfl;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgg;->g:Landroid/net/Uri;

    .line 2
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rawresource"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x7d5

    const/16 v3, 0x3ec

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_95

    .line 3
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v6, "android.resource"

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 4
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_3c

    .line 5
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "\\d+"

    .line 7
    invoke-virtual {v1, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    goto :goto_95

    .line 8
    :cond_3c
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 9
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "/"

    .line 11
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 12
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 13
    :cond_59
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_66

    const-string v3, ""

    goto :goto_70

    .line 15
    :cond_66
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 16
    :goto_70
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzgg;->e:Landroid/content/res/Resources;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzgg;->f:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "raw"

    .line 17
    invoke-virtual {v6, v1, v3, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_85

    goto :goto_a0

    :cond_85
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgf;

    const-string v0, "Resource not found."

    .line 18
    invoke-direct {p1, v0, v5, v2}, Lcom/google/android/gms/internal/ads/zzgf;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    .line 19
    :cond_8d
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgf;

    const-string v0, "URI must either use scheme rawresource or android.resource"

    .line 20
    invoke-direct {p1, v0, v5, v3}, Lcom/google/android/gms/internal/ads/zzgf;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    .line 21
    :cond_95
    :goto_95
    :try_start_95
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1
    :try_end_99
    .catch Ljava/lang/NumberFormatException; {:try_start_95 .. :try_end_99} :catch_164

    .line 22
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :try_start_9c
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_a0
    .catch Ljava/lang/NumberFormatException; {:try_start_9c .. :try_end_a0} :catch_164

    .line 24
    :goto_a0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfa;->o(Lcom/google/android/gms/internal/ads/zzfl;)V

    :try_start_a3
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgg;->e:Landroid/content/res/Resources;

    .line 25
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1
    :try_end_a9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a3 .. :try_end_a9} :catch_15d

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgg;->h:Landroid/content/res/AssetFileDescriptor;

    const/16 v2, 0x7d0

    if-eqz v1, :cond_14d

    .line 26
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    new-instance v0, Ljava/io/FileInputStream;

    .line 27
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgg;->i:Ljava/io/InputStream;

    const/16 v3, 0x7d8

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-eqz v10, :cond_d3

    .line 28
    :try_start_c6
    iget-wide v10, p1, Lcom/google/android/gms/internal/ads/zzfl;->f:J

    cmp-long v12, v10, v6

    if-gtz v12, :cond_cd

    goto :goto_d3

    .line 29
    :cond_cd
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgf;

    .line 30
    invoke-direct {p1, v5, v5, v3}, Lcom/google/android/gms/internal/ads/zzgf;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    .line 31
    :cond_d3
    :goto_d3
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v10

    .line 32
    iget-wide v12, p1, Lcom/google/android/gms/internal/ads/zzfl;->f:J

    add-long/2addr v12, v10

    .line 33
    invoke-virtual {v0, v12, v13}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v12

    sub-long/2addr v12, v10

    .line 34
    iget-wide v10, p1, Lcom/google/android/gms/internal/ads/zzfl;->f:J

    cmp-long v1, v12, v10

    if-nez v1, :cond_13e

    const-wide/16 v10, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_111

    .line 35
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    cmp-long v1, v6, v10

    if-nez v1, :cond_fb

    iput-wide v8, p0, Lcom/google/android/gms/internal/ads/zzgg;->j:J

    move-wide v6, v8

    goto :goto_118

    .line 37
    :cond_fb
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    sub-long/2addr v6, v0

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzgg;->j:J

    cmp-long v0, v6, v10

    if-ltz v0, :cond_10b

    goto :goto_118

    .line 38
    :cond_10b
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgf;

    .line 39
    invoke-direct {p1, v5, v5, v3}, Lcom/google/android/gms/internal/ads/zzgf;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    :cond_111
    sub-long/2addr v6, v12

    .line 40
    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzgg;->j:J
    :try_end_114
    .catch Lcom/google/android/gms/internal/ads/zzgf; {:try_start_c6 .. :try_end_114} :catch_14b
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_114} :catch_144

    cmp-long v0, v6, v10

    if-ltz v0, :cond_138

    .line 41
    :goto_118
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzfl;->g:J

    cmp-long v2, v0, v8

    if-eqz v2, :cond_129

    cmp-long v2, v6, v8

    if-nez v2, :cond_123

    goto :goto_127

    .line 42
    :cond_123
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 43
    :goto_127
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgg;->j:J

    :cond_129
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzgg;->k:Z

    .line 44
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfa;->p(Lcom/google/android/gms/internal/ads/zzfl;)V

    .line 45
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzfl;->g:J

    cmp-long p1, v0, v8

    if-eqz p1, :cond_135

    return-wide v0

    :cond_135
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgg;->j:J

    return-wide v0

    .line 46
    :cond_138
    :try_start_138
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfh;

    .line 47
    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/ads/zzfh;-><init>(I)V

    throw p1

    .line 48
    :cond_13e
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgf;

    .line 49
    invoke-direct {p1, v5, v5, v3}, Lcom/google/android/gms/internal/ads/zzgf;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1
    :try_end_144
    .catch Lcom/google/android/gms/internal/ads/zzgf; {:try_start_138 .. :try_end_144} :catch_14b
    .catch Ljava/io/IOException; {:try_start_138 .. :try_end_144} :catch_144

    :catch_144
    move-exception p1

    .line 50
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgf;

    .line 51
    invoke-direct {v0, v5, p1, v2}, Lcom/google/android/gms/internal/ads/zzgf;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    :catch_14b
    move-exception p1

    .line 52
    throw p1

    .line 53
    :cond_14d
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgf;

    .line 54
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Resource is compressed: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v5, v2}, Lcom/google/android/gms/internal/ads/zzgf;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    :catch_15d
    move-exception p1

    .line 55
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgf;

    .line 56
    invoke-direct {v0, v5, p1, v2}, Lcom/google/android/gms/internal/ads/zzgf;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    .line 57
    :catch_164
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgf;

    const-string v0, "Resource identifier must be an integer."

    .line 58
    invoke-direct {p1, v0, v5, v3}, Lcom/google/android/gms/internal/ads/zzgf;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1
.end method
