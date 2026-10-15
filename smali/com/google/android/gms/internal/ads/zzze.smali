###### Class com.google.android.gms.internal.ads.zzze (com.google.android.gms.internal.ads.zzze)
.class public final Lcom/google/android/gms/internal/ads/zzze;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field public static final d:Lcom/google/android/gms/internal/ads/zzze;


# instance fields
.field private final a:I

.field private final b:J

.field private final c:J


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v6, Lcom/google/android/gms/internal/ads/zzze;

    const/4 v1, -0x3

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzze;-><init>(IJJ)V

    sput-object v6, Lcom/google/android/gms/internal/ads/zzze;->d:Lcom/google/android/gms/internal/ads/zzze;

    return-void
.end method

.method private constructor <init>(IJJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzze;->a:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzze;->b:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzze;->c:J

    return-void
.end method

.method static bridge synthetic a(Lcom/google/android/gms/internal/ads/zzze;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzze;->a:I

    return p0
.end method

.method static bridge synthetic b(Lcom/google/android/gms/internal/ads/zzze;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzze;->c:J

    return-wide v0
.end method

.method static bridge synthetic c(Lcom/google/android/gms/internal/ads/zzze;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzze;->b:J

    return-wide v0
.end method

.method public static d(JJ)Lcom/google/android/gms/internal/ads/zzze;
    .registers 11

    new-instance v6, Lcom/google/android/gms/internal/ads/zzze;

    const/4 v1, -0x1

    move-object v0, v6

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzze;-><init>(IJJ)V

    return-object v6
.end method

.method public static e(J)Lcom/google/android/gms/internal/ads/zzze;
    .registers 9

    new-instance v6, Lcom/google/android/gms/internal/ads/zzze;

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, v6

    move-wide v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzze;-><init>(IJJ)V

    return-object v6
.end method

.method public static f(JJ)Lcom/google/android/gms/internal/ads/zzze;
    .registers 11

    new-instance v6, Lcom/google/android/gms/internal/ads/zzze;

    const/4 v1, -0x2

    move-object v0, v6

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzze;-><init>(IJJ)V

    return-object v6
.end method
