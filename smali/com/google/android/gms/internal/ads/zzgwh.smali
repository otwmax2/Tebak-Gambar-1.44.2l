###### Class com.google.android.gms.internal.ads.zzgwh (com.google.android.gms.internal.ads.zzgwh)
.class public abstract Lcom/google/android/gms/internal/ads/zzgwh;
.super Lcom/google/android/gms/internal/ads/zzgwf;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private y:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2

    const-string p1, "mvhd"

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgwf;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final f()I
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgwf;->q:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgwf;->e()V

    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgwh;->y:I

    return v0
.end method

.method protected final g(Ljava/nio/ByteBuffer;)J
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzama;->c(B)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgwh;->y:I

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzama;->d(Ljava/nio/ByteBuffer;)I

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    const-wide/16 v0, 0x4

    return-wide v0
.end method
