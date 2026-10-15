###### Class com.google.android.gms.internal.ads.zzfyu (com.google.android.gms.internal.ads.zzfyu)
.class public final Lcom/google/android/gms/internal/ads/zzfyu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field public static final b:Lcom/google/android/gms/internal/ads/zzfyu;

.field public static final c:Lcom/google/android/gms/internal/ads/zzfyu;

.field public static final d:Lcom/google/android/gms/internal/ads/zzfyu;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfyu;

    const-string v1, "TINK"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfyu;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfyu;->b:Lcom/google/android/gms/internal/ads/zzfyu;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfyu;

    const-string v1, "CRUNCHY"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfyu;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfyu;->c:Lcom/google/android/gms/internal/ads/zzfyu;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfyu;

    const-string v1, "NO_PREFIX"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfyu;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfyu;->d:Lcom/google/android/gms/internal/ads/zzfyu;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfyu;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfyu;->a:Ljava/lang/String;

    return-object v0
.end method
