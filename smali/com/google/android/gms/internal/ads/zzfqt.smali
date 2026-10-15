###### Class com.google.android.gms.internal.ads.zzfqt (com.google.android.gms.internal.ads.zzfqt)
.class final enum Lcom/google/android/gms/internal/ads/zzfqt;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/util/Iterator;


# static fields
.field public static final enum o:Lcom/google/android/gms/internal/ads/zzfqt;

.field private static final synthetic p:[Lcom/google/android/gms/internal/ads/zzfqt;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfqt;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfqt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfqt;->o:Lcom/google/android/gms/internal/ads/zzfqt;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzfqt;

    aput-object v0, v1, v2

    sput-object v1, Lcom/google/android/gms/internal/ads/zzfqt;->p:[Lcom/google/android/gms/internal/ads/zzfqt;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    const-string p1, "INSTANCE"

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzfqt;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfqt;->p:[Lcom/google/android/gms/internal/ads/zzfqt;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzfqt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzfqt;

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 2

    .line 1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .registers 3

    const/4 v0, 0x0

    const-string v1, "no calls to next() since the last call to remove()"

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfnu;->i(ZLjava/lang/Object;)V

    return-void
.end method
