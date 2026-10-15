###### Class com.google.android.gms.internal.ads.zzfz (com.google.android.gms.internal.ads.zzfz)
.class public Lcom/google/android/gms/internal/ads/zzfz;
.super Lcom/google/android/gms/internal/ads/zzfh;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field public final p:Lcom/google/android/gms/internal/ads/zzfl;

.field public final q:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfl;II)V
    .registers 4

    const/16 p2, 0x7d8

    const/4 p3, 0x1

    .line 1
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/zzfz;->b(II)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzfh;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfz;->p:Lcom/google/android/gms/internal/ads/zzfl;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzfz;->q:I

    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzfl;II)V
    .registers 5

    .line 2
    invoke-static {p3, p4}, Lcom/google/android/gms/internal/ads/zzfz;->b(II)I

    move-result p3

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzfh;-><init>(Ljava/lang/Throwable;I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfz;->p:Lcom/google/android/gms/internal/ads/zzfl;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzfz;->q:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfl;II)V
    .registers 5

    .line 3
    invoke-static {p3, p4}, Lcom/google/android/gms/internal/ads/zzfz;->b(II)I

    move-result p3

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzfh;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfz;->p:Lcom/google/android/gms/internal/ads/zzfl;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzfz;->q:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzfl;II)V
    .registers 6

    .line 4
    invoke-static {p4, p5}, Lcom/google/android/gms/internal/ads/zzfz;->b(II)I

    move-result p4

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/internal/ads/zzfh;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfz;->p:Lcom/google/android/gms/internal/ads/zzfl;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzfz;->q:I

    return-void
.end method

.method public static a(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzfl;I)Lcom/google/android/gms/internal/ads/zzfz;
    .registers 7

    .line 1
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 2
    instance-of v1, p0, Ljava/net/SocketTimeoutException;

    const/16 v2, 0x7d1

    const/16 v3, 0x7d7

    if-eqz v1, :cond_f

    const/16 v2, 0x7d2

    goto :goto_26

    .line 3
    :cond_f
    instance-of v1, p0, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_16

    const/16 v2, 0x3ec

    goto :goto_26

    :cond_16
    if-eqz v0, :cond_26

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfnb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cleartext.*not permitted.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/16 v2, 0x7d7

    :cond_26
    :goto_26
    if-ne v2, v3, :cond_2e

    .line 5
    new-instance p2, Lcom/google/android/gms/internal/ads/zzfy;

    .line 6
    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzfy;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzfl;)V

    goto :goto_34

    :cond_2e
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfz;

    .line 7
    invoke-direct {v0, p0, p1, v2, p2}, Lcom/google/android/gms/internal/ads/zzfz;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzfl;II)V

    move-object p2, v0

    :goto_34
    return-object p2
.end method

.method private static b(II)I
    .registers 3

    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_c

    const/4 p0, 0x1

    if-eq p1, p0, :cond_a

    const/16 p0, 0x7d0

    goto :goto_c

    :cond_a
    const/16 p0, 0x7d1

    :cond_c
    :goto_c
    return p0
.end method
