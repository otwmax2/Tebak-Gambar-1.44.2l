###### Class com.google.android.gms.internal.ads.zzan (com.google.android.gms.internal.ads.zzan)
.class public Lcom/google/android/gms/internal/ads/zzan;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field public static final f:Lcom/google/android/gms/internal/ads/zzan;

.field private static final g:Ljava/lang/String;

.field private static final h:Ljava/lang/String;

.field private static final i:Ljava/lang/String;

.field private static final j:Ljava/lang/String;

.field private static final k:Ljava/lang/String;

.field public static final l:Lcom/google/android/gms/internal/ads/zzn;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:Z

.field public final d:Z

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzal;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzal;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzap;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzap;-><init>(Lcom/google/android/gms/internal/ads/zzal;Lcom/google/android/gms/internal/ads/zzao;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzan;->f:Lcom/google/android/gms/internal/ads/zzan;

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzan;->g:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzan;->h:Ljava/lang/String;

    const/4 v0, 0x2

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzan;->i:Ljava/lang/String;

    const/4 v0, 0x3

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzan;->j:Ljava/lang/String;

    const/4 v0, 0x4

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzan;->k:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzak;->a:Lcom/google/android/gms/internal/ads/zzak;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzan;->l:Lcom/google/android/gms/internal/ads/zzn;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzal;Lcom/google/android/gms/internal/ads/zzam;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzan;->a:J

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzan;->b:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzan;->c:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzan;->d:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzan;->e:Z

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
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzan;

    if-nez v1, :cond_a

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/ads/zzan;

    .line 3
    iget-wide v1, p1, Lcom/google/android/gms/internal/ads/zzan;->a:J

    return v0
.end method

.method public final hashCode()I
    .registers 3

    const-wide v0, -0x7fffffff80000000L    # -1.0609978955E-314

    long-to-int v1, v0

    mul-int/lit16 v1, v1, 0x745f

    return v1
.end method

###### Class com.google.android.gms.internal.ads.zzak (com.google.android.gms.internal.ads.zzak)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzak;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzn;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzak;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzak;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzak;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzak;->a:Lcom/google/android/gms/internal/ads/zzak;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
