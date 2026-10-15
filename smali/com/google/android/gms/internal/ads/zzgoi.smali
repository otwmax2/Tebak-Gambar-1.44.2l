###### Class com.google.android.gms.internal.ads.zzgoi (com.google.android.gms.internal.ads.zzgoi)
.class public final Lcom/google/android/gms/internal/ads/zzgoi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfvo;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzgao;


# direct methods
.method public constructor <init>([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgao;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzgao;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgoi;->a:Lcom/google/android/gms/internal/ads/zzgao;

    return-void
.end method


# virtual methods
.method public final a([B[B)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/16 v1, 0x28

    if-lt v0, v1, :cond_18

    const/16 v1, 0x18

    .line 2
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    add-int/lit8 v0, v0, -0x18

    .line 3
    invoke-static {p1, v1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgoi;->a:Lcom/google/android/gms/internal/ads/zzgao;

    .line 4
    invoke-virtual {v0, p1, v2, p2}, Lcom/google/android/gms/internal/ads/zzgam;->c(Ljava/nio/ByteBuffer;[B[B)[B

    move-result-object p1

    return-object p1

    .line 5
    :cond_18
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "ciphertext too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b([B[B)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    add-int/lit8 v0, v0, 0x28

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x18

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgoe;->a(I)[B

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgoi;->a:Lcom/google/android/gms/internal/ads/zzgao;

    .line 5
    invoke-virtual {v2, v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzgam;->b(Ljava/nio/ByteBuffer;[B[B[B)V

    .line 6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method
