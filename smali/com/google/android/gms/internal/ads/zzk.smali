###### Class com.google.android.gms.internal.ads.zzk (com.google.android.gms.internal.ads.zzk)
.class public final Lcom/google/android/gms/internal/ads/zzk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field public static final c:Lcom/google/android/gms/internal/ads/zzk;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/lang/String;

.field private static final h:Ljava/lang/String;

.field public static final i:Lcom/google/android/gms/internal/ads/zzn;


# instance fields
.field public final a:I

.field private b:Lcom/google/android/gms/internal/ads/zzi;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 1
    new-instance v7, Lcom/google/android/gms/internal/ads/zzk;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzk;-><init>(IIIIILcom/google/android/gms/internal/ads/zzj;)V

    sput-object v7, Lcom/google/android/gms/internal/ads/zzk;->c:Lcom/google/android/gms/internal/ads/zzk;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzk;->d:Ljava/lang/String;

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzk;->e:Ljava/lang/String;

    const/4 v0, 0x2

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzk;->f:Ljava/lang/String;

    const/4 v0, 0x3

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzk;->g:Ljava/lang/String;

    const/4 v0, 0x4

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzk;->h:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ads/zze;->a:Lcom/google/android/gms/internal/ads/zze;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzk;->i:Lcom/google/android/gms/internal/ads/zzn;

    return-void
.end method

.method synthetic constructor <init>(IIIIILcom/google/android/gms/internal/ads/zzj;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzk;->a:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzi;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzk;->b:Lcom/google/android/gms/internal/ads/zzi;

    if-nez v0, :cond_c

    new-instance v0, Lcom/google/android/gms/internal/ads/zzi;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzi;-><init>(Lcom/google/android/gms/internal/ads/zzk;Lcom/google/android/gms/internal/ads/zzh;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzk;->b:Lcom/google/android/gms/internal/ads/zzi;

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzk;->b:Lcom/google/android/gms/internal/ads/zzi;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    if-eqz p1, :cond_12

    .line 1
    const-class v1, Lcom/google/android/gms/internal/ads/zzk;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_f

    goto :goto_12

    :cond_f
    check-cast p1, Lcom/google/android/gms/internal/ads/zzk;

    return v0

    :cond_12
    :goto_12
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .registers 2

    const v0, 0x1d02666f

    return v0
.end method

###### Class com.google.android.gms.internal.ads.zze (com.google.android.gms.internal.ads.zze)
.class public final synthetic Lcom/google/android/gms/internal/ads/zze;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzn;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zze;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zze;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zze;->a:Lcom/google/android/gms/internal/ads/zze;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
