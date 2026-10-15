###### Class com.google.android.gms.internal.ads.zzdrs (com.google.android.gms.internal.ads.zzdrs)
.class public final enum Lcom/google/android/gms/internal/ads/zzdrs;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field public static final enum o:Lcom/google/android/gms/internal/ads/zzdrs;

.field public static final enum p:Lcom/google/android/gms/internal/ads/zzdrs;

.field public static final enum q:Lcom/google/android/gms/internal/ads/zzdrs;

.field private static final synthetic r:[Lcom/google/android/gms/internal/ads/zzdrs;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdrs;

    const-string v1, "AD_REQUESTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdrs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdrs;->o:Lcom/google/android/gms/internal/ads/zzdrs;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdrs;

    const-string v3, "AD_LOADED"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzdrs;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzdrs;->p:Lcom/google/android/gms/internal/ads/zzdrs;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdrs;

    const-string v5, "AD_LOAD_FAILED"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzdrs;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzdrs;->q:Lcom/google/android/gms/internal/ads/zzdrs;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/gms/internal/ads/zzdrs;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/google/android/gms/internal/ads/zzdrs;->r:[Lcom/google/android/gms/internal/ads/zzdrs;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzdrs;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdrs;->r:[Lcom/google/android/gms/internal/ads/zzdrs;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzdrs;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzdrs;

    return-object v0
.end method
