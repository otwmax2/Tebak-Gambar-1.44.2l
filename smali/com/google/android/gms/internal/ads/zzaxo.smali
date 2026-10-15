###### Class com.google.android.gms.internal.ads.zzaxo (com.google.android.gms.internal.ads.zzaxo)
.class final Lcom/google/android/gms/internal/ads/zzaxo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgqq;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/zzgqq;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaxo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaxo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaxo;->a:Lcom/google/android/gms/internal/ads/zzgqq;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final h(I)Z
    .registers 4

    const/4 v0, 0x1

    if-eqz p1, :cond_a

    if-eq p1, v0, :cond_a

    const/4 v1, 0x2

    if-eq p1, v1, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    return v0
.end method
