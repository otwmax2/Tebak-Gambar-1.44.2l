###### Class com.google.android.gms.internal.ads.zzq (com.google.android.gms.internal.ads.zzq)
.class public final Lcom/google/android/gms/internal/ads/zzq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field public static final f:Lcom/google/android/gms/internal/ads/zzq;

.field private static final g:Ljava/lang/String;

.field private static final h:Ljava/lang/String;

.field private static final i:Ljava/lang/String;

.field private static final j:Ljava/lang/String;

.field public static final k:Lcom/google/android/gms/internal/ads/zzn;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:[B

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzq;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzq;-><init>(III[B)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzq;->f:Lcom/google/android/gms/internal/ads/zzq;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzq;->g:Ljava/lang/String;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzq;->h:Ljava/lang/String;

    .line 3
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzq;->i:Ljava/lang/String;

    .line 4
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzq;->j:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzp;->a:Lcom/google/android/gms/internal/ads/zzp;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzq;->k:Lcom/google/android/gms/internal/ads/zzn;

    return-void
.end method

.method public constructor <init>(III[B)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzq;->a:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzq;->b:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzq;->c:I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzq;->d:[B

    return-void
.end method

.method public static a(I)I
    .registers 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_18

    const/16 v0, 0x9

    const/4 v1, 0x6

    if-eq p0, v0, :cond_17

    const/4 v0, 0x4

    if-eq p0, v0, :cond_15

    const/4 v0, 0x5

    if-eq p0, v0, :cond_15

    if-eq p0, v1, :cond_15

    const/4 v0, 0x7

    if-eq p0, v0, :cond_15

    const/4 p0, -0x1

    return p0

    :cond_15
    const/4 p0, 0x2

    return p0

    :cond_17
    return v1

    :cond_18
    return v0
.end method

.method public static b(I)I
    .registers 4
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_15

    const/16 v0, 0x10

    const/4 v1, 0x6

    if-eq p0, v0, :cond_14

    const/16 v0, 0x12

    const/4 v2, 0x7

    if-eq p0, v0, :cond_13

    if-eq p0, v1, :cond_15

    if-eq p0, v2, :cond_15

    const/4 p0, -0x1

    return p0

    :cond_13
    return v2

    :cond_14
    return v1

    :cond_15
    const/4 p0, 0x3

    return p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2f

    .line 1
    const-class v2, Lcom/google/android/gms/internal/ads/zzq;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_2f

    :cond_10
    check-cast p1, Lcom/google/android/gms/internal/ads/zzq;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzq;->a:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzq;->a:I

    if-ne v2, v3, :cond_2f

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzq;->b:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzq;->b:I

    if-ne v2, v3, :cond_2f

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzq;->c:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzq;->c:I

    if-ne v2, v3, :cond_2f

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzq;->d:[B

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzq;->d:[B

    .line 2
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2f

    return v0

    :cond_2f
    :goto_2f
    return v1
.end method

.method public final hashCode()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzq;->e:I

    if-nez v0, :cond_1d

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzq;->a:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzq;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzq;->c:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzq;->d:[B

    mul-int/lit8 v0, v0, 0x1f

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzq;->e:I

    :cond_1d
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzq;->a:I

    const/4 v1, 0x2

    const/4 v2, 0x6

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v0, v3, :cond_1a

    if-eq v0, v2, :cond_17

    if-eq v0, v4, :cond_14

    if-eq v0, v1, :cond_11

    const-string v0, "Undefined color space"

    goto :goto_1c

    :cond_11
    const-string v0, "BT601"

    goto :goto_1c

    :cond_14
    const-string v0, "BT709"

    goto :goto_1c

    :cond_17
    const-string v0, "BT2020"

    goto :goto_1c

    :cond_1a
    const-string v0, "Unset color space"

    :goto_1c
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzq;->b:I

    if-eq v5, v3, :cond_2d

    if-eq v5, v4, :cond_2a

    if-eq v5, v1, :cond_27

    const-string v1, "Undefined color range"

    goto :goto_2f

    :cond_27
    const-string v1, "Limited range"

    goto :goto_2f

    :cond_2a
    const-string v1, "Full range"

    goto :goto_2f

    :cond_2d
    const-string v1, "Unset color range"

    :goto_2f
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzq;->c:I

    if-eq v5, v3, :cond_4c

    if-eq v5, v4, :cond_49

    const/4 v3, 0x3

    if-eq v5, v3, :cond_46

    if-eq v5, v2, :cond_43

    const/4 v2, 0x7

    if-eq v5, v2, :cond_40

    const-string v2, "Undefined color transfer"

    goto :goto_4e

    :cond_40
    const-string v2, "HLG"

    goto :goto_4e

    :cond_43
    const-string v2, "ST2084 PQ"

    goto :goto_4e

    :cond_46
    const-string v2, "SDR SMPTE 170M"

    goto :goto_4e

    :cond_49
    const-string v2, "Linear"

    goto :goto_4e

    :cond_4c
    const-string v2, "Unset color transfer"

    :goto_4e
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzq;->d:[B

    if-eqz v3, :cond_53

    goto :goto_54

    :cond_53
    const/4 v4, 0x0

    :goto_54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ColorInfo("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzp (com.google.android.gms.internal.ads.zzp)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzn;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzp;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzp;->a:Lcom/google/android/gms/internal/ads/zzp;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
