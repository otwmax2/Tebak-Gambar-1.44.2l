###### Class com.google.android.gms.internal.ads.zzabn (com.google.android.gms.internal.ads.zzabn)
.class final Lcom/google/android/gms/internal/ads/zzabn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzabm;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzen;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->o()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzabn;->a:I

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->o()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzabn;->b:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzabn;->c:I

    return-void
.end method
