###### Class com.google.android.gms.internal.ads.zzd (com.google.android.gms.internal.ads.zzd)
.class public final Lcom/google/android/gms/internal/ads/zzd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field public static final d:Lcom/google/android/gms/internal/ads/zzd;

.field private static final e:Lcom/google/android/gms/internal/ads/zzc;

.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/lang/String;

.field private static final h:Ljava/lang/String;

.field private static final i:Ljava/lang/String;

.field public static final j:Lcom/google/android/gms/internal/ads/zzn;


# instance fields
.field public final a:I

.field public final b:J

.field private final c:[Lcom/google/android/gms/internal/ads/zzc;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 1
    new-instance v8, Lcom/google/android/gms/internal/ads/zzd;

    const/4 v9, 0x0

    new-array v2, v9, [Lcom/google/android/gms/internal/ads/zzc;

    const/4 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzd;-><init>(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/zzc;JJI)V

    sput-object v8, Lcom/google/android/gms/internal/ads/zzd;->d:Lcom/google/android/gms/internal/ads/zzd;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzc;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzc;-><init>(J)V

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzc;->b(I)Lcom/google/android/gms/internal/ads/zzc;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzd;->e:Lcom/google/android/gms/internal/ads/zzc;

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzd;->f:Ljava/lang/String;

    const/4 v0, 0x2

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzd;->g:Ljava/lang/String;

    const/4 v0, 0x3

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzd;->h:Ljava/lang/String;

    const/4 v0, 0x4

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzd;->i:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ads/zza;->a:Lcom/google/android/gms/internal/ads/zza;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzd;->j:Lcom/google/android/gms/internal/ads/zzn;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/zzc;JJI)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 p3, 0x0

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzd;->b:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzd;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzd;->c:[Lcom/google/android/gms/internal/ads/zzc;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/ads/zzc;
    .registers 3

    if-gez p1, :cond_5

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzd;->e:Lcom/google/android/gms/internal/ads/zzc;

    goto :goto_9

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzd;->c:[Lcom/google/android/gms/internal/ads/zzc;

    aget-object p1, v0, p1

    :goto_9
    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_24

    .line 1
    const-class v2, Lcom/google/android/gms/internal/ads/zzd;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_24

    :cond_10
    check-cast p1, Lcom/google/android/gms/internal/ads/zzd;

    const/4 v2, 0x0

    .line 2
    invoke-static {v2, v2}, Lcom/google/android/gms/internal/ads/zzew;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzd;->c:[Lcom/google/android/gms/internal/ads/zzc;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzd;->c:[Lcom/google/android/gms/internal/ads/zzc;

    .line 3
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    return v0

    :cond_24
    :goto_24
    return v1
.end method

.method public final hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzd;->c:[Lcom/google/android/gms/internal/ads/zzc;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    long-to-int v2, v1

    mul-int/lit16 v2, v2, 0x3c1

    add-int/2addr v2, v0

    return v2
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdPlaybackState(adsId="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adResumePositionUs=0, adGroups=["

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "])"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zza (com.google.android.gms.internal.ads.zza)
.class public final synthetic Lcom/google/android/gms/internal/ads/zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzn;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zza;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zza;->a:Lcom/google/android/gms/internal/ads/zza;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
