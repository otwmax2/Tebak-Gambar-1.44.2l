###### Class com.google.android.gms.internal.ads.zzdc (com.google.android.gms.internal.ads.zzdc)
.class public final Lcom/google/android/gms/internal/ads/zzdc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field public static final e:Lcom/google/android/gms/internal/ads/zzdc;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdc;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1, v1}, Lcom/google/android/gms/internal/ads/zzdc;-><init>(III)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdc;->e:Lcom/google/android/gms/internal/ads/zzdc;

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdc;->a:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzdc;->b:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzdc;->c:I

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzew;->w(I)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 2
    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/zzew;->Z(II)I

    move-result p1

    goto :goto_15

    :cond_14
    const/4 p1, -0x1

    :goto_15
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdc;->d:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzdc;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 2
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdc;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdc;->a:I

    .line 3
    iget v3, p1, Lcom/google/android/gms/internal/ads/zzdc;->a:I

    if-ne v1, v3, :cond_1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdc;->b:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzdc;->b:I

    if-ne v1, v3, :cond_1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdc;->c:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzdc;->c:I

    if-ne v1, p1, :cond_1f

    return v0

    :cond_1f
    return v2
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdc;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdc;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdc;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdc;->a:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdc;->b:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdc;->c:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioFormat[sampleRate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", channelCount="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", encoding="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
