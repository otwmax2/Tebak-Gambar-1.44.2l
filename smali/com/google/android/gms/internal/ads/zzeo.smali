###### Class com.google.android.gms.internal.ads.zzeo (com.google.android.gms.internal.ads.zzeo)
.class public final Lcom/google/android/gms/internal/ads/zzeo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field public static final c:Lcom/google/android/gms/internal/ads/zzeo;

.field public static final d:Lcom/google/android/gms/internal/ads/zzeo;


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeo;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzeo;-><init>(II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeo;->c:Lcom/google/android/gms/internal/ads/zzeo;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeo;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzeo;-><init>(II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeo;->d:Lcom/google/android/gms/internal/ads/zzeo;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_a

    if-ltz p1, :cond_f

    :cond_a
    if-eq p2, v2, :cond_e

    if-ltz p2, :cond_f

    :cond_e
    const/4 v0, 0x1

    :cond_f
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->d(Z)V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzeo;->a:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzeo;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeo;->b:I

    return v0
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeo;->a:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    return v1

    .line 1
    :cond_8
    instance-of v2, p1, Lcom/google/android/gms/internal/ads/zzeo;

    if-eqz v2, :cond_1b

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeo;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzeo;->a:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzeo;->a:I

    if-ne v2, v3, :cond_1b

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzeo;->b:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzeo;->b:I

    if-ne v2, p1, :cond_1b

    return v1

    :cond_1b
    return v0
.end method

.method public final hashCode()I
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeo;->b:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzeo;->a:I

    shl-int/lit8 v2, v1, 0x10

    ushr-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeo;->a:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzeo;->b:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
