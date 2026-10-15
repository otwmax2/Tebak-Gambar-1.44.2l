###### Class com.google.android.gms.internal.ads.zzda (com.google.android.gms.internal.ads.zzda)
.class public final Lcom/google/android/gms/internal/ads/zzda;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field public static final e:Lcom/google/android/gms/internal/ads/zzda;

.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/lang/String;

.field private static final h:Ljava/lang/String;

.field private static final i:Ljava/lang/String;

.field public static final j:Lcom/google/android/gms/internal/ads/zzn;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzda;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/google/android/gms/internal/ads/zzda;-><init>(IIIF)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzda;->e:Lcom/google/android/gms/internal/ads/zzda;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzda;->f:Ljava/lang/String;

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzda;->g:Ljava/lang/String;

    const/4 v0, 0x2

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzda;->h:Ljava/lang/String;

    const/4 v0, 0x3

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzda;->i:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcz;->a:Lcom/google/android/gms/internal/ads/zzcz;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzda;->j:Lcom/google/android/gms/internal/ads/zzn;

    return-void
.end method

.method public constructor <init>(IIIF)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzda;->a:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzda;->b:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzda;->c:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzda;->d:F

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
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzda;

    const/4 v2, 0x0

    if-eqz v1, :cond_26

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzda;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzda;->a:I

    .line 3
    iget v3, p1, Lcom/google/android/gms/internal/ads/zzda;->a:I

    if-ne v1, v3, :cond_26

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzda;->b:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzda;->b:I

    if-ne v1, v3, :cond_26

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzda;->c:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzda;->c:I

    if-ne v1, v3, :cond_26

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzda;->d:F

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzda;->d:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_26

    return v0

    :cond_26
    return v2
.end method

.method public final hashCode()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzda;->a:I

    add-int/lit16 v0, v0, 0xd9

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzda;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzda;->c:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzda;->d:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

###### Class com.google.android.gms.internal.ads.zzcz (com.google.android.gms.internal.ads.zzcz)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzcz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzn;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzcz;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcz;->a:Lcom/google/android/gms/internal/ads/zzcz;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
