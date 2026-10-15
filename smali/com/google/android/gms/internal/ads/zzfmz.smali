###### Class com.google.android.gms.internal.ads.zzfmz (com.google.android.gms.internal.ads.zzfmz)
.class final Lcom/google/android/gms/internal/ads/zzfmz;
.super Lcom/google/android/gms/internal/ads/zzfnq;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# static fields
.field static final o:Lcom/google/android/gms/internal/ads/zzfmz;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfmz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfmz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfmz;->o:Lcom/google/android/gms/internal/ads/zzfmz;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfnq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzfnj;)Lcom/google/android/gms/internal/ads/zzfnq;
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzfmz;->o:Lcom/google/android/gms/internal/ads/zzfmz;

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    const-string p1, ""

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .registers 2

    const v0, 0x79a31aac

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "Optional.absent()"

    return-object v0
.end method
