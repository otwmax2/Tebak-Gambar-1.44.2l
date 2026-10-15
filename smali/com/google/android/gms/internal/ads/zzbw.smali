###### Class com.google.android.gms.internal.ads.zzbw (com.google.android.gms.internal.ads.zzbw)
.class public Lcom/google/android/gms/internal/ads/zzbw;
.super Ljava/lang/Exception;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final q:Ljava/lang/String;

.field private static final r:Ljava/lang/String;

.field private static final s:Ljava/lang/String;

.field private static final t:Ljava/lang/String;

.field private static final u:Ljava/lang/String;

.field public static final v:Lcom/google/android/gms/internal/ads/zzn;


# instance fields
.field public final o:I

.field public final p:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbw;->q:Ljava/lang/String;

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbw;->r:Ljava/lang/String;

    const/4 v0, 0x2

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbw;->s:Ljava/lang/String;

    const/4 v0, 0x3

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbw;->t:Ljava/lang/String;

    const/4 v0, 0x4

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbw;->u:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbv;->a:Lcom/google/android/gms/internal/ads/zzbv;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbw;->v:Lcom/google/android/gms/internal/ads/zzn;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;IJ)V
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzbw;->o:I

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzbw;->p:J

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzbv (com.google.android.gms.internal.ads.zzbv)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzbv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzn;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzbv;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbv;->a:Lcom/google/android/gms/internal/ads/zzbv;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
