###### Class com.google.android.gms.internal.ads.zzffs (com.google.android.gms.internal.ads.zzffs)
.class public final enum Lcom/google/android/gms/internal/ads/zzffs;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field public static final enum p:Lcom/google/android/gms/internal/ads/zzffs;

.field public static final enum q:Lcom/google/android/gms/internal/ads/zzffs;

.field public static final enum r:Lcom/google/android/gms/internal/ads/zzffs;

.field private static final synthetic s:[Lcom/google/android/gms/internal/ads/zzffs;


# instance fields
.field private final o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzffs;

    const-string v1, "NATIVE"

    const/4 v2, 0x0

    const-string v3, "native"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzffs;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzffs;->p:Lcom/google/android/gms/internal/ads/zzffs;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzffs;

    const-string v3, "JAVASCRIPT"

    const/4 v4, 0x1

    const-string v5, "javascript"

    .line 2
    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzffs;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzffs;->q:Lcom/google/android/gms/internal/ads/zzffs;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzffs;

    const-string v5, "NONE"

    const/4 v6, 0x2

    const-string v7, "none"

    .line 3
    invoke-direct {v3, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzffs;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzffs;->r:Lcom/google/android/gms/internal/ads/zzffs;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/gms/internal/ads/zzffs;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/google/android/gms/internal/ads/zzffs;->s:[Lcom/google/android/gms/internal/ads/zzffs;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzffs;->o:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzffs;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzffs;->s:[Lcom/google/android/gms/internal/ads/zzffs;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzffs;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzffs;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffs;->o:Ljava/lang/String;

    return-object v0
.end method
