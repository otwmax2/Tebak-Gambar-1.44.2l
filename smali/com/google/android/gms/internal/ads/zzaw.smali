###### Class com.google.android.gms.internal.ads.zzaw (com.google.android.gms.internal.ads.zzaw)
.class public final Lcom/google/android/gms/internal/ads/zzaw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field public static final f:Lcom/google/android/gms/internal/ads/zzaw;

.field private static final g:Ljava/lang/String;

.field private static final h:Ljava/lang/String;

.field private static final i:Ljava/lang/String;

.field private static final j:Ljava/lang/String;

.field private static final k:Ljava/lang/String;

.field public static final l:Lcom/google/android/gms/internal/ads/zzn;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:F

.field public final e:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzau;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzau;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaw;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzaw;-><init>(Lcom/google/android/gms/internal/ads/zzau;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzaw;->f:Lcom/google/android/gms/internal/ads/zzaw;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaw;->g:Ljava/lang/String;

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaw;->h:Ljava/lang/String;

    const/4 v0, 0x2

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaw;->i:Ljava/lang/String;

    const/4 v0, 0x3

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaw;->j:Ljava/lang/String;

    const/4 v0, 0x4

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaw;->k:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzat;->a:Lcom/google/android/gms/internal/ads/zzat;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaw;->l:Lcom/google/android/gms/internal/ads/zzn;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzau;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaw;->a:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaw;->b:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaw;->c:J

    const p1, -0x800001

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaw;->d:F

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaw;->e:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzau;Lcom/google/android/gms/internal/ads/zzav;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaw;-><init>(Lcom/google/android/gms/internal/ads/zzau;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzaw;

    if-nez v1, :cond_a

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaw;

    .line 3
    iget-wide v1, p1, Lcom/google/android/gms/internal/ads/zzaw;->a:J

    return v0
.end method

.method public final hashCode()I
    .registers 4

    const-wide v0, -0x7fffffff7fffffffL    # -1.060997896E-314

    long-to-int v1, v0

    mul-int/lit8 v0, v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    const v1, -0x800001

    .line 1
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

###### Class com.google.android.gms.internal.ads.zzat (com.google.android.gms.internal.ads.zzat)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzat;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzn;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzat;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzat;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzat;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzat;->a:Lcom/google/android/gms/internal/ads/zzat;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
