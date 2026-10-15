###### Class com.google.android.gms.internal.ads.zzcwa (com.google.android.gms.internal.ads.zzcwa)
.class public final Lcom/google/android/gms/internal/ads/zzcwa;
.super Lcom/google/android/gms/internal/ads/zzczy;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcwc;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzczy;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final k()V
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcvz;->a:Lcom/google/android/gms/internal/ads/zzcvz;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzczy;->W0(Lcom/google/android/gms/internal/ads/zzczx;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzcvz (com.google.android.gms.internal.ads.zzcvz)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzcvz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzczx;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzcvz;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcvz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcvz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcvz;->a:Lcom/google/android/gms/internal/ads/zzcvz;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcwc;

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcwc;->k()V

    return-void
.end method
