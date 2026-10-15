###### Class com.google.android.gms.internal.ads.zzfnf (com.google.android.gms.internal.ads.zzfnf)
.class final Lcom/google/android/gms/internal/ads/zzfnf;
.super Lcom/google/android/gms/internal/ads/zzfne;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# static fields
.field static final p:Lcom/google/android/gms/internal/ads/zzfnf;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfnf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfnf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfnf;->p:Lcom/google/android/gms/internal/ads/zzfnf;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const-string v0, "CharMatcher.none()"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfne;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final b(C)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
