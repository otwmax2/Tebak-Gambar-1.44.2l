###### Class com.google.android.gms.internal.ads.zzayd (com.google.android.gms.internal.ads.zzayd)
.class final Lcom/google/android/gms/internal/ads/zzayd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgqq;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/zzgqq;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzayd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzayd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzayd;->a:Lcom/google/android/gms/internal/ads/zzgqq;

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

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaye;->a(I)I

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method
