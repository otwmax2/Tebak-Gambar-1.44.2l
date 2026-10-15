###### Class com.google.android.gms.internal.ads.zzt (com.google.android.gms.internal.ads.zzt)
.class public final Lcom/google/android/gms/internal/ads/zzt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field public static final d:Lcom/google/android/gms/internal/ads/zzt;

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/lang/String;

.field public static final h:Lcom/google/android/gms/internal/ads/zzn;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzt;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/google/android/gms/internal/ads/zzt;-><init>(III)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzt;->d:Lcom/google/android/gms/internal/ads/zzt;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzt;->e:Ljava/lang/String;

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzt;->f:Ljava/lang/String;

    const/4 v0, 0x2

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzt;->g:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzs;->a:Lcom/google/android/gms/internal/ads/zzs;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzt;->h:Lcom/google/android/gms/internal/ads/zzn;

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzt;->a:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzt;->b:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzt;->c:I

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
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzt;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 2
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/ads/zzt;

    .line 3
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzt;->a:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzt;->b:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzt;->b:I

    if-ne v1, v3, :cond_1b

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzt;->c:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzt;->c:I

    if-ne v1, p1, :cond_1b

    return v0

    :cond_1b
    return v2
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzt;->b:I

    add-int/lit16 v0, v0, 0x3fd1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzt;->c:I

    add-int/2addr v0, v1

    return v0
.end method

###### Class com.google.android.gms.internal.ads.zzs (com.google.android.gms.internal.ads.zzs)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzn;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzs;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzs;->a:Lcom/google/android/gms/internal/ads/zzs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
