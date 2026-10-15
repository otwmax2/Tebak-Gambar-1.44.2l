###### Class com.google.android.gms.internal.ads.zzfe (com.google.android.gms.internal.ads.zzfe)
.class public final Lcom/google/android/gms/internal/ads/zzfe;
.super Lcom/google/android/gms/internal/ads/zzfa;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private e:Lcom/google/android/gms/internal/ads/zzfl;

.field private f:[B

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfa;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfe;->e:Lcom/google/android/gms/internal/ads/zzfl;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfl;->a:Landroid/net/Uri;

    return-object v0

    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfe;->f:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfe;->f:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfa;->n()V

    :cond_a
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfe;->e:Lcom/google/android/gms/internal/ads/zzfl;

    return-void
.end method

.method public final e([BII)I
    .registers 6

    if-nez p3, :cond_4

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfe;->h:I

    if-nez v0, :cond_a

    const/4 p1, -0x1

    return p1

    :cond_a
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfe;->f:[B

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfe;->g:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzfe;->g:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfe;->g:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzfe;->h:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfe;->h:I

    .line 3
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzfa;->w(I)V

    return p3
.end method

.method public final j(Lcom/google/android/gms/internal/ads/zzfl;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfa;->o(Lcom/google/android/gms/internal/ads/zzfl;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfe;->e:Lcom/google/android/gms/internal/ads/zzfl;

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfl;->a:Landroid/net/Uri;

    .line 3
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data"

    .line 4
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Unsupported scheme: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzdl;->e(ZLjava/lang/Object;)V

    .line 5
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzew;->I(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 6
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v2, v4, :cond_9a

    const/4 v0, 0x1

    .line 7
    aget-object v0, v1, v0

    const/4 v2, 0x0

    .line 8
    aget-object v1, v1, v2

    const-string v4, ";base64"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 9
    :try_start_3b
    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfe;->f:[B
    :try_end_41
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3b .. :try_end_41} :catch_42

    goto :goto_62

    :catch_42
    move-exception p1

    .line 10
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error while parsing Base64 encoded string: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbu;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p1

    throw p1

    .line 12
    :cond_52
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfnh;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->C(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfe;->f:[B

    .line 13
    :goto_62
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzfl;->f:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfe;->f:[B

    array-length v2, v2

    int-to-long v4, v2

    cmp-long v6, v0, v4

    if-gtz v6, :cond_90

    long-to-int v1, v0

    .line 14
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfe;->g:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzfe;->h:I

    .line 15
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzfl;->g:J

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_82

    int-to-long v5, v2

    .line 16
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfe;->h:I

    .line 17
    :cond_82
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfa;->p(Lcom/google/android/gms/internal/ads/zzfl;)V

    .line 18
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzfl;->g:J

    cmp-long p1, v0, v3

    if-eqz p1, :cond_8c

    return-wide v0

    :cond_8c
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzfe;->h:I

    int-to-long v0, p1

    return-wide v0

    .line 19
    :cond_90
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzfe;->f:[B

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfh;

    const/16 v0, 0x7d8

    .line 20
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzfh;-><init>(I)V

    throw p1

    .line 21
    :cond_9a
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unexpected URI format: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/zzbu;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p1

    throw p1
.end method
