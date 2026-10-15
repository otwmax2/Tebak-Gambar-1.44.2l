###### Class com.google.android.gms.internal.ads.zzawn (com.google.android.gms.internal.ads.zzawn)
.class final Lcom/google/android/gms/internal/ads/zzawn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgqq;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/zzgqq;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzawn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzawn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzawn;->a:Lcom/google/android/gms/internal/ads/zzgqq;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final h(I)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzawo;->c(I)Lcom/google/android/gms/internal/ads/zzawo;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method
