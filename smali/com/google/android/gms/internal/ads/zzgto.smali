###### Class com.google.android.gms.internal.ads.zzgto (com.google.android.gms.internal.ads.zzgto)
.class final Lcom/google/android/gms/internal/ads/zzgto;
.super Lcom/google/android/gms/internal/ads/zzgtp;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method constructor <init>(Lsun/misc/Unsafe;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgtp;-><init>(Lsun/misc/Unsafe;)V

    return-void
.end method


# virtual methods
.method public final a(J)B
    .registers 3

    .line 1
    invoke-static {p1, p2}, Llibcore/io/Memory;->peekByte(J)B

    move-result p1

    return p1
.end method

.method public final b(Ljava/lang/Object;J)D
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgtp;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    return-wide p1
.end method

.method public final c(Ljava/lang/Object;J)F
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgtp;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p1

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1
.end method

.method public final d(J[BJJ)V
    .registers 8

    long-to-int p5, p4

    long-to-int p4, p6

    .line 1
    invoke-static {p1, p2, p3, p5, p4}, Llibcore/io/Memory;->peekByteArray(J[BII)V

    return-void
.end method

.method public final e(Ljava/lang/Object;JZ)V
    .registers 6

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzgtq;->i:Z

    if-eqz v0, :cond_8

    .line 2
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzgtq;->s(Ljava/lang/Object;JZ)V

    return-void

    .line 3
    :cond_8
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzgtq;->t(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public final f(Ljava/lang/Object;JB)V
    .registers 6

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzgtq;->i:Z

    if-eqz v0, :cond_8

    .line 2
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzgtq;->u(Ljava/lang/Object;JB)V

    return-void

    .line 3
    :cond_8
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzgtq;->v(Ljava/lang/Object;JB)V

    return-void
.end method

.method public final g(Ljava/lang/Object;JD)V
    .registers 12

    .line 1
    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgtp;->a:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    .line 2
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public final h(Ljava/lang/Object;JF)V
    .registers 6

    .line 1
    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgtp;->a:Lsun/misc/Unsafe;

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final i(Ljava/lang/Object;J)Z
    .registers 5

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzgtq;->i:Z

    if-eqz v0, :cond_9

    .line 2
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgtq;->E(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 3
    :cond_9
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgtq;->F(Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method
