###### Class com.google.android.gms.internal.ads.zzgox (com.google.android.gms.internal.ads.zzgox)
.class final Lcom/google/android/gms/internal/ads/zzgox;
.super Lcom/google/android/gms/internal/ads/zzgpa;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final t:I

.field private final u:I


# direct methods
.method constructor <init>([BII)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgpa;-><init>([B)V

    add-int v0, p2, p3

    array-length p1, p1

    .line 2
    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzgpe;->C(III)I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgox;->t:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzgox;->u:I

    return-void
.end method


# virtual methods
.method protected final Q()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgox;->t:I

    return v0
.end method

.method public final l(I)B
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgox;->u:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgpe;->g(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpa;->s:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgox;->t:I

    add-int/2addr v1, p1

    .line 2
    aget-byte p1, v0, v1

    return p1
.end method

.method final m(I)B
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpa;->s:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgox;->t:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method public final o()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgox;->u:I

    return v0
.end method

.method protected final p([BIII)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpa;->s:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgox;->t:I

    add-int/2addr v1, p2

    invoke-static {v0, v1, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
