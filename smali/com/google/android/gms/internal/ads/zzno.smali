###### Class com.google.android.gms.internal.ads.zzno (com.google.android.gms.internal.ads.zzno)
.class public final Lcom/google/android/gms/internal/ads/zzno;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field public static final b:Lcom/google/android/gms/internal/ads/zzno;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zznn;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_c

    new-instance v0, Lcom/google/android/gms/internal/ads/zzno;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzno;-><init>()V

    goto :goto_13

    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/ads/zzno;

    sget-object v1, Lcom/google/android/gms/internal/ads/zznn;->b:Lcom/google/android/gms/internal/ads/zznn;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzno;-><init>(Lcom/google/android/gms/internal/ads/zznn;)V

    :goto_13
    sput-object v0, Lcom/google/android/gms/internal/ads/zzno;->b:Lcom/google/android/gms/internal/ads/zzno;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzno;->a:Lcom/google/android/gms/internal/ads/zznn;

    sget v0, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/media/metrics/LogSessionId;)V
    .registers 3

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zznn;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zznn;-><init>(Landroid/media/metrics/LogSessionId;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzno;->a:Lcom/google/android/gms/internal/ads/zznn;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zznn;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzno;->a:Lcom/google/android/gms/internal/ads/zznn;

    return-void
.end method


# virtual methods
.method public final a()Landroid/media/metrics/LogSessionId;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzno;->a:Lcom/google/android/gms/internal/ads/zznn;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zznn;->a:Landroid/media/metrics/LogSessionId;

    return-object v0
.end method
