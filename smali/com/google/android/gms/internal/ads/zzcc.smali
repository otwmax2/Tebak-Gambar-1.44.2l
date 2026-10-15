###### Class com.google.android.gms.internal.ads.zzcc (com.google.android.gms.internal.ads.zzcc)
.class public final Lcom/google/android/gms/internal/ads/zzcc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field public static final b:Lcom/google/android/gms/internal/ads/zzcc;

.field private static final c:Ljava/lang/String;

.field public static final d:Lcom/google/android/gms/internal/ads/zzn;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzaa;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzca;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzca;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzca;->e()Lcom/google/android/gms/internal/ads/zzcc;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcc;->b:Lcom/google/android/gms/internal/ads/zzcc;

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcc;->c:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbz;->a:Lcom/google/android/gms/internal/ads/zzbz;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcc;->d:Lcom/google/android/gms/internal/ads/zzn;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzaa;Lcom/google/android/gms/internal/ads/zzcb;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcc;->a:Lcom/google/android/gms/internal/ads/zzaa;

    return-void
.end method

.method static bridge synthetic a(Lcom/google/android/gms/internal/ads/zzcc;)Lcom/google/android/gms/internal/ads/zzaa;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcc;->a:Lcom/google/android/gms/internal/ads/zzaa;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzcc;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcc;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcc;->a:Lcom/google/android/gms/internal/ads/zzaa;

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcc;->a:Lcom/google/android/gms/internal/ads/zzaa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaa;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcc;->a:Lcom/google/android/gms/internal/ads/zzaa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaa;->hashCode()I

    move-result v0

    return v0
.end method

###### Class com.google.android.gms.internal.ads.zzbz (com.google.android.gms.internal.ads.zzbz)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzbz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzn;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzbz;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbz;->a:Lcom/google/android/gms/internal/ads/zzbz;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
