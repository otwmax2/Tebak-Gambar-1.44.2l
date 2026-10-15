###### Class com.google.android.gms.internal.ads.zzzt (com.google.android.gms.internal.ads.zzzt)
.class public final Lcom/google/android/gms/internal/ads/zzzt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzabb;


# instance fields
.field private final a:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzt;->a:[B

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzen;II)V
    .registers 4

    .line 1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    return-void
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/ads/zzr;IZ)I
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaaz;->a(Lcom/google/android/gms/internal/ads/zzabb;Lcom/google/android/gms/internal/ads/zzr;IZ)I

    move-result p1

    return p1
.end method

.method public final c(Lcom/google/android/gms/internal/ads/zzr;IZI)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p4, 0x1000

    .line 1
    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzzt;->a:[B

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, p4, v0, p2}, Lcom/google/android/gms/internal/ads/zzr;->e([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_19

    if-eqz p3, :cond_13

    return p2

    .line 3
    :cond_13
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_19
    return p1
.end method

.method public final synthetic d(Lcom/google/android/gms/internal/ads/zzen;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaaz;->b(Lcom/google/android/gms/internal/ads/zzabb;Lcom/google/android/gms/internal/ads/zzen;I)V

    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/ads/zzaf;)V
    .registers 2

    return-void
.end method

.method public final f(JIIILcom/google/android/gms/internal/ads/zzaba;)V
    .registers 7

    return-void
.end method
