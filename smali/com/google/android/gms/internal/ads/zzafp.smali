###### Class com.google.android.gms.internal.ads.zzafp (com.google.android.gms.internal.ads.zzafp)
.class final Lcom/google/android/gms/internal/ads/zzafp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzafm;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzen;

.field private final b:I

.field private final c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzafi;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzafi;->b:Lcom/google/android/gms/internal/ads/zzen;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafp;->a:Lcom/google/android/gms/internal/ads/zzen;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->v()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->c:I

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->v()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzafp;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->c:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->a:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v0

    return v0

    :cond_d
    const/16 v1, 0x10

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->a:Lcom/google/android/gms/internal/ads/zzen;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->w()I

    move-result v0

    return v0

    :cond_18
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzafp;->d:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->a:Lcom/google/android/gms/internal/ads/zzen;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->e:I

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    return v0

    :cond_2f
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->e:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public final zza()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public final zzb()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzafp;->b:I

    return v0
.end method
