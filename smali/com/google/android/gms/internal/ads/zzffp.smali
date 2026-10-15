###### Class com.google.android.gms.internal.ads.zzffp (com.google.android.gms.internal.ads.zzffp)
.class public final enum Lcom/google/android/gms/internal/ads/zzffp;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field public static final enum p:Lcom/google/android/gms/internal/ads/zzffp;

.field public static final enum q:Lcom/google/android/gms/internal/ads/zzffp;

.field public static final enum r:Lcom/google/android/gms/internal/ads/zzffp;

.field public static final enum s:Lcom/google/android/gms/internal/ads/zzffp;

.field public static final enum t:Lcom/google/android/gms/internal/ads/zzffp;

.field private static final synthetic u:[Lcom/google/android/gms/internal/ads/zzffp;


# instance fields
.field private final o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzffp;

    const-string v1, "DEFINED_BY_JAVASCRIPT"

    const/4 v2, 0x0

    const-string v3, "definedByJavaScript"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzffp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzffp;->p:Lcom/google/android/gms/internal/ads/zzffp;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzffp;

    const-string v3, "HTML_DISPLAY"

    const/4 v4, 0x1

    const-string v5, "htmlDisplay"

    .line 2
    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzffp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzffp;->q:Lcom/google/android/gms/internal/ads/zzffp;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzffp;

    const-string v5, "NATIVE_DISPLAY"

    const/4 v6, 0x2

    const-string v7, "nativeDisplay"

    .line 3
    invoke-direct {v3, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzffp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzffp;->r:Lcom/google/android/gms/internal/ads/zzffp;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzffp;

    const-string v7, "VIDEO"

    const/4 v8, 0x3

    const-string v9, "video"

    .line 4
    invoke-direct {v5, v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzffp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/google/android/gms/internal/ads/zzffp;->s:Lcom/google/android/gms/internal/ads/zzffp;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzffp;

    const-string v9, "AUDIO"

    const/4 v10, 0x4

    const-string v11, "audio"

    .line 5
    invoke-direct {v7, v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzffp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/google/android/gms/internal/ads/zzffp;->t:Lcom/google/android/gms/internal/ads/zzffp;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/google/android/gms/internal/ads/zzffp;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/google/android/gms/internal/ads/zzffp;->u:[Lcom/google/android/gms/internal/ads/zzffp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzffp;->o:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzffp;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzffp;->u:[Lcom/google/android/gms/internal/ads/zzffp;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzffp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzffp;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffp;->o:Ljava/lang/String;

    return-object v0
.end method
