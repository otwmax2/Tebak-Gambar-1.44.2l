###### Class com.google.android.gms.internal.ads.zzvs (com.google.android.gms.internal.ads.zzvs)
.class public final Lcom/google/android/gms/internal/ads/zzvs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field public static final d:Lcom/google/android/gms/internal/ads/zzn;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzvs;->a:Ljava/lang/String;

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzvs;->b:Ljava/lang/String;

    const/4 v0, 0x2

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzvs;->c:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzvr;->a:Lcom/google/android/gms/internal/ads/zzvr;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzvs;->d:Lcom/google/android/gms/internal/ads/zzn;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method public final hashCode()I
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

###### Class com.google.android.gms.internal.ads.zzvr (com.google.android.gms.internal.ads.zzvr)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzvr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzn;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzvr;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzvr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzvr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzvr;->a:Lcom/google/android/gms/internal/ads/zzvr;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
