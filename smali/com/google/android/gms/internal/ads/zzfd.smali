###### Class com.google.android.gms.internal.ads.zzfd (com.google.android.gms.internal.ads.zzfd)
.class public final Lcom/google/android/gms/internal/ads/zzfd;
.super Lcom/google/android/gms/internal/ads/zzfa;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final e:Landroid/content/ContentResolver;

.field private f:Landroid/net/Uri;

.field private g:Landroid/content/res/AssetFileDescriptor;

.field private h:Ljava/io/FileInputStream;

.field private i:J

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfa;-><init>(Z)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfd;->e:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public final a()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfd;->f:Landroid/net/Uri;

    return-object v0
.end method

.method public final d()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfc;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfd;->f:Landroid/net/Uri;

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    :try_start_6
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfd;->h:Ljava/io/FileInputStream;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_39
    .catchall {:try_start_6 .. :try_end_d} :catchall_37

    :cond_d
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfd;->h:Ljava/io/FileInputStream;

    :try_start_f
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfd;->g:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_16

    .line 2
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_16} :catch_24
    .catchall {:try_start_f .. :try_end_16} :catchall_22

    :cond_16
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfd;->g:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfd;->j:Z

    if-eqz v0, :cond_21

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzfd;->j:Z

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
    new-instance v4, Lcom/google/android/gms/internal/ads/zzfc;

    .line 5
    invoke-direct {v4, v3, v1}, Lcom/google/android/gms/internal/ads/zzfc;-><init>(Ljava/io/IOException;I)V

    throw v4
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_22

    :goto_2b
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfd;->g:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfd;->j:Z

    if-eqz v0, :cond_36

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzfd;->j:Z

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
    new-instance v4, Lcom/google/android/gms/internal/ads/zzfc;

    .line 9
    invoke-direct {v4, v3, v1}, Lcom/google/android/gms/internal/ads/zzfc;-><init>(Ljava/io/IOException;I)V

    throw v4
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_37

    :goto_40
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfd;->h:Ljava/io/FileInputStream;

    :try_start_42
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfd;->g:Landroid/content/res/AssetFileDescriptor;

    if-eqz v4, :cond_49

    .line 10
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_49} :catch_57
    .catchall {:try_start_42 .. :try_end_49} :catchall_55

    :cond_49
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfd;->g:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfd;->j:Z

    if-eqz v0, :cond_54

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzfd;->j:Z

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
    new-instance v4, Lcom/google/android/gms/internal/ads/zzfc;

    .line 14
    invoke-direct {v4, v3, v1}, Lcom/google/android/gms/internal/ads/zzfc;-><init>(Ljava/io/IOException;I)V

    throw v4
    :try_end_5e
    .catchall {:try_start_58 .. :try_end_5e} :catchall_55

    :goto_5e
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfd;->g:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfd;->j:Z

    if-nez v0, :cond_65

    goto :goto_6a

    .line 15
    :cond_65
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzfd;->j:Z

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfa;->n()V

    .line 17
    :goto_6a
    throw v1
.end method

.method public final e([BII)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfc;
        }
    .end annotation

    if-nez p3, :cond_4

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_4
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfd;->i:J

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_3b

    const-wide/16 v2, -0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_19

    int-to-long v5, p3

    :try_start_14
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfd;->h:Ljava/io/FileInputStream;

    .line 2
    sget v1, Lcom/google/android/gms/internal/ads/zzew;->a:I

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result p1
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_21} :catch_32

    if-ne p1, v4, :cond_24

    return v4

    :cond_24
    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzfd;->i:J

    cmp-long v0, p2, v2

    if-eqz v0, :cond_2e

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzfd;->i:J

    .line 3
    :cond_2e
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfa;->w(I)V

    return p1

    :catch_32
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfc;

    const/16 p3, 0x7d0

    .line 4
    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzfc;-><init>(Ljava/io/IOException;I)V

    throw p2

    :cond_3b
    return v4
.end method

.method public final j(Lcom/google/android/gms/internal/ads/zzfl;)J
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfc;
        }
    .end annotation

    const/16 v0, 0x7d0

    const/4 v1, 0x1

    .line 1
    :try_start_3
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzfl;->a:Landroid/net/Uri;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzfd;->f:Landroid/net/Uri;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfa;->o(Lcom/google/android/gms/internal/ads/zzfl;)V

    const-string v3, "content"

    .line 3
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzfl;->a:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    new-instance v3, Landroid/os/Bundle;

    .line 4
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT"

    .line 5
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfd;->e:Landroid/content/ContentResolver;

    const-string v5, "*/*"

    .line 6
    invoke-virtual {v4, v2, v5, v3}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    goto :goto_33

    .line 7
    :cond_2b
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfd;->e:Landroid/content/ContentResolver;

    const-string v4, "r"

    .line 8
    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    .line 9
    :goto_33
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzfd;->g:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_cb

    .line 10
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    new-instance v2, Ljava/io/FileInputStream;

    .line 11
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzfd;->h:Ljava/io/FileInputStream;

    const/16 v6, 0x7d8

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    cmp-long v10, v4, v8

    if-eqz v10, :cond_5c

    .line 12
    iget-wide v10, p1, Lcom/google/android/gms/internal/ads/zzfl;->f:J

    cmp-long v12, v10, v4

    if-gtz v12, :cond_56

    goto :goto_5c

    .line 13
    :cond_56
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfc;

    .line 14
    invoke-direct {p1, v7, v6}, Lcom/google/android/gms/internal/ads/zzfc;-><init>(Ljava/io/IOException;I)V

    throw p1

    .line 15
    :cond_5c
    :goto_5c
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v10

    .line 16
    iget-wide v12, p1, Lcom/google/android/gms/internal/ads/zzfl;->f:J

    add-long/2addr v12, v10

    .line 17
    invoke-virtual {v2, v12, v13}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v12

    sub-long/2addr v12, v10

    .line 18
    iget-wide v10, p1, Lcom/google/android/gms/internal/ads/zzfl;->f:J

    cmp-long v3, v12, v10

    if-nez v3, :cond_c5

    const-wide/16 v10, 0x0

    cmp-long v3, v4, v8

    if-nez v3, :cond_96

    .line 19
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 20
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    cmp-long v5, v3, v10

    if-nez v5, :cond_84

    iput-wide v8, p0, Lcom/google/android/gms/internal/ads/zzfd;->i:J

    move-wide v3, v8

    goto :goto_9f

    .line 21
    :cond_84
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v12

    sub-long/2addr v3, v12

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzfd;->i:J

    cmp-long v2, v3, v10

    if-ltz v2, :cond_90

    goto :goto_9f

    .line 22
    :cond_90
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfc;

    .line 23
    invoke-direct {p1, v7, v6}, Lcom/google/android/gms/internal/ads/zzfc;-><init>(Ljava/io/IOException;I)V

    throw p1

    :cond_96
    sub-long v2, v4, v12

    .line 24
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzfd;->i:J
    :try_end_9a
    .catch Lcom/google/android/gms/internal/ads/zzfc; {:try_start_3 .. :try_end_9a} :catch_f9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_9a} :catch_eb

    cmp-long v4, v2, v10

    if-ltz v4, :cond_bf

    move-wide v3, v2

    .line 25
    :goto_9f
    iget-wide v5, p1, Lcom/google/android/gms/internal/ads/zzfl;->g:J

    cmp-long v0, v5, v8

    if-eqz v0, :cond_b0

    cmp-long v0, v3, v8

    if-nez v0, :cond_aa

    goto :goto_ae

    .line 26
    :cond_aa
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 27
    :goto_ae
    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzfd;->i:J

    :cond_b0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzfd;->j:Z

    .line 28
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfa;->p(Lcom/google/android/gms/internal/ads/zzfl;)V

    .line 29
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzfl;->g:J

    cmp-long p1, v0, v8

    if-eqz p1, :cond_bc

    return-wide v0

    :cond_bc
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfd;->i:J

    return-wide v0

    .line 30
    :cond_bf
    :try_start_bf
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfc;

    .line 31
    invoke-direct {p1, v7, v6}, Lcom/google/android/gms/internal/ads/zzfc;-><init>(Ljava/io/IOException;I)V

    throw p1

    .line 32
    :cond_c5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfc;

    .line 33
    invoke-direct {p1, v7, v6}, Lcom/google/android/gms/internal/ads/zzfc;-><init>(Ljava/io/IOException;I)V

    throw p1

    .line 34
    :cond_cb
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfc;

    new-instance v3, Ljava/io/IOException;

    .line 35
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not open file descriptor for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzfc;-><init>(Ljava/io/IOException;I)V

    throw p1
    :try_end_eb
    .catch Lcom/google/android/gms/internal/ads/zzfc; {:try_start_bf .. :try_end_eb} :catch_f9
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_eb} :catch_eb

    :catch_eb
    move-exception p1

    .line 36
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfc;

    .line 37
    instance-of v3, p1, Ljava/io/FileNotFoundException;

    if-eq v1, v3, :cond_f3

    goto :goto_f5

    :cond_f3
    const/16 v0, 0x7d5

    .line 38
    :goto_f5
    invoke-direct {v2, p1, v0}, Lcom/google/android/gms/internal/ads/zzfc;-><init>(Ljava/io/IOException;I)V

    throw v2

    :catch_f9
    move-exception p1

    .line 39
    throw p1
.end method
