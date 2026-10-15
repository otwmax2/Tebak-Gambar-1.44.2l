###### Class com.google.android.gms.internal.ads.zzgk (com.google.android.gms.internal.ads.zzgk)
.class public final Lcom/google/android/gms/internal/ads/zzgk;
.super Lcom/google/android/gms/internal/ads/zzfa;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final e:[B

.field private final f:Ljava/net/DatagramPacket;

.field private g:Landroid/net/Uri;

.field private h:Ljava/net/DatagramSocket;

.field private i:Ljava/net/MulticastSocket;

.field private j:Ljava/net/InetAddress;

.field private k:Z

.field private l:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x7d0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgk;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfa;-><init>(Z)V

    const/16 p1, 0x7d0

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->e:[B

    .line 3
    new-instance v1, Ljava/net/DatagramPacket;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Ljava/net/DatagramPacket;-><init>([BII)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgk;->f:Ljava/net/DatagramPacket;

    return-void
.end method


# virtual methods
.method public final a()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->g:Landroid/net/Uri;

    return-object v0
.end method

.method public final d()V
    .registers 4

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->g:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgk;->i:Ljava/net/MulticastSocket;

    if-eqz v1, :cond_11

    :try_start_7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgk;->j:Ljava/net/InetAddress;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_9} :catch_f

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_c
    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_f

    :catch_f
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->i:Ljava/net/MulticastSocket;

    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgk;->h:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_1a

    .line 4
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->h:Ljava/net/DatagramSocket;

    :cond_1a
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->j:Ljava/net/InetAddress;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->l:I

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzgk;->k:Z

    if-eqz v1, :cond_28

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->k:Z

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfa;->n()V

    :cond_28
    return-void
.end method

.method public final e([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgj;
        }
    .end annotation

    if-nez p3, :cond_4

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->l:I

    if-nez v0, :cond_30

    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->h:Ljava/net/DatagramSocket;
    :try_end_a
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_a} :catch_27
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_a} :catch_1e

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgk;->f:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_12
    .catch Ljava/net/SocketTimeoutException; {:try_start_d .. :try_end_12} :catch_27
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_1e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->f:Ljava/net/DatagramPacket;

    .line 4
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->l:I

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfa;->w(I)V

    goto :goto_30

    :catch_1e
    move-exception p1

    .line 6
    new-instance p2, Lcom/google/android/gms/internal/ads/zzgj;

    const/16 p3, 0x7d1

    .line 7
    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzgj;-><init>(Ljava/lang/Throwable;I)V

    throw p2

    :catch_27
    move-exception p1

    .line 8
    new-instance p2, Lcom/google/android/gms/internal/ads/zzgj;

    const/16 p3, 0x7d2

    .line 9
    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzgj;-><init>(Ljava/lang/Throwable;I)V

    throw p2

    .line 10
    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->f:Ljava/net/DatagramPacket;

    .line 11
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgk;->l:I

    sub-int/2addr v0, v1

    .line 12
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgk;->e:[B

    .line 13
    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzgk;->l:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgk;->l:I

    return p3
.end method

.method public final j(Lcom/google/android/gms/internal/ads/zzfl;)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgj;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfl;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->g:Landroid/net/Uri;

    .line 2
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgk;->g:Landroid/net/Uri;

    .line 5
    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    move-result v1

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfa;->o(Lcom/google/android/gms/internal/ads/zzfl;)V

    .line 7
    :try_start_14
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->j:Ljava/net/InetAddress;

    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgk;->j:Ljava/net/InetAddress;

    .line 8
    invoke-direct {v0, v2, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgk;->j:Ljava/net/InetAddress;

    .line 9
    invoke-virtual {v1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 10
    new-instance v1, Ljava/net/MulticastSocket;

    invoke-direct {v1, v0}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgk;->i:Ljava/net/MulticastSocket;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->j:Ljava/net/InetAddress;

    .line 11
    invoke-virtual {v1, v0}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->i:Ljava/net/MulticastSocket;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->h:Ljava/net/DatagramSocket;

    goto :goto_41

    .line 12
    :cond_3a
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1, v0}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgk;->h:Ljava/net/DatagramSocket;

    .line 13
    :goto_41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->h:Ljava/net/DatagramSocket;

    const/16 v1, 0x1f40

    .line 14
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_48
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_48} :catch_5a
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_48} :catch_51

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->k:Z

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfa;->p(Lcom/google/android/gms/internal/ads/zzfl;)V

    const-wide/16 v0, -0x1

    return-wide v0

    :catch_51
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgj;

    const/16 v1, 0x7d1

    .line 16
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzgj;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    :catch_5a
    move-exception p1

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgj;

    const/16 v1, 0x7d6

    .line 18
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzgj;-><init>(Ljava/lang/Throwable;I)V

    throw v0
.end method
