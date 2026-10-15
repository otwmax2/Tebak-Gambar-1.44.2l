###### Class com.google.android.gms.internal.ads.zznq (com.google.android.gms.internal.ads.zznq)
.class public final Lcom/google/android/gms/internal/ads/zznq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field public static final c:Lcom/google/android/gms/internal/ads/zznq;

.field private static final d:Lcom/google/android/gms/internal/ads/zznq;

.field private static final e:Lcom/google/android/gms/internal/ads/zzfqn;


# instance fields
.field private final a:[I

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zznq;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zznq;-><init>([II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zznq;->c:Lcom/google/android/gms/internal/ads/zznq;

    new-instance v0, Lcom/google/android/gms/internal/ads/zznq;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_64

    .line 2
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zznq;-><init>([II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zznq;->d:Lcom/google/android/gms/internal/ads/zznq;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfqm;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfqm;-><init>()V

    const/4 v1, 0x5

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzfqm;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqm;

    const/16 v1, 0x11

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzfqm;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqm;

    const/4 v1, 0x7

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzfqm;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqm;

    const/16 v1, 0x12

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzfqm;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqm;

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzfqm;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqm;

    .line 9
    invoke-virtual {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzfqm;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqm;

    const/16 v2, 0xe

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfqm;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqm;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfqm;->c()Lcom/google/android/gms/internal/ads/zzfqn;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zznq;->e:Lcom/google/android/gms/internal/ads/zzfqn;

    return-void

    nop

    :array_64
    .array-data 4
        0x2
        0x5
        0x6
    .end array-data
.end method

.method public constructor <init>([II)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length p2, p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznq;->a:[I

    .line 2
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    const/16 p1, 0x8

    iput p1, p0, Lcom/google/android/gms/internal/ads/zznq;->b:I

    return-void
.end method

.method static bridge synthetic b()Lcom/google/android/gms/internal/ads/zzfqn;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zznq;->e:Lcom/google/android/gms/internal/ads/zzfqn;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzaf;)Landroid/util/Pair;
    .registers 11

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzaf;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbt;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zznq;->e:Lcom/google/android/gms/internal/ads/zzfqn;

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfqn;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_19

    return-object v3

    :cond_19
    const/4 v2, 0x7

    const/4 v4, 0x6

    const/16 v5, 0x8

    const/16 v6, 0x12

    if-ne v0, v6, :cond_2b

    .line 5
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/zznq;->c(I)Z

    move-result v0

    if-nez v0, :cond_29

    const/4 v0, 0x6

    goto :goto_34

    :cond_29
    const/16 v0, 0x12

    :cond_2b
    if-ne v0, v5, :cond_34

    .line 6
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/ads/zznq;->c(I)Z

    move-result v7

    if-nez v7, :cond_34

    const/4 v0, 0x7

    .line 7
    :cond_34
    :goto_34
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zznq;->c(I)Z

    move-result v7

    if-nez v7, :cond_3b

    return-object v3

    .line 8
    :cond_3b
    iget v7, p1, Lcom/google/android/gms/internal/ads/zzaf;->y:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_46

    if-ne v0, v6, :cond_43

    goto :goto_46

    :cond_43
    if-le v7, v5, :cond_6e

    return-object v3

    .line 9
    :cond_46
    :goto_46
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzaf;->z:I

    if-ne p1, v8, :cond_4d

    const p1, 0xbb80

    .line 10
    :cond_4d
    sget v6, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v7, 0x1d

    if-lt v6, v7, :cond_58

    .line 11
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zznp;->a(II)I

    move-result v7

    goto :goto_6e

    .line 12
    :cond_58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, p1, v6}, Lcom/google/android/gms/internal/ads/zzfqn;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 13
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 15
    :cond_6e
    :goto_6e
    sget p1, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v1, 0x1c

    if-gt p1, v1, :cond_83

    if-ne v7, v2, :cond_79

    const/16 v4, 0x8

    goto :goto_84

    :cond_79
    const/4 v1, 0x3

    if-eq v7, v1, :cond_84

    const/4 v1, 0x4

    if-eq v7, v1, :cond_84

    const/4 v1, 0x5

    if-ne v7, v1, :cond_83

    goto :goto_84

    :cond_83
    move v4, v7

    :cond_84
    :goto_84
    const/16 v1, 0x1a

    if-gt p1, v1, :cond_96

    sget-object p1, Lcom/google/android/gms/internal/ads/zzew;->b:Ljava/lang/String;

    const-string v1, "fugu"

    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_96

    const/4 p1, 0x1

    if-ne v4, p1, :cond_96

    const/4 v4, 0x2

    :cond_96
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzew;->U(I)I

    move-result p1

    if-nez p1, :cond_9d

    return-object v3

    .line 17
    :cond_9d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final c(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznq;->a:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-ltz p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zznq;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 2
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/ads/zznq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zznq;->a:[I

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zznq;->a:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_17

    return v0

    :cond_17
    return v2
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznq;->a:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznq;->a:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioCapabilities[maxChannelCount=8, supportedEncodings="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
